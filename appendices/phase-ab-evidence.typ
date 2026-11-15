// Project decision traceability; original assessment workbooks are preserved separately.

= Tracciabilità delle decisioni progettuali <app:traceability>

Le tabelle raccolgono le relazioni di derivazione fra criticità (ID),
raccomandazioni (R), requisiti di servizio (REQ), implicazioni delle
personas e dei casi d'uso (P/U) e requisiti cumulativi del cast (C).
Ogni identificativo rimanda alla sua definizione. Una relazione esprime
una motivazione progettuale e non dimostra, da sola, l'efficacia della
soluzione. Per ID-13, impatto e persistenza sono giudizi progettuali sul
caso di Giorgio; il pagamento non rientra nei test preliminari.

== Dalle criticità alle raccomandazioni

#[
#set text(size: 10pt)
#set par(justify: false)
#set table.cell(breakable: false)
#table(
  columns: (20fr, 80fr,),
  align: (left, left,),
  inset: (x: 4pt, y: 3pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Destinazione]], [#strong[Deriva da]],
    table.hline(stroke: 0.45pt + luma(170)),
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [#link(<req:R-01>)[R-01]], [#link(<req:ID-01>)[ID-01], #link(<req:ID-05>)[ID-05]],
  [#link(<req:R-02>)[R-02]], [#link(<req:ID-02>)[ID-02]],
  [#link(<req:R-03>)[R-03]], [#link(<req:ID-03>)[ID-03], #link(<req:ID-04>)[ID-04]],
  [#link(<req:R-04>)[R-04]], [#link(<req:ID-05>)[ID-05], #link(<req:ID-08>)[ID-08]],
  [#link(<req:R-05>)[R-05]], [#link(<req:ID-06>)[ID-06]],
  [#link(<req:R-06>)[R-06]], [Scelta progettuale su ruoli e autonomia (#link(<doc:a:04a>)[Documento~04a] e #link(<doc:a:04b>)[Documento~04b]).],
  [#link(<req:R-07>)[R-07]], [#link(<req:ID-09>)[ID-09], #link(<req:ID-10>)[ID-10]],
  [#link(<req:R-08>)[R-08]], [#link(<req:ID-11>)[ID-11]],
  [#link(<req:R-09>)[R-09]], [#link(<req:ID-12>)[ID-12]],
  [#link(<req:R-10>)[R-10]], [#link(<req:ID-13>)[ID-13]],
  table.hline(stroke: 0.75pt),
)
]

== Dalle raccomandazioni ai requisiti

#[
#set text(size: 10pt)
#set par(justify: false)
#set table.cell(breakable: false)
#table(
  columns: (20fr, 80fr,),
  align: (left, left,),
  inset: (x: 4pt, y: 3pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Destinazione]], [#strong[Deriva da]],
    table.hline(stroke: 0.45pt + luma(170)),
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [#link(<req:REQ-01>)[REQ-01]], [#link(<req:R-01>)[R-01]],
  [#link(<req:REQ-02>)[REQ-02]], [#link(<req:R-02>)[R-02]],
  [#link(<req:REQ-03>)[REQ-03]], [#link(<req:R-03>)[R-03]],
  [#link(<req:REQ-04>)[REQ-04]], [#link(<req:R-04>)[R-04]],
  [#link(<req:REQ-05>)[REQ-05]], [#link(<req:R-05>)[R-05]],
  [#link(<req:REQ-06>)[REQ-06]], [#link(<req:R-06>)[R-06]],
  [#link(<req:REQ-07>)[REQ-07]], [#link(<req:R-07>)[R-07]],
  [#link(<req:REQ-08>)[REQ-08]], [#link(<req:R-08>)[R-08]],
  [#link(<req:REQ-09>)[REQ-09]], [#link(<req:R-09>)[R-09]],
  [#link(<req:REQ-10>)[REQ-10]], [#link(<req:R-10>)[R-10]],
  table.hline(stroke: 0.75pt),
)
]

== Dai requisiti alle personas e ai casi d'uso

#[
#set text(size: 10pt)
#set par(justify: false)
#set table.cell(breakable: false)
#table(
  columns: (20fr, 80fr,),
  align: (left, left,),
  inset: (x: 4pt, y: 3pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Destinazione]], [#strong[Deriva da]],
    table.hline(stroke: 0.45pt + luma(170)),
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [#link(<req:P-01>)[P-01]], [#link(<req:REQ-01>)[REQ-01], #link(<req:REQ-04>)[REQ-04]],
  [#link(<req:P-02>)[P-02]], [#link(<req:REQ-03>)[REQ-03]],
  [#link(<req:P-03>)[P-03]], [#link(<req:REQ-03>)[REQ-03], #link(<req:REQ-04>)[REQ-04]],
  [#link(<req:P-04>)[P-04]], [#link(<req:REQ-06>)[REQ-06], #link(<req:REQ-07>)[REQ-07]],
  [#link(<req:P-05>)[P-05]], [#link(<req:REQ-06>)[REQ-06]],
  [#link(<req:P-06>)[P-06]], [#link(<req:REQ-03>)[REQ-03], #link(<req:REQ-10>)[REQ-10]],
  [#link(<req:P-07>)[P-07]], [#link(<req:REQ-03>)[REQ-03]],
  [#link(<req:P-08>)[P-08]], [#link(<req:REQ-03>)[REQ-03], #link(<req:REQ-02>)[REQ-02]],
  [#link(<req:P-09>)[P-09]], [#link(<req:REQ-03>)[REQ-03], #link(<req:REQ-09>)[REQ-09]],
  [#link(<req:P-10>)[P-10]], [#link(<req:REQ-07>)[REQ-07]],
  [#link(<req:P-11>)[P-11]], [#link(<req:REQ-08>)[REQ-08]],
  [#link(<req:U1-01>)[U1-01]], [#link(<req:REQ-04>)[REQ-04]],
  [#link(<req:U1-02>)[U1-02]], [#link(<req:REQ-04>)[REQ-04]],
  [#link(<req:U2-01>)[U2-01]], [#link(<req:REQ-04>)[REQ-04]],
  [#link(<req:U2-02>)[U2-02]], [#link(<req:REQ-07>)[REQ-07]],
  [#link(<req:U3-01>)[U3-01]], [#link(<req:REQ-04>)[REQ-04], #link(<req:REQ-08>)[REQ-08]],
  [#link(<req:U3-02>)[U3-02]], [#link(<req:REQ-04>)[REQ-04], #link(<req:REQ-07>)[REQ-07]],
  [#link(<req:U4-01>)[U4-01]], [#link(<req:REQ-08>)[REQ-08]],
  [#link(<req:U4-02>)[U4-02]], [#link(<req:REQ-07>)[REQ-07], #link(<req:REQ-09>)[REQ-09]],
  table.hline(stroke: 0.75pt),
)
]

== Dalle implicazioni al cast

#[
#set text(size: 10pt)
#set par(justify: false)
#set table.cell(breakable: false)
#table(
  columns: (20fr, 80fr,),
  align: (left, left,),
  inset: (x: 4pt, y: 3pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Destinazione]], [#strong[Deriva da]],
    table.hline(stroke: 0.45pt + luma(170)),
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [#link(<req:C-01>)[C-01]], [#link(<req:P-01>)[P-01], #link(<req:P-02>)[P-02], #link(<req:P-03>)[P-03]],
  [#link(<req:C-02>)[C-02]], [#link(<req:P-04>)[P-04], #link(<req:P-05>)[P-05]],
  [#link(<req:C-03>)[C-03]], [#link(<req:U1-01>)[U1-01], #link(<req:U2-01>)[U2-01]],
  [#link(<req:C-04>)[C-04]], [#link(<req:U1-02>)[U1-02], #link(<req:U2-02>)[U2-02]],
  [#link(<req:C-05>)[C-05]], [#link(<req:P-03>)[P-03], #link(<req:P-04>)[P-04]],
  [#link(<req:C-06>)[C-06]], [#link(<req:P-06>)[P-06], #link(<req:P-08>)[P-08]],
  [#link(<req:C-07>)[C-07]], [#link(<req:P-02>)[P-02], #link(<req:P-07>)[P-07]],
  [#link(<req:C-08>)[C-08]], [#link(<req:U3-01>)[U3-01], #link(<req:U3-02>)[U3-02]],
  [#link(<req:C-09>)[C-09]], [#link(<req:P-09>)[P-09], #link(<req:P-03>)[P-03]],
  [#link(<req:C-10>)[C-10]], [#link(<req:P-10>)[P-10], #link(<req:P-04>)[P-04], #link(<req:P-05>)[P-05]],
  [#link(<req:C-11>)[C-11]], [#link(<req:P-11>)[P-11], #link(<req:U4-01>)[U4-01]],
  [#link(<req:C-12>)[C-12]], [#link(<req:U4-02>)[U4-02], #link(<req:U2-02>)[U2-02]],
  [#link(<req:C-13>)[C-13]], [#link(<req:P-06>)[P-06], #link(<req:P-08>)[P-08]],
  table.hline(stroke: 0.75pt),
)
]
