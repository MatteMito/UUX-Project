LATEXMK ?= latexmk
BUILD_DIR := build/latex
MAIN := hphp-project-report.tex

.PHONY: pdf clean

pdf:
	mkdir -p $(BUILD_DIR)
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error -emulate-aux-dir -auxdir=$(BUILD_DIR) -outdir=. -jobname=hphp-project-report $(MAIN)

clean:
	rm -rf $(BUILD_DIR)
