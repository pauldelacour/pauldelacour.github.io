# Paul-Louis Delacour

This repository contains the source code for [my academic website](https://pauldelacour.github.io/).

I am a PhD candidate at TU Delft, advised by [Raf Van de Plas](http://vandeplaslab.tudelft.nl/). My work sits at the intersection of machine learning, high-dimensional statistics, and random matrix theory. I am particularly interested in understanding when latent structure can be recovered from complex and noisy data, and how these insights can inform statistical inference and generative learning methods.

On the website, you can find my [publications](https://pauldelacour.github.io/publications/), [talks](https://pauldelacour.github.io/talks/), [teaching](https://pauldelacour.github.io/teaching/), and [CV](https://pauldelacour.github.io/files/CV_Paul_delacour_2026.pdf).

## About the website

I built this site with [Jekyll](https://jekyllrb.com/) and [Jekyll Scholar](https://github.com/inukshuk/jekyll-scholar). Publications are managed from a single BibTeX file, while talks and additional material have their own Markdown pages.

The main content is organized as follows:

- **Publications:** `_bibliography/papers.bib` contains the bibliographic information and resource links. Set `selected = {true}` to feature a paper on the homepage. Each entry automatically gets a details page.
- **Additional publication content:** `_paper_content/` holds optional text, figures, and videos, linked to a paper through its `bibkey`.
- **Talks:** add a Markdown file to `_talks/` for each presentation.
- **Teaching:** edit `_data/teaching.yml`.
- **Homepage and design:** edit `index.md` and `_sass/_site.scss`.

## Running locally

With Ruby and Bundler installed, run `bundle install` followed by `bundle exec jekyll serve --livereload`.

The website will be available at `http://localhost:4000/`. Updates pushed to `main` are built and deployed through GitHub Actions.

## Contact

You can reach me at [delacourpaullouis@gmail.com](mailto:delacourpaullouis@gmail.com).
