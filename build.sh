set -e
setopt extendedglob

setopt no_nomatch
rm -f main.*~main.tex
setopt nomatch
rm -r out
mathmd "vault/a. Angle Hypothesis" out

pdflatex -shell-escape main
bibtex main
pdflatex -shell-escape main
pdflatex -shell-escape main
