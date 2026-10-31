# Curriculum Vitae

Sources for building my academic CV, written in LaTeX with a template based on
[santisoler/cv](https://github.com/santisoler/cv), which in turn is inspired by
[leouieda/cv](https://github.com/leouieda/cv) and [lheagy/cv](https://github.com/lheagy/cv).

The CV is available in two languages:

| Language | Source      | PDF                                                  |
| -------- | ----------- | ---------------------------------------------------- |
| English  | `cv.tex`    | [cv.pdf](https://esteban82.github.io/cv/cv.pdf)          |
| Español  | `cv_es.tex` | [cv_es.pdf](https://esteban82.github.io/cv/cv_es.pdf)    |

*Versión en español de este README: [README.es.md](README.es.md).*

## How to build

### Using Tectonic

[Tectonic](https://tectonic-typesetting.github.io/en-US/) is a modern,
self-contained LaTeX engine, usually faster than a regular LaTeX compiler. It can
be installed from [conda-forge](https://github.com/conda-forge/tectonic-feedstock)
using the provided `environment.yml`:

```
conda env create -f environment.yml
conda activate cv
```

Then use the `Makefile`. If Tectonic is not installed, it automatically falls back to
`latexmk -xelatex` (see the TeX Live section below):

- `make` **builds** both PDFs (`_output/cv.pdf` and `_output/cv_es.pdf`).
- `make es` builds only the Spanish version.
- `make en` builds only the English version.
- `make show-es` / `make show-en` **open** the corresponding PDF in your favourite PDF reader (`make show` opens the English one).
- `make clean` **removes** everything that was generated.

### Using TeX Live

If you cannot install Tectonic, you can use a regular TeX Live installation. For
Ubuntu or Debian you will need:

- `latexmk`
- `texlive`
- `texlive-latex-extra`
- `texlive-xetex`
- `texlive-fonts-extra`

Either run `make` overriding the compiler:

```
make LATEX="latexmk -xelatex" LATEX_ARGS="-outdir=_output"
```

or call `latexmk` directly:

```
mkdir _output
latexmk -xelatex -outdir=_output cv.tex      # English
latexmk -xelatex -outdir=_output cv_es.tex   # Spanish
```

## Keeping both versions in sync

`cv.tex` (English) and `cv_es.tex` (Spanish) share the same layout and macros, so when you add an item
(a paper, a course, a cruise, ...) add it to both files. Titles of publications
written in Spanish are kept in their original language in the English version.

## License

All LaTeX template source code is distributed under the
[BSD 3-clause License](https://opensource.org/licenses/BSD-3-Clause).
