EPSFILES = $(wildcard plots/*.eps)
PDFFILES = $(patsubst %.eps,%.pdf,$(EPSFILES))

paper.pdf: $(PDFFILES) paper.tex
	pdflatex paper

plots/%.pdf: plots/%.eps
	cd plots && epstopdf $*.eps