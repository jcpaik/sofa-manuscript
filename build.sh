set -e
setopt extendedglob

rm main.*~main.tex
rm -r out
rm main.*~main.tex(.)
mathmd vault out

pdflatex -shell-escape main
bibtex main
pdflatex -shell-escape main
pdflatex -shell-escape main
