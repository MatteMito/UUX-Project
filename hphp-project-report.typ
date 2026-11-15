#import "@preview/grape-suite:4.0.0": seminar-paper

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
  semester: [Anno accademico 2025–2026],
  date: none,
  submit-to: [Corso],
  submit-by: [Team Affordance],
  author: authors.map(author => [#author]).join(linebreak()),
  email: none,
  address: none,
  header-left: [HPHP · CUPweb],
  header-right: align(right)[Team Affordance],
  show-todolist: false,
  show-declaration-of-independent-work: false,
  text-font: "Libertinus Serif",
  page-margins: (x: 2.5cm, y: 2.5cm),
)

// Keep the inline quotations and multipage tables used in the report.
#set quote(block: false)
#set par(leading: 0.9em, spacing: 1.2em, first-line-indent: 0pt)
#set list(spacing: 0.5em)
#set enum(spacing: 0.5em)
#show heading: it => block(
  above: if it.level <= 2 { 1.15em } else if it.level == 3 { 0.9em } else { 0.7em },
  sticky: true,
  pad(bottom: if it.level <= 2 { 5pt } else { 3.5pt }, it),
)
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

#heading(level: 1, numbering: "1.")[Riferimenti]

La bibliografia raccoglie libri, capitoli, articoli e rapporti, anche quando
disponibili online; la sitografia raccoglie le pagine e le risorse web.
Le date di consultazione si riferiscono all'accesso agli URL indicati.

== Bibliografia

#bibliography("references/references.bib", title: none)

== Sitografia

#bibliography("references/web-references.bib", title: none)
