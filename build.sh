#!/bin/bash

rm restful.html 2>/dev/null
rm *.fo 2>/dev/null
rm restful.pdf 2>/dev/null

function findUnlinkedTex {
    FLIST=""
    for tex in $(find ./chapters -iname "*.tex"); do
        findInTex "\\input{${tex:2:-4}}"
        if [[ "$?" != 0 ]]; then
            echo "Missing $tex in linking"
            return 1
        fi
    done
    return 0
}

function findInTex {
    COUNT=$(find ./chapters/ -type f -iname "*.tex" -print0 | xargs -0 grep "$1" | wc -l)
    COUNT2=$(cat ./restful.tex | grep $1 | wc -l)
    TOTAL=$((COUNT + COUNT2))
    if [[ "$TOTAL" == 0 ]]; then
        return 1 # BASH FAILURE, non-zero exit code for function
    else
        return 0 # SUCCESS, found in files
    fi
}


# pandoc --from docbook --to html --output restful.html restful.xml
# pandoc --from docbook --to latex --output restful.pdf restful.xml
# xsltproc -o intermediate-fo-file.fo /usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl restful.xml
# fop -pdf restful.pdf -fo intermediate-fo-file.fo && \
#	/mnt/c/Program\ Files/Mozilla\ Firefox/firefox.exe restful.pdf

findUnlinkedTex && pdflatex restful.tex && pdflatex restful.tex && /mnt/c/Program\ Files/Mozilla\ Firefox/firefox.exe restful.pdf
