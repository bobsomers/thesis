TARGET=flexrender
TEXSRC=flexrender.tex
PDF=$(TARGET).pdf
BIBFILE=flexrender.bib

pdf: $(PDF)

$(PDF): $(TEXSRC) $(BIBFILE)
	pdflatex $(TARGET).tex
	bibtex $(TARGET)
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex

clean:
	rm *.ps $(TARGET).pdf *.dvi *.log *.aux *.bbl *.blg *.bak *.lof *.lot *.out *.toc
