LATEXMK ?= latexmk
BUILD_DIR := .build
MAIN := hphp-project-report.tex
BIBER ?= $(if $(wildcard $(HOME)/.local/share/biber/biber),$(HOME)/.local/share/biber/biber,biber)

.PHONY: pdf clean

pdf:
	mkdir -p $(BUILD_DIR)
	$(LATEXMK) -norc -xelatex -synctex=1 -outdir=$(BUILD_DIR) -interaction=nonstopmode -halt-on-error -file-line-error -e '$$biber = "$(BIBER) %O %S";' $(MAIN)

clean:
	$(LATEXMK) -norc -c -outdir=$(BUILD_DIR) $(MAIN)
