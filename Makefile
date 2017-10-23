TARGET=cv

all: # spell
	pdflatex $(TARGET)
#	bibtex $(TARGET)
	biber $(TARGET)
	pdflatex $(TARGET)
	pdflatex $(TARGET)

pdf:
	pdflatex $(TARGET)

# spell:
# 	aspell -ttex -c $(TARGET).tex

clean:
	rm -f cv.pdf *.blg *.aux *.bbl *.brf *.log *.nav *.snm *.toc *.out *-blx.bib *.run.xml
