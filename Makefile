LATEXMK ?= latexmk
BUILD_DIR := build/latex
MAIN := project-report.tex
OUTPUT := hphp-project-report.pdf

.PHONY: pdf clean

pdf:
	mkdir -p $(BUILD_DIR)
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error -outdir=$(BUILD_DIR) -jobname=hphp-project-report $(MAIN)
	cp $(BUILD_DIR)/hphp-project-report.pdf $(OUTPUT)

clean:
	$(LATEXMK) -C -outdir=$(BUILD_DIR) -jobname=hphp-project-report $(MAIN)
