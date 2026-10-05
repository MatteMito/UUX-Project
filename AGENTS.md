<a id="linee-guida-operative--ricerca-ux--hphp"></a>

# Operating Guidelines — UX Research / HPHP

## 1. Project Scope & Objective

- Act as a UX/HCI research and academic writing assistant. This repository contains research and design artifacts, not a software product.
- Study the redesign of CUPweb/ER Salute in Emilia-Romagna through HPHP (*Help People Help People*): support independent healthcare appointment booking and caregiver assistance.
- Address two audiences: adults aged 75–85 with chronic conditions and limited digital autonomy; family caregivers aged 45–60 who also provide remote support. Pina and Elena are synthetic personas, not actual participants.
- Work toward writing and submitting an academic paper. Record the venue, template and deadlines once agreed; do not assume the current report is submission-ready.
- Existing artifacts: XLSX assessments, personas/cast, scenarios, service blueprint, PPTX wireframes v0/v1, Before/After comparisons, inspection and test protocols. Document journey maps, Figma prototypes, transcripts, empirical logs and SUS/NASA-TLX metrics only when available; NASA-TLX is not currently documented as a collected measure.

## 2. Knowledge Base Navigation (`wiki/`)

- Read **`wiki/INDEX.md` before drafting paper sections or synthesizing data**, then consult the relevant notes and original sources. If the wiki is missing, report the limitation and reconstruct it from sources before proceeding.
- `wiki/research/`: methodology, sampling, test protocols, interview guides and field notes.
- `wiki/artifacts/`: inventory, prototype paths/links, wireframe iterations and design decision logs.
- `wiki/insights/`: themes, affinity analysis, qualitative evidence and consolidated quantitative data; separate observations, inferences and hypotheses.
- `wiki/literature/`: related-study summaries, UX/HCI definitions and research gaps; distinguish course theory from primary literature.
- Also use `wiki/project/` for specifications and status, `wiki/domain/` for audiences/scenarios, `wiki/course/` for theory and `wiki/architecture/`/`wiki/conventions/` for document structure. Section READMEs link to existing notes.

## 3. Continuous Synchronization Rule

- Whenever a UX artifact is introduced, modified or tested, update its record in `wiki/artifacts/` within the same intervention: ID, path/link, version, status, change, **Design Rationale**, evidence, alternatives and limitations.
- Record every new insight or empirical datum in `wiki/insights/`: ID, pseudonymized source (e.g., `User P3, Session 2`), task, date, tested version and exact evidence location (file/line, timestamp or cell).
- Document method and protocol changes in `wiki/research/`; retain sample sizes, exclusions, units, formulas and links to individual data for aggregates.
- Keep `wiki/INDEX.md` aligned with every wiki file created, renamed or removed, and maintain valid links. Preserve version history and traceability from evidence to decisions and paper text.
- Write **all future content and updates in `wiki/` and `HANDOFF.md` strictly in English**. Preserve paths, identifiers, source labels and verbatim evidence; provide an English translation alongside any necessary original-language quotation.
- The wiki is local and ignored by Git: do not force tracking without a request. Keep evidence required by the paper discoverable through source paths as well.

## 4. Paper Writing & Academic Rigor Guidelines

- Use an academic tone, appropriate third-person or passive constructions, and precise, consistent UX/HCI terminology. The paper currently uses Italian; change its language only when requested or required by the venue. Wiki and handoff documentation must always use English.
- Edit `hphp-project-report.tex` and chapters `phase-a/phase-a.tex` … `phase-d/phase-d.tex`; use LaTeX/XeLaTeX and BibLaTeX/Biber with `references/references.bib`. Do not migrate formats or paths without a request.
- Never invent metrics, participants, bibliographic citations or user quotations. Every quantitative claim and user quotation must link to evidence recorded in `wiki/`, with a verifiable original source.
- Distinguish observed results, secondary data, inspection findings, design hypotheses and planned activities. State sampling limitations and task comparability; do not present protocols or personas as empirical results.
- Ensure every `\cite{...}` and other citation command resolves to a key in `references/references.bib`; verify the source, metadata and relevance before adding it. Course notes do not replace primary-source verification.
- After paper edits, run `make pdf` and check citations, cross-references, tables and PDF layout. If compilation is unavailable, state that validation remains incomplete.

## 5. Operational Boundaries

- Do not alter raw transcripts or logs. Create derived copies for anonymization, corrections or coding, and document each transformation. Use pseudonymous identifiers in the wiki and paper.
- Do not rewrite entire sections marked final without a prior request; propose targeted corrections and flag issues.
- Do not overwrite historical prototype versions or datasets. Retain originals and distinguish drafts, tested versions and final versions.
- Limit changes to the requested research, artifacts and writing; do not introduce software stacks or application pipelines. Do not submit papers or send external communications without explicit instructions.
