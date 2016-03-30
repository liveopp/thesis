#
# Makefile for LaTeX template of USTC thesis
#
# Reference:
#	1. http://tex.stackexchange.com/questions/40738/
#	2. Manual of latexmk
#

.PHONY: main.pdf cover.pdf all clean

all: main.pdf

main.pdf: main.tex
	latexmk -xelatex -synctex=1 -shell-escape -use-make $^
show: main.pdf
	open main.pdf
clean:
	latexmk -c
	-rm *.bbl *.loa
