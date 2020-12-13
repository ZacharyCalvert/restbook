#!/bin/bash

rm restful.html
rm *.fo
rm restful.pdf

pandoc --from docbook --to html --output restful.html restful.xml
# pandoc --from docbook --to latex --output restful.pdf restful.xml
xsltproc -o intermediate-fo-file.fo /usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl restful.xml
fop -pdf restful.pdf -fo intermediate-fo-file.fo
