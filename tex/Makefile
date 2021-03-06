# Title: Makefile
# Date:  2016/03/03
# Name:  Yuya, Takuro

# Target file name
TARGET = emsoft2016
# BIB file
REFDIR = ./
# REFDIR = ../../bib/
REF = $(REFDIR)/reference.bib
# CLASS File
CLS = sig-alternate-05-2015.cls

# platex
PLATEX = platex
# dvipdfmx
DVIPDFMX = dvipdfmx
# pbibtex
PBIBTEX = pbibtex

# Objects
OBJS := $(TARGET).aux $(TARGET).log $(TARGET).dvi
PDFOBJ := $(TARGET).pdf
BIBOBJS := $(TARGET).bbl $(TARGET).blg

#
# Target
#

.PHONY: all
all: bib tex pdf

.PHONY: bib
bib: $(BIBOBJS)

.PHONY: tex
tex: $(OBJS)

.PHONY: pdf
pdf: $(PDFOBJ)

$(BIBOBJS): $(REF)
	$(PLATEX) $(TARGET).tex
	$(PBIBTEX) $(TARGET)
	$(PLATEX) $(TARGET).tex
	$(PLATEX) $(TARGET).tex

$(OBJS): $(TARGET).tex $(CLS)
	$(PLATEX) $(TARGET).tex
	$(PLATEX) $(TARGET).tex

$(CLS):
	$(PLATEX) $(TARGET).tex
	$(PLATEX) $(TARGET).tex

$(PDFOBJ): $(TARGET).dvi
	$(DVIPDFMX) $(TARGET).dvi

# 
# Optional Target
# 

.PHONY: diff
diff:
	sh latexdiff2pdf.bash $(TARGET)

.PHONY: clean
clean:
	rm -f $(OBJS) $(BIBOBJS)

.PHONY: realclean
realclean:
	rm -f $(OBJS) $(BIBOBJS) $(PDFOBJ)
