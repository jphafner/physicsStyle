#!/bin/bash

colors=(emerald skyblue red pink orange nephritis concrete darknight)
#colors=(emerald)


for color in ${colors[@]}; do
  sed "s/COLOR/${color}/" resume.tex > resume-${color}.tex
  latexmk -quiet -lualatex -f ./resume-${color}.tex
  #latexmk -lualatex -f ./resume-${color}.tex
done


latexmk -c


for color in ${colors[@]}; do
    rm -f resume-${color}.tex
    mv resume-${color}.pdf ./output2/
done

