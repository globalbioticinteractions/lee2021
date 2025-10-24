#!/bin/bash
#
# Take the bill of materials associated with 
#
# https://figshare.com/ndownloader/files/31211389
# 
# from:
# 
# Lee, Leshon; Tan, David J. X.; Oboňa, Jozef; Gustafsson, Daniel R.; Ang, Yuchen; Meier, Rudolf (2021). Phoresy Records Appendix.xlsx. figshare. Dataset. https://doi.org/10.6084/m9.figshare.12671711.v1
#
# and extract the literature references associated in them
# 

preston ls \
 --anchor hash://md5/bbb22869ede9f98ac1bf70cabffea2a4 \
 --algo md5 \
 | preston xlsx-stream \
 | head -n254 \
 | mlr --ijsonl --otsvlite cat \
 | cut -f1-8 \
 | sed -E 's/(\([A-Z].[a-z ]+)/\t\1/g' \
 | sed -E 's/\t\(/\t/g' \
 | sed -E 's/\)\t/\t/g' \
 | sed 's/\tBird host\t/\tBird host common name\tBird host\t/g'

