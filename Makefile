TARGET=cv
TEX=pdflatex

all: # spell
	$(TEX) $(TARGET)
#	biber $(TARGET)
	bibtex $(TARGET)
	$(TEX) $(TARGET)
	$(TEX) $(TARGET)

pdf:
	$(TEX) $(TARGET)

# spell:
# 	aspell -ttex -c $(TARGET).tex

clean:
	rm -f cv.pdf *.bcf *.blg *.aux *.bbl *.brf *.log *.nav *.snm *.toc *.out *-blx.bib *.run.xml
