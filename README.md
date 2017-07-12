# My curriculum vitæ

Here's my curriculum vitæ in LaTeX format. If you have a LaTeX distribution installed, it's enough to run

```
latexmk -pdf -lualatex -outdir=output CV.tex
```

to create the final PDF.

If you don't, a Docker image is provided with the needed packages to compile. Just execute `./docker/build.sh` for some magic.
