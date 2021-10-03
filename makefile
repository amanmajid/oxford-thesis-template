# LaTeX Makefile
FILE=main

all: $(FILE).pdf

.PHONY:clean
clean:
	rm -f *.aux *.blg *.out *.bbl *.log *.toc *tdo *.lof $(FILE).pdf *.bcf *.xml

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE)
	biber $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)
