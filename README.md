# Paul-Louis Delacour — independent research website

A **small Jekyll 4 + Jekyll Scholar** site with BibTeX as its single publication metadata source. Inspired by the publication workflow in al-folio (the theme used by Nicolas Zucchet), but **not a fork** of al-folio or the former Academic Pages repository. The homepage retains the existing dark-blue phase illustrations, the original research wording, education timeline, and left-hand author profile.

## Adding or selecting publications

Edit **`_bibliography/papers.bib`** only for author, title, year, venue, PDF, publisher, code, etc. The full Publications page is created with `{% bibliography --group_by none %}` and the homepage uses `{% bibliography --group_by none --query @*[selected=true] %}`.

- `selected = {true}` displays that paper on the homepage.
- `selected = {false}` (or omitting the field) hides it **only** from the homepage.
- Both cases appear on `/publications/`.
- The paper's detail page is generated automatically at `/publication/<BibTeX-key>.html`.
- Optional figures and text are keyed by the same BibTeX key in `_data/paper_details.yml`; no paper metadata is duplicated there.

Example:

```bibtex
@misc{key2027,
  title = {A New Paper},
  author = {Delacour, Paul-Louis and Another, Researcher},
  year = {2027},
  venue = {Preprint},
  selected = {true},
  arxiv = {https://arxiv.org/abs/XXXX.XXXXX},
  pdf = {/files/papers/new-paper.pdf}
}
```

**Important:** All URLs in BibTeX fields must be plain raw URLs, **not** Markdown syntax like `[link](url)`.

## Run locally

Requires Ruby 3.3 and Bundler. After copying assets as described below:

```bash
bundle install
bundle exec jekyll serve --livereload
```

Open http://localhost:4000. The first install requires internet access to download Ruby gems.

## Import binary assets (one-time, before retiring old site)

Original photos, illustrations, videos and PDFs **are not embedded in this ZIP**: they are external binary assets from the original GitHub repository. To obtain them:

```bash
git clone https://github.com/pauldelacour/pauldelacour.github.io.git old-site
bash scripts/import_old_assets.sh old-site
```

This copies all old `images/` and `files/` folders into this project **with identical URLs**, including your portrait, ice/liquid images, SMM animation and results, SiSAL results, phase-transition figures, posters, and PDF papers. Check the copied files, then commit them to the new repo. Do this **before** deleting, renaming, or replacing the old repository. The CV page is an HTML summary; a current CV PDF can be added later.

## Where to edit things

| File | Purpose |
|------|---------|
| `_bibliography/papers.bib` | All paper metadata, including `selected` |
| `_data/paper_details.yml` | Optional paper-specific summary, video, figure captions |
| `index.md` | Home intro, education, contact; selected BibTeX is automatic |
| `_layouts/bib.html` | Look of each publication card |
| `_layouts/paper.html` | Individual publication detail pages |
| `_includes/paper_links.html` | The automatic resource buttons |
| `_sass/_site.scss` | Complete global and homepage styling |
| `_data/talks.yml` / `_data/teaching.yml` | Add talks and courses |
| `_pages/` | Talks, Teaching, CV, legacy URL redirects |
| `.github/workflows/pages.yml` | Deployment to GitHub Pages using Actions |

## Switching to pauldelacour.github.io

See `DEPLOY.md`. GitHub Pages must deploy through **GitHub Actions**, not the default 'Deploy from a branch' Jekyll build, because Jekyll Scholar is not a built-in GitHub Pages plugin.
