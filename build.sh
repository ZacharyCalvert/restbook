#!/bin/bash

rm restful.html 2>/dev/null
rm *.fo 2>/dev/null
rm restful.pdf 2>/dev/null

# pandoc --from docbook --to html --output restful.html restful.xml
# pandoc --from docbook --to latex --output restful.pdf restful.xml
# xsltproc -o intermediate-fo-file.fo /usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl restful.xml
# fop -pdf restful.pdf -fo intermediate-fo-file.fo && \
#	/mnt/c/Program\ Files/Mozilla\ Firefox/firefox.exe restful.pdf

pdflatex restful.tex && pdflatex restful.tex && /mnt/c/Program\ Files/Mozilla\ Firefox/firefox.exe restful.pdf
