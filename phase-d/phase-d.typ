#import "@preview/grape-suite:4.0.0": seminar-paper
#import seminar-paper: notice

#set figure(numbering: n => numbering("1.1", 4, n))
#counter(figure.where(kind: image)).update(0)
#counter(figure.where(kind: table)).update(0)

// Fase D: valutazione del redesign (HPHP - Team Affordance).

#heading(level: 1, numbering: none)[FASE D]
#block(sticky: true)[#text(size: 13pt, weight: "semibold")[Valutazione del redesign]]

#set heading(numbering: none)

#heading(level: 2, numbering: none)[5\. Valutazione del progetto]

La Fase D valuta il redesign con un'ispezione e un test con utenti~#cite(<iso9241210_2010>). In primo luogo, un'ispezione interna condotta dal team di valutazione mediante Cognitive Walkthrough con Action Analysis (#link(<doc:d:02a>)[Documento~02a]) e Heuristic Analysis (#link(<doc:d:02b>)[Documento~02b]) verifica la coerenza logica, la navigabilità e l'aderenza ai principi di usabilità della suite di 19 wireframe (WF-01--WF-19). Successivamente, una sessione di User Testing con cinque partecipanti reali (#link(<doc:d:03>)[Documento~03]) ripropone protocollo, compiti e metriche della Fase A, compresa la scala SUS~#cite(<sauroSUS2011>), per misurare l'efficacia sul campo del redesign. Il #link(<doc:d:04>)[Documento~04] sintetizza gli obiettivi raggiunti, analizza criticamente i problemi residui e formula le raccomandazioni conclusive.

// --- Card 02a ----------------------------------------------------

#heading(level: 3, numbering: none)[5.1 Ispezione]

==== Documento 02a: Scheda di ispezione: Cognitive Walkthrough e Action Analysis <doc:d:02a>

#heading(level: 5, numbering: none, outlined: false)[Impostazione dell'ispezione]

#heading(level: 5, numbering: none, outlined: false)[Oggetto della valutazione]

La suite completa di 19 schermate desktop (WF-01--WF-19) e i sei Structure Blueprint definiti in Fase C (#link(<doc:c:03>)[Documento~03], #link(<doc:c:04>)[Documento~04]), valutati per verificare la rimozione degli attriti cognitivi, lessicali e visivi riscontrati su CUPweb prima della validazione sul campo con persone reali.

#heading(level: 5, numbering: none, outlined: false)[Contesto e ruoli]

Sessione in presenza del 18 ottobre 2026 (14:30--17:30) in laboratorio, su monitor desktop da 24” a 1920$times$1080. I ruoli erano tre:

#list(
  [#strong[Narratore:] Matteo Boscherini, che presenta gli stati dei wireframe seguendo lo scenario;],
  [#strong[Interprete di Pina:] Alessandro Campedelli, che risponde attenendosi al profilo della protagonista (78 anni, competenza tecnica 1/5, abilità fisica e visiva 2/5, forte timore di errori irreversibili, #link(<doc:b:02a>)[Documento~02a]);],
  [#strong[Verbalizzatore:] Francesco Maria Fuligni, che registra le risposte sul foglio di osservazione e conta le azioni per l'Action Analysis.],
)

#heading(level: 5, numbering: none, outlined: false)[Metodi e compiti]

Nel Cognitive Walkthrough il team ricostruisce le azioni che Pina potrebbe compiere al primo utilizzo, tenendo conto delle sue competenze, delle indicazioni a schermo e del feedback. L'Action Analysis informale confronta clic, digitazioni e passaggi tra domini nei due sistemi.

I compiti sono due, entrambi sul profilo di Pina:

#list(
  [#strong[CW-T1, prenotazione guidata:] prenotare la visita diabetologica di controllo con ricetta NRE in regime pubblico, scegliendo una sede raggiungibile con l'autobus dopo le 10:00, verificando costi e pagamento e inviando il promemoria alla figlia Elena (WF-01--WF-10, con WF-07 e WF-17);],
  [#strong[CW-T2, disdetta protetta:] consultare “I miei appuntamenti” e annullare una visita senza sanzioni (WF-11--WF-14).],
)

#heading(level: 5, numbering: none, outlined: false)[Analisi passo-passo del Cognitive Walkthrough]

La Tabella~#ref(<tab:d-cw>, supplement: none) riporta gli esiti per ciascun passo del percorso. La scheda del team registra quattro aspetti: obiettivo (1), visibilità dell'azione (2), corrispondenza tra azione ed esito (3) e feedback (4). S indica un esito positivo, P un esito parziale.

#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#set table.cell(breakable: false)
#table(
  columns: (19fr, 6fr, 6fr, 6fr, 6fr, 57fr,),
  align: (left, center, center, center, center, left,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Passo (schermata)]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[Osservazioni del team]],
    table.hline(stroke: 0.45pt + luma(170)),
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Accesso con PIN a 4 cifre (WF-01)], [S], [S], [S], [S], [Il PIN a 4 cifre con etichetta di validità (30 giorni) e tasto “Cancella cifre” evita l'ansia da blocco della tessera e rende immediato l'accesso.],
  [Cruscotto e avvio prenotazione (WF-02)], [S], [S], [S], [S], [Il comando “Prenotazione rapida” evidenzia subito la visita diabetologica ricorrente, azzerando la ricerca visiva nell'elenco.],
  [Scelta della ricetta (WF-03)], [S], [S], [S], [S], [Le schede delle ricette riportano medico prescrittore, data e ultime cifre dell'NRE, consentendo una corrispondenza diretta con il promemoria cartaceo.],
  [Confronto pubblico/privato (WF-04)], [S], [S], [S], [S], [Il confronto a due colonne con “Costo per te: 0,00~€” (esenzione per patologia) dissipa ogni timore di addebito o scelta errata.],
  [Struttura, giorno e orario (WF-05, WF-06)], [S], [S], [S], [P], [I badge di mobilità (distanza, bus) orientano la scelta verso l'ospedale abituale. Rilevata solo una nota grafica: mantenere il badge statico visivamente distinto dai pulsanti.],
  [Riepilogo e conferma (WF-09)], [S], [S], [S], [S], [Il banner verde di riserva temporanea per 15 minuti protegge la scelta senza l'effetto ansiogeno di un conto alla rovescia d'emergenza.],
  [Promemoria e guida pagoPA (WF-10, WF-17)], [S], [S], [S], [S], [La condivisione con un clic (WhatsApp al caregiver) e il fac-simile annotato del bollettino pagoPA offrono una rassicurazione tangibile.],
  [Appuntamenti e disdetta (WF-11--WF-14)], [S], [S], [S], [S], [Percorso di disdetta guidato e rassicurante: pulsante dedicato, modale che certifica l'assenza di sanzioni e finestra di 10 minuti per eventuale ripensamento.],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Cognitive Walkthrough sul percorso di prenotazione guidata (persona Pina)]),
) <tab:d-cw>

La scheda riporta 31 esiti positivi e uno parziale su 32 verifiche. Il team ha segnalato la somiglianza visiva tra gli indicatori di mobilità e i pulsanti di scelta della sede.

#heading(level: 5, numbering: none, outlined: false)[Action Analysis: CUPweb originale vs redesign]

La Tabella~#ref(<tab:d-action-analysis>, supplement: none) confronta il carico procedurale del compito di prenotazione con ricetta elettronica sul portale originale e sul redesign.

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (1fr, 17%, 19%, 17%,),
  align: (left, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Parametro]], [#strong[CUPweb originale]], [#strong[Redesign HPHP]], [#strong[Variazione]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Cambi di dominio web], [3], [1 ambiente unico], [−66,7%],
  [Autenticazioni bloccanti], [Ogni sessione (SPID + OTP)], [1 PIN, valido 30 giorni], [−100%],
  [Caratteri da digitare], [$>=$ 31], [4 (solo PIN)], [−87,1%],
  [Schermate per una visita ricorrente], [8], [3], [−62,5%],
  [Clic per una prenotazione standard], [14], [6], [−57,1%],
  [Condivisione del promemoria], [Non supportata], [1 clic], [Introdotta],
  [Annullamento di una disdetta], [Impossibile], [1 clic entro 10 minuti], [Introdotto],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Action Analysis del compito di prenotazione con ricetta e pagamento]),
) <tab:d-action-analysis>
]
]

Il redesign riduce dell'87,1% le digitazioni, perché la ricetta si seleziona dal Fascicolo Sanitario invece di trascrivere le 15 cifre dell'NRE, e del 57,1% i clic, azzerando i salti tra domini diversi che in Fase A avevano compromesso la fiducia (#link(<req:ID-02>)[ID-02]).

// --- Card 02b ----------------------------------------------------

==== Documento 02b: Scheda di ispezione: Heuristic Analysis e conformità del redesign <doc:d:02b>

#heading(level: 5, numbering: none, outlined: false)[Impostazione dell'ispezione euristica]

#heading(level: 5, numbering: none, outlined: false)[Versione valutata, metodo e procedura]

L'ispezione ha riguardato l'intera suite progettuale (19 schermate e 6 blueprint) e ha adottato due riferimenti metodologici complementari:

#list(
  [le 10 euristiche di Nielsen;],
  [le nove categorie della griglia di 88 linee guida già applicata a CUPweb e MioDottore in Fase A (#link(<doc:a:05a>)[Documento~05a]):

#list(
  [Usabilità della home page;],
  [Orientamento al compito;],
  [Navigazione e architettura dell'informazione;],
  [Moduli e inserimento dati;],
  [Fiducia e credibilità;],
  [Qualità della scrittura e dei contenuti;],
  [Impaginazione e design visivo;],
  [Usabilità della ricerca;],
  [Aiuto, feedback ed errori.],
)],
)

I tre valutatori (Boscherini, Campedelli e Fuligni) hanno svolto la valutazione individuale in parallelo il 19 ottobre 2026 (90 minuti ciascuno) e hanno successivamente riconciliato i finding in una sessione plenaria collegiale il 20 ottobre.

Nella scheda di ispezione il codice 1 indica un problema cosmetico e il codice 2 un problema minore.

#heading(level: 5, numbering: none, outlined: false)[Valutazione euristica]

La Tabella~#ref(<tab:d-heuristics-overview>, supplement: none) sintetizza il grado complessivo di aderenza del prototipo alle 10 euristiche, evidenziando i punti di forza strutturali e le soluzioni incorporate nel design. Il giudizio qualitativo (#emph[Buono] o #emph[Eccellente]) sintetizza l'aderenza a ciascuna euristica.

#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#set table.cell(breakable: false)
#table(
  columns: (29fr, 14fr, 57fr,),
  align: (left, center, left,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Euristica]], [#strong[Aderenza]], [#strong[Riscontro nel redesign desktop]],
    table.hline(stroke: 0.45pt + luma(170)),
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [1. Visibilità dello stato del sistema], [Buono], [Stepper a 4 passi, breadcrumb e indicatore del profilo attivo. Solo nel banner di disdetta (WF-14) il momento di invio dell'SMS al caregiver beneficia di un chiarimento esplicito (#link(<req:H-02>)[H-02]).],
  [2. Corrispondenza con il mondo reale], [Eccellente], [Compiti in linguaggio naturale, bollettino pagoPA riprodotto fedelmente con richiami numerici ai campi (WF-17) e glossa esplicativa per la Libera Professione.],
  [3. Controllo e libertà dell'utente], [Buono], [Ritorno ai passi precedenti senza perdere le scelte, comando evidente “Termina condivisione” nel Co-pilota (WF-07) e ripensamento di 10 minuti sulla disdetta (WF-14).],
  [4. Coerenza e standard], [Eccellente], [Codifica cromatica costante: verde per le azioni primarie, blu per i pagamenti, arancione per il caregiver, rosso solo per la disdetta. Il badge statico in WF-05 richiede solo di non apparire cliccabile (#link(<req:H-01>)[H-01]).],
  [5. Prevenzione degli errori], [Eccellente], [Bersagli ampi, raggruppamento in quartine e convalida sintattica del Codice Avviso pagoPA (WF-17, WF-18), e comandi “Sposta” e “Disdici” nettamente distanziati.],
  [6. Riconoscimento anziché ricordo], [Eccellente], [Ricette pre-caricate dal Fascicolo, strutture ordinate per distanza e fac-simile annotato pagoPA eliminano ogni trascrizione mnemonica di codici. Il pulsante “Disdici” in WF-12 beneficia di un'ancora visiva in testa alla scheda (#link(<req:H-03>)[H-03]).],
  [7. Flessibilità ed efficienza d'uso], [Buono], [Prenotazione rapida da cruscotto e delega diretta; con tre o più assistiti le card di WF-15 traggono vantaggio da una vista compatta (#link(<req:H-04>)[H-04]).],
  [8. Design estetico e minimalista], [Eccellente], [Un solo compito decisionale per schermata, alto contrasto, assenza di elementi decorativi superflui e selettore del testo A/A+ sempre presente.],
  [9. Recupero dagli errori], [Eccellente], [WF-08 offre alternative orarie a un clic, messaggi di errore non colpevolizzanti su credenziali e riserva temporanea serena di 15 minuti su WF-09.],
  [10. Aiuto e documentazione], [Eccellente], [Il pannello “Serve aiuto?” (WF-19) offre codice di salvataggio a 6 cifre, chat scritta e Numero Verde senza lasciare la pratica.],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Aderenza alle dieci euristiche]),
) <tab:d-heuristics-overview>

#heading(level: 5, numbering: none, outlined: false)[Finding e punti di attenzione dell'Heuristic Analysis]

La Tabella~#ref(<tab:d-heuristic-findings>, supplement: none) censisce i quattro punti di attenzione specifici individuati dall'ispezione esperta sulle schermate del redesign, classificati per euristica e gravità. Il team ha assegnato a tutti i rilievi un codice 1 o 2.

#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#set table.cell(breakable: false)
#table(
  columns: (7fr, 15fr, 21fr, 11fr, 46fr,),
  align: (left, left, left, center, left,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[ID]], [#strong[Schermata]], [#strong[Euristica violata]], [#strong[Gravità]], [#strong[Descrizione e impatto]],
    table.hline(stroke: 0.45pt + luma(170)),
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [#strong[H-01]<req:H-01>], [WF-05], [4. Coerenza e standard], [2], [Il badge statico di prossimità (“Consigliata · Più vicina a te”) presenta un trattamento visivo a chip simile a un selettore interattivo, rischiando di indurre clic a vuoto in utenti con ridotta padronanza grafica (anticipa #link(<req:RES-01>)[RES-01]).],
  [#strong[H-02]<req:H-02>], [WF-14], [1. Stato del sistema], [2], [Il banner di ripensamento di 10 minuti non esplicita il momento esatto di invio dell'SMS di notifica al caregiver, lasciando un lieve dubbio sulla tempestività del recapito (anticipa #link(<req:RES-02>)[RES-02]).],
  [#strong[H-03]<req:H-03>], [WF-12], [6. Riconoscimento], [2], [Il pulsante “Disdici” è collocato in calce alla scheda informativa dopo la checklist dei documenti, richiedendo uno scorrimento visivo che può rallentarne l'individuazione immediata (anticipa #link(<req:RES-03>)[RES-03]).],
  [#strong[H-04]<req:H-04>], [WF-15], [7. Flessibilità ed efficienza], [1], [L'impaginazione a card per la gestione delle deleghe familiari, ideale per uno o due assistiti, genera uno scorrimento verticale significativo nel caso di caregiver con molti familiari a carico (anticipa #link(<req:RES-04>)[RES-04]).],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Punti di attenzione e finding dell'Heuristic Analysis]),
) <tab:d-heuristic-findings>

#heading(level: 5, numbering: none, outlined: false)[Riesame delle linee guida di Fase A sul redesign]

Applicata al redesign la stessa griglia di Fase A (#link(<doc:a:05a>)[Documento~05a]), risultano superate tutte le 12 non conformità e le 7 conformità parziali rilevate su CUPweb: l'esplorazione non è più bloccata da SPID, la navigazione segue i compiti dell'utente, prenotazione, ricette e pagamento stanno in un unico ambiente, i termini tecnici sono spiegati, la gerarchia visiva usa icone, colore e testo ridimensionabile, e il sistema offre ripresa della sessione, conferma delle azioni irreversibili e assistenza scritta.

// --- Card 03 ----------------------------------------------------

#heading(level: 3, numbering: none)[5.2 Test con utenti]

#heading(level: 4, numbering: none)[Documento 03: Scheda dei test con utenti sul redesign] <doc:d:03>

#heading(level: 5, numbering: none, outlined: false)[Protocollo di valutazione]

#heading(level: 5, numbering: none, outlined: false)[Versione testata e pilot]

La suite testata coincide con le 19 schermate desktop (WF-01--WF-19, #link(<doc:c:04>)[Documento~04]), predisposta come prototipo interattivo e congelata prima della campagna: non è stata modificata durante lo svolgimento dei test. Il 21 ottobre un pilot interno di 22 minuti ha verificato transizioni e consegne e ha suggerito di far controllare ai partecipanti, dentro T1, anche il pagamento assistito (WF-17, WF-18), così da validare la risoluzione di #link(<req:ID-13>)[ID-13] senza alterare la struttura dei tre compiti di Fase A.

#heading(level: 5, numbering: none, outlined: false)[Configurazione delle sessioni]

In Fase A Giorgio aveva usato un tablet mentre gli altri partecipanti usavano il PC (#link(<doc:a:06a>)[Documento~06a]). In Fase D tutte le sessioni si sono svolte su computer con schermo ampio e mouse, in presenza (Carla, Sergio, Laura) o in videochiamata con schermo condiviso (Silvia, Giorgio), con dati fittizi e senza mai toccare dati sanitari o bancari reali.

#heading(level: 5, numbering: none, outlined: false)[Compiti e metriche]

I compiti ripropongono quelli di Fase A (#link(<doc:a:06a>)[Documento~06a]), dal tentativo esplorativo al completamento end-to-end:

#list(
  [#strong[T1, accesso e prenotazione guidata (Thinking Aloud):] dalla schermata iniziale, entrare, scegliere la prestazione, confrontare i costi tra servizio pubblico e Libera Professione, scegliere sede e orario al mattino, controllare il riepilogo con il pagamento pagoPA e confermare (WF-01--WF-10, WF-17);],
  [#strong[T2, gestione e disdetta di un appuntamento (Bottom Line Data):] trovare la visita fissata, aprirne i dettagli e disdirla (WF-11--WF-14), senza commentare ad alta voce;],
  [#strong[T3, supporto, continuità e condivisione (Thinking Aloud):] chiedere aiuto o salvare il punto raggiunto (WF-19), attivare il Co-pilota (WF-07) o passare al profilo del familiare in delega (WF-15), inviare o stampare il promemoria (WF-10).],
)

Le metriche sono il successo (sì = 100%, parziale = 50%, no = 0%), il tempo per task e per sessione in mm:ss, il numero e il tipo di errori (slip motori o mistake cognitivi), la learnability e la soddisfazione, misurata con i 10 item standard della SUS su scala da 1 a 5 (Tabella~#ref(<tab:d-sus-items>, supplement: none)).

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (auto, 1fr,),
  align: (center, left,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[\#]], [#strong[Affermazione]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [1], [Penso che mi piacerebbe usare questo sistema frequentemente],
  [2], [Ho trovato il sistema inutilmente complesso],
  [3], [Ho trovato il sistema facile da usare],
  [4], [Penso che avrei bisogno del supporto di una persona tecnica per usare questo sistema],
  [5], [Ho trovato che le varie funzioni di questo sistema fossero ben integrate],
  [6], [Ho trovato troppa incoerenza in questo sistema],
  [7], [Immagino che la maggior parte delle persone imparerebbe a usare questo sistema molto rapidamente],
  [8], [Ho trovato il sistema molto scomodo da usare],
  [9], [Mi sono sentito/a molto sicuro/a nell'usare questo sistema],
  [10], [Ho avuto bisogno di imparare molte cose prima di riuscire ad usare questo sistema],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Item della SUS e calcolo del punteggio]),
) <tab:d-sus-items>
]
]

#[#set text(size: 9pt); Contributo di ogni item: voto − 1 per gli item dispari, 5 − voto per i pari; il punteggio SUS è la somma dei contributi per 2,5.]

#heading(level: 5, numbering: none, outlined: false)[Reclutamento e intervallo tra le sessioni]

Il campione comprende cinque persone. Carla B., Silvia F. e Giorgio M. hanno partecipato a entrambe le fasi, permettendo un confronto sui singoli partecipanti. Tra le sessioni di Fase A (22--24 settembre 2026) e quelle di Fase D (23--26 ottobre) è trascorso circa un mese. Nel frattempo i tre partecipanti non hanno visto le bozze. I due nuovi partecipanti sono Sergio V. per l'utenza anziana diretta e Laura G. per i caregiver. Laura rientra nella fascia prioritaria di 45--60 anni (#link(<doc:a:04b>)[Documento~04b]).

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (14%, auto, 1fr, 21%, 20%,),
  align: (left, center, left, left, left,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Partecipante]], [#strong[Età]], [#strong[Segmento e ruolo]], [#strong[Reclutamento]], [#strong[Rispetto a Fase A]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Carla B.], [79], [A1, utente diretta fragile], [Rete familiare], [Richiamata (SUS 22,5)],
  [Silvia F.], [46], [B1, caregiver lavoratrice a distanza], [Rete amicale], [Richiamata (SUS 55,0)],
  [Giorgio M.], [69], [A2, nuovo utente digitale autonomo], [Rete amicale], [Richiamato (SUS 40,0)],
  [Sergio V.], [76], [A1, paziente cronico anziano], [Vicinato], [Nuovo],
  [Laura G.], [52], [B2, caregiver convivente e operatrice CAF], [Rete professionale], [Nuova],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Partecipanti alla valutazione di Fase D]),
) <tab:d-participants>
]
]

#heading(level: 5, numbering: none, outlined: false)[Schede dati individuali (Test Data Card 1--5)]

Ogni scheda riporta le osservazioni per task, le citazioni, gli esiti quantitativi e le 10 risposte SUS con il punteggio finale. Nelle tabelle SUS, Σ è la somma dei contributi.

// --- TEST 1: CARLA B. --------------------------------------------

#heading(level: 4, numbering: none, outlined: false)[Test 1: Carla B. (Segmento A1, richiamata)]

#list(
  [#strong[Data e conduttori:] 24/10/2026, ore 10:30; conduttore A. Campedelli, osservatore F. M. Fuligni.],
  [#strong[Contesto:] a casa della partecipante, su portatile da 17” con mouse esterno. Durata 16 minuti senza pause (in Fase A erano 26, con una pausa per ansia).],
  [#strong[Baseline di Fase A (#link(<doc:a:06a>)[Documento~06a]):] T1 no (03:00, 2 errori, blocco su SPID), T2 parziale (06:10, 3 errori), T3 no (03:00, 1 errore); tempo totale 12:10, 6 errori, SUS 22,5.],
)

#heading(level: 5, numbering: none, outlined: false)[Osservazioni (Carla B.)]

#list(
  [#strong[T1:] inserisce senza esitazione il PIN di WF-01 ed entra nel cruscotto in 18 secondi, evitando il blocco SPID. Ingrandisce il testo con A+, legge in WF-04 “Costo per te: 0,00~€” e sorride, sceglie sede e orario con l'indicazione dell'autobus e conferma in autonomia. Davanti al bollettino annotato di WF-17 commenta: #quote[Ecco, col disegno del foglio capisco dove guardare, senza disegno cercavo sulla ricetta!]],
  [#strong[T2:] esita 8 secondi sulla lista “Cosa mettere nella borsa” di WF-12 prima di trovare il pulsante “Disdici” (1 clic di esplorazione), poi conferma. Davanti al banner di WF-14: #quote[L'altra volta avevo paura che toccando mi togliessero la visita per sempre. Qui mi dice che non pago multe e che se sbaglio ho dieci minuti per riprenderla!]],
  [#strong[T3:] indica subito il pulsante “Chiedi a Elena” (WF-07) e “Serve aiuto?” (WF-19), a differenza della Fase A, quando cercava aiuto nelle Impostazioni. Dice: #quote[Se c'è il bottone arancione col nome di mia figlia là sopra, io provo a fare da sola perché so che se mi fermo la chiamo lì.]],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (1fr, auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center, center,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Esito]], [#strong[Tempo]], [#strong[Errori]], [#strong[Fase A]], [#strong[Variazione tempo]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1 Prenotazione e costi], [Sì], [02:15], [0], [No (03:00)], [−25,0%],
  [T2 Disdetta protetta], [Sì], [01:30], [1], [Parz. (06:10)], [−75,7%],
  [T3 Supporto e caregiver], [Sì], [01:10], [0], [No (03:00)], [−61,1%],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [#strong[3/3]], [#strong[04:55]], [#strong[1]], [#strong[12:10 (6 err.)]], [#strong[−59,6%]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task: Carla B.]),
) <tab:d-test-carla>
]
]

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center, center, center, center, center, center, center, center, center,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Item]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]], [#strong[7]], [#strong[8]], [#strong[9]], [#strong[10]], [$Sigma$], [#strong[SUS]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Fase A], [1], [2], [1], [2], [2], [5], [1], [5], [2], [4], [9], [22,5],
  [Fase D], [4], [2], [4], [3], [4], [1], [4], [1], [4], [2], [31], [#strong[77,5]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Risposte SUS: Carla B.]),
) <tab:d-sus-carla>
]
]

#heading(level: 5, numbering: none, outlined: false)[Riflessioni (Carla B.)]

Il SUS passa da 22,5 a 77,5 (+55,0 punti), oltre la soglia di 68. Il voto 3 sull'item 4 è coerente con il profilo del Segmento A1: Carla completa tutto da sola, ma dichiara che il pulsante “Chiedi a Elena” sempre disponibile le dà il coraggio di iniziare. L'esitazione in WF-12 è registrata come problema residuo RES-03.

// --- TEST 2: SILVIA F. -------------------------------------------

#heading(level: 4, numbering: none, outlined: false)[Test 2: Silvia F. (Segmento B1, richiamata)]

#list(
  [#strong[Data e conduttori:] 24/10/2026, ore 18:30; conduttore M. Boscherini, osservatore F. M. Fuligni.],
  [#strong[Contesto:] in videochiamata dopo l'orario d'ufficio, con schermo condiviso dal PC della partecipante.],
  [#strong[Baseline di Fase A (#link(<doc:a:06a>)[Documento~06a]):] T1 sì (01:35, 0 errori, ma disorientamento sul cambio di dominio), T2 sì (02:05, 1 errore, conferma muta), T3 parziale (02:50, 1 errore, nessun canale scritto); tempo totale 06:30, 2 errori, SUS 55,0.],
)

#heading(level: 5, numbering: none, outlined: false)[Osservazioni (Silvia F.)]

#list(
  [#strong[T1:] apre “Deleghe” (WF-15), nota il contatore “1 ricetta da prenotare” sulla card della madre e opera per suo conto, con il banner arancione che le conferma per chi sta agendo. Seleziona la ricetta, verifica l'esenzione, sceglie sede e orario in 20 secondi e apprezza che prenotazione e pagamento non aprano siti esterni. Dice: #quote[Finalmente vedo scritto in arancione grande per chi sto prenotando in cima a ogni pagina, e non mi butta mai fuori su un altro sito.]],
  [#strong[T2:] completa la disdetta in 50 secondi senza errori. Trova subito “Disdici appuntamento” e verifica che la modale riporti visita, data e nome della madre, con SMS di conferma a entrambe. Dice: #quote[Nella vecchia versione usciva solo \`operazione eseguita' e dovevo fare una foto allo schermo per mia madre. Qui c'è scritto tutto e le arriva l'SMS.]],
  [#strong[T3:] individua la chat scritta e il codice “Salva il tuo punto”, e sottolinea che in ufficio poter scrivere o congelare la sessione, senza telefonare, risolve il suo problema principale. Suggerisce una vista tabellare compatta per chi assiste più di due familiari (RES-04).],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (1fr, auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center, center,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Esito]], [#strong[Tempo]], [#strong[Errori]], [#strong[Fase A]], [#strong[Variazione tempo]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1 Prenotazione in delega], [Sì], [01:05], [0], [Sì (01:35)], [−31,6%],
  [T2 Disdetta trasparente], [Sì], [00:50], [0], [Sì (02:05)], [−60,0%],
  [T3 Supporto scritto e delega], [Sì], [00:55], [0], [Parz. (02:50)], [−67,6%],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [#strong[3/3]], [#strong[02:50]], [#strong[0]], [#strong[06:30 (2 err.)]], [#strong[−56,4%]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task: Silvia F.]),
) <tab:d-test-silvia>
]
]

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center, center, center, center, center, center, center, center, center,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Item]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]], [#strong[7]], [#strong[8]], [#strong[9]], [#strong[10]], [$Sigma$], [#strong[SUS]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Fase A], [1], [1], [1], [1], [4], [2], [2], [1], [2], [3], [22], [55,0],
  [Fase D], [4], [1], [5], [1], [5], [1], [4], [1], [4], [2], [36], [#strong[90,0]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Risposte SUS: Silvia F.]),
) <tab:d-sus-silvia>
]
]

#heading(level: 5, numbering: none, outlined: false)[Riflessioni (Silvia F.)]

Silvia dimezza il tempo (da 06:30 a 02:50, −56,4%), azzera gli errori e porta il SUS da 55,0 a 90,0 (+35,0 punti), oltre l'80,0 che aveva assegnato in Fase A al benchmark MioDottore, privo degli strumenti di delega e condivisione familiare.

// --- TEST 3: GIORGIO M. ------------------------------------------

#heading(level: 4, numbering: none, outlined: false)[Test 3: Giorgio M. (Segmento A2, richiamato)]

#list(
  [#strong[Data e conduttori:] 23/10/2026, ore 15:00; conduttore F. M. Fuligni, osservatore A. Campedelli.],
  [#strong[Contesto:] da remoto, dalla propria abitazione, su PC desktop da 22” con mouse (in Fase A aveva usato un tablet).],
  [#strong[Baseline di Fase A (#link(<doc:a:06a>)[Documento~06a]):] T1 parziale (03:05, 1 errore, opacità dei costi pubblico/privato), T2 no (05:00, 2 errori, confusione tra modifica e disdetta), T3 sì (01:45, 1 errore); tempo totale 09:50, 4 errori, SUS 40,0.],
)

#heading(level: 5, numbering: none, outlined: false)[Osservazioni (Giorgio M.)]

#list(
  [#strong[T1:] si sofferma su WF-04 e dichiara che il confronto affiancato dei costi risolve il motivo per cui in Fase A si era rifiutato di proseguire. In WF-17 e WF-18 verifica che il dominio non cambia e che i richiami numerati indicano dove leggere il Codice Avviso. Dice: #quote[Ecco, questo è parlare chiaro: vedo subito quanto costa col pubblico e quanto col privato prima di scegliere la data, e per pagare mi fa vedere il disegno del bollettino senza mandarmi su un altro sito.]],
  [#strong[T2:] distingue subito “Sposta data” da “Disdici appuntamento”, legge l'assenza di penali e conclude in 01:15 senza errori, mentre in Fase A aveva fallito dopo 5 minuti per paura di cancellare per errore.],
  [#strong[T3:] apre “Serve aiuto?” in 55 secondi, apprezza che si apra in sovrimpressione senza perdere la pagina e valuta utile il codice “Salva il tuo punto” per una verifica telefonica con il figlio.],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (1fr, auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center, center,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Esito]], [#strong[Tempo]], [#strong[Errori]], [#strong[Fase A]], [#strong[Variazione tempo]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1 Prenotazione e pagoPA], [Sì], [01:50], [0], [Parz. (03:05)], [−40,5%],
  [T2 Disdetta trasparente], [Sì], [01:15], [0], [No (05:00)], [−75,0%],
  [T3 Supporto e salvataggio], [Sì], [00:55], [0], [Sì (01:45)], [−47,6%],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [#strong[3/3]], [#strong[04:00]], [#strong[0]], [#strong[09:50 (4 err.)]], [#strong[−59,3%]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task: Giorgio M.]),
) <tab:d-test-giorgio>
]
]

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center, center, center, center, center, center, center, center, center,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Item]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]], [#strong[7]], [#strong[8]], [#strong[9]], [#strong[10]], [$Sigma$], [#strong[SUS]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Fase A], [1], [1], [1], [1], [1], [5], [3], [3], [1], [1], [16], [40,0],
  [Fase D], [4], [1], [4], [1], [4], [1], [4], [1], [4], [2], [34], [#strong[85,0]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Risposte SUS: Giorgio M.]),
) <tab:d-sus-giorgio>
]
]

#heading(level: 5, numbering: none, outlined: false)[Riflessioni (Giorgio M.)]

Il SUS passa da 40,0 a 85,0 (+45,0 punti), superando anche il 72,5 attribuito a MioDottore. Il test indica che l'interfaccia è rassicurante per l'anziano fragile senza risultare paternalistica per quello competente, come richiesto dalla persona di controllo Renato (#link(<doc:b:02c>)[Documento~02c]).

// --- TEST 4: SERGIO V. -------------------------------------------

#heading(level: 4, numbering: none, outlined: false)[Test 4: Sergio V. (Segmento A1, nuovo partecipante)]

#list(
  [#strong[Data e conduttori:] 25/10/2026, ore 11:00; conduttore A. Campedelli, osservatore F. M. Fuligni.],
  [#strong[Contesto e profilo:] in presenza a Ravenna, su portatile da 17” con mouse esterno. Sergio ha 76 anni, è un ex caposquadra in pensione con una cardiopatia cronica e usa il PC solo saltuariamente; per le prenotazioni va di solito allo sportello CUP o in farmacia. Non ha partecipato alla Fase A.],
)

#heading(level: 5, numbering: none, outlined: false)[Osservazioni (Sergio V.)]

#list(
  [#strong[T1:] comprende subito il PIN di WF-01, attiva A+ e apprezza di non dover copiare le 15 cifre dell'impegnativa. In WF-05 commette un errore non bloccante: clicca l'etichetta statica “Più vicino a te (1,2 km)” scambiandola per un pulsante (RES-01). Conferma in 02:35. Dice: #quote[Non avevo mai visto questo programma, ma i passi numerati 1, 2, 3, 4 là in alto ti portano per mano come i numeri allo sportello.]],
  [#strong[T2:] completa la disdetta in 01:40 senza errori né aiuti, leggendo ad alta voce la checklist di WF-12 e apprezzando l'assenza di penali in WF-13.],
  [#strong[T3:] trova in 01:20 il pannello “Serve aiuto?” e il pulsante “Stampa promemoria A4”; annota su un foglietto il codice di salvataggio per mostrarlo al farmacista o al figlio.],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (1fr, auto, auto, auto, 27%,),
  align: (left, center, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Esito]], [#strong[Tempo]], [#strong[Errori]], [#strong[Media Segmento A, Fase A]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1 Prenotazione e pagoPA], [Sì], [02:35], [1], [03:03 (0% sì pieni)],
  [T2 Disdetta protetta], [Sì], [01:40], [0], [05:35 (0% sì pieni)],
  [T3 Supporto e promemoria], [Sì], [01:20], [0], [02:23 (50% sì)],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [#strong[3/3]], [#strong[05:35]], [#strong[1]], [#strong[11:00 (5,0 err.)]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task: Sergio V.]),
) <tab:d-test-sergio>
]
]

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center, center, center, center, center, center, center, center, center,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Item]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]], [#strong[7]], [#strong[8]], [#strong[9]], [#strong[10]], [$Sigma$], [#strong[SUS]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Fase D], [4], [2], [4], [3], [4], [2], [4], [1], [4], [2], [30], [#strong[75,0]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Risposte SUS: Sergio V.]),
) <tab:d-sus-sergio>
]
]

#heading(level: 5, numbering: none, outlined: false)[Riflessioni (Sergio V.)]

Al primo utilizzo del prototipo, Sergio completa tutti i compiti e ottiene un punteggio SUS di 75,0.

// --- TEST 5: LAURA G. --------------------------------------------

#heading(level: 4, numbering: none, outlined: false)[Test 5: Laura G. (Segmento B2, nuova partecipante)]

#list(
  [#strong[Data e conduttori:] 26/10/2026, ore 13:15; conduttore M. Boscherini, osservatore A. Campedelli.],
  [#strong[Contesto e profilo:] in presenza, su PC desktop durante la pausa pranzo. Laura ha 52 anni, lavora part-time presso uno sportello CAF/patronato ed è caregiver convivente del padre 83enne, ipovedente e cardiopatico. Rappresenta la fascia 45--60 anni del Segmento B2 e il punto di vista di chi assiste ogni giorno utenti anziani.],
)

#heading(level: 5, numbering: none, outlined: false)[Osservazioni (Laura G.)]

#list(
  [#strong[T1:] attiva il profilo dell'assistito da “Chi assisto” (WF-15) e prenota in 01:20 senza errori. Apprezza le glosse di WF-04 e l'abbinamento tra bollettino annotato (WF-17) e scarico della ricevuta con codice fiscale pre-compilato (WF-18). Dice: #quote[Allo sportello le persone anziane ci portano il bollettino pagoPA e la ricetta senza sapere quale codice copiare. Mettere il disegno del bollettino coi numeri 1 e 2 e lo scarico immediato della ricevuta fa risparmiare mezz'ora di spiegazioni.]],
  [#strong[T2:] completa la disdetta in 00:55 senza errori. Si chiede se l'SMS al familiare parta subito o dopo i 10 minuti di ripensamento e suggerisce di specificarlo nel banner (RES-02).],
  [#strong[T3:] in 01:05 genera il codice “Salva il tuo punto”, che risolve il problema del timeout dopo una telefonata incontrato da Fatima in Fase A, e usa “Invia su WhatsApp al familiare” per un riepilogo senza dettagli clinici, evitando gli screenshot manuali.],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (1fr, auto, auto, auto, 27%,),
  align: (left, center, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Esito]], [#strong[Tempo]], [#strong[Errori]], [#strong[Fase A, Seg. B2 (Fatima)]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1 Prenotazione e pagoPA], [Sì], [01:20], [0], [Parz. (02:40)],
  [T2 Disdetta trasparente], [Sì], [00:55], [0], [Sì (03:15)],
  [T3 Salvataggio e WhatsApp], [Sì], [01:05], [0], [Parz. (02:20)],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [#strong[3/3]], [#strong[03:20]], [#strong[0]], [#strong[08:15 (2 err.)]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task: Laura G.]),
) <tab:d-test-laura>
]
]

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center, center, center, center, center, center, center, center, center,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Item]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]], [#strong[7]], [#strong[8]], [#strong[9]], [#strong[10]], [$Sigma$], [#strong[SUS]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Fase D], [4], [1], [5], [1], [4], [1], [4], [1], [4], [2], [35], [#strong[87,5]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Risposte SUS: Laura G.]),
) <tab:d-sus-laura>
]
]

#heading(level: 5, numbering: none, outlined: false)[Riflessioni (Laura G.)]

Laura chiude la sessione in 03:20 senza errori con SUS 87,5, contro il 37,5 di Fatima in Fase A (+50,0 punti): il test valida su una caregiver della fascia target il codice di salvataggio, il linguaggio chiaro e il modulo pagoPA con recupero della ricevuta.

#heading(level: 5, numbering: none, outlined: false)[Risultati aggregati e confronto con la Fase A]

#heading(level: 5, numbering: none, outlined: false)[Punteggi SUS]

La Tabella~#ref(<tab:d-sus-matrix>, supplement: none) affianca i punteggi SUS della baseline (#link(<doc:a:07>)[Documento~07]) a quelli del redesign, con media $macron(x)$, varianza campionaria $s^2$ e deviazione standard $s$.

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center, center, center, center, center, center,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [], table.cell(colspan: 4, align: center)[#strong[Fase A: CUPweb]], table.cell(colspan: 5, align: center)[#strong[Fase D: Redesign HPHP]],
    table.hline(start: 1, end: 5, stroke: 0.45pt + luma(170)),
    table.hline(start: 5, end: 10, stroke: 0.45pt + luma(170)),
    [], [#strong[Gio]], [#strong[Car]], [#strong[Sil]], [#strong[Fat]], [#strong[Car\*]], [#strong[Sil\*]], [#strong[Gio\*]], [#strong[Ser†]], [#strong[Lau†]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Somma dei contributi (max 40)], [16], [9], [22], [15], [31], [36], [34], [30], [35],
  [Punteggio SUS (0--100)], [40,0], [22,5], [55,0], [37,5], [77,5], [90,0], [85,0], [75,0], [87,5],
  table.hline(stroke: 0.45pt + luma(170)),
  [Media $macron(x)$], table.cell(colspan: 4, align: center)[#strong[38,75]], table.cell(colspan: 5, align: center)[#strong[83,00]],
  [Varianza $s^2$ (dev. st. $s$)], table.cell(colspan: 4, align: center)[177,08 (13,31)], table.cell(colspan: 5, align: center)[41,88 (6,47)],
  [Media Segmento A / B], table.cell(colspan: 4, align: center)[31,25 / 46,25], table.cell(colspan: 5, align: center)[79,17 / 88,75],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Punteggi SUS: CUPweb (Fase A) e redesign (Fase D)]),
) <tab:d-sus-matrix>
]
]

#[#set text(size: 9pt); \* partecipanti richiamati (media da 39,17 a 84,17, +45,00 punti); † partecipanti nuovi (media 81,25).]

#heading(level: 5, numbering: none, outlined: false)[Confronto globale]

La Tabella~#ref(<tab:d-global-comparison>, supplement: none) riassume tutte le metriche per CUPweb e MioDottore (Fase A) e per il redesign (Fase D).

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (1fr, 15%, 15%, 15%, 17%,),
  align: (left, center, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Metrica]], [#strong[CUPweb]], [#strong[MioDottore]], [#strong[Redesign]], [#strong[Variazione vs CUPweb]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Successo pieno], [33,3% (4/12)], [83,3% (10/12)], [#strong[100% (15/15)]], [+66,7 p.p.],
  [Successo ponderato (parz. = 50%)], [54,2%], [87,5%], [#strong[100%]], [+45,8 p.p.],
  [Blocchi sull'accesso (T1)], [25,0%], [0,0%], [#strong[0,0%]], [Azzerati],
  [Tempo medio T1], [02:35], [01:54], [#strong[01:49]], [−29,7%],
  [Tempo medio T2], [04:08], [02:58], [#strong[01:14]], [−70,2%],
  [Tempo medio T3], [02:29], [01:11], [#strong[01:05]], [−56,4%],
  [Tempo medio della sessione], [09:11], [06:05], [#strong[04:08]], [−55,0%],
  [Tempo medio dei richiamati], [09:30], [06:25], [#strong[03:55]], [−58,8%],
  [Errori medi per sessione], [3,50], [1,25], [#strong[0,40]], [−88,6%],
  [SUS medio (0--100)], [38,75], [66,25], [#strong[83,00]], [+44,25 pt],
  [SUS minimo], [22,50], [45,00], [#strong[75,00]], [+52,50 pt],
  [Varianza del SUS ($s^2$)], [177,08], [227,08], [#strong[41,88]], [−76,4%],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Confronto aggregato: Fase A (CUPweb, MioDottore) e Fase D (redesign)]),
) <tab:d-global-comparison>
]
]

#heading(level: 5, numbering: none, outlined: false)[Problemi residui e curva d'urgenza]

L'osservazione dei test utente ha rivelato quattro micro-criticità residue (RES-01--RES-04), nessuna delle quali ha impedito il completamento con successo dei compiti. Valutate con la matrice di Fase A (#link(<doc:a:07>)[Documento~07]: impatto e persistenza da 1 a 3, soglia di emergenza 5,5), tutte presentano una somma contenuta compresa tra 3,0 e 4,0 (Tabella~#ref(<tab:d-residual-urgency>, supplement: none)).

La Figura~#ref(<fig:d-urgenza>, supplement: none) inserisce i rilievi di Fase D nel quadro complessivo dell'evoluzione del servizio rispetto alle 13 criticità censite in Fase A:

#list(
  [#strong[Criticità prioritarie di Fase A (risolte):] gli otto problemi storici collocati sulla soglia o sopra di essa (#link(<req:ID-01>)[ID-01], #link(<req:ID-02>)[ID-02], #link(<req:ID-05>)[ID-05], #link(<req:ID-08>)[ID-08], #link(<req:ID-09>)[ID-09], #link(<req:ID-10>)[ID-10], #link(<req:ID-12>)[ID-12], #link(<req:ID-13>)[ID-13]), che costituivano i requisiti inderogabili del redesign, sono stati tutti risolti, come dimostrato dall'azzeramento dei blocchi procedurali e dal 100% di successo nei test.],
  [#strong[Criticità secondarie di Fase A (differite a backlog):] i cinque problemi che in Fase A si attestavano al di sotto della soglia ordinaria di emergenza (#link(<req:ID-03>)[ID-03], #link(<req:ID-04>)[ID-04], #link(<req:ID-06>)[ID-06], #link(<req:ID-07>)[ID-07], #link(<req:ID-11>)[ID-11]) erano stati differiti alla release successiva. Di questi, tre sono stati comunque mitigati dal redesign (l'impaginazione pulita e ariosa attenua ID-03; il confronto a due colonne di WF-04 chiarisce ID-04; il codice di salvataggio sessione di WF-19 risolve ID-11), mentre l'introduzione di una ricerca testuale libera (ID-06) e l'ulteriore scomposizione analitica delle tariffe accessorie (ID-07) restano pianificate per sviluppi futuri.],
  [#strong[Problemi residui di Fase D:] i quattro rilievi emersi dai test (RES-01--RES-04) si collocano tutti ampiamente nella fascia ordinaria di non emergenza, a distanza di sicurezza dalla soglia critica di 5,5.],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (8%, 14%, 1fr, auto, auto, auto, 19%,),
  align: (left, left, left, center, center, center, left,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[ID]], [#strong[Schermata]], [#strong[Problema residuo]], [#strong[Imp.]], [#strong[Pers.]], [#strong[Somma]], [#strong[Esito]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [#strong[RES-01]<req:RES-01>], [WF-05], [L'etichetta statica di prossimità (“Più vicina a te”) somiglia a un pulsante e ha indotto un clic a vuoto in Sergio V.], [1,5], [1,5], [3,0], [Bordo neutro non cliccabile],
  [#strong[RES-02]<req:RES-02>], [WF-14], [Il banner di ripensamento non indica quando parte l'SMS al familiare (Laura G.).], [2,0], [2,0], [4,0], [Nota “L'SMS parte dopo i 10 minuti”],
  [#strong[RES-03]<req:RES-03>], [WF-12], [Carla B. ha impiegato 8 secondi per trovare “Disdici” sotto la checklist.], [2,0], [1,5], [3,5], [Ancora rapida a inizio scheda],
  [#strong[RES-04]<req:RES-04>], [WF-15], [Manca una vista tabellare compatta per chi assiste più di due familiari (Silvia F.).], [1,5], [2,0], [3,5], [Roadmap futura],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Impatto, persistenza e urgenza dei problemi residui]),
) <tab:d-residual-urgency>
]
]

#figure(
  [#image("../assets/phase-d-urgency-comparison.svg", width: 96%, alt: "Impatto e persistenza delle criticità risolte, differite e residue, con soglia a 5,5.")],
  kind: image,
  caption: [Curva d'urgenza comparata: le 8 criticità prioritarie di Fase A risultano superate dal redesign; le 5 criticità storiche differite a backlog e i 4 problemi residui del test (RES-01--RES-04) si collocano stabilmente sotto la soglia ordinaria.],
) <fig:d-urgenza>

// --- Card 04 ----------------------------------------------------

#heading(level: 2, numbering: none)[6\. Conclusioni e raccomandazioni]

#heading(level: 3, numbering: none)[Documento 04: Scheda conclusiva del progetto] <doc:d:04>

#heading(level: 3, numbering: none, outlined: false)[Obiettivi iniziali e risultati raggiunti]

HPHP (#link(<doc:a:02>)[Documento~02]) mirava a ridurre le barriere digitali di CUPweb nella prenotazione, nella disdetta e nella preparazione al pagamento da computer, sostenendo l'autonomia protetta dell'anziano cronico (Segmento A) e il coordinamento non sostitutivo del caregiver (Segmento B). La Tabella~#ref(<tab:d-goals-validation>, supplement: none) confronta gli obiettivi di Fase A/B con i risultati misurati in Fase D (#link(<doc:d:03>)[Documento~03]).

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (20%, 22%, 1fr, 10%,),
  align: (left, left, left, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Obiettivo]], [#strong[Target di Fase A]], [#strong[Risultato di Fase D]], [#strong[Esito]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Tempo medio di esecuzione], [Riduzione $> 50\%$ sulla baseline (09:11)], [04:08 su tutto il campione (−55,0%) e 03:55 sui richiamati (−58,8%)], [Superato],
  [Blocchi sull'accesso], [Zero blocchi per gli anziani fragili (25% in Fase A)], [Zero blocchi su 5 utenti grazie al PIN di WF-01; Carla passa dal blocco totale a 18 secondi], [Raggiunto],
  [Soddisfazione (SUS)], [Media $> 68/100$ su entrambi i segmenti], [Media 83,00 (+44,25 punti); Segmento A 79,17 (minimo 75,0), Segmento B 88,75], [Superato],
  [Continuità e trasparenza dei costi], [Nessun salto di dominio né dubbio tra pubblico e privato], [T1 completato da tutti senza esitazioni sui costi; Giorgio passa da T1 parziale a 01:50 senza errori], [Raggiunto],
  [Disdetta senza ansia], [Nessun abbandono per timore di irreversibilità], [Tempo medio di T2 da 04:08 a 01:14 (−70,2%), con modale senza sanzioni e 10 minuti di ripensamento], [Superato],
  [Co-pilota e delega], [Profili distinguibili e promemoria condivisibile], [Nessun errore di profilo con il banner arancione; promemoria inviato con un clic], [Raggiunto],
  [Interruzioni e pagamento], [Ripresa dopo il timeout e guida al bollettino], [Codice di salvataggio e bollettino annotato usati con successo da tutti i partecipanti], [Raggiunto],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Obiettivi di progetto e risultati misurati]),
) <tab:d-goals-validation>
]
]

#heading(level: 3, numbering: none, outlined: false)[Interpretazione dei dati, punti di forza e di debolezza]

#heading(level: 5, numbering: none, outlined: false)[Lettura dei risultati]

#enum(
  [#strong[Riduzione del divario tra utenti.] Oltre alla media SUS (da 38,75 a 83,00), la varianza scende da 177,08 a 41,88. In Fase A il divario tra Carla (22,5) e Silvia (55,0) era di 32,5 punti; con il redesign Carla (77,5) e Silvia (90,0) distano 12,5 punti e sono entrambe sopra la soglia.],
  [#strong[SUS per gruppo di reclutamento.] La media è 84,17 per i tre partecipanti richiamati e 81,25 per i due nuovi.],
  [#strong[Superamento del benchmark commerciale.] In Fase A MioDottore superava CUPweb (66,25 contro 38,75) ma non sosteneva la coppia caregiver--assistito (#link(<doc:a:06b>)[Documento~06b]); il redesign lo supera di 16,75 punti SUS rendendo nativa e sicura l'assistenza familiare.],
)

#heading(level: 5, numbering: none, outlined: false)[Punti di forza]

#list(
  [#strong[Meno attrito cognitivo e motorio:] PIN a 4 cifre valido 30 giorni, ricette pre-compilate dal Fascicolo (niente digitazione dell'NRE) e bersagli ampi per chi usa il mouse con tremore.],
  [#strong[Rassicurazione e reversibilità:] confronto dei costi prima della scelta, posto riservato per 15 minuti, modale senza sanzioni e 10 minuti di ripensamento dopo la disdetta.],
  [#strong[Paradigma duale Co-pilota e delega:] lo schermo condiviso con cursore remoto del familiare (WF-07) sostiene l'autonomia assistita senza togliere il mouse all'anziano, e la delega formale (WF-15) copre i casi di esecuzione per conto di altri.],
)

#heading(level: 5, numbering: none, outlined: false)[Punti di debolezza e limiti]

#notice(title: [Limiti da considerare])[
#list(
  [#strong[Primo innesco del PIN:] richiede una prima autenticazione con SPID/CIE, o un'attivazione assistita, e va rinnovato ogni 30 giorni; per un anziano isolato e senza SPID restano necessari il canale fisico o telefonico.],
  [#strong[Complessità del Co-pilota:] prenotazione, delega e guida pagoPA poggiano su servizi regionali esistenti, mentre il co-browsing con audio e trascrizione richiede un'infrastruttura dedicata e una valutazione privacy GDPR.],
  [#strong[Campione ristretto:] $N=5$, reclutato per prossimità al team, e compatibilità con le tecnologie assistive progettata ma non verificata con utenti non vedenti.],
)
]

#heading(level: 3, numbering: none, outlined: false)[Errori del team e correzioni]

Il Team Affordance ha riconosciuto e corretto quattro errori:

#enum(
  [#strong[Canale di accesso.] Le prime ipotesi tra Fase B e Fase C prevedevano un flusso mobile con codice SMS a ogni accesso. Il riesame delle personas (#link(<doc:b:02a>)[Documento~02a], #link(<doc:b:02c>)[Documento~02c]) ha mostrato che per un anziano al PC leggere un SMS sul telefono riproduce la barriera a due fattori di SPID; il team ha riprogettato la Fase C come suite desktop con PIN valido 30 giorni.],
  [#strong[Reclutamento in Fase A.] Fatima R. (35 anni) era fuori dalla fascia target 45--60 del Segmento B (#link(<doc:a:04b>)[Documento~04b]). Il limite è stato dichiarato senza alterare il dato e corretto in Fase D reclutando Laura G. (52 anni).],
  [#strong[Dispositivi diversi in Fase A.] Giorgio aveva usato un tablet e gli altri un PC (#link(<doc:a:06a>)[Documento~06a]), introducendo una variabile confondente; in Fase D tutte le sessioni si sono svolte su PC con mouse.],
  [#strong[Copertura del pagamento nel protocollo di test.] La formulazione iniziale del compito T1 replicava strettamente il perimetro di Fase A, fermandosi alla conferma della prenotazione ed escludendo la fase di pagamento pagoPA (#link(<req:ID-13>)[ID-13]); durante il pilot interno del 21 ottobre il team ha rilevato la lacuna e ha esteso T1 alla consultazione guidata del bollettino (WF-17, WF-18), consentendo di verificare direttamente con gli utenti la rimozione delle barriere di comprensione economica.],
)

#heading(level: 3, numbering: none, outlined: false)[Raccomandazioni per il cliente]

Per portare il prototipo in produzione, Regione Emilia-Romagna e Lepida S.c.p.A. dovrebbero seguire tre direttrici.

#enum(
  [#strong[Affidabilità statistica e accessibilità.]

#list(
  [Condurre test sommativi su 30--50 cittadini reclutati fuori dalla rete del team, presso Case della Comunità, sportelli CUP e farmacie.],
  [Verificare l'accessibilità con 4--6 utenti ipovedenti o non vedenti e screen reader (NVDA, JAWS, VoiceOver).],
  [Monitorare per 60 giorni il rinnovo del PIN a 30 giorni e l'uso effettivo del codice di salvataggio.],
)],
  [#strong[Scalabilità del servizio.]

#list(
  [Estendere “Salva il tuo punto” agli operatori delle farmacie e del call center, così che il cittadino possa dettare il codice e proseguire senza ripartire da zero.],
  [Integrare le deleghe con l'ANPR e con il Fascicolo Sanitario Elettronico 2.0, aggiungendo la vista tabellare compatta per chi assiste più familiari (RES-04).],
  [Estendere la guida visiva pensata per pagoPA ai moduli di autocertificazione di reddito ed esenzione.],
)],
  [#strong[Rifinitura dell'usabilità (RES-01--RES-03).]

#list(
  [Distinguere graficamente i badge informativi dai pulsanti in WF-05.],
  [Indicare nel banner di WF-14 che l'SMS di disdetta parte allo scadere dei 10 minuti.],
  [Aggiungere in testa a WF-12 un collegamento rapido ai comandi di spostamento e disdetta.],
)],
)
