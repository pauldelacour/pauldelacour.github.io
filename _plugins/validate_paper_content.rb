# Fail the build on invalid references, instead of silently hiding supplemental paper text.
require 'bibtex'
require 'set'
module ValidatePaperContent
  class Validate < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      collection = site.collections['paper_content']
      return unless collection
      path = File.join(site.source, '_bibliography', 'papers.bib')
      bibliography = BibTeX.open(path)
      valid_keys = bibliography.entries.map { |entry| entry.key.to_s }.to_set
      seen = Set.new
      collection.docs.each do |doc|
        key = doc.data.fetch('bibkey', '').to_s.strip
        if key.empty? || !valid_keys.include?(key)
          raise Jekyll::Errors::FatalException, "Invalid bibkey #{key.inspect} in #{doc.relative_path}. Add a matching key to papers.bib."
        end
        if seen.include?(key)
          raise Jekyll::Errors::FatalException, "Duplicate paper-content bibkey #{key.inspect}. Keep one supplemental file per paper."
        end
        seen.add(key)
      end
    end
  end
end
