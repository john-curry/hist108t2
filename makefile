FILE=hist108t2
all: $(FILE).pdf

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE); biber $(FILE); pdflatex $(FILE)
clean:
	rm $(FILE).aux; rm $(FILE).blg; rm $(FILE).bbl; rm $(FILE).log; rm $(FILE).pdf; rm $(FILE).dvi; rm $(FILE).run.xml; rm $(FILE).bcf
