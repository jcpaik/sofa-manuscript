set -e
setopt extendedglob

rm main.*~main.tex(.)

pdflatex -shell-escape main
bibtex main
pdflatex -shell-escape main
pdflatex -shell-escape main
