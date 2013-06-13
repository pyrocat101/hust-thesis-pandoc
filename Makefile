CLASS=HUSTugt.cls
TMP=*-blx.bib *.{mp,aux,bbl,blg,log,out,xml,tmp,tui,tuo,synctex.gz,t,toc,xdv}
BIB=ref.bib
BST=hust.bst
TPL=template.tex
THX=thanks.tex
# ABS=abstract.tex

pdf: thesis.pdf

thesis.tex: thesis.md $(TPL) $(THX)
	@pandoc -s --template=${TPL} --chapters -N -o $@ $<

thesis.pdf: thesis.tex $(CLASS) $(BIB) $(BST)
	@xelatex -no-pdf $<
	@bibtex $(addsuffix .aux, $(basename $<))
	@xelatex -no-pdf $<
	@xelatex $<
	@rm -f ${TMP}

%.tex: %.md
	@pandoc -o $@ $<

clean:
	@rm -f ${TMP} thesis.pdf thesis.tex $(ABS) $(THX)

.PHONY: pdf clean
