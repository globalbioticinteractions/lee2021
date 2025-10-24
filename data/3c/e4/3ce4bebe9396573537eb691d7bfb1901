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

preston ls --anchor hash://md5/bbb22869ede9f98ac1bf70cabffea2a4 --algo md5 | preston xlsx-stream | tail -n+268 | mlr --ijsonl --otsvlite cat | cut -f1,3 | sed -E 's/\t[ ]+/\t/g' | sed -E 's/^line.*\t$//g' | sed 's/\tLouse$/\tReference/g' | sort | uniq | tail -n+2
