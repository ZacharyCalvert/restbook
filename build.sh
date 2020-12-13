#!/bin/bash

pandoc --from docbook --to html --output restful.html restful.xml
pandoc --from docbook --to pdf --output restful.pdf restful.xml
