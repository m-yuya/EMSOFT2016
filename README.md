# EMSOFT2016

## Contents
```
/figure  # .eps and .pdf figure files
/tex  # workspace
/tex/diff_tex/  # past .tex files for latexdiff
/tex/submission/  # submission files
/tex/reply_letter/  # workspace for reply letter
/tex/Makefile
/tex/emsoft2016.tex  # main tex file
/tex/reference.bib  # reference file for bibtex
/tex/latexdiff2pdf.bash  # latexdiff script  
/tex/sig-alternate-05-2015.cls  # documentclass for ACM format
/tex/acmcopyright.sty  # copyright style file for ACM format
```

## How to build `.tex`

```
$ git clone https://github.com/m-yuya/EMSOFT2016.git
$ cd tex
$ make  # build and output .pdf file 

$ make realclean  # remove built files 
```

## How to build diff `.tex`

```
$ cd tex
$ chmod +x latexdiff2pdf.bash
$ make diff
./latexdiff2pdf.bash

Listing old tex files...
20160222.tex  20160526.tex  20160605.tex  20160608.tex  20160611.tex

Select *.tex: 20160611  # Type "20160611" by yourself

# then, output diff.pdf
```
