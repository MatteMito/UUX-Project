#set figure(numbering: n => numbering("1.1", 3, n))
#counter(figure.where(kind: image)).update(0)
#counter(figure.where(kind: table)).update(0)

#heading(level: 1, numbering: none)[FASE C]
#block(sticky: true)[#text(size: 13pt, weight: "semibold")[Proposta progettuale]]

#set heading(numbering: none)

#heading(level: 2, numbering: none)[4\. Proposta progettuale]

#heading(level: 3, numbering: none)[Documento 01: 4.0 Adozione di un modello di progettazione] <doc:c:01>

Il team parte dagli obiettivi degli utenti emersi nelle Fasi A e B~#cite(<cooperAboutFace2007>) e sviluppa la proposta con un processo iterativo~#cite(<iso9241210_2010>). Le scelte progettuali sono organizzate in cinque piani~#cite(<garrettElements2011>).

#enum(
  [#strong[Strategy Plane:] allinea gli obiettivi del servizio sanitario regionale (riduzione dell'abbandono digitale e inclusione delle fasce fragili) ai bisogni emersi dalle quattro personas: autonomia protetta sul PC di casa per Pina, rapidità di gestione per Elena, trasparenza dei costi per Renato e continuità operativa per Amina.],
  [#strong[Scope Plane:] definisce il perimetro funzionale del portale, affiancando alla navigazione autonoma due modalità di supporto familiare: la #emph[modalità co-pilota] (collaborazione sincrona a distanza) e la #emph[modalità delega] (gestione asincrona per conto dell'assistito).],
  [#strong[Structure Plane:] organizza l'architettura dell'informazione per compiti utente e modella i flussi di interazione attraverso sei blueprint di struttura.],
  [#strong[Skeleton Plane:] definisce la gerarchia spaziale e i componenti di navigazione attraverso la suite di diciannove wireframe per computer desktop.],
  [#strong[Surface Plane:] applica una codifica cromatica coerente, controlli di leggibilità del testo e un linguaggio chiaro privo di burocratismi (#emph[Plain Language]).],
)

L'architettura combina un approccio #strong[top-down], che deriva le macro-aree del portale dagli obiettivi degli utenti e dal principio di #emph[empowerment non sostitutivo] dell'anziano, con un approccio #strong[bottom-up], che parte dai documenti e dati reali del dominio sanitario (impegnative del Fascicolo Sanitario Elettronico, agende CUP, esenzioni, avvisi pagoPA e deleghe) per ricomporli in flussi lineari pre-compilati.

#heading(level: 4, numbering: none, outlined: false)[Sintesi dei requisiti guida]

La proposta recepisce i requisiti definiti nelle conclusioni di Fase A (#link(<req:REQ-01>)[REQ-01]--#link(<req:REQ-10>)[REQ-10]) e nelle schede di Fase B. La tabella seguente riassume le principali scelte progettuali adottate.

#[#[
#set text(size: 10pt)
#set par(justify: false)
#set table.cell(breakable: false)
#table(
  columns: (14fr, 16fr, 64fr,),
  align: (left, left, left,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Requisito]], [#strong[Priorità]], [#strong[Indirizzo progettuale in Fase C]],
    table.hline(stroke: 0.45pt + luma(170)),
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [#link(<req:REQ-01>)[REQ-01]], [Alta], [Ingresso semplificato sul computer domestico tramite PIN personale di 4 cifre valido 30 giorni, affiancato all'accesso SPID/CIE per i nuovi dispositivi o a PIN scaduto.],
  table.hline(stroke: 0.45pt + luma(170)),
  [#link(<req:REQ-02>)[REQ-02]], [Alta], [Unificazione in un unico ambiente coerente di prenotazione, ricette del Fascicolo Sanitario Elettronico e pagamento pagoPA.],
  table.hline(stroke: 0.45pt + luma(170)),
  [#link(<req:REQ-03>)[REQ-03]], [Media], [Linguaggio chiaro, gerarchia visiva ad alto contrasto e confronto trasparente affiancato tra Servizio Sanitario Pubblico (con esenzione calcolata) e Libera Professione.],
  table.hline(stroke: 0.45pt + luma(170)),
  [#link(<req:REQ-04>)[REQ-04]], [Alta], [Prenotazione guidata in 4 passaggi con indicazione dell’avanzamento, riepilogo prima della conferma e accesso alle opzioni di assistenza tramite #emph[Serve aiuto?] e #emph[Chiedi al caregiver].],
  table.hline(stroke: 0.45pt + luma(170)),
  [#link(<req:REQ-05>)[REQ-05]], [Media], [Layout desktop spazioso, selettore di ingrandimento del testo nell'intestazione, pulsanti ampi e indicatori basati su testo e icone oltre che sul colore.],
  table.hline(stroke: 0.45pt + luma(170)),
  [#link(<req:REQ-06>)[REQ-06]], [Alta], [Doppio supporto familiare: modalità co-pilota in tempo reale (schermo condiviso con cursore remoto e audio del caregiver) e gestione deleghe per operare per conto dei familiari.],
  table.hline(stroke: 0.45pt + luma(170)),
  [#link(<req:REQ-07>)[REQ-07]], [Alta], [Visibilità costante del profilo attivo e promemoria finale condivisibile via stampa, SMS, WhatsApp al caregiver e calendario.],
  table.hline(stroke: 0.45pt + luma(170)),
  [#link(<req:REQ-08>)[REQ-08]], [Media], [Conservazione del lavoro tramite codice Salva-Sessione valido 24 ore e riserva temporanea dell'orario scelto per 15 minuti durante il riepilogo.],
  table.hline(stroke: 0.45pt + luma(170)),
  [#link(<req:REQ-09>)[REQ-09]], [Media], [Pannello di aiuto contestuale sempre accessibile con salvataggio sessione, assistente testuale asincrono e numero verde regionale.],
  table.hline(stroke: 0.45pt + luma(170)),
  [#link(<req:REQ-10>)[REQ-10]], [Media], [Guida visiva annotata al pagamento dell'avviso cartaceo pagoPA, recupero semplificato delle ricevute e lista di controllo dei documenti da portare alla visita.],
  table.hline(stroke: 0.75pt),
)
]]

#heading(level: 4, numbering: none, outlined: false)[Principi comunicativi e strategia Desktop-First]

L'interfaccia segue tre linee guida comunicative costanti:

#list(
  [#strong[Linguaggio naturale:] sostituzione delle sigle tecniche e delle diciture burocratiche con espressioni quotidiane comprensibili ed esempi visivi contestuali.],
  [#strong[Rassicurazione e reversibilità:] esplicitazione preventiva della possibilità di disdire senza sanzioni con un anticipo di almeno due giorni lavorativi rispetto alla visita, isolamento visivo dei comandi di cancellazione e possibilità di annullare la disdetta entro 10 minuti.],
  [#strong[Rispetto dell'autonomia:] tono istituzionale ma accogliente, che guida l'utente senza colpevolizzarlo in caso di imprevisti e mantiene in capo all'anziano il controllo finale delle scelte.],
)

Il progetto si concentra sulla riprogettazione di #strong[CUPweb come portale web per personal computer (Desktop PC)], demandando la fruizione nativa su smartphone all'applicazione regionale #emph[ER Salute] (richiamata nella schermata iniziale del portale) e mantenendo una struttura modulare adattabile in modalità responsive secondaria. Lo schermo desktop consente agli utenti anziani di leggere caratteri ampi, usare il mouse su bersagli stabili, tenere i documenti cartacei affiancati sulla scrivania e visualizzare in un'unica schermata confronti tariffari, mappe e pannello co-pilota.

// --- Card 02 ----------------------------------------------------

#heading(level: 3, numbering: none)[Documento 02: 4.1 Architettura dell’informazione] <doc:c:02>

#heading(level: 4, numbering: none, outlined: false)[Razionale e approccio architetturale]

L'analisi di Fase A ha evidenziato che la principale barriera di CUPweb deriva dalla frammentazione del servizio tra portali separati (prenotazione, Fascicolo Sanitario Elettronico, pagamento) e dalla suddivisione iniziale in quattro silos amministrativi (#emph[specialistica], #emph[esami di laboratorio], #emph[sanità pubblica], #emph[medicina dello sport]) che costringono il cittadino a conoscere la struttura burocratica dell'ente (#link(<req:ID-02>)[ID-02], #link(<req:ID-05>)[ID-05]).

Per superare questa impostazione, la nuova architettura dell'informazione adotta un modello #strong[orientato ai compiti (#emph[Task-Driven])] basato su una sintesi tra approccio top-down (articolazione delle sezioni di primo livello secondo gli obiettivi reali del cittadino) e bottom-up (aggregazione di ricette elettroniche, esenzioni, distanze chilometriche, fermate dei mezzi pubblici e avvisi di pagamento nei punti decisionali opportuni). L'utente non deve più classificare a priori la propria prestazione: avvia la prenotazione da un unico punto di accesso, seleziona la ricetta già sincronizzata dal Fascicolo Sanitario (o procede senza ricetta) e confronta in modo trasparente canale pubblico e libera professione.

#heading(level: 4, numbering: none, outlined: false)[Organizzazione e sistema di etichettatura]

La barra di navigazione globale del portale è organizzata in #strong[cinque sezioni principali] allineate a sinistra e #strong[due presidi di supporto] allineati a destra:

#enum(
  [#strong[Home:] cruscotto personale che mostra a sinistra il prossimo appuntamento in programma (con accesso diretto ai dettagli e alla preparazione) e a destra tre scorciatoie operative: l'avvio di una nuova prenotazione, la #emph[prenotazione rapida] dell'ultima ricetta emessa dal medico e il pagamento online di un ticket cartaceo.],
  [#strong[Prenota:] percorso guidato in 4 passaggi (#emph[1.~Scelta prestazione], #emph[2.~Canale e costi], #emph[3.~Sede e data], #emph[4.~Riepilogo]) che accompagna l'utente fino alla conferma e all'invio del promemoria.],
  [#strong[I miei appuntamenti:] archivio unificato delle visite, suddiviso nelle schede #emph[Visite in programma] e #emph[Visite passate], da cui consultare le istruzioni di preparazione, pagare o stampare la ricevuta, spostare la data o disdire con finestra di ripensamento di 10 minuti.],
  [#strong[Ricette e prescrizioni:] elenco delle impegnative sincronizzate dal Fascicolo Sanitario Elettronico, diviso in #emph[Da prenotare] e #emph[Ricette passate], con avvio diretto della prenotazione dalla singola ricetta.],
  [#strong[Deleghe:] area dedicata alla rete familiare. La scheda #emph[Chi assisto] permette di operare per i familiari che hanno concesso una delega; #emph[Le mie deleghe] permette di gestire le persone autorizzate a operare per sé. Quest'ultima gestione riguarda esclusivamente il proprio profilo.],
)

Sul lato destro della barra sono sempre disponibili:

#list(
  [#strong[Serve aiuto?:] apre il pannello di assistenza con lo strumento #emph[Salva il tuo punto] (codice Salva-Sessione valido 24 ore), la chat scritta con l'assistente e il numero verde regionale.],
  [#strong[Chiedi a \[Caregiver\]] (es.~#emph[Chiedi ad Elena]): pulsante arancione visibile al paziente assistito per avviare in qualsiasi momento la condivisione dello schermo in modalità co-pilota.],
)

#heading(level: 4, numbering: none, outlined: false)[Sintesi delle componenti di Information Architecture]

Le componenti dell'architettura dell'informazione sono organizzate in quattro gruppi~#cite(<morvilleRosenfeld2006>).

#heading(level: 4, numbering: none, outlined: false)[Browsing Aids (Supporti alla navigazione e all'orientamento)]

#list(
  [#strong[Barra di navigazione globale e testata istituzionale:] menu orizzontale persistente a 5 sezioni corredato da contatori numerici per gli appuntamenti in programma e le ricette da prenotare, affiancato in testata dal selettore di dimensione del testo a due livelli (#emph[normale] e #emph[ingrandito]), dall'indicatore del profilo attivo e dal comando di uscita;],
  [#strong[Widget “Il tuo prossimo appuntamento” e scorciatoia “Prenotazione rapida”:] posizionati nel cruscotto della Home page, mettono in primo piano la visita imminente (con accesso diretto alle indicazioni di preparazione e al padiglione) e permettono ai pazienti cronici di avviare con un solo clic la prenotazione dell'ultima ricetta emessa dal medico;],
  [#strong[Filo d'Arianna (#emph[breadcrumb]) e Stepper orizzontale a 4 passi:] il breadcrumb sopra il titolo di pagina mantiene sempre esplicita la posizione corrente nella gerarchia, mentre nel flusso di prenotazione uno stepper numerato scandisce visivamente i passaggi completati (spunta verde), lo step attivo e quelli successivi, offrendo sempre un collegamento esplicito per tornare al passo precedente senza perdere le selezioni effettuate;],
  [#strong[Navigazione secondaria a schede (#emph[tab]) e piè di pagina:] le viste di elenco e di servizio utilizzano tab ad alto contrasto per separare gli stati operativi (#emph[Visite in programma] / #emph[Visite passate]\; #emph[Da prenotare] / #emph[Ricette passate]\; #emph[Chi assisto] / #emph[Le mie deleghe]\; #emph[Paga un nuovo avviso] / #emph[Scarica ricevuta di pagamento]), mentre il footer mantiene accessibili in ogni pagina i collegamenti a #emph[Cerca Medico / Pediatra (SSR)], #emph[Tempi di attesa regionali] e #emph[Privacy].],
)

#heading(level: 4, numbering: none, outlined: false)[Search Aids (Supporti alla ricerca e al filtraggio)]

#list(
  [#strong[Selettore pre-compilato delle prescrizioni FSE:] nello Step 1 della prenotazione, un menu a tendina propone automaticamente le ricette elettroniche attive dell'utente con il nome della visita in linguaggio chiaro, eliminando la necessità di cercare o trascrivere manualmente i 15 caratteri del codice NRE;],
  [#strong[Ricerca testuale e ordinamento geografico delle strutture:] nello Step 3a, la barra di ricerca per nome o comune è affiancata da una lista che ordina automaticamente gli ospedali e i poliambulatori per distanza chilometrica dal domicilio dell'utente, evidenziando con un badge la struttura più vicina e i collegamenti con parcheggi e mezzi pubblici;],
  [#strong[Calendario mensile ad alto contrasto e fasce orarie guidate:] nello Step 3b, il selettore su calendario mensile mette in risalto in verde i soli giorni con posti disponibili e raggruppa gli orari in pulsanti ampi divisi tra #emph[Mattina] (con indicazione della compatibilità con gli orari degli autobus) e #emph[Pomeriggio]\;],
  [#strong[Ricerca semplificata delle ricevute pagoPA:] nella scheda #emph[Scarica ricevuta di pagamento (RT)], il recupero di una quietanza pregressa richiede unicamente il codice fiscale (già pre-compilato) e il Codice Avviso di 18 cifre.],
)

#heading(level: 4, numbering: none, outlined: false)[Contents and Tasks (Contenuti e gerarchia dei compiti)]

#list(
  [#strong[Compito primario di prenotazione e confronto consapevole:] schede comparative a due colonne per valutare in parallelo Servizio Sanitario Pubblico (con calcolo automatico dell'esenzione e tempi medi d'attesa) e Libera Professione, affiancate da schede di recupero immediato che propongono due orari alternativi a un clic qualora il posto selezionato venga appena occupato;],
  [#strong[Compito co-primario di assistenza familiare e cura:] gestione condivisa tramite la vista a schermo diviso della modalità co-pilota e le schede multi-profilo dei familiari assistiti nella sezione #emph[Deleghe].],
  [#strong[Compito secondario di preparazione, modifica e disdetta protetta:] scheda di dettaglio della visita arricchita con le norme di preparazione clinica, la checklist spuntabile #emph[Cosa mettere nella borsa], le indicazioni interne di padiglione e ambulatorio, il comando di spostamento data e il flusso di disdetta senza sanzioni con un anticipo di almeno due giorni lavorativi con finestra di ripensamento di 10 minuti;],
  [#strong[Compito di pagamento assistito e distribuzione del promemoria:] guida grafica annotata dell'avviso cartaceo pagoPA (#emph[Dove trovo i dati?]) che mostra visivamente dove leggere codice avviso e importo sul bollettino, e strumenti post-conferma per stampare il promemoria in A4, inviarlo via SMS, condividerlo su WhatsApp con il caregiver o salvarlo nel calendario;],
)

#heading(level: 4, numbering: none, outlined: false)[Invisible Components (Componenti invisibili di supporto)]

#list(
  [#strong[Session & PIN Persistence Engine:] gestore dello stato locale che mantiene valido per 30 giorni il PIN personale di 4 cifre sul computer domestico, riserva temporaneamente per 15 minuti lo slot orario durante la lettura del riepilogo, governa il countdown di 10 minuti per l'annullamento della disdetta e congela il punto esatto della pratica per 24 ore tramite il codice Salva-Sessione;],
  [#strong[Real-Time Co-Browsing Signaling Gateway:] infrastruttura di sincronizzazione in tempo reale che proietta il cursore remoto arancione del caregiver sullo schermo dell'anziano e gestisce il canale vocale con trascrizione live nella colonna laterale durante la modalità co-pilota;],
  [#strong[Regional Interoperability Bus (FSE, CUP e pagoPA):] livello di integrazione che interroga in modo trasparente il Fascicolo Sanitario Elettronico per caricare ricette e deleghe, verifica le esenzioni registrate sul profilo dell'assistito, aggiorna le disponibilità delle agende AUSL e valida in tempo reale i Codici Avviso di 18 cifre sul nodo dei pagamenti;],
  [#strong[Multichannel Notification Dispatcher:] motore di invio che genera e distribuisce i promemoria di conferma e le ricevute su stampa A4, SMS, WhatsApp, email e file di calendario.],
)

// --- Card 03 ----------------------------------------------------

#heading(level: 3, numbering: none)[4.3 Progettazione dell’interazione]

La prenotazione guidata rende visibili il passo corrente e le scelte già effettuate. L’utente può tornare al passo precedente e scegliere un orario alternativo se lo slot viene occupato. Dopo la disdetta, una finestra di ripensamento consente di recuperare l’appuntamento.

In modalità co-pilota, l’utente assistito mantiene il controllo del puntatore. In modalità delega, il caregiver opera per conto del familiare e l’interfaccia rende riconoscibile il profilo attivo. I passaggi sono documentati nei #link(<doc:c:03>)[blueprint] e nei #link(<doc:c:04>)[wireframe].

#heading(level: 3, numbering: none)[Documento 03: 4.4 Blueprint di struttura] <doc:c:03>

#heading(level: 4, numbering: none, outlined: false)[Inquadramento metodologico]

#strong[Sei blueprint] rappresentano la struttura del portale~#cite(<garrettElements2011>) #cite(<morvilleRosenfeld2006>). I diagrammi mappano la gerarchia delle pagine, le scorciatoie di flusso (come la prenotazione rapida dalla Home o dall'archivio ricette), i bivi decisionali e la commutazione di contesto nella modalità delegata:

#enum(
  [#strong[Blueprint 1 -- Accesso al portale e Homepage:] struttura d'ingresso e diramazione verso tutte le sezioni principali, di supporto e di piè di pagina;],
  [#strong[Blueprint 2 -- Flusso di prenotazione:] percorso guidato con o senza ricetta fino alla conferma e alle azioni successive;],
  [#strong[Blueprint 3 -- Gestione appuntamenti:] consultazione delle visite, spostamento data, pagamento e disdetta con recupero della visita;],
  [#strong[Blueprint 4 -- Ricette e prescrizioni:] consultazione delle impegnative elettroniche e innesto diretto nella prenotazione;],
  [#strong[Blueprint 5 -- Deleghe:] gestione degli assistiti e delle proprie deleghe;],
  [#strong[Blueprint 6 -- Serve aiuto?:] salvataggio e ripresa della sessione tramite codice, assistenza scritta e numero verde.],
)

#heading(level: 4, numbering: none, outlined: false)[Legenda dei Blueprint]

La legenda (Figura~#ref(<fig:bp-key>, supplement: none)) riassume la notazione grafica adottata nei diagrammi: il rettangolo rosso indica la pagina di atterraggio iniziale (#emph[Landing page]), quello azzurro il menù principale della Homepage, i rettangoli grigi le singole pagine (o un insieme di pagine se sovrapposti) e quelli bianchi con bordo nero i componenti o le azioni interne alla pagina. I riquadri tratteggiati identificano le funzioni globali di testata e la navigazione del piè di pagina, mentre il bordo arancione segnala gli elementi attivi durante l'operatività in delega; infine, la freccia indica il punto di accesso e le linee continue i legami di contenimento e navigazione.

#figure(
  [#image("../phase-c/blueprints/0-key.png", width: 50%)],
  kind: image,
  caption: [Legenda dei simboli adottati negli Structure Blueprints.],
) <fig:bp-key>

#heading(level: 4, numbering: none, outlined: false)[Blueprint 1: Accesso al portale e Architettura della Homepage]

Il primo diagramma (Figura~#ref(<fig:bp-01>, supplement: none)) rappresenta la struttura generale del portale. All'ingresso l'utente incontra il bivio tra l'accesso rapido con PIN (per i dispositivi già registrati nei 30 giorni precedenti) e l'accesso con SPID o CIE. Entrambi i percorsi conducono al menù della Homepage, affiancato dalle funzioni globali (#emph[Chiedi a X] e regolazione della dimensione del testo), dal quale si diramano le sezioni principali (#emph[Prenota] con la scorciatoia di #emph[Prenotazione rapida], #emph[I miei appuntamenti] con l'accesso diretto ai #emph[Dettagli appuntamento], #emph[Ricette e prescrizioni], #emph[Deleghe]), le voci trasversali (#emph[Pagamento], #emph[Serve aiuto?] e #emph[Logout]) e la navigazione secondaria del piè di pagina (#emph[Cerca medico], #emph[Tempi di attesa], #emph[Privacy]).

#figure(
  [#image("../phase-c/blueprints/1-LoginHomePage.png", width: 95%)],
  kind: image,
  caption: [Blueprint 1: Accesso al portale (PIN vs SPID/CIE), struttura della Homepage e navigazione globale e di piè di pagina.],
) <fig:bp-01>

#heading(level: 4, numbering: none, outlined: false)[Blueprint 2: Flusso di Prenotazione Guidata]

Il secondo diagramma (Figura~#ref(<fig:bp-02>, supplement: none)) modella il percorso di prenotazione. Dalla sezione #emph[Prenota] il flusso si divide in base al possesso dell'impegnativa:

#list(
  [Con ricetta medica, l'utente seleziona l'impegnativa disponibile e passa alla scelta del regime della prestazione; questo stesso punto è raggiungibile direttamente dalla Homepage tramite la scorciatoia di #emph[Prenotazione rapida], saltando il primo passaggio;],
  [Senza ricetta, l'utente seleziona la prestazione desiderata.],
)

I due rami convergono nella sequenza lineare composta da scelta della sede, scelta di data e ora, riepilogo e conferma finale della prenotazione. Dalla schermata di conferma si diramano cinque azioni: stampa del promemoria, invio via SMS, invio dei dettagli al caregiver, aggiunta al calendario e gestione del pagamento (paga ora online con stampa della ricevuta oppure scarica il bollettino).

#figure(
  [#image("../phase-c/blueprints/2-Prenotazione.png", width: 95%)],
  kind: image,
  caption: [Blueprint 2: Flusso di prenotazione guidata con o senza ricetta, scorciatoia di Prenotazione Rapida e azioni post-conferma.],
) <fig:bp-02>

#heading(level: 4, numbering: none, outlined: false)[Blueprint 3: Gestione “I miei appuntamenti”, Spostamento e Disdetta]

Il terzo diagramma (Figura~#ref(<fig:bp-03>, supplement: none)) illustra la gestione degli appuntamenti. Dalla sezione #emph[I miei appuntamenti] è possibile ripristinare una visita appena cancellata (#emph[Recupero disdetta visita]) oppure aprire i dettagli di un appuntamento, che mettono a disposizione cinque rami operativi:

#enum(
  [#strong[Sposta appuntamento:] consente di scegliere una nuova data e ora mantenendo invariata la prestazione, passando poi per riepilogo e conferma;],
  [#strong[Disdici appuntamento:] permette di annullare la prenotazione;],
  [#strong[Pagamento:] se già effettuato, consente di stampare la ricevuta; se non ancora effettuato, permette di pagare ora (con stampa della ricevuta) o di scaricare il bollettino;],
  [#strong[Stampa dettagli] e #strong[Torna all'elenco] per la gestione documentale e la navigazione di ritorno.],
)

#figure(
  [#image("../phase-c/blueprints/3-Appuntamenti.png", width: 96%)],
  kind: image,
  caption: [Blueprint 3: Flusso “I miei appuntamenti” con recupero disdetta, spostamento data e gestione del pagamento.],
) <fig:bp-03>

#heading(level: 4, numbering: none, outlined: false)[Blueprint 4: Archivio “Ricette e prescrizioni”]

Il quarto diagramma (Figura~#ref(<fig:bp-04>, supplement: none)) descrive la sezione dedicata alle prescrizioni mediche. L'elenco principale è suddiviso nelle due viste #emph[Ricette da prenotare] e #emph[Ricette passate]. Selezionando l'azione di prenotazione da una ricetta attiva, il sistema pre-carica i dati dell'impegnativa e immette l'utente direttamente nel passaggio di scelta del regime, proseguendo poi lungo il normale flusso di scelta della sede, data e ora, riepilogo, conferma e azioni successive.

#figure(
  [#image("../phase-c/blueprints/4-RicettePrescrizioni.png", width: 92%)],
  kind: image,
  caption: [Blueprint 4: Sezione “Ricette e prescrizioni” con innesto diretto dalla prescrizione alla scelta del regime.],
) <fig:bp-04>

#heading(level: 4, numbering: none, outlined: false)[Blueprint 5: Gestione “Deleghe”]

Il quinto diagramma (Figura~#ref(<fig:bp-05>, supplement: none)) rappresenta il funzionamento delle deleghe familiari, articolato in due percorsi:

#list(
  [#strong[Assistiti:] permette al caregiver di operare per conto di un familiare, accedendo al menù dell'assistito per svolgere le operazioni consentite dalla delega e potendo chiudere la sessione delegata tramite il comando #emph[Termina delega]\;],
  [#strong[Le mie deleghe:] consente all'utente di aggiungere una nuova delega per autorizzare un caregiver sul proprio profilo.],
)

#figure(
  [#image("../phase-c/blueprints/5-Delega.png", width: 90%)],
  kind: image,
  caption: [Blueprint 5: Sezione “Deleghe” articolata tra “Assistiti” (ingresso nel menù dell'assistito) e “Le mie deleghe”.],
) <fig:bp-05>

#heading(level: 4, numbering: none, outlined: false)[Blueprint 6: Sistema di Supporto “Serve aiuto?”]

Il sesto diagramma (Figura~#ref(<fig:bp-06>, supplement: none)) illustra il modulo di assistenza contestuale, articolato in quattro funzioni:

#enum(
  [#strong[Recupera sessione da codice:] consente di inserire un codice salvato per riprendere direttamente l'ultima sessione interrotta;],
  [#strong[Genera codice Salva-Sessione:] permette di congelare la pratica corrente tramite codice;],
  [#strong[Chiedi all'assistente:] consente di richiedere supporto tramite chat testuale;],
  [#strong[Numero verde:] fornisce i riferimenti per il supporto telefonico regionale.],
)

#figure(
  [#image("../phase-c/blueprints/6-ServeAiuto?.png", width: 92%)],
  kind: image,
  caption: [Blueprint 6: Struttura del modulo “Serve aiuto?” con recupero e generazione del codice Salva-Sessione, assistente testuale e Numero Verde.],
) <fig:bp-06>

// --- Card 04 ----------------------------------------------------

#heading(level: 3, numbering: none)[Documento 04: 4.5 Wireframe] <doc:c:04>

#heading(level: 4, numbering: none, outlined: false)[Impostazione generale della suite di Wireframe]

La proposta progettuale è rappresentata attraverso diciannove schermate desktop (WF-01--WF-19) che traducono visivamente l'architettura dell'informazione e i flussi definiti nei blueprint. Tutte le viste mantengono un'impostazione costante: intestazione superiore con selettore di dimensione del testo e profilo attivo, barra di navigazione globale con le cinque sezioni principali a sinistra e i due comandi di supporto a destra, e una codifica cromatica chiara che distingue le azioni ordinarie e le conferme (verde), i pagamenti pagoPA (blu), le funzioni legate al caregiver (arancione) e i comandi di cancellazione (rosso).

#heading(level: 4, numbering: none, outlined: false)[Accesso e Cruscotto iniziale (WF-01 -- WF-02)]

Le prime due schermate gestiscono l'ingresso nel portale e l'orientamento iniziale dell'utente:

#list(
  [#strong[Gate di accesso (WF-01, Figura~#ref(<fig:wf-01>, supplement: none)):] affianca due modalità di entrata. A sinistra, l'utente che utilizza il proprio computer abituale può accedere rapidamente inserendo un PIN personale di 4 cifre valido per 30 giorni; a destra, restano disponibili i pulsanti SPID e CIE per il primo accesso o quando il PIN è scaduto. In calce sono presenti il rimando all'applicazione mobile #emph[ER Salute] e i link informativi del piè di pagina.],
  [#strong[Cruscotto personale (WF-02, Figura~#ref(<fig:wf-02>, supplement: none)):] una volta effettuato l'accesso, la pagina iniziale mette in evidenza a sinistra la scheda del prossimo appuntamento in programma (con accesso diretto ai dettagli e alle istruzioni di preparazione) e a destra tre schede operative per avviare una nuova prenotazione, sfruttare la prenotazione rapida dell'ultima ricetta prescritta dal medico o pagare online un ticket cartaceo.],
)

#figure(
  [#image("../phase-c/wireframes/wf-01.png", width: 90%)],
  kind: image,
  caption: [WF-01: Gate di accesso al portale con ingresso rapido tramite PIN di 4 cifre affiancato all'accesso SPID/CIE.],
) <fig:wf-01>

#figure(
  [#image("../phase-c/wireframes/wf-02.png", width: 90%)],
  kind: image,
  caption: [WF-02: Cruscotto iniziale con il prossimo appuntamento in evidenza, la prenotazione rapida e l'accesso al pagamento pagoPA.],
) <fig:wf-02>

#heading(level: 4, numbering: none, outlined: false)[Flusso di prenotazione guidata, Co-pilota e recupero errori (WF-03 -- WF-10)]

Il percorso di prenotazione è scandito da uno stepper orizzontale a quattro passaggi e include la gestione del supporto a distanza e degli imprevisti sugli orari:

#list(
  [#strong[Passo 1 -- Scelta della prestazione (WF-03, Figura~#ref(<fig:wf-03>, supplement: none)):] propone un bivio semplice tra la prenotazione con ricetta medica (selezionabile direttamente da un menu a tendina che mostra le ricette già presenti nel Fascicolo Sanitario, senza dover digitare il codice NRE) e la prenotazione di prestazioni senza ricetta.],
  [#strong[Passo 2 -- Canale e costi (WF-04, Figura~#ref(<fig:wf-04>, supplement: none)):] affianca in modo trasparente le due opzioni disponibili per la visita selezionata, permettendo di confrontare a colpo d'occhio il Servizio Sanitario Pubblico (con eventuale esenzione già applicata, prima data disponibile e attesa media) e la Libera Professione in ospedale (con importo totale e prima data utile ravvicinata).],
  [#strong[Passo 3a -- Scelta della struttura (WF-05, Figura~#ref(<fig:wf-05>, supplement: none)):] presenta a sinistra l'elenco degli ospedali e poliambulatori ordinati per vicinanza da casa (corredati da distanza in chilometri, prima data utile e icone per parcheggio e mezzi pubblici) e a destra la mappa interattiva del territorio.],
  [#strong[Passo 3b -- Scelta di giorno e orario (WF-06, Figura~#ref(<fig:wf-06>, supplement: none)):] affianca il calendario mensile, dove i giorni disponibili sono evidenziati in verde, e l'elenco degli orari suddivisi tra mattina (con indicazione di compatibilità con le linee autobus) e pomeriggio.],
  [#strong[Modalità Co-pilota attiva (WF-07, Figura~#ref(<fig:wf-07>, supplement: none)):] mostra l'interfaccia quando l'anziano attiva il supporto del caregiver cliccando su #emph[Chiedi ad Elena]. Un banner arancione in alto segnala la condivisione attiva; lo schermo mantiene a sinistra la pagina di prenotazione su cui compare il cursore arancione remoto della figlia, e apre a destra il pannello vocale con la trascrizione in tempo reale dei suggerimenti del caregiver.],
  [#strong[Recupero per orario appena occupato (WF-08, Figura~#ref(<fig:wf-08>, supplement: none)):] se l'orario selezionato viene confermato da un altro utente, il sistema evita messaggi d'errore bloccanti e propone subito due alternative vicine nella stessa struttura (un altro orario nello stesso giorno o lo stesso orario nel giorno successivo), confermabili con un solo clic.],
  [#strong[Passo 4 -- Riepilogo (WF-09, Figura~#ref(<fig:wf-09>, supplement: none)):] riassume tutti i dati della visita, mostra in alto un timer di 15 minuti che garantisce la riserva temporanea del posto, permette di scegliere se pagare subito online con pagoPA o successivamente tramite avviso cartaceo e ricorda la possibilità di disdire senza sanzioni con un anticipo di almeno due giorni lavorativi.],
  [#strong[Conferma della prenotazione (WF-10, Figura~#ref(<fig:wf-10>, supplement: none)):] certifica l'avvenuta prenotazione mostrando a sinistra le opzioni per conservare o condividere il promemoria (stampa A4, invio SMS, invio su WhatsApp al caregiver, aggiunta al calendario) e a destra il pulsante per procedere al pagamento pagoPA o scaricare il bollettino.],
)

#figure(
  [#image("../phase-c/wireframes/wf-03.png", width: 90%)],
  kind: image,
  caption: [WF-03: Passo 1 del wizard (#emph[Scelta prestazione]) con selezione delle ricette dal Fascicolo Sanitario o accesso senza ricetta.],
) <fig:wf-03>

#figure(
  [#image("../phase-c/wireframes/wf-04.png", width: 90%)],
  kind: image,
  caption: [WF-04: Passo 2 del wizard (#emph[Canale e costi]) con confronto affiancato tra Servizio Sanitario Pubblico e Libera Professione.],
) <fig:wf-04>

#figure(
  [#image("../phase-c/wireframes/wf-05.png", width: 90%)],
  kind: image,
  caption: [WF-05: Passo 3a del wizard (#emph[Sede e data]) con strutture ordinate per vicinanza, indicatori dei trasporti e mappa.],
) <fig:wf-05>

#figure(
  [#image("../phase-c/wireframes/wf-06.png", width: 90%)],
  kind: image,
  caption: [WF-06: Passo 3b del wizard (#emph[Sede e data]) con calendario mensile e fasce orarie.],
) <fig:wf-06>

#figure(
  [#image("../phase-c/wireframes/wf-07.png", width: 90%)],
  kind: image,
  caption: [WF-07: Modalità Co-pilota attiva con divisione dello schermo, cursore remoto del caregiver e pannello vocale con trascrizione.],
) <fig:wf-07>

#figure(
  [#image("../phase-c/wireframes/wf-08.png", width: 90%)],
  kind: image,
  caption: [WF-08: Stato di recupero automatico nel caso in cui l'orario selezionato risulti appena occupato.],
) <fig:wf-08>

#figure(
  [#image("../phase-c/wireframes/wf-09.png", width: 90%)],
  kind: image,
  caption: [WF-09: Passo 4 del wizard (#emph[Riepilogo]) con timer di riserva dell'orario per 15 minuti e scelta della modalità di pagamento.],
) <fig:wf-09>

#figure(
  [#image("../phase-c/wireframes/wf-10.png", width: 90%)],
  kind: image,
  caption: [WF-10: Conferma della prenotazione con distribuzione multicanale del promemoria e opzioni di pagamento pagoPA.],
) <fig:wf-10>

#heading(level: 4, numbering: none, outlined: false)[Gestione appuntamenti e disdetta con ripensamento (WF-11 -- WF-14)]

Questo gruppo di schermate copre la consultazione delle visite prenotate, la preparazione pratica all'esame e il flusso protetto di cancellazione:

#list(
  [#strong[Elenco appuntamenti (WF-11, Figura~#ref(<fig:wf-11>, supplement: none)):] raccoglie le prenotazioni dividendole tra #emph[Visite in programma] e #emph[Visite passate], indicando chiaramente per ciascuna data, struttura, regime ed eventuale stato del pagamento del ticket.],
  [#strong[Dettaglio dell'appuntamento (WF-12, Figura~#ref(<fig:wf-12>, supplement: none)):] affianca a sinistra le istruzioni di preparazione all'esame e la checklist pratica dei documenti da portare (#emph[Cosa mettere nella borsa]), e a destra le indicazioni per raggiungere l'ambulatorio e lo stato del pagamento con ristampa della ricevuta. In basso, i comandi per spostare e per disdire la visita sono collocati ai lati opposti della pagina per evitare clic involontari.],
  [#strong[Modale di conferma disdetta (WF-13, Figura~#ref(<fig:wf-13>, supplement: none)):] prima di procedere alla cancellazione, una finestra di dialogo rassicura l'utente confermando in modo esplicito che la disdetta avviene senza sanzioni poiché rispetta l'anticipo di almeno due giorni lavorativi rispetto alla visita.],
  [#strong[Finestra di ripensamento di 10 minuti (WF-14, Figura~#ref(<fig:wf-14>, supplement: none)):] subito dopo la conferma della disdetta, un banner in cima all'elenco appuntamenti avvisa l'utente che ha 10 minuti di tempo per cambiare idea e recuperare il posto con un solo clic, mantenendo nel frattempo la scheda della visita in stato ripristinabile.],
)

#figure(
  [#image("../phase-c/wireframes/wf-11.png", width: 90%)],
  kind: image,
  caption: [WF-11: Sezione “I miei appuntamenti” con elenco delle visite in programma e stato del pagamento.],
) <fig:wf-11>

#figure(
  [#image("../phase-c/wireframes/wf-12.png", width: 90%)],
  kind: image,
  caption: [WF-12: Dettaglio dell'appuntamento con preparazione, checklist dei documenti e separazione del comando di disdetta.],
) <fig:wf-12>

#figure(
  [#image("../phase-c/wireframes/wf-13.png", width: 90%)],
  kind: image,
  caption: [WF-13: Finestra modale di conferma della cancellazione con indicazione di assenza di sanzioni per la disdetta con un anticipo di almeno due giorni lavorativi.],
) <fig:wf-13>

#figure(
  [#image("../phase-c/wireframes/wf-14.png", width: 90%)],
  kind: image,
  caption: [WF-14: Stato post-disdetta con banner temporizzato di 10 minuti per annullare la cancellazione e recuperare l'appuntamento.],
) <fig:wf-14>

#heading(level: 4, numbering: none, outlined: false)[Deleghe, Ricette, Pagamento assistito, Ricevute e Supporto (WF-15 -- WF-19)]

Le ultime cinque schermate completano le sezioni di gestione familiare, archivio prescrizioni, pagamento e recupero ricevute pagoPA, e assistenza contestuale:

#list(
  [#strong[Sezione Deleghe (WF-15, Figura~#ref(<fig:wf-15>, supplement: none)):] mostra la vista del caregiver (Elena) nella scheda #emph[Chi assisto], dove sono riepilogati i profili dei genitori con lo stato della delega, il numero di visite confermate e di ricette da prenotare, e il pulsante arancione per entrare nella gestione per conto del familiare.],
  [#strong[Sezione Ricette e prescrizioni (WF-16, Figura~#ref(<fig:wf-16>, supplement: none)):] elenca le impegnative del Fascicolo Sanitario divise tra #emph[Da prenotare] e #emph[Ricette passate], permettendo di avviare la prenotazione con un clic direttamente dalla ricetta desiderata.],
  [#strong[Pagamento pagoPA con guida visiva (WF-17, Figura~#ref(<fig:wf-17>, supplement: none)):] per agevolare il pagamento di un avviso cartaceo, la scheda #emph[Paga un nuovo avviso] affianca a sinistra un fac-simile annotato del bollettino (#emph[Dove trovo i dati?]), che indica con richiami numerati dove leggere il codice avviso di 18 cifre e l'importo, e a destra il modulo di inserimento con verifica immediata della correttezza del codice.],
  [#strong[Recupero e stampa ricevuta di pagamento (WF-18, Figura~#ref(<fig:wf-18>, supplement: none)):] selezionando la seconda scheda #emph[Scarica ricevuta di pagamento (RT)], l'utente può recuperare qualsiasi ricevuta già pagata inserendo semplicemente il codice fiscale (pre-compilato) e il Codice Avviso di 18 cifre, senza vincoli temporali restrittivi né passaggi su portali esterni.],
  [#strong[Pannello Serve aiuto? (WF-19, Figura~#ref(<fig:wf-19>, supplement: none)):] si apre in sovrimpressione sulla pagina attiva offrendo a sinistra lo strumento #emph[Salva il tuo punto] (per generare un codice Salva-Sessione valido 24 ore o inserire un codice esistente per riprendere la pratica) insieme al numero verde regionale, e a destra la chat scritta per inviare domande all'assistente.],
)

#figure(
  [#image("../phase-c/wireframes/wf-15.png", width: 90%)],
  kind: image,
  caption: [WF-15: Sezione “Deleghe” vista dal profilo del caregiver con accesso alla gestione per conto dei familiari assistiti.],
) <fig:wf-15>

#figure(
  [#image("../phase-c/wireframes/wf-16.png", width: 90%)],
  kind: image,
  caption: [WF-16: Sezione “Ricette e prescrizioni” con le impegnative elettroniche pronte da prenotare.],
) <fig:wf-16>

#figure(
  [#image("../phase-c/wireframes/wf-17.png", width: 90%)],
  kind: image,
  caption: [WF-17: Pagamento pagoPA affiancato dalla guida visiva per individuare il codice avviso di 18 cifre e l'importo sul bollettino cartaceo.],
) <fig:wf-17>

#figure(
  [#image("../phase-c/wireframes/wf-18.png", width: 90%)],
  kind: image,
  caption: [WF-18: Scheda “Scarica ricevuta di pagamento (RT)” per recuperare e stampare le ricevute pagoPA già saldate.],
) <fig:wf-18>

#figure(
  [#image("../phase-c/wireframes/wf-19.png", width: 90%)],
  kind: image,
  caption: [WF-19: Pannello “Serve aiuto?” con generazione/ripresa del codice Salva-Sessione, Numero Verde e assistente testuale.],
) <fig:wf-19>

// --- Card 05 ----------------------------------------------------

#heading(level: 3, numbering: none)[Documento 05: Confronto prima/dopo] <doc:c:05>

Di seguito vengono messi a confronto diretto i quattro snodi principali dell'esperienza d'uso tra l'attuale portale CUPweb (Prima, a sinistra) e la proposta di riprogettazione desktop HPHP (Dopo, a destra).

#heading(level: 4, numbering: none, outlined: false)[Accesso e orientamento iniziale]

L'attuale CUPweb si presenta con una home page testuale frammentata in silos amministrativi (#emph[Disdici], #emph[Prenota], #emph[Paga]) e richiede l'autenticazione SPID/CIE con OTP a ogni accesso. Il redesign HPHP introduce l'accesso rapido con PIN di 4 cifre (valido 30 giorni) e accoglie l'utente con un cruscotto orientato ai compiti: prossimo appuntamento in evidenza, pulsante primario di prenotazione, scorciatoia per l'ultima ricetta del medico e accesso diretto a pagoPA (Figura~#ref(<fig:comp-home>, supplement: none)).

#figure(
  [#image("../phase-c/before-after/before_after_home.png", width: 90%)],
  kind: image,
  caption: [Confronto prima/dopo per l'accesso e orientamento iniziale: CUPweb attuale (sinistra) vs Cruscotto HPHP WF-02 (destra).],
) <fig:comp-home>

#heading(level: 4, numbering: none, outlined: false)[Le mie prescrizioni]

In CUPweb l'elenco delle ricette è subordinato al flusso di prenotazione specialistica, richiede l'inserimento manuale del codice NRE di 15 cifre o rimanda a portali esterni per consultare il Fascicolo Sanitario. In HPHP la sezione #emph[Ricette e prescrizioni] è integrata nella navigazione principale, sincronizza in automatico le impegnative del Fascicolo (suddivise tra #emph[Da prenotare] e #emph[Ricette passate]) con diciture comprensibili e consente di avviare la prenotazione con un clic (Figura~#ref(<fig:comp-ricette>, supplement: none)).

#figure(
  [#image("../phase-c/before-after/before_after_ricette.png", width: 90%)],
  kind: image,
  caption: [Confronto prima/dopo per le prescrizioni: Elenco specialistica CUPweb (sinistra) vs Sezione Ricette HPHP WF-16 (destra).],
) <fig:comp-ricette>

#heading(level: 4, numbering: none, outlined: false)[I miei appuntamenti]

Il sistema originale separa visite attive e storico in voci distinte; la ricerca delle prestazioni passate è una tabella tecnica con filtri obbligatori per anno e AUSL ed etichette sanitarie complesse. Nel redesign HPHP l'archivio unificato #emph[I miei appuntamenti] raggruppa tutte le prenotazioni con le schede #emph[Visite in programma] e #emph[Visite passate], rendendo immediati lo stato del pagamento, le istruzioni di preparazione e la disdetta protetta (Figura~#ref(<fig:comp-appuntamenti>, supplement: none)).

#figure(
  [#image("../phase-c/before-after/before_after_appuntamenti.png", width: 90%)],
  kind: image,
  caption: [Confronto prima/dopo per la gestione appuntamenti: Storico visite CUPweb (sinistra) vs Archivio appuntamenti HPHP WF-11 (destra).],
) <fig:comp-appuntamenti>

#heading(level: 4, numbering: none, outlined: false)[Pagamento]

Il pagamento online e il recupero delle ricevute in CUPweb rinviano a un portale esterno privo di aiuto visivo per reperire i dati sul bollettino cartaceo. In HPHP il pagamento pagoPA (WF-17) e lo scaricamento delle ricevute (WF-18) sono integrati nativamente e corredati dalla guida visiva annotata #emph[Dove trovo i dati?], con richiami numerati per codice avviso di 18 cifre e importo, e verifica immediata della validità (Figura~#ref(<fig:comp-pagamento>, supplement: none)).

#figure(
  [#image("../phase-c/before-after/before_after_pagamento.png", width: 90%)],
  kind: image,
  caption: [Confronto prima/dopo per il pagamento: Portale esterno pagoOnline (sinistra) vs Pagamento pagoPA HPHP WF-17 con guida visiva (destra).],
) <fig:comp-pagamento>

#heading(level: 4, numbering: none, outlined: false)[Supporto collaborativo e continuità operativa (novità assenti in CUPweb)]

#block(breakable: false)[
La proposta HPHP introduce inoltre funzionalità di cooperazione e assistenza #strong[completamente assenti nell'attuale CUPweb]: la #strong[Modalità Co-pilota] (WF-07), che consente la condivisione dello schermo con audio e puntatore remoto del caregiver senza cedere il controllo del mouse; la sezione #strong[Deleghe] (WF-15) per l'operatività trasparente a favore dei familiari assistiti; e il modulo #strong[Salva il tuo punto] (WF-19), che genera un codice temporizzato (24h) per sospendere e riprendere la sessione senza perdere il lavoro svolto.
]


#heading(level: 3, numbering: none)[Documento 06: Scheda di progettazione] <doc:c:06>

- La prenotazione ricorrente di #link(<doc:b:02a>)[Pina] ha motivato la scorciatoia dalla #link(<fig:wf-02>)[Home] e il percorso guidato. Il #link(<fig:wf-07>)[Co-pilota] le consente di ricevere assistenza da Elena mantenendo il controllo dei comandi.
- La disdetta urgente nello scenario di #link(<doc:b:02b>)[Elena] ha motivato la #link(<fig:wf-15>)[gestione in delega] e l’indicazione del profilo attivo. La #link(<fig:wf-14>)[finestra di ripensamento] consente di correggere una disdetta eseguita in fretta.
- Il confronto di #link(<doc:b:02c>)[Renato] ha motivato l’#link(<fig:wf-04>)[affiancamento dei due regimi], con costi ed esenzioni visibili prima di scegliere sede e orario.
- Le interruzioni nello scenario di #link(<doc:b:02d>)[Amina] hanno motivato il #link(<fig:wf-19>)[salvataggio e la ripresa della pratica]. Il #link(<fig:wf-10>)[promemoria condivisibile] permette ai familiari di coordinarsi dopo la prenotazione.

Il #link(<fig:wf-01>)[PIN sul computer abituale] sostituisce l’ipotesi di un SMS a ogni accesso, che riproponeva il passaggio al telefono richiesto da SPID. Il #link(<doc:d:03>)[protocollo] documenta l’aggiunta del pagamento assistito dopo il pilota. Le #link(<doc:d:04>)[conclusioni] riportano le correzioni proposte.
