set -e
setopt extendedglob

setopt no_nomatch
rm -f main.*~main.tex
setopt nomatch
rm -r out
mathmd vault/ out

pdflatex -shell-escape main
biber main
pdflatex -shell-escape main
pdflatex -shell-escape main
