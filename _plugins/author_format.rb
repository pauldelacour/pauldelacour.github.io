require 'cgi'
module PaperAuthorFormat
  def format_paper_authors(value)
    value.to_s.split(/\s+and\s+/i).map do |person|
      pieces = person.split(',', 2)
      full = pieces.length == 2 ? "#{pieces[1].strip} #{pieces[0].strip}" : person.strip
      escaped = CGI.escapeHTML(full)
      if full.match?(/Delacour/i)
        "<strong>#{escaped}</strong>"
      else
        escaped
      end
    end.join(', ')
  end
end
Liquid::Template.register_filter(PaperAuthorFormat)
