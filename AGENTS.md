# AGENTS.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Build Commands

```bash
# Compile resume to PDF (requires typst installed)
./build.sh

# Or manually:
typst compile --font-path ./assets/fonts resume.typ resume.pdf
```

**Environment setup**: The project uses Nix flakes with direnv. If you have `nix` and `direnv` installed, entering the directory will automatically set up typst.

## Architecture

This is a Typst resume template that compiles to PDF.

- `template.typ` - Reusable template defining layout functions and styling:
  - `project()` - Main document function accepting theme color, name, contact info, sections
  - `section()` / `subSection()` - Structure for resume sections (Experience, Education, etc.)
  - `contact()` - Contact info entries with optional links

- `resume.typ` - The actual resume content; imports template and populates it with data

- `assets/fonts/` - Contains Mulish font (required for compilation via `--font-
## Customization

- **Theme color**: Change `theme: rgb("#0F83C0")` in `resume.typ` 
- **Content**: Modify sections in the `main:` parameter of `project.with()`
- **Layout/styling**: Edit functions in `template.typ`
