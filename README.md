# HPHP — Help People Help People

HPHP (Help People Help People) project for the Usability and User Experience Design course: UX research and redesign of CUPweb to support independent healthcare appointment booking and caregiver assistance.

## Report and materials

- `hphp-project-report.tex` and `report-style.tex`: report source and shared layout.
- `phase-a/` through `phase-d/`: chapters, checklists and editable artifacts.
- `assets/`, `references/` and `research-materials/`: figures, bibliography and source materials.
- `docs/`: project specifications, roadmap and task lists.
- `hphp-project-report.pdf` and `requirements-traceability.html`: readable deliverables.

## Build

Run `make report` (or `make pdf`) with XeLaTeX, latexmk, Biber and the required LaTeX packages installed. The PDF is generated in the repository root; intermediate files are kept in the ignored `.build/` directory. The ignored SyncTeX file remains beside the PDF for editor synchronization.

Run `make clean` to remove disposable compilation files, including saved error files, while retaining the PDF. `LATEXMK` and `BIBER` can be overridden to select local executables.
