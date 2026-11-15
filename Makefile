TYPST ?= typst
MAIN := hphp-project-report.typ
PDF := hphp-project-report.pdf

.PHONY: report pdf

report: pdf

pdf:
	$(TYPST) compile $(MAIN) $(PDF)
