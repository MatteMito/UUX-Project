#import "@preview/grape-suite:4.0.0": seminar-paper, colors

#set text(lang: "it")
#let authors = ("Matteo Boscherini", "Alessandro Campedelli", "Francesco Maria Fuligni")
#set document(
  title: [Help People Help People: CUPweb],
  author: authors,
  keywords: ("HPHP", "CUPweb", "usabilità", "user experience design"),
)

#show: seminar-paper.project.with(
  title: [Help People Help People],
  subtitle: [Riprogettazione dell'esperienza di prenotazione e pagamento delle prestazioni sanitarie online su CUPweb],
  university: [Università di Bologna],
  faculty: none,
  institute: none,
  seminar: [Usability & User Experience Design],
  instructor: none,
  semester: [Anno accademico 2025-2026],
  date: none,
  submit-to: [Corso],
  submit-by: [Team Ctrl+Salute],
  author: authors.map(author => [#author]).join(linebreak()),
  email: none,
  address: none,
  header-left: [HPHP · CUPweb],
  header-right: align(right)[Team Ctrl+Salute],
  show-todolist: false,
  show-declaration-of-independent-work: false,
  text-font: "Libertinus Serif",
  page-margins: (x: 2.5cm, y: 2.5cm),
)

// Keep the inline quotations and multipage tables used in the report.
#set quote(block: false)
#set par(leading: 0.82em, spacing: 1.2em, first-line-indent: 0pt)
#set list(tight: false, spacing: 0.85em)
#set enum(tight: false, spacing: 0.85em)
// Course sections, document titles and fields use distinct visual levels.
#show heading: it => {
  let document = repr(it.body).contains("Documento ")
  let size = if it.level == 1 { 19pt } else if document { 12pt } else if it.outlined and it.level == 2 { 16pt } else if it.outlined and it.level == 3 { 13.5pt } else if it.level >= 5 { 10pt } else { 11pt }
  let title = if it.numbering == none { it.body } else { it }
  block(sticky: true)[
    #if document {
      line(length: 100%, stroke: 0.45pt + luma(175))
    }
    #block[
      #show regex("^(Documento [0-9]+[a-z]?:( [0-9]+(\\.[0-9]+)+)?|[0-9]+(\\.[0-9]+)*\\.?) "): prefix => text(
        size: 0.88em,
        weight: "regular",
        fill: colors.purple.lighten(22%),
        prefix,
      )
      #text(size: size, weight: "bold", fill: if it.level == 1 { colors.purple } else { black }, title)
    ]
  ]
}
#show figure.where(kind: table): set block(breakable: true)
#show table.cell: set par(first-line-indent: 0pt, leading: 0.65em)
#set figure(gap: 0.65em)

#heading(outlined: false, numbering: none)[Abstract]

Il presente elaborato documenta il progetto #emph[Help People Help People],
dedicato alla riprogettazione dell'esperienza di prenotazione e disdetta
sanitaria online su CUPweb della Regione Emilia-Romagna, con il pagamento
come percorso accessorio. Il redesign privilegia l'uso da computer e prevede
un adattamento responsive secondario per smartphone. Il lavoro affronta le
barriere di accesso degli utenti anziani e il ruolo dei caregiver familiari,
sostenendo l'autonomia dell'anziano senza sostituirla. Interviste qualitative,
ispezione con linee guida e test preliminari di usabilità su CUPweb e
MioDottore sono tradotti in requisiti, personas, scenari, architettura
dell'informazione e in una suite di 19 wireframe. La valutazione combina
un'ispezione interna con un test utente su cinque partecipanti, tre dei quali
richiamati dalla Fase A: tutti i 15 task sono stati completati con successo,
il SUS medio passa da 38,75 a 83,00 e il tempo medio di sessione da 09:11 a
04:08. L'elaborato si articola in ricerca e valutazione del
servizio, studio di fattibilità, proposta progettuale e valutazione del
redesign.

// Integrazione dei rami: A/B provengono da phase-b (main 9dd9364);
// C/D dalla linea phase-c-start (prima del merge: b10d2d6).
#pagebreak(weak: true)
#include "phase-a/phase-a.typ"
#pagebreak(weak: true)
#include "phase-b/phase-b.typ"
#pagebreak(weak: true)
#include "phase-c/phase-c.typ"
#pagebreak(weak: true)
#include "phase-d/phase-d.typ"

#pagebreak(weak: true)
#show bibliography: set text(size: 10pt)
#show bibliography: set par(leading: 0.65em, justify: false, first-line-indent: 0pt)

#heading(level: 1, numbering: none)[Fonti]

#bibliography(
  ("references/references.bib", "references/web-references.bib"),
  title: none,
  style: "references/fonti.csl",
)
