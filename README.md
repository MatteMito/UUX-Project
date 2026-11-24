# HPHP — Help People Help People

HPHP (Help People Help People) project for the Usability and User Experience Design course: UX research and redesign of CUPweb to support independent healthcare appointment booking and caregiver assistance.

## Report and materials

- `hphp-project-report.typ`: report entry point and configuration for the Grape Suite seminar paper template.
- `phase-a/` through `phase-d/`: chapters, checklists and editable artifacts.
- `appendices/phase-ab-evidence.typ`: supplementary traceability tables kept outside the main report.
- `phase-a/`: assessment, interviews, preliminary user testing, evidence register and screenshots in dedicated folders.
- `phase-b/portraits/` and `phase-b/charts/`: persona portraits and competency charts.
- `assets/` and `references/`: report figures, bibliography and source copies.
- `docs/`: project specifications, roadmap and task lists.
- `hphp-project-report.pdf` and `requirements-traceability.html`: readable deliverables.

## Build

Run `make report` or `make pdf` with Typst 0.15 or later. On the first build Typst downloads `grape-suite:4.0.0` and its dependencies that are missing from its package cache. The build writes `hphp-project-report.pdf` to the repository root.

Set `TYPST` to use a different compiler executable.
