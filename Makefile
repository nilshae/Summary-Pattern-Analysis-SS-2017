TEXSRCs = main.tex $(wildcard src/*.tex)
IMGSRCs = $(wildcard images/*.*)

all: main.pdf


%.pdf: %.tex
	@latexmk -pdf $<

main.pdf: $(TEXSRCs) $(IMGSRCs)
