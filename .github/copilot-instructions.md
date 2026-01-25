# Copilot / AI Agent Instructions — portfolio-quarto

**Purpose**: Provide immediate, actionable context for editing, building, and improving this Quarto portfolio site.

## High-Level Architecture
- **Site Type**: Single Quarto website (`root/_quarto.yml`) publishing to `docs/` for GitHub Pages.
- **Content Structure**:
  - `index.qmd`: Home page (hero section, featured content, bio summary).
  - `about/index.qmd`: Extended biography and personal details.
  - `projects/index.qmd`: Portfolio listing/grid of projects.
  - `resume/`: Contains source (`_resume.qmd`) and generated PDFs.
- **Resume System**:
  - Source: `resume/_resume.qmd` (Typst-based).
  - Templates: `_extensions/` (e.g., `awesomecv`). Paths in `_resume.qmd` are relative (e.g., `../_extensions/...`).
  - Output: `YYYY-MM-DD_resume.pdf` (date-prefixed).
  - Integration: `resume/render-resume.r` renders the PDF and updates metadata in `resume/index.qmd`, which embeds the PDF.
- **Theming**:
  - Controlled by `_brand.yml` (palette, typography, logos, Bootstrap defaults).
  - Reference `images/INSTRUCTIONS.md` for the `_brand.yml` schema/spec.

## Key Files to Read First
- `_quarto.yml`: Site config, navigation, and build rules.
- `index.qmd`: Main landing page source.
- `about/index.qmd` & `projects/index.qmd`: Primary content sections.
- `_brand.yml`: Central design tokens (replace usage of raw CSS colors where possible).
- `resume/_resume.qmd`: Resume content source.
- `resume/render-resume.r`: Script to build resume PDF & update site metadata.
- `IMPROVEMENTS.md`: Active task tracker for design, structure, and content features.
- `images/INSTRUCTIONS.md`: Documentation for the `_brand.yml` format.

## Critical Workflows

### 1. Render Resume (Local Flow)
Use the helper script to ensure PDF renaming and metadata updates happen automatically:
```bash
Rscript resume/render-resume.r
```
*Note: This script resolves the project root to find `_extensions`.*

### 2. Render Full Site
```bash
quarto render --project .
```
Output goes to `docs/`.

### 3. Preview Site
```bash
quarto preview --project .
```

## Project-Specific Conventions

### Content & Structure
- **Index Files**: Directories (`about/`, `projects/`, `resume/`) use `index.qmd` as their entry point.
- **Front Matter**: Check `index.qmd` headers for `listing`, `about`, or `title` configurations that control page layout.
- **Root/Home**: The root `index.qmd` drives the first impression; modifying it usually involves standard Markdown or Quarto layout divs (e.g. `::: {.grid} ... :::`).

### Resume & PDF
- **Naming**: `YYYY-MM-DD_resume.pdf`.
- **Embedding**: `resume/index.qmd` uses `resume: pdf` and `resume: date` YAML keys.
- **Extensions**: Do not move `_extensions/`. If editing Typst templates, re-run the render script to see changes.

### Design & Branding
- **Source of Truth**: Use `_brand.yml` for colors/fonts. Avoid hardcoded hex values in CSS if they can act as variables.
- **Typography/Colors**: See `IMPROVEMENTS.md` for current decisions (Google Fonts vs. local, specific palette values).
- **Bootstrap**: Defaults are managed under `defaults` in `_brand.yml` (e.g., link rounding, code styling).

### Structure & Listings
- **Projects**: Future goal to use `type: grid` or custom EJS for projects.
- **Metadata**: Centralizing repetitive data (URLs, social handles) into `_variables.yml` (planned).

## Roadmap & Active Tasks (from IMPROVEMENTS.md)
*Consult `IMPROVEMENTS.md` for the latest status.*
- [ ] **Design**: Implement custom SCSS theme, refine `_brand.yml` palette/typography.
- [ ] **Structure**: Redesign `index.qmd` (hero + featured grid), standardize project front matter.
- [ ] **Components**: Add `page-footer`, fix CTA link consistency.
- [ ] **SEO/Meta**: Add `site-url`, `favicon`, `open-graph` to `_quarto.yml`.

## Debugging Tips
- **"No valid input files"**: Run commands from project root or use `--project .`.
- **PDF not updating**: Check `resume/index.qmd` YAML keys. The render script usually handles this.
- **Brand changes not showing**: Restart `quarto preview` after editing `_brand.yml` or `_quarto.yml`.
