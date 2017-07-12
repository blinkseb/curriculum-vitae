#! /bin/bash

docker build -t latex-container docker/
docker run --rm --user="$(id -u):$(id -g)" -v "$(pwd)":/data -it latex-container latexmk -pdf -lualatex -outdir=output -quiet CV.tex

echo ""
ln -sf output/CV.pdf .
echo "All done"
