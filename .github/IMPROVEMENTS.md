# Portfolio Improvements Tracker

This file tracks comparison notes, recommendations, fixes, and TODOs based on
Andrew Heiss's site (https://www.andrewheiss.com/) and the ath-quarto repo.

## Current plan
- [x] Create `_brand.yml` with palette, typography, logo placeholder, and bootstrap defaults.
- [ ] Add brand assets (logos + fonts) or switch fonts to `source: google`.
- [ ] Preview the site to validate the brand across home, projects, and resume pages.
- [ ] Refine palette/typography based on preference and add a dedicated logo.

## Updates
- [x] Rebuilt `_brand.yml` to follow brand.yml guidance with placeholders and inline instructions.
- [x] Added minimal Bootstrap defaults for nav/link rounding and code styling.

## Comparison notes from ath-quarto
- `_quarto.yml` includes site metadata: `site-url`, `repo-url`, `favicon`, `open-graph`, `twitter-card`, `pagetitle`, `author-meta`.
- Custom SCSS theme in `html/ath.scss` with typography, color system, navbar, footer, and layout rules.
- `_variables.yml` centralizes repeated metadata (ORCID, PGP, years, social handles).
- Custom listing templates (`html/blog/listing.ejs`, `html/research/listing.ejs`) for richer cards and links.
- Home page uses a responsive grid layout and `title-block-banner`.
- `resources` and a `files/` directory manage static assets (favicons, profile images, keys).

## Recommendations (design and content)
- [ ] Create a custom SCSS theme (new `html/tyler.scss`) and switch `format.html.theme` in `_quarto.yml`.
- [ ] Expand `styles.css` (or replace with SCSS) to define typography scale, buttons, and project cards.
- [ ] Redesign `index.qmd` with a two-column hero (photo + intro) and a short "featured projects" grid.
- [ ] Add a `page-footer` in `_quarto.yml` with contact links and a short attribution line.
- [ ] Add a "Highlights" or "Now" section to `about/index.qmd` to show current focus.

## Recommendations (structure and listings)
- [ ] Use `listing` `type: grid` or a custom EJS template to show thumbnails, tags, and CTA links in `projects/index.qmd`.
- [ ] Add `sort: "date desc"` to the projects listings to keep newest work first.
- [ ] Standardize project front matter keys (`image`, `external-url`, `categories`) across all project pages.

## Recommendations (metadata and SEO)
- [ ] Add `website.site-url`, `website.repo-url`, `website.favicon`, `open-graph`, and `twitter-card` in `_quarto.yml`.
- [ ] Add `pagetitle` and `author-meta` in `_quarto.yml` for consistent page titles.
- [ ] Create `_variables.yml` for shared values (name, email, socials) and reference with `{{< var >}}`.

## Fixes
- [ ] Remove duplicate CTA links on project pages (ex: `projects/apps/hurricane-intensity-app/index.qmd`).
- [ ] Decide on a single CTA label per project ("Launch app" vs "View report") and apply consistently.
- [ ] Ensure `styles.css` is either populated or removed to avoid an empty stylesheet reference.

## TODOs (next steps)
- [x] Pick a visual direction (fonts, colors, spacing) and document it in `_brand.yml`.
- [ ] Add a favicon set and social preview image for the site.
- [ ] Audit images for consistent aspect ratio and file size.
- [ ] Replace the temporary headshot logo with a dedicated logo mark and wordmark.
- [ ] Add `logos/` and `fonts/` assets referenced by `_brand.yml`, or switch to `source: google`.
