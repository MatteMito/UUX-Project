LATEXMK ?= latexmk
BUILD_DIR := build/latex
MAIN := hphp-project-report.tex

.PHONY: pdf clean

pdf:
	mkdir -p $(BUILD_DIR)
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error -outdir=$(BUILD_DIR) -jobname=hphp-project-report $(MAIN)

clean:
	$(LATEXMK) -C -outdir=$(BUILD_DIR) -jobname=hphp-project-report $(MAIN)
	rm -rf build
