# 01max.github.io

Personal static site & resume built for GitHub Pages.

This repository contains a simple static site (index) and a resume (multi-language) that is built with standard static toolchain and published to GitHub Pages.

## Main features

- Landing page at the repository root (`index.haml` / `index.html`).
- Resume located in the `resume/` folder with French and English content (`resume/fr/`, `resume/template/resume.haml`).
- Precompiled CSS in the `style/` folder and local fonts in `style/fonts/`.
- Build and deployment helper scripts in `bin/` (`build.sh`, `serve.sh`, `deploy.sh`).

## Requirements

- Ruby + Bundler (repository contains a `Gemfile`)
- GitHub Pages (to host the `master` branch or the configured branch)

## Quick start

1. Install Ruby dependencies:

```sh
bundle install
```

2. Build the site (generates compiled assets / static site):

```sh
   ./bin/build.sh
```

3. Serve locally (if supported by the script):

```sh
   ./bin/serve.sh
```

## Project structure (high level)

- `index.haml`, `index.html` — root landing page
- `resume/` — resume sources and localized variants
- `style/` — SASS/CSS, fonts, vectors and favicons
- `bin/` — convenience build/serve/deploy scripts
- `Gemfile` — Ruby/Gem dependencies used for building
