CLS=HUSTugt.cls
BIB=ref.bib
BST=hust.bst
TPL=template.tex
THX=thanks.tex
ABS=abstract.tex
FIG=figures

pdf: thesis.pdf

thesis.pdf: thesis.tex $(BIB) $(BST) $(CLS) $(THX) $(ABS) $(FIG)
	@latexmk -xelatex -use-make $<

thesis.tex: thesis.md $(TPL)
	@pandoc -s --template=${TPL} --chapters -o $@ $<

%.tex: %.md
	@pandoc --chapters -o $@ $<

clean:
	@latexmk -CA
	@rm -f thesis.tex $(THX)

.PHONY: pdf clean
