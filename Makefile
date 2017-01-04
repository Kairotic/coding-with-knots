all: quipu.pdf

quipu.pdf: quipu.md quipu.bib
	pandoc --filter pandoc-citeproc quipu.md --latex-engine=xelatex --csl chicago-author-date.csl -o quipu.pdf

quipu.docx: quipu.md quipu.bib
	pandoc --filter pandoc-citeproc quipu.md --csl chicago-author-date.csl -o quipu.docx

