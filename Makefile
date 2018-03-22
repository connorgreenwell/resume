TARGET=cv

all: # spell
	pdflatex $(TARGET)
#	biber $(TARGET)
	bibtex $(TARGET)
	pdflatex $(TARGET)
	pdflatex $(TARGET)

pdf:
	pdflatex $(TARGET)

# spell:
# 	aspell -ttex -c $(TARGET).tex

clean:
	rm -f cv.pdf *.bcf *.blg *.aux *.bbl *.brf *.log *.nav *.snm *.toc *.out *-blx.bib *.run.xml
