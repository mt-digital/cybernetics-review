first: 
	pdflatex -shell-escape main.tex

ofirst: first
	open main.pdf

main: first
	bibtex main && pdflatex -shell-escape main.tex

omain: main
	open main.pdf

clean:
	rm -f *.aux main.log main.out main.blg main.bbl
