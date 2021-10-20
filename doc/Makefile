src = cblast.tex

all: $(src) cblastDoc.pdf 
%.tex:	../*/%.org cblastDoc.tex
	bash ../scripts/org2nw $< | noweave -n -x | sed 's/_test/\\_test/g' > $@
cblastDoc.pdf: $(src) cblastFig.tex
	latex cblastDoc
	latex cblastDoc
	dvips cblastDoc -o -q
	ps2pdf cblastDoc.ps
clean:
	rm -f $(src) *.pdf *.aux *.bbl *.blg *.dvi *.log
