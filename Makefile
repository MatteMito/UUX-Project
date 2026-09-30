LATEXMK ?= latexmk
BUILD_DIR := build/latex
MAIN := hphp-project-report.tex
AUX_EXTENSIONS := aux bbl bcf blg fdb_latexmk fls dvi lof log lot out run.xml synctex.gz toc xdv

.PHONY: pdf clean

pdf:
	mkdir -p $(BUILD_DIR)
	$(LATEXMK) -xelatex -synctex=1 -interaction=nonstopmode -halt-on-error -emulate-aux-dir -auxdir=$(BUILD_DIR) -outdir=$(BUILD_DIR) -out2dir=. -e '@out2_exts = ( "pdf" );' -jobname=hphp-project-report $(MAIN)

clean:
	rm -rf $(BUILD_DIR)
	rm -f $(addprefix $(basename $(MAIN)).,$(AUX_EXTENSIONS))
