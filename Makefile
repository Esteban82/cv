# Builds the CV in English (cv.tex) and Spanish (cv_es.tex).
#
#   make          build both PDFs in _output/
#   make en       build only the English version  (_output/cv.pdf)
#   make es       build only the Spanish version  (_output/cv_es.pdf)
#   make show-en  build and open the English PDF
#   make show-es  build and open the Spanish PDF
#   make clean    remove everything generated
#
# The LaTeX engine is chosen automatically: Tectonic if it is installed,
# otherwise latexmk + XeLaTeX (TeX Live). You can force one by hand:
#   make LATEX="latexmk -xelatex" LATEX_ARGS="-outdir=_output"

OUTDIR=_output
PDF_READER="xdg-open"

ifndef LATEX
  ifeq ($(shell command -v tectonic 2> /dev/null),)
    LATEX=latexmk -xelatex
    LATEX_ARGS=-outdir=$(OUTDIR) -interaction=nonstopmode
  else
    LATEX=tectonic
    LATEX_ARGS=--outdir=$(OUTDIR)
  endif
endif

EN=$(OUTDIR)/cv.pdf
ES=$(OUTDIR)/cv_es.pdf

.PHONY: all en es show show-en show-es clean

all: en es

en: $(EN)

es: $(ES)

show-en: en
	$(PDF_READER) $(EN) 2> /dev/null

show-es: es
	$(PDF_READER) $(ES) 2> /dev/null

# "make show" opens the English version
show: show-en

clean:
	rm -rf $(OUTDIR)

$(OUTDIR)/%.pdf: %.tex | $(OUTDIR)
	$(LATEX) $(LATEX_ARGS) $<

$(OUTDIR):
	mkdir -p $(OUTDIR)
