#!/bin/bash

printf "\nListing old tex files...\n"
ls diff_tex/
printf "\nSelect *.tex: "
read  old_file
old_file=$old_file.tex
echo $old_file
latexdiff diff_tex/$old_file reply_letter_emsoft2016.tex > diff.tex
platex diff.tex
pbibtex diff
platex diff.tex
platex diff.tex
dvipdfmx diff.dvi
rm diff.aux diff.bbl diff.blg diff.log
