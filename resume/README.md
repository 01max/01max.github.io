# Resume

This folder contains the sources and template used to generate the resume page of this site.

The resume in this project follows the JSON Resume schema and is rendered using the Haml template included here.

-> Schema reference: https://jsonresume.org/schema

## Contents

- `fr/resume.json` — the resume data in JSON (French). This follows the JSON Resume schema.
- `fr/index.html` — generated HTML output (localized).
- `template/resume.haml` — Haml template used to render the resume from the JSON data.
- `pictures/` — assets used by the resume (profile image, icons, etc.).


## How it works

1. The JSON resume (`fr/resume.json`) is read and passed through the Haml template (`template/resume.haml`).
2. The template produces a localized HTML file (`fr/index.html`) which is styled by the global `style/` assets at the project root.


## Build / Serve (development)

> See the root [README](../README.md)


## Customization

- Edit the JSON data in `fr/resume.json` to update content (contact, work history, skills, etc.). Keep the structure compatible with the JSON Resume schema.
- To change layout or markup, edit `template/resume.haml`.
- Replace or add images in `pictures/` and update the template to reference them.
- Styles are defined in the repository `style/` folder. Changes there affect the resume styling.


## Translations / Locales

This folder contains a `fr/` directory for the French version. To add another locale, duplicate the `fr/` folder, translate `resume.json`, and update the build process if necessary.


## Notes

- Keep the JSON structure compatible with the JSON Resume schema to avoid template errors.
- If you change the template, check for missing fields in the JSON and handle fallbacks in the Haml template.

