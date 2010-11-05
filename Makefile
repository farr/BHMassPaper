EPSFILES = $(wildcard *.eps)
PDFFILES = $(patsubst %.eps,%.pdf,$(EPSFILES))

.PHONY: all
all: $(PDFFILES)

%.pdf: %.eps
	epstopdf $<