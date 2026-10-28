LATEXMK ?= $(if $(wildcard $(HOME)/.local/bin/latexmk),$(HOME)/.local/bin/latexmk,latexmk)
# Standard MacTeX location, also available to shells without TeX in PATH.
export PATH := $(PATH):/Library/TeX/texbin
BUILD_DIR := .build
MAIN := hphp-project-report.tex
BIBER ?= $(if $(wildcard $(HOME)/.local/share/biber/biber),$(HOME)/.local/share/biber/biber,biber)

.PHONY: report pdf clean

report: pdf

pdf:
	mkdir -p $(BUILD_DIR)
	$(LATEXMK) -norc -xelatex -synctex=1 -emulate-aux-dir -auxdir=$(BUILD_DIR) -outdir=. -interaction=nonstopmode -halt-on-error -file-line-error -e '$$biber = "$(BIBER) %O %S";' $(MAIN)

clean:
	$(LATEXMK) -norc -c -emulate-aux-dir -auxdir=$(BUILD_DIR) -outdir=. $(MAIN)
	rm -f $(BUILD_DIR)/*-SAVE-ERROR
