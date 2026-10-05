# Curriculum Vitae

Fuentes de mi CV académico, escrito en LaTeX con una plantilla basada en
[santisoler/cv](https://github.com/santisoler/cv), que a su vez se inspira en
[leouieda/cv](https://github.com/leouieda/cv) y [lheagy/cv](https://github.com/lheagy/cv).

Descargar la [versión en PDF de mi CV](https://esteban82.github.io/cv/cv.pdf).

## Cómo compilar

Con [Tectonic](https://tectonic-typesetting.github.io/en-US/) (instalable desde
conda-forge con `environment.yml`):

- `make` **compila** el PDF en `_output/cv.pdf`.
- `make show` lo **abre** con el lector de PDF.
- `make clean` **elimina** lo generado.

Con texlive (Ubuntu/Debian: `latexmk texlive texlive-latex-extra texlive-xetex texlive-fonts-extra`):

```
mkdir _output
latexmk -xelatex -outdir=_output cv.tex
```

## Licencia

El código de la plantilla LaTeX se distribuye bajo la licencia
[BSD 3-clause](https://opensource.org/licenses/BSD-3-Clause).
