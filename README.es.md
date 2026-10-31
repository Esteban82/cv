# Curriculum Vitae

Fuentes de mi CV académico, escrito en LaTeX con una plantilla basada en
[santisoler/cv](https://github.com/santisoler/cv), que a su vez se inspira en
[leouieda/cv](https://github.com/leouieda/cv) y [lheagy/cv](https://github.com/lheagy/cv).

El CV está disponible en dos idiomas:

| Idioma  | Fuente      | PDF                                                  |
| ------- | ----------- | ---------------------------------------------------- |
| English | `cv.tex`    | [cv.pdf](https://esteban82.github.io/cv/cv.pdf)       |
| Español | `cv_es.tex` | [cv_es.pdf](https://esteban82.github.io/cv/cv_es.pdf) |

*English version of this README: [README.md](README.md).*

## Cómo compilar

### Con Tectonic

[Tectonic](https://tectonic-typesetting.github.io/en-US/) se puede instalar desde
conda-forge con el `environment.yml`:

```
conda env create -f environment.yml
conda activate cv
```

Luego se usa el `Makefile`. Si Tectonic no está instalado, usa automáticamente
`latexmk -xelatex` (ver la sección de TeX Live):

- `make` **compila** los dos PDF (`_output/cv.pdf` y `_output/cv_es.pdf`).
- `make es` compila solo la versión en español.
- `make en` compila solo la versión en inglés.
- `make show-es` / `make show-en` **abren** el PDF correspondiente (`make show` abre el de inglés).
- `make clean` **elimina** lo generado.

### Con TeX Live

En Ubuntu/Debian: `latexmk texlive texlive-latex-extra texlive-xetex texlive-fonts-extra`.

Se puede usar `make` cambiando el compilador:

```
make LATEX="latexmk -xelatex" LATEX_ARGS="-outdir=_output"
```

o llamar a `latexmk` directamente:

```
mkdir _output
latexmk -xelatex -outdir=_output cv.tex      # inglés
latexmk -xelatex -outdir=_output cv_es.tex   # español
```

## Mantener ambas versiones sincronizadas

`cv.tex` (inglés) y `cv_es.tex` (español) comparten el mismo diseño y macros: cuando se agregue un
ítem (un artículo, un curso, una campaña, ...) hay que agregarlo en los dos
archivos. En la versión en inglés, los títulos de las publicaciones en español se
mantienen en su idioma original.

## Licencia

El código de la plantilla LaTeX se distribuye bajo la licencia
[BSD 3-clause](https://opensource.org/licenses/BSD-3-Clause).
