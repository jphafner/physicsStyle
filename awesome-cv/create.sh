#!/bin/bash

colors=(emerald skyblue red pink orange nephritis concrete darknight)


for color in ${colors[@]}; do
  sed "s/COLOR/${color}/" resume.tex > resume-${color}.tex
  latexmk -quiet -lualatex ./resume-${color}.tex
done


latexmk -c
rm -f resume-${color}.tex
