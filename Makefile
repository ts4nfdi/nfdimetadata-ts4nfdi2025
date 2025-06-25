default:
	quarto preview

build: html pdf

html:
	quarto render

# PDF output with beamer does not work with Quarto, so directly use Pandoc
pdf: docs/ts4nfdi.pdf
docs/ts4nfdi.pdf: index.qmd
	pandoc -t beamer --pdf-engine=xelatex --template vzg-slides.tex -o $@ $^

