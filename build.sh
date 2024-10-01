set -e
setopt extendedglob

setopt no_nomatch
rm -f main.*~main.tex
setopt nomatch
rm -r out
mathmd "vault/a. Rotation Angle of Maximum-area Sofas" out

pdflatex -shell-escape main
biber main
pdflatex -shell-escape main
pdflatex -shell-escape main
