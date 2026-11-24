#import "@preview/grape-suite:4.0.0": seminar-paper
#import seminar-paper: definition

#set figure(numbering: n => numbering("1.1", 1, n))
#counter(figure.where(kind: image)).update(0)
#counter(figure.where(kind: table)).update(0)

// I termini tecnici seguono la terminologia delle checklist di progetto.

#heading(level: 1, numbering: none)[FASE A]
#block(sticky: true)[#text(size: 13pt, weight: "semibold")[Analisi etnografica e valutazione delle risorse esistenti]]

#set heading(numbering: none)

// --- Card 01 ----------------------------------------------------

== Documento 01: Scheda del gruppo <doc:a:01>

#include "team-card.typ"

// --- Card 02 ----------------------------------------------------

#heading(level: 2, numbering: none)[1\. Analisi etnografica]

#heading(level: 3, numbering: none)[1.1 Finalità del committente]

==== Documento 02: Scheda del cliente <doc:a:02>

#heading(level: 5, numbering: none, outlined: false)[Cliente e servizio]

#strong[Nome del cliente.] Regione Emilia-Romagna, Assessorato alle Politiche per la Salute, in
collaborazione con Lepida S.c.p.A., società in-house che gestisce
tecnicamente il sistema regionale di prenotazione sanitaria CUPweb
per conto delle Aziende USL
e Ospedaliere del territorio.

#heading(level: 5, numbering: none, outlined: false)[Descrizione del cliente]

Ente pubblico regionale che coordina i servizi sanitari di tutta
l’Emilia-Romagna attraverso le Aziende Sanitarie locali
(AUSL Bologna, AUSL Romagna, AUSL Modena, AUSL Parma, AUSL Reggio
Emilia, AUSL Ferrara e le Aziende Ospedaliero-Universitarie). Il cliente
ha già una presenza digitale matura e consolidata: gestisce la piattaforma
web di prenotazione CUPweb, numeri verdi dedicati delle singole AUSL e una rete di sportelli fisici e farmacie
convenzionate (FarmaCUP). Nel caso progettuale, il team assume il ruolo di
una società di consulenza UX che presenta a un system integrator una
proposta per conto di Lepida. Questa cornice definisce il destinatario e
le ragioni dell'investimento; non descrive un incarico professionale
ricevuto dalla Regione.

#strong[Nome del servizio.] CUPweb (www.cupweb.it), servizio web di prenotazione delle prestazioni
sanitarie specialistiche della Regione Emilia-Romagna, disponibile
gratuitamente 24/7~#cite(<rerPrenotare>).

Il redesign si concentra sulla prenotazione e sulla disdetta da computer,
con un adattamento responsive agli altri dispositivi. Il pagamento è un
percorso accessorio: serve a considerare la continuità del servizio e la
preparazione dei dati, senza estendere i task preliminari o assumere che
ogni prenotazione richieda un pagamento immediato obbligatorio. L'app ER Salute resta
esterna al perimetro.

#heading(level: 5, numbering: none, outlined: false)[Modalità di accesso al servizio]

Via browser web all’indirizzo www.cupweb.it, tramite credenziali SPID, CIE o credenziali regionali
CUPweb; consente di prenotare, disdire o modificare visite ed esami per sé
stessi e per i familiari o assistiti delegati.

#heading(level: 5, numbering: none, outlined: false)[Obiettivi della riprogettazione]

#heading(level: 5, numbering: none, outlined: false)[Motivazioni per il finanziamento della riprogettazione]

Il redesign risponde al rischio di esclusione dal canale digitale e alla
conseguente dipendenza da sportelli, centri telefonici o familiari, approfonditi
nei #link(<doc:a:03>)[Documento~03] e #link(<doc:a:04a>)[Documento~04a] e #link(<doc:a:04b>)[Documento~04b]. Una migliore esperienza di prenotazione e disdetta
può contribuire agli obiettivi regionali di accesso ai servizi e di
digitalizzazione della sanità pubblica~#cite(<rerTempiAttesa>) #cite(<pnrrM6>).
La riduzione dei costi operativi e delle mancate presentazioni è un obiettivo
progettuale, non un risultato misurato dalla ricerca preliminare.

#heading(level: 5, numbering: none, outlined: false)[Obiettivi del prodotto]

Consentire ai pazienti anziani con patologie croniche di partecipare alla
gestione dei propri appuntamenti, anche con l'aiuto di un familiare. Il
redesign mira a ridurre l'ansia durante l'interazione e a rafforzare la
fiducia nel canale digitale, affinché il caregiver possa facilitare
l'autonomia del paziente oltre a svolgere le pratiche per suo conto.

#heading(level: 5, numbering: none, outlined: false)[Obiettivi organizzativi]

Riduzione dei costi operativi di centri telefonici e sportelli fisici;
riduzione del tasso di mancata presentazione agli appuntamenti;
incremento della quota di prenotazioni gestite sul canale digitale, in
linea con i target nazionali di digitalizzazione della sanità pubblica
(PNRR Missione 6, componente 2)~#cite(<pnrrM6>).

#heading(level: 5, numbering: none, outlined: false)[Identità del servizio]

Rafforzare la percezione di una sanità pubblica regionale efficiente e
accessibile, capace di accompagnare i cittadini più fragili nell'uso dei
servizi. La promessa di una sanità digitale inclusiva deve trovare
riscontro in percorsi comprensibili, possibilità di recupero e assistenza
riconoscibile.

#heading(level: 5, numbering: none, outlined: false)[Indicatori di successo]

I dati di esercizio servono a misurare prenotazioni, abbandoni e chiamate.
Tempi e SUS si rilevano con test che usano compiti e condizioni comparabili.

#list(
  [Aumento della quota di prenotazioni effettuate (anche in co-presenza
  con un familiare) direttamente da utenti over 70],
  [Riduzione del tempo medio necessario per completare una prenotazione],
  [Punteggio SUS del nuovo prototipo superiore a 68, valore medio di
  riferimento~#cite(<sauroSUS2011>), sul segmento target],
  [Riduzione del tasso di abbandono durante il flusso di prenotazione],
  [Riduzione delle chiamate al centro telefonico motivate da difficoltà di
  utilizzo di CUPweb nelle attività oggetto del redesign],
)

// --- Card 03 ----------------------------------------------------

#heading(level: 3, numbering: none)[1.2 Segmentazione del pubblico di riferimento]

==== Documento 03: Scheda di segmentazione degli utenti <doc:a:03>

#heading(level: 5, numbering: none, outlined: false)[Criteri di segmentazione]

#heading(level: 5, numbering: none, outlined: false)[Dimensioni di segmentazione scelte]

#list(
  [Demografica: età, presenza/assenza di una rete familiare di supporto],
  [Comportamentale: frequenza di utilizzo del servizio, grado di delega
  della prenotazione a terzi],
  [Psicologica: livello di ansia/sfiducia verso gli strumenti digitali,
  motivazione all’autonomia],
  [Contestuale: dispositivo disponibile, presenza fisica o meno del
  caregiver al momento del bisogno, distanza abitativa
  caregiver--assistito],
)

#heading(level: 5, numbering: none, outlined: false)[Motivazione della scelta e relazione con il servizio del cliente]

Le dimensioni distinguono due ruoli interdipendenti: il paziente anziano
cronico, che deve gestire visite ricorrenti, e il caregiver familiare, che
lo assiste o svolge le pratiche per suo conto. Età, autonomia digitale e
contesto di assistenza permettono di descrivere quando il supporto è
necessario e quando può favorire la partecipazione diretta del paziente.

#heading(level: 5, numbering: none, outlined: false)[Segmenti e combinazioni]

#heading(level: 5, numbering: none, outlined: false)[Segmenti nella dimensione \#1: Utenti diretti (per età e
autonomia digitale)]

#list(
  [1. "Nuovo utente digitale": 65-74 anni, competenze digitali di base
  (messaggistica, videochiamate) ma bloccato/a su procedure strutturate
  (SPID, moduli, pagamenti online)],
  [2. "Utente con bassa autonomia digitale": 75-85+ anni, competenza tecnica quasi nulla,
  delega totale delle pratiche digitali al caregiver, spesso patologie
  croniche con necessità di prenotazioni ricorrenti],
)

#heading(level: 5, numbering: none, outlined: false)[Segmenti nella dimensione \#2: Intermediari (per relazione
con l’assistito)]

#list(
  [1. Caregiver convivente: vive con l’assistito,
  gestisce le prenotazioni "di persona", spesso presente alle visite],
  [2. Caregiver sempre reperibile a distanza: figlio/a 45-60 anni che non
  convive con il genitore, gestisce le pratiche da remoto (telefono/PC),
  spesso lavoratore/lavoratrice a tempo pieno con poco tempo a
  disposizione],
)

#heading(level: 5, numbering: none, outlined: false)[Numero totale di combinazioni tra i segmenti]

2 (utenti diretti) × 2 (intermediari) = 4 combinazioni possibili.

#heading(level: 5, numbering: none, outlined: false)[Target prioritario e implicazioni]

#heading(level: 5, numbering: none, outlined: false)[Combinazioni di segmentazione scelte]

#list(
  [A. Paziente anziano con bassa autonomia digitale, 75-85 anni, patologia cronica,
  con caregiver figlio/a disponibile ma non sempre fisicamente presente
  (utente diretto)],
  [B. Caregiver sempre reperibile a distanza, 45-60 anni, alta competenza
  tecnica, gestisce da remoto le prenotazioni del genitore, vorrebbe
  poter delegare gradualmente compiti semplici (intermediario)],
)

#heading(level: 5, numbering: none, outlined: false)[Perché le combinazioni scelte sono più rappresentative, sfidanti
ed espressive delle altre]

Le combinazioni selezionate mettono a confronto bassa autonomia digitale e
assistenza competente a distanza: la difficoltà progettuale consiste nel
ridurre le barriere per il paziente senza perdere la visibilità necessaria
al caregiver. I dati nazionali sul divario digitale e sul caregiving
motivano la rilevanza del tema; valori e ambito delle fonti sono riportati nei #link(<doc:a:04a>)[Documento~04a] e #link(<doc:a:04b>)[Documento~04b].

#heading(level: 5, numbering: none, outlined: false)[Impatto atteso sulla progettazione]

Occorre distinguere il percorso dell'utente diretto da quello di chi lo
assiste, mantenendo visibili identità, responsabilità e stato della pratica
nell'esperienza principale da computer e nel suo adattamento responsive.
L'ipotesi iniziale è che guida contestuale, notifiche e delega controllata
possano sostenere un trasferimento graduale di autonomia. I #link(<doc:a:04a>)[Documento~04a] e #link(<doc:a:04b>)[Documento~04b]
ne precisano le implicazioni per segmento; il #link(<doc:a:07>)[Documento~07] formalizza
raccomandazioni e requisiti.

// --- Card 04a ----------------------------------------------------

#heading(level: 3, numbering: none)[1.3 Ricerca sugli utenti]

==== Documento 04a: Scheda di ricerca di mercato (segmento A) <doc:a:04a>

#heading(level: 5, numbering: none, outlined: false)[Profilo del segmento]

#heading(level: 5, numbering: none, outlined: false)[Segmento selezionato]

Paziente anziano con bassa autonomia digitale, 75-85 anni, patologia cronica,
utente diretto del servizio, con caregiver familiare disponibile ma non
sempre fisicamente presente.

#heading(level: 5, numbering: none, outlined: false)[Motivazione della scelta]

È il segmento più esposto al rischio di esclusione digitale
nell’accesso ai servizi sanitari essenziali, e quello su
cui un redesign centrato sulla fiducia e sull’autonomia
deve dimostrare il maggiore impatto.

// Titolo breve: Statistiche disponibili

#heading(level: 5, numbering: none, outlined: false)[Metodo di ricerca utilizzato: statistiche disponibili]

I dati provengono dai rapporti ISTAT #emph[Cittadini e ICT, Anno 2024]~#cite(<istatICT2024>)
e #emph[Cittadini e ICT, Anno 2025]~#cite(<istatICT2025>). Sono state escluse dalla sintesi le fonti
giornalistiche, poiché i dati sono disponibili nei comunicati e nelle
tavole dell’Istituto.

La tabella raccoglie gli indicatori di accesso, uso e competenze digitali.
Le differenze tra gruppi motivano l'attenzione al segmento; il calo delle
attività online della PA non ne identifica, da solo, le cause.

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (48fr, 32fr, 14fr,),
  align: (left, left, left,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Indicatore macro (ISTAT)]], [#strong[Coorte / Ambito]], [#strong[Valore]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Accesso domestico a Internet (2025)], [Famiglie di soli anziani (65+)], [63,9%],
  [Accesso domestico a Internet (2024)], [Famiglie di soli anziani (65+)], [60,6%],
  [Accesso domestico a Internet (2025)], [Famiglie non esclusivamente anziane], [95,1%],
  [Accesso domestico a Internet (2025)], [Famiglie con almeno un minore], [98,7%],
  [Uso Internet per genere (2024)], [Uomini over 75], [38,3%],
  [Uso Internet per genere (2024)], [Donne over 75], [26,5%],
  [Motivo principale non-connessione (2024)], [Mancanza di competenze d'uso], [57,8%],
  [Prenotazione appuntamenti PA online (2024)], [Variazione rispetto al 2023], [−8,0 p.p.],
  [Download moduli PA online (2024)], [Variazione rispetto al 2023], [−9,6 p.p.],
  [Uso Internet per titolo di studio (2024)], [Laurea], [95,8%],
  [Uso Internet per titolo di studio (2024)], [Diploma], [91,6%],
  [Uso Internet per titolo di studio (2024)], [Al massimo licenza media], [69,7%],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Indicatori ISTAT sull’accesso e sull’uso dei servizi digitali]),
) <tab:a-1>
]
]

// Titolo breve: Interviste qualitative

#heading(level: 5, numbering: none, outlined: false)[Metodo di ricerca utilizzato: interviste qualitative]

Le due interviste seguono una traccia semi-strutturata sul
percorso di prenotazione: apertura, domande e chiusura sulla disponibilità
per la Fase D. Carla e Giorgio permettono di confrontare dipendenza
nell'esecuzione e autonomia ostacolata da condizioni poco trasparenti.

#heading(level: 4, numbering: none, outlined: false)[Soggetto: Carla B.]

 (79 anni, pensionata, vive sola), corrisponde al profilo
"utente con bassa autonomia digitale" (75-85+, delega quasi totale
delle pratiche digitali).

Carla gestisce la propria salute affidandosi interamente a canali fisici e fiduciari:
il medico di medicina generale le stampa i promemoria cartacei delle ricette, mentre per la
prenotazione si reca di persona alla farmacia del quartiere, dove il farmacista
conosce la sua storia clinica e si occupa dell'intera procedura al bancone. In casa,
le ricette e i promemoria sanitari vengono custoditi in una cartellina cartacea, incrociati con
un calendario murale su cui annota a matita appuntamenti e orari dei farmaci.
Possiede uno smartphone economico regalatole dalla famiglia, che utilizza quasi esclusivamente
per le videochiamate con i nipoti e per scambiare foto su WhatsApp; non ha mai utilizzato
servizi di home banking né effettuato acquisti online. Ricorda un tentativo passato di
accedere ai servizi sanitari online su esortazione della figlia: l'esperienza si è
interrotta quasi subito davanti alla schermata di autenticazione SPID, a causa della
difficoltà nel reperire e digitare le credenziali su una tastiera virtuale percepita come
troppo piccola, unita a un profondo senso di ansia davanti a messaggi di sistema indecifrabili.
Più della complessità tecnica in sé, a bloccarla è la paura di causare conseguenze
dannose e irreversibili: "Con la salute e le visite mediche ho paura di sbagliare. Se tocco
il tasto sbagliato e perdo il posto, poi come faccio? Preferisco andare in farmacia dove c'è
una persona che mi guarda in faccia e mi dice che è tutto a posto." Rifiuta l'idea di essere
completamente esclusa, ma per provare a usare uno strumento digitale chiederebbe rassicurazioni
continue, conferme esplicite a caratteri grandi e la possibilità di farsi aiutare dai familiari
senza che questi debbano sostituirsi a lei togliendole la parola.

#heading(level: 4, numbering: none, outlined: false)[Soggetto: Giorgio M.]

 (69 anni, ex perito industriale, coniugato), corrisponde al profilo
"nuovo utente digitale" (65-74, competenze digitali di base ma
bloccato su procedure burocratiche opache).

Giorgio usa regolarmente il tablet per leggere quotidiani, gestire l'home
banking e consultare la posta elettronica. Possiede SPID e lo ha già
impiegato per pratiche previdenziali e comunali senza particolari barriere
di accesso. Le difficoltà si presentano quando deve interpretare le
condizioni del servizio: la distinzione tra Servizio Sanitario Nazionale
e Libera Professione intramoenia gli appare poco trasparente. Nel racconto
esprime così la propria esigenza: "Non capisco perché devo
iniziare una pratica senza che mi sia detto chiaramente prima quanto costerà e dove dovrò andare.
Se cerco una visita, voglio vedere subito il confronto tra i tempi d'attesa e il prezzo effettivo,
senza dover cliccare a vuoto o scoprire le condizioni solo all'ultimo passaggio."

La stessa esigenza di chiarezza accompagna il pagamento di una prestazione.
Il collegamento apre un sito con un indirizzo diverso e Giorgio cerca
un'indicazione che ne chiarisca l'appartenenza al servizio sanitario.
Prima di inserire dati vuole capire dove si trovi e perché sia necessario
quel passaggio. Nel modulo incontra un secondo ostacolo: consulta il
promemoria della ricetta, ma non riconosce quali informazioni corrispondano
ai campi richiesti né se debba recuperare un altro documento. Si ferma per
chiedere un chiarimento, invece di compilare per tentativi.

Quando un passaggio non è comprensibile, Giorgio preferisce telefonare a
un operatore o chiedere al figlio una verifica puntuale. Non vuole cedere
l'esecuzione: "Non chiedo a mio figlio di prenotare al mio posto; gli chiedo se secondo lui ha senso
quello che c'è scritto sul sito". Rifiuta interfacce iper-semplificate o
paternalistiche; chiede spiegazioni tecniche chiare, tariffe esplicite e la
possibilità di approfondire una voce senza perdere quanto ha già
compilato: "Non ho paura della tecnologia,
ma odio perdere tempo su pagine che nascondono le informazioni essenziali."

#strong[Sintesi trasversale.] Carla riferisce difficoltà di accesso e timore
dell'errore; Giorgio incertezza sulle condizioni della prestazione. Nei due
racconti, la richiesta di assistenza è distinta dalla rinuncia al controllo
dell'azione. Le implicazioni sono sviluppate nel campo “Impatto sulla progettazione”.

#heading(level: 5, numbering: none, outlined: false)[Analisi dei compiti]

#emph[Sequenza dei passi che un paziente anziano segue oggi per
prenotare una visita specialistica, dentro e fuori dallo strumento,
ricostruita a partire dalla conoscenza di dominio del team.]

#enum(
  [#emph[\[Esterno\]] Il medico di base segnala la necessità di un
  controllo, oppure il paziente si ricorda autonomamente di una visita
  periodica da rinnovare.],
  [#emph[\[Esterno\]] Il paziente decide come procedere: chiamare il
  centro prenotazioni telefonico, chiedere aiuto a un familiare, o
  provare da solo con CUPweb da browser.],
  [#emph[\[Esterno, via telefonica\]] Se sceglie il telefono, attende in
  coda e ripete a voce dati anagrafici e codice fiscale
  all’operatore.],
  [#emph[\[Esterno, via familiare\]] Se delega, resta in attesa mentre il
  caregiver esegue la prenotazione, spesso senza comprendere i passaggi
  seguiti.],
  [#emph[\[Interno, se prova da solo\]] Accede a CUPweb e
  deve superare l’autenticazione SPID/CIE, il passo più
  critico e più spesso causa di abbandono.],
  [#emph[\[Interno\]] Sceglie tra Servizio Sanitario Nazionale e Libera
  Professione, spesso senza comprendere appieno la differenza.],
  [#emph[\[Interno\]] Cerca la prestazione e la disponibilità di
  appuntamenti; se non trova subito uno slot comodo tende ad abbandonare
  o a richiamare il familiare.],
  [#emph[\[Interno\]] Conferma la prenotazione e riceve un promemoria
  (SMS o email di conferma).],
  [#emph[\[Esterno\]] Annota l’appuntamento su un
  calendario cartaceo o lo comunica a voce a un familiare per non
  dimenticarlo, poiché il sistema non offre promemoria integrati con
  strumenti esterni.],
  [#emph[\[Esterno, il giorno della visita\]] Si reca fisicamente in
  struttura, spesso accompagnato.],
)

#heading(level: 5, numbering: none, outlined: false)[Sintesi e implicazioni progettuali]

#heading(level: 5, numbering: none, outlined: false)[Limiti della ricerca]

Le statistiche ISTAT descrivono il contesto nazionale. L'analisi di CUPweb
si basa su due interviste raccolte nella rete del team. Una verifica sul
campo dovrebbe coinvolgere persone reclutate anche al di fuori di questa
rete e distinguere gli episodi ricordati dalle osservazioni dirette.

#heading(level: 5, numbering: none, outlined: false)[Risultati complessivi dell’analisi]

Le statistiche motivano l'attenzione al divario digitale; i casi di Carla
e Giorgio illustrano come l'incertezza possa riguardare sia l'accesso sia
le condizioni della prestazione. L'episodio sul pagamento estende
l'esplorazione a due decisioni: riconoscere dove si sta proseguendo e
individuare i dati da inserire.

#heading(level: 5, numbering: none, outlined: false)[Impatto sulla progettazione]

Per Carla sono pertinenti un accesso a bassa soglia, conferme leggibili e
recupero guidato dall'errore; per Giorgio, spiegazioni su regime, costo e sede
consultabili senza perdere le scelte. Nel pagamento occorre inoltre
spiegare l'eventuale destinazione esterna e aiutare a individuare i dati
sul documento pertinente, senza presumere che siano tutti sulla ricetta.
L'assistenza di familiari, farmacia o operatori dovrebbe permettere di
chiarire il dubbio mantenendo il controllo dell'azione. Queste esigenze
sono formalizzate nelle raccomandazioni del #link(<doc:a:07>)[Documento~07].

// --- Card 04b ----------------------------------------------------

==== Documento 04b: Scheda di ricerca di mercato (segmento B) <doc:a:04b>

#heading(level: 5, numbering: none, outlined: false)[Profilo del segmento]

#heading(level: 5, numbering: none, outlined: false)[Segmento selezionato]

Caregiver familiare sempre reperibile a distanza, 45-60 anni, alta competenza
tecnica, gestisce da remoto le prenotazioni sanitarie di un genitore
anziano, intermediario del servizio.

#heading(level: 5, numbering: none, outlined: false)[Motivazione della scelta]

È il segmento che oggi sostiene il costo (tempo, stress, carico mentale)
della mediazione digitale per conto dell’utente diretto,
ed è quello che il cliente vuole trasformare da "esecutore" a
"facilitatore" dell’autonomia del proprio
caro, un obiettivo centrale del progetto HPHP.

// Titolo breve: Statistiche disponibili

#heading(level: 5, numbering: none, outlined: false)[Metodo di ricerca utilizzato: statistiche disponibili]

I dati provengono dal rapporto CNEL--Censis #emph[Il valore sociale del caregiver]
(2024)~#cite(<cnelCaregiver2024>) e dal rapporto ISTAT #emph[Indicatori demografici, Anno 2025]
(dati al 1° gennaio 2026)~#cite(<istatDemografia2025>, supplement: [pp.~1, 9]).

Gli indicatori descrivono la diffusione del caregiving e il carico di
conciliazione tra lavoro e assistenza, nel contesto dell'invecchiamento della
popolazione.

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (44fr, 32fr, 18fr,),
  align: (left, left, left,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Indicatore demografico e sociale]], [#strong[Fonte di riferimento]], [#strong[Dato rilevato]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [Caregiver non retribuiti (assistenza almeno settimanale ad anziani, disabili o familiari non autosufficienti)], [CNEL--Censis (2024)], [$> 7$ milioni],
  [Composizione di genere dei caregiver], [CNEL--Censis (2024)], [58% donne],
  [Fascia anagrafica prevalente (45--64 anni)], [CNEL--Censis (2024)], [56% del totale],
  [Difficoltà conciliazione lavoro/cura], [CNEL--Censis (2024)], [38% F / 34% M],
  [Popolazione over 65 (1 gennaio 2026)], [ISTAT (2025)], [14,8 mln (25,1%)],
  [Popolazione over 85 (1 gennaio 2026)], [ISTAT (2025)], [$> 2,5$ milioni],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Indicatori demografici e condizioni dei caregiver]),
) <tab:a-2>
]
]

// Titolo breve: Interviste qualitative

#heading(level: 5, numbering: none, outlined: false)[Metodo di ricerca utilizzato: interviste qualitative]

La traccia del segmento A è adattata al carico di
mediazione e al trasferimento di compiti al familiare. Silvia rappresenta
l'assistenza a distanza; Fatima quella in presenza o convivenza.

#heading(level: 4, numbering: none, outlined: false)[Soggetto: Silvia F.]

 (46 anni, impiegata amministrativa, vive e lavora in un comune distante), corrisponde al profilo di caregiver a distanza che gestisce da remoto le prenotazioni della madre anziana (77 anni, vive sola).

Silvia riceve le richieste della madre prevalentemente tramite telefonate serali o fotografie sfocate delle impegnative cartacee inviate su WhatsApp nei momenti meno opportuni, spesso durante l’orario di lavoro o nel corso di riunioni. Non lamenta alcuna difficoltà tecnica nell’uso degli strumenti informatici (utilizza quotidianamente gestionali e PC per la propria attività lavorativa), ma evidenzia un forte carico cognitivo ed emotivo legato all’ansia da interruzione, alla frammentazione dei compiti e al timore costante di dimenticare una scadenza: "Il tempo materiale per cliccare su un sito lo troverei anche, ma è il pensiero continuo di dover rincorrere la ricetta, chiamare mia madre per capire se ha impegni quel giorno e sperare che non ci siano contrattempi mentre sono in ufficio."

Racconta di aver provato in passato a guidare la madre al telefono per farle effettuare l’accesso a CUPweb, ma il tentativo è fallito quasi subito a causa della complessità dell’autenticazione SPID e dei messaggi d’errore poco espliciti, costringendo Silvia a riprendere il controllo totale della procedura per esasperazione: "Se ogni volta devo interrompere quello che sto facendo per risolvere un blocco a distanza, finisco per fare tutto io, anche se vorrei che lei mantenesse un minimo di indipendenza."

Per fidarsi e delegare nuovamente, Silvia non chiede che la madre faccia tutto da sola, ma vorrebbe un’interfaccia dotata di passaggi guidati inequivocabili e di una modalità di supervisione o riepilogo: uno strumento che mostri chiaramente alla madre cosa sta confermando e che al contempo notifichi alla figlia l’esito della prenotazione o l’eventuale blocco, senza costringerla a cedere o scambiarsi credenziali personali. Segnala inoltre la difficoltà di gestire le visite periodiche di controllo, lamentando che l’assenza di promemoria integrati obbliga a tenere scadenze sanitarie su agende personali esterne.

#heading(level: 4, numbering: none, outlined: false)[Soggetto: Fatima R.]

 (35 anni secondo la descrizione dell'intervista; impiegata, convive con il proprio nucleo familiare allargato), rappresenta il ruolo di caregiver convivente che assiste quotidianamente la suocera anziana ipovedente. L'età riportata la colloca fuori dalla fascia target 45--60 anni: il suo contributo va quindi interpretato come caso esplorativo sul ruolo di assistenza, non come copertura anagrafica del segmento.

Fatima gestisce le pratiche sanitarie della famiglia tra gli impegni
lavorativi e domestici, coordinandosi con il cognato per i trasporti e
l'accompagnamento della suocera. Il suo ostacolo principale è la
complessità dei termini sanitari e burocratici. Durante un tentativo di
prenotazione su CUPweb, la distinzione tra “primo accesso” e “visita di
controllo”, priva di chiarimenti contestuali, l'ha indotta a interrompere
la procedura per chiedere informazioni: temeva di scegliere una
prestazione errata o di compromettere la priorità indicata nella ricetta.

Richiede spiegazioni sintetiche nel punto in cui deve decidere, senza
uscire dal flusso o perdere le scelte già effettuate. Vorrebbe inoltre
condividere con il cognato un riepilogo con data, ora e sede della visita,
senza inviare fotografie delle ricette o documenti con dati clinici
ulteriori. Telefonate e impegni familiari interrompono le sue attività;
la possibilità di conservare lo stato della pratica e riprenderla è
quindi rilevante anche nell'esperienza da computer.

#strong[Sintesi trasversale.] Silvia mette in evidenza la supervisione a
distanza e il carico delle interruzioni lavorative; Fatima la comprensione
dei termini, il coordinamento familiare e la ripresa del compito. Entrambe
richiedono un esito verificabile e informazioni sufficienti a coordinarsi
con chi viene assistito. Le implicazioni specifiche sono raccolte nel campo
“Impatto sulla progettazione”.

#heading(level: 5, numbering: none, outlined: false)[Analisi dei compiti]

#emph[Sequenza dei passi che un caregiver a distanza segue oggi per
gestire la prenotazione per conto del genitore, dentro e fuori dallo
strumento.]

#enum(
  [#emph[\[Esterno\]] Riceve la richiesta dal genitore (di persona,
  telefonata, messaggio) oppure se ne ricorda autonomamente per una
  visita periodica.],
  [#emph[\[Esterno\]] Interrompe un’altra attività
  (lavoro, impegni familiari) per dedicare tempo alla pratica, spesso in
  una finestra ridotta (es. pausa pranzo).],
  [#emph[\[Interno\]] Accede a CUPweb (da browser PC dall’ufficio o da browser smartphone in mobilità) con le proprie
  credenziali, associate al profilo del genitore.],
  [#emph[\[Interno\]] Individua l’anagrafica corretta tra
  eventuali più familiari associati all’account.],
  [#emph[\[Interno\]] Esegue i passi di ricerca della prestazione, scelta
  del canale (SSN/Libera Professione) e scelta dello slot disponibile.],
  [#emph[\[Esterno\]] Comunica l’esito al genitore
  (telefonata, messaggio, di persona), spesso dovendo ripetere data e
  ora più volte.],
  [#emph[\[Esterno\]] Deve ricordarsi autonomamente di ripetere la
  procedura per i controlli periodici futuri, poiché il sistema non
  offre alcun supporto alla ricorrenza o alla delega progressiva al
  genitore.],
)

#heading(level: 5, numbering: none, outlined: false)[Sintesi e implicazioni progettuali]

#heading(level: 5, numbering: none, outlined: false)[Limiti della ricerca]

Le due interviste descrivono forme diverse di assistenza familiare.
Fatima, 35 anni, è un caso esplorativo fuori dalla fascia prioritaria.
La verifica dei requisiti richiede caregiver con contesti di assistenza diversi.

#heading(level: 5, numbering: none, outlined: false)[Risultati complessivi dell’analisi]

Il confronto tra le audience distingue la durata della singola operazione
dal lavoro di coordinamento che la rende possibile. Nei casi di Silvia e
Fatima, reperibilità, comprensione dei termini e verifica dell'esito
spiegano perché una procedura tecnicamente semplice possa richiedere
comunque assistenza. Le fonti nazionali motivano l'attenzione a questo
carico, senza misurare il contributo specifico di CUPweb.

#heading(level: 5, numbering: none, outlined: false)[Impatto sulla progettazione]

Per Silvia emerge l'esigenza di supervisione a distanza senza scambio di
credenziali; per Fatima, di ripresa del task e condivisione di un riepilogo
con i familiari senza esporre l'intera documentazione clinica. Guida
progressiva e conferme comprensibili dovrebbero permettere al paziente di
partecipare, limitando la sostituzione alle operazioni che richiedono aiuto.
Il #link(<doc:a:07>)[Documento~07] integra queste indicazioni con assessment e test.

// --- Card 05a ----------------------------------------------------

#heading(level: 2, numbering: none)[2\. Valutazione delle risorse esistenti]

#heading(level: 3, numbering: none)[2.1 Valutazione esperta di usabilità]

#heading(level: 4, numbering: none)[2.1.1 Scelta delle linee guida]

Le analisi di CUPweb e MioDottore adottano la griglia di usabilità web~#cite(<userfocusGuidelines>).

==== Documento 05a: Scheda di valutazione del servizio esistente (cliente) <doc:a:05a>

===== 2.1.2 Prima ispezione del sistema

#strong[Nome del servizio.] CUPweb (web application, www.cupweb.it), Regione
Emilia-Romagna.

#strong[Piattaforme.] Web Application fruibile tramite browser web da personal computer
(desktop) e da dispositivi mobili (smartphone/tablet). L’attuale
implementazione presenta una responsività fortemente limitata su schermi
piccoli (layout desktop miniaturizzato non ottimizzato per touch screen).
Queste osservazioni descrivono il servizio attuale; nel redesign, i vincoli
mobile riguardano la copertura responsive secondaria.

#heading(level: 5, numbering: none, outlined: false)[Scopo principale, operazioni consentite e adeguatezza percepita
agli standard professionali]

Lo strumento consente di prenotare, disdire e modificare appuntamenti per
prestazioni sanitarie specialistiche (SSN e Libera Professione), pagare
online una prenotazione e ristampare i promemoria degli appuntamenti. Dal punto di vista tecnico
il sito è funzionante e integrato con gli standard nazionali di identità
digitale (SPID, CIE, CNS), ma l’impostazione grafica e
architetturale usa menu testuali densi e una gerarchia visiva poco chiara.
Il confronto con i servizi della Pubblica Amministrazione fa riferimento
alle linee guida di design~#cite(<designersItaliaLineeGuida>).
L'ispezione ha rilevato inoltre che i servizi sono distribuiti su domini
diversi con interfacce visivamente scollegate (cupweb.it, pagonlinesanita.it,
fascicolo-sanitario.it, support.fascicolo-sanitario.it).

#heading(level: 5, numbering: none, outlined: false)[Principali punti di forza e motivazione della scelta]

#list(
  [Gratuito e disponibile 24/7, riduce la necessità di recarsi
  fisicamente a uno sportello],
  [Integrazione con gli standard nazionali di identità digitale
  (SPID/CIE/CNS), coerente con l’infrastruttura pubblica],
  [Copertura territoriale capillare su tutta la Regione Emilia-Romagna,
  con canali alternativi complementari (farmacie FarmaCUP, centri telefonici,
  sportelli fisici) per chi non può/vuole usare il digitale],
  [È il servizio scelto per il caso progettuale: l'analisi dei percorsi
  esistenti permette di motivare il redesign rispetto a problemi specifici],
)

#heading(level: 5, numbering: none, outlined: false)[Principali punti di debolezza]

Le criticità riguardano accesso autenticato, continuità tra domini,
leggibilità e accessibilità. Le analisi diretta e inversa sottostanti ne
precisano posizione, conseguenze e tipo di riscontro. Lo screenshot della
home page (Figura~#ref(<fig:cupweb-home>, supplement: none)) documenta la distinzione tra le
azioni pubbliche e quelle protette; le segnalazioni sull'uso autenticato
restano distinte dall'ispezione diretta.

#figure(
  [#image("../research-materials/screenshot-cupweb-miodottore/cupweb-home.png", width: 85%)],
  kind: image,
  caption: [Home page del servizio CUPweb],
) <fig:cupweb-home>

// Titolo breve: Analisi diretta

===== 2.1.3 Analisi diretta

#emph[Analisi diretta secondo categorie consolidate di usabilità:
navigazione, ricerca, organizzazione e
struttura dei contenuti, contenuti e titoli, impaginazione,
completamento del compito (qui: prenotazione), fiducia e credibilità.]

#heading(level: 5, numbering: none, outlined: false)[Elenco delle criticità principali]

#list(
  [#[\[]Navigazione; Fiducia e credibilità#[\]] I link di primo livello
  ("Disdici", "Prenota", "Paga", "Informazioni") portano a domini
  differenti (cupweb.it, pagonlinesanita.it, fascicolo-sanitario.it) senza
  preavviso visivo o identità grafica coerente. Il passaggio interrompe
  la continuità del percorso e può indebolire la fiducia dell'utente.
  Nel pagamento, il problema riguarda il riconoscimento della destinazione:
  l'apertura di un servizio esterno va distinta da un errore o da una
  richiesta estranea alla pratica. Questa conseguenza è un'interpretazione
  progettuale dell'ispezione, non un esito aggiuntivo dei test.],
  [#[\[]Impaginazione#[\]] Assenza di elementi visivi (icone, immagini, colori
  distintivi) che aiutino il riconoscimento rapido delle azioni
  disponibili; il testo è l’unico veicolo informativo],
  [#[\[]Contenuti e titoli#[\]] Terminologia tecnico-burocratica non spiegata
  in linguaggio semplice (es. "CNS", "SPID", "impegnativa
  dematerializzata") esposta senza tooltip o spiegazioni contestuali],
  [#[\[]Completamento del compito#[\]] Prenotazione, disdetta, modifica e consultazione delle proprie
  prenotazioni richiedono autenticazione SPID (livello 2)/CIE/CNS; la home page offre
  senza autenticazione soltanto "Paga una prestazione". Nel percorso di
  prenotazione, la sequenza dei passaggi e l’avanzamento verso la conferma
  risultano poco riconoscibili, soprattutto al primo utilizzo],
  [#[\[]Accessibility#[\]] Segnalazioni pubbliche di incompatibilità con
  screen reader per utenti non vedenti, nonostante
  l’esistenza di una dichiarazione di accessibilità
  formale],
)

// Titolo breve: Analisi inversa

===== 2.1.4 Analisi inversa

#emph[Analisi condotta simulando il compito "disdire un appuntamento già
fissato, partendo da un link ricevuto per SMS, senza credenziali SPID
già pronte", scenario realistico per il segmento A (paziente
anziano).]

#heading(level: 5, numbering: none, outlined: false)[Elenco delle criticità principali]

#list(
  [Il requisito di autenticazione già descritto nell'analisi diretta
  impedisce di procedere alla disdetta partendo dal solo link SMS senza
  SPID pronto. Lo screenshot della home page corregge l'ipotesi preliminare
  di una disdetta pubblica: solo il pagamento è disponibile senza accesso.
  Si tratta di una conseguenza del medesimo problema, non di una nuova voce.],
  [La distinzione SSN/Libera Professione richiama il problema di terminologia
  dell'analisi diretta: nel task, richiede di interpretare un bivio del
  flusso leggendo il testo esplicativo.],
  [Segnalazioni e riscontri sull'uso mobile indicano una criticità aggiuntiva
  nella consultazione delle prenotazioni e dello storico: tabelle non
  responsive, ordinamento e filtri poco agevoli richiedono zoom e
  scorrimenti orizzontali su schermi piccoli.],
  [Le segnalazioni su re-autenticazioni periodiche e passaggio esclusivo a
  SPID/CIE precisano la persistenza della barriera di accesso, già censita
  nell'analisi diretta, rispetto a credenziali più semplici o sessioni
  prolungate.],
)

// --- Card 05b ----------------------------------------------------

==== Documento 05b: Scheda di valutazione del servizio esistente (concorrente) <doc:a:05b>

===== 2.1.2 Prima ispezione del sistema

#strong[Nome del servizio.] MioDottore (Doctolib Italia), piattaforma privata di prenotazione di
visite mediche.

#strong[Piattaforme.] Sito web (miodottore.it) responsive, oggetto del confronto con CUPweb.
La piattaforma dispone anche di app native Android e iOS, esterne a questo
assessment.

#heading(level: 5, numbering: none, outlined: false)[Scopo principale, operazioni consentite e adeguatezza percepita
agli standard professionali]

Piattaforma privata (non SSN) che permette di cercare tra oltre
200.000 specialisti e medici di medicina generale (dato verificato
sulla home page, riportata di seguito)
per categoria, città o assicurazione sanitaria, leggere recensioni di
altri pazienti, prenotare una visita in pochi passaggi, ricevere
promemoria, gestire/annullare appuntamenti e contattare lo specialista
via messaggi o videoconsulto. La Figura~#ref(<fig:miodottore-home>, supplement: none) mostra la home page. Il design è moderno, coerente con gli
standard commerciali attuali (ricerca a faccette, card con foto,
recensioni a stelle, iconografia chiara).

#figure(
  [#image("../research-materials/screenshot-cupweb-miodottore/miodottore-home.png", width: 85%)],
  kind: image,
  caption: [Home page di MioDottore],
) <fig:miodottore-home>

#heading(level: 5, numbering: none, outlined: false)[Principali punti di forza e motivazione della scelta]

#list(
  [Un solo dominio, un solo brand coerente per tutto il flusso, nessun
  salto percepito di fiducia come invece accade in CUPweb],
  [Registrazione/accesso semplificato (email o numero di telefono), senza
  richiedere un’identità digitale certificata come SPID
  per la sola consultazione o prenotazione],
  [Interfaccia fortemente visiva: foto dei professionisti, valutazioni a
  stelle, filtri chiari, mappa, riduce il carico cognitivo rispetto
  al solo testo],
  [Promemoria automatici e possibilità di messaggistica diretta col
  professionista, elementi di rassicurazione assenti in CUPweb],
  [È stato scelto come termine di paragone perché, pur avendo uno scopo
  diverso (mercato privato vs. sanità pubblica), rappresenta un
  benchmark di riferimento per gli standard di semplicità che un utente
  anziano o il suo caregiver oggi si aspettano da un moderno servizio
  di prenotazione sanitaria, avendola probabilmente già vista usare da
  altri familiari],
)

#heading(level: 5, numbering: none, outlined: false)[Principali punti di debolezza]

La natura privata del servizio ne limita la comparabilità: non integra
SSN, esenzioni ticket o Fascicolo Sanitario Elettronico. Il modello di
visibilità a pagamento dei professionisti pone inoltre una questione di
trasparenza dei risultati. I dubbi sulle recensioni e le segnalazioni di
login frammentato sono descritti nell'analisi diretta; il rischio di
sovraccarico da filtri nell'analisi inversa.

// Titolo breve: Analisi diretta

===== 2.1.3 Analisi diretta

#emph[Analisi diretta secondo le stesse categorie consolidate di
usabilità applicate a CUPweb (#link(<doc:a:05a>)[Documento~05a]): navigazione, ricerca,
organizzazione e struttura dei contenuti, contenuti e titoli,
impaginazione, completamento del compito, fiducia e credibilità.]

#heading(level: 5, numbering: none, outlined: false)[Elenco delle criticità principali]

#list(
  [#[\[]Fiducia e credibilità#[\]] Il sistema di recensioni moderate genera
  sospetto in una parte degli utenti, minando proprio
  l’elemento di fiducia che dovrebbe essere il punto di
  forza],
  [#[\[]Completamento del compito#[\]] Il login, secondo segnalazioni reali, può
  risultare inutilmente lungo (redirect multipli tra app e browser) su
  alcuni dispositivi],
  [#[\[]Navigazione#[\]] Buona nel complesso: ricerca a faccette e mappa
  riducono il carico di navigazione libera, un pattern che vale la pena
  studiare per il redesign],
)

// Titolo breve: Analisi inversa

===== 2.1.4 Analisi inversa

#emph[Analisi condotta simulando il compito "trovare e prenotare una visita
specialistica vicino a casa, come utente al primo accesso".]

#heading(level: 5, numbering: none, outlined: false)[Elenco delle criticità principali]

#list(
  [Il primo accesso è comunque mediato da un passaggio di registrazione,
  anche se più leggero di SPID, un piccolo attrito resta anche nel
  miglior competitor osservato],
  [La grande quantità di filtri e opzioni (assicurazione, videoconsulto,
  tipo di visita) può risultare eccessiva per un utente che cerca
  semplicemente "la prossima visita disponibile", un rischio di
  sovraccarico da tenere presente anche nel nostro redesign],
)

// --- Card 06 ----------------------------------------------------

#heading(level: 3, numbering: none)[2.2 Test con utenti]

#heading(level: 4, numbering: none)[2.2.1 Definizione del protocollo di test]

Il pilota e le schede dei test documentano il protocollo per il #link(<doc:a:06a>)[servizio del cliente] e per il #link(<doc:a:06b>)[concorrente].

==== Documento 06: Test pilota del protocollo di usabilità <doc:a:06>

#heading(level: 5, numbering: none, outlined: false)[Obiettivo del pilot]

Il pilot interno verifica istruzioni, durata e neutralità della conduzione.
Il conteggio dei partecipanti riguarda le sessioni con gli utenti.

#heading(level: 5, numbering: none, outlined: false)[Partecipanti alla simulazione]

#strong[Data:] 21/09/2026

#strong[Partecipante simulato:] membro del team, scelto per
rappresentare un utente con competenze digitali di base e una
familiarità limitata con il flusso di prenotazione sanitaria online.

#strong[Conduttore:] membro del team responsabile della conduzione
delle successive sessioni di User Testing.

#strong[Osservatore:] secondo membro del team, incaricato di annotare
tempi, punti di ambiguità e possibili interferenze del conduttore.

#strong[Modalità:] simulazione individuale, utilizzando il medesimo
ambiente e la medesima configurazione prevista per le sessioni successive.

#heading(level: 5, numbering: none, outlined: false)[Protocollo verificato]

Il protocollo prevede apertura e chiarimento che si valuta l'interfaccia,
richiesta di verbalizzare pensieri e aspettative, task senza indicazioni
sul percorso, registrazione di errori e richieste di conferma, commenti
conclusivi ed eventuale questionario SUS.

#heading(level: 5, numbering: none, outlined: false)[Task simulati]

#list(
  [#strong[T1:] individuare autonomamente il percorso di prenotazione,
  senza confermare una visita reale;],
  [#strong[T2:] individuare come annullare un appuntamento,
  senza effettuare modifiche reali;],
  [#strong[T3:] individuare dove e come chiedere assistenza,
  senza inviare una richiesta.],
)

#heading(level: 5, numbering: none, outlined: false)[Esito della simulazione]

Il dry run evidenzia due rischi: suggerire il percorso durante un'esitazione
e confondere errori, richieste di conferma e blocchi per credenziali o dati
mancanti. Ne derivano le regole di conduzione seguenti.

#heading(level: 5, numbering: none, outlined: false)[Modifiche apportate al protocollo]

A seguito del #emph[dry run] sono state consolidate le seguenti regole:

#enum(
  [formulare le consegne in termini di obiettivo, senza indicare il
  percorso; in caso di esitazione usare domande neutrali come
  "Cosa ti aspetteresti di trovare qui?" o "Cosa proveresti a fare?";],
  [registrare le richieste di aiuto prima di intervenire; consentire
  assistenza minima solo in caso di blocco totale, annotandola nella scheda;],
  [misurare il tempo dall'inizio del task al raggiungimento dell'obiettivo
  o all'abbandono, registrando separatamente le interruzioni esterne;],
  [distinguere errori di navigazione, esitazioni e richieste di
  rassicurazione, anche quando il percorso individuato è corretto;],
  [usare account demo o fermarsi prima della conferma, senza modificare
  prenotazioni o disdette reali;],
  [raccogliere citazioni brevi, mantenendo separati osservazione e
  interpretazione.],
)

L'assistenza dopo un blocco totale consente di proseguire annotando
l'intervento; il caso riportato è Carla, T1 (#link(<doc:a:06a>)[Documento~06a]).

// --- Card 06a ----------------------------------------------------

==== Documento 06a: Scheda dei test preliminari di usabilità (cliente) <doc:a:06a>

Le schede preliminari confrontano CUPweb e MioDottore su tablet per
Giorgio e su PC per Carla, Silvia e Fatima. Il confronto riguarda i compiti
di prenotazione, disdetta e ricerca di assistenza. La comparabilità dei tempi
dipende anche dal dispositivo usato in ciascuna sessione.

#heading(level: 5, numbering: none, outlined: false)[Protocollo e organizzazione]

#strong[Nome del servizio.] CUPweb (www.cupweb.it)

#heading(level: 5, numbering: none, outlined: false)[Protocollo di test]

#strong[Script di apertura] (letto al soggetto): "Grazie per il tuo
tempo. Ti chiederò di provare a fare alcune cose su CUPweb mentre osservo come le fai. Non sto valutando te, ma lo
strumento: se qualcosa non è chiaro, è un problema dello strumento,
non tuo. Prova a dire ad alta voce cosa stai pensando o cercando
mentre lo fai, quando te lo chiederò esplicitamente. Puoi fermarti
quando vuoi. Non c’è fretta." Si chiarisce inoltre che
non verranno eseguite azioni reali irreversibili (nessuna
prenotazione/disdetta vera, salvo account demo) e che
l’osservatore prende appunti ma non interviene per
aiutare, salvo bloccaggio totale.

#strong[Scheda dati]: per ogni task si registrano successo
(sì/no/parziale), tempo impiegato, numero e tipo di errori, aiuti
richiesti e citazioni/osservazioni rilevanti; si veda la struttura
usata nelle card "Test \#N" più sotto.

#strong[Questionario di gradimento finale] (dopo il SUS standard,
domande aperte): Cosa ti è piaciuto di più di questo strumento? Cosa
ti ha creato più difficoltà o fastidio? Se potessi cambiare una sola
cosa, cosa cambieresti? Ti sentiresti sicuro/a a usarlo da solo/a a
casa? Perché sì/no? (solo per soggetti del Segmento B) Cosa ti
darebbe fiducia per lasciare che il tuo familiare lo usi senza il tuo
aiuto?

#emph[Assistenza dichiarata:] nel Test \#2 (Carla), T1, il conduttore ha
inserito le credenziali demo dopo un blocco totale. L'intervento, consentito
dal protocollo, va distinto dall'esecuzione autonoma; negli altri sette
test non è documentato un intervento analogo.

#heading(level: 5, numbering: none, outlined: false)[Configurazione della sessione di test]

Sessioni in presenza o da remoto, su dispositivo abituale quando possibile
oppure su un dispositivo del team. Conduttore, osservatore, luogo,
dispositivo e account sono specificati nelle schede individuali; le
sessioni non comportano prenotazioni o disdette reali.

#heading(level: 5, numbering: none, outlined: false)[Metodo di test]

Test di usabilità essenziale, documentato attraverso quattro schede
individuali riferite ai profili di Giorgio, Carla, Silvia e Fatima.

#heading(level: 5, numbering: none, outlined: false)[Compiti del test]

#list(
  [T1: Accedere a CUPweb dal browser e individuare come prenotare una visita
  specialistica (senza completare la prenotazione)],
  [T2: Disdire un appuntamento fittizio già presente
  nell’account demo/test],
  [T3: Individuare dove e come chiedere aiuto/assistenza in caso di
  difficoltà],
)

#heading(level: 5, numbering: none, outlined: false)[Modalità di conduzione del test]

Il protocollo associa il Thinking Aloud a T1 e T3 per esplorare ragionamento
e difficoltà percepite. Per T2 adotta i Bottom Line Data, evitando richieste
di verbalizzazione durante la misura di efficienza e accuratezza. Gli
eventuali aiuti vanno registrati separatamente dall'esecuzione autonoma.

#heading(level: 5, numbering: none, outlined: false)[Metriche del test]

#list(
  [Success (task completato sì/no)],
  [Efficiency (tempo impiegato)],
  [Efficacy (accuratezza del risultato ottenuto)],
  [Errors (numero e tipo di errori commessi)],
  [Learnability (miglioramento fra primo e secondo tentativo, se
  applicabile)],
  [Satisfaction (tramite questionario SUS)],
)

#heading(level: 5, numbering: none, outlined: false)[Modalità di reclutamento dei partecipanti]

Il reclutamento descritto nella documentazione si basa sulla rete familiare,
amicale e professionale del team.

#heading(level: 5, numbering: none, outlined: false)[Motivazione della scelta dei partecipanti]

La selezione descritta è di convenienza. L'ordine riportato parte da
Giorgio, più autonomo di Carla e già abituato a tablet e SPID, per verificare
la conduzione con un profilo meno fragile.

#heading(level: 5, numbering: none, outlined: false)[Test \#1: Soggetto Giorgio]

#strong[Data:] 22/09/2026

#strong[Assistente/conduttore:] Francesco Maria Fuligni

#strong[Osservatore:] Alessandro Campedelli

#strong[Contesto:] Test individuale condotto da remoto, con il
soggetto presso il proprio domicilio, sul tablet personale. Sessione
svolta su un account demo, senza eseguire prenotazioni o disdette
reali.

#strong[Risultati per task:]

#list(
  [#strong[T1 --- Individuare come prenotare una visita specialistica.]
  Il partecipante
  individua il percorso di prenotazione, ma manifesta incertezza
  davanti alla scelta tra Servizio Sanitario Nazionale e Libera
  Professione, esprime il timore di incorrere in costi non
  chiaramente esplicitati e decide di non proseguire. Citazione: "Non
  so se scegliendo una cosa poi pago. Preferisco non andare avanti."],
  [#strong[T2 --- Individuare come disdire un appuntamento.] Il partecipante individua la sezione
  relativa agli appuntamenti, ma confonde le opzioni di modifica e
  disdetta, apre un percorso non pertinente e interrompe la ricerca
  per timore di modificare accidentalmente l’appuntamento.
  Citazione: "Non voglio rischiare di modificare qualcosa per
  sbaglio."],
  [#strong[T3 --- Individuare dove chiedere assistenza.] Con esitazione, il partecipante individua
  la sezione di assistenza e riconosce la presenza di contatti
  telefonici, ma manifesta incertezza sulla distinzione tra assistenza
  generale e assistenza relativa ai singoli servizi. Citazione: "Se
  non capisco una cosa, preferisco telefonare."],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto,),
  align: (left, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Successo]], [#strong[Tempo]], [#strong[Errori]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1], [Parziale], [03:05], [1],
  [T2], [No], [05:00], [2],
  [T3], [Sì], [01:45], [1],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [], [#strong[09:50]], [#strong[4]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task CUPweb: Giorgio]),
) <tab:a-4>
]
]

#strong[Punteggio SUS:] 40/100.

#strong[Suggerimenti del soggetto:] Aggiungere spiegazioni semplici
accanto alle scelte critiche, mostrare chiaramente cosa succede prima
della conferma, rendere facilmente accessibile l’assistenza
telefonica.

#strong[Implicazioni progettuali:] Il principale ostacolo
osservato non riguarda l’accesso tecnico, ma
l’incertezza relativa alle conseguenze delle
decisioni, sia sulla scelta del canale di prenotazione
sia sull’azione di disdetta percepita
come irreversibile. Il sistema dovrebbe offrire
microcopy contestuale, conferme leggibili e la possibilità di
verificare una scelta senza perdere il lavoro già svolto.

#heading(level: 5, numbering: none, outlined: false)[Test \#2: Soggetto Carla]

#strong[Data:] 23/09/2026

#strong[Assistente/conduttore:] Alessandro Campedelli

#strong[Osservatore:] Francesco Maria Fuligni

#strong[Contesto:] Test individuale condotto in presenza, presso il
domicilio della soggetta, su un PC del team
aprendo CUPweb dal browser con un account demo.
La partecipante appartiene al Segmento A, profilo "utente con bassa autonomia
digitale". Il conduttore è il nipote della soggetta. Durata 26 minuti,
con una pausa di 3 minuti richiesta dalla partecipante. Nessuna
prenotazione o disdetta reale.

#strong[Risultati per task:]

#list(
  [#strong[T1 --- Individuare come prenotare una visita specialistica.]
  La partecipante scambia "Paga
  una prestazione", unica azione visibile senza accesso, per
  l’ingresso alla prenotazione. Raggiunge poi
  l’autenticazione SPID, ma sbaglia la digitazione
  della password demo e non riesce a interpretare il messaggio di
  errore; alla soglia dei 3 minuti il conduttore inserisce le
  credenziali per permettere di proseguire. Citazione: "Mi dice che è
  sbagliato. Non so cosa ho sbagliato."],
  [#strong[T2 --- Disdire un appuntamento.] La partecipante trova la sezione delle
  prenotazioni e riconosce con soddisfazione la propria visita, tocca
  però "Modifica" invece di "Disdici" e, quando individua il pulsante
  corretto, rinuncia a premerlo per timore di perdere definitivamente
  l’appuntamento. Citazione: "Se poi me la tolgono e
  non me la ridanno più? La visita l’ho aspettata tre
  mesi."],
  [#strong[T3 --- Individuare dove chiedere assistenza.] La prima risposta della partecipante è
  esterna allo strumento ("Io chiamo mia figlia"). Cerca poi
  l’aiuto in "Impostazioni" senza trovarlo e conclude
  che si rivolgerebbe alla farmacia; task non completato entro la
  soglia. Citazione: "Non lo vedo. Io in farmacia vado, lì mi
  aiutano."],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto,),
  align: (left, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Successo]], [#strong[Tempo]], [#strong[Errori]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1], [No], [03:00], [2],
  [T2], [Parziale], [06:10], [3],
  [T3], [No], [03:00], [1],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [], [#strong[12:10]], [#strong[6]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task CUPweb: Carla]),
) <tab:a-5>
]
]

#strong[Punteggio SUS:] 22,5/100.

#strong[Suggerimenti del soggetto:] Messaggi di errore che indichino
cosa fare dopo; poter usare il sito con qualcuno accanto,
senza cedergli il controllo del dispositivo.

#strong[Implicazioni progettuali:] Il blocco si presenta prima
ancora del compito (schermata iniziale e autenticazione) e, una volta
superato con aiuto, si sposta sull’azione percepita come
irreversibile. La richiesta di rassicurazione rivolta al conduttore
motiva l'ipotesi di un aiuto contestuale nel punto della decisione,
da confrontare con una pagina di assistenza separata.

#heading(level: 5, numbering: none, outlined: false)[Test \#3: Soggetto Silvia]

#strong[Data:] 23/09/2026, ore 18:45

#strong[Assistente/conduttore:] Matteo Boscherini

#strong[Osservatore:] Francesco Maria Fuligni

#strong[Contesto:] Test individuale condotto da remoto, in
videochiamata con condivisione dello schermo dal PC della soggetta,
con CUPweb nel browser e credenziali demo. Il test segue
immediatamente quello su MioDottore (#link(<doc:a:06b>)[Documento~06b]). Nessuna
prenotazione o disdetta reale.

#strong[Risultati per task:]

#list(
  [#strong[T1 --- Individuare come prenotare una visita specialistica.]
  La partecipante si autentica
  senza esitazioni e individua il percorso di prenotazione. Nota
  spontaneamente il cambio di dominio, che secondo lei spingerebbe la
  madre ad abbandonare per timore di una truffa, e non trova subito
  dove selezionare il familiare per cui prenota. Citazione: "Io lo so,
  ma mia madre qui chiude tutto pensando a una truffa."],
  [#strong[T2 --- Disdire un appuntamento.] La partecipante cerca inizialmente la disdetta dentro
  "Modifica", poi individua "Disdici" e completa l’operazione,
  ma critica la conferma finale, generica e priva di un riepilogo
  della visita disdetta e del paziente. Citazione: "Mi dice solo
  ’operazione eseguita’. Quale visita?
  Di chi?"],
  [#strong[T3 --- Individuare dove chiedere assistenza.] La partecipante trova le domande
  frequenti e il numero verde, ma cerca un canale scritto compatibile
  con i suoi orari di lavoro e non lo trova; un collegamento di
  supporto la porta su un altro dominio. Citazione: "Ho trovato dove
  chiamare. Ma non è quello che mi serve."],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto,),
  align: (left, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Successo]], [#strong[Tempo]], [#strong[Errori]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1], [Sì], [01:35], [0],
  [T2], [Sì], [02:05], [1],
  [T3], [Parziale], [02:50], [1],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [], [#strong[06:30]], [#strong[2]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task CUPweb: Silvia]),
) <tab:a-6>
]
]

#strong[Punteggio SUS:] 55/100.

#strong[Suggerimenti del soggetto:] Una conferma chiara e inoltrabile
al familiare, un canale di assistenza scritto, e la possibilità di
vedere cosa fa il genitore con un avviso quando si blocca.

#strong[Implicazioni progettuali:] Per la caregiver esperta lo
strumento è usabile, ma non è progettato per due persone: la
selezione del familiare non è visibile nel punto in cui serve
e la conferma di esito non è verificabile né
condivisibile. La richiesta di visibilità e supporto,
coerente con il racconto del caso, motiva la modalità co-pilota proposta
nel #link(<doc:a:07>)[Documento~07].

#heading(level: 5, numbering: none, outlined: false)[Test \#4: Soggetto Fatima]

#strong[Data:] 24/09/2026, ore 13:10

#strong[Assistente/conduttore:] Matteo Boscherini

#strong[Osservatore:] Alessandro Campedelli

#strong[Contesto:] Test individuale condotto in presenza, durante la
pausa pranzo, in una sala riunioni dell’azienda di
tirocinio. La partecipante appartiene al Segmento B, profilo
"caregiver convivente", e usa un PC accedendo
a CUPweb tramite browser con un account demo.
Tempo disponibile limitato (35 minuti per entrambi i tool). Una
telefonata di lavoro ha interrotto T2 per 40 secondi (cronometro
fermato). Nessuna prenotazione o disdetta reale.

#strong[Risultati per task:]

#list(
  [#strong[T1 --- Individuare come prenotare una visita specialistica.]
  La partecipante trova
  subito "Prenota", ma si ferma sul codice NRE dell’impegnativa
  e sulla scelta tra "prima visita" e "controllo", lo stesso dubbio
  riportato in intervista; preferisce non proseguire senza una
  conferma del medico di famiglia. Citazione: "Non vado avanti se non
  sono sicura."],
  [#strong[T2 --- Disdire un appuntamento.] Dopo un’interruzione
  di 40 secondi la sessione del browser su CUPweb è scaduta e la
  partecipante deve ripetere l’autenticazione; seleziona poi
  "Modifica" prima di individuare "Disdici" e completa la disdetta.
  Citazione: "Ecco, ho perso tutto. Sempre così."],
  [#strong[T3 --- Individuare dove chiedere assistenza.] La partecipante trova il numero
  verde ma dichiara di preferire un canale scritto, che le
  permetterebbe di rileggere e chiarire i termini che non capisce; non trovandolo,
  sceglierebbe lo sportello. Citazione: "Preferisco scrivere, così
  posso tradurre se non capisco una parola."],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto,),
  align: (left, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Successo]], [#strong[Tempo]], [#strong[Errori]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1], [Parziale], [02:40], [1],
  [T2], [Sì], [03:15], [1],
  [T3], [Parziale], [02:20], [0],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [], [#strong[08:15]], [#strong[2]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task CUPweb: Fatima]),
) <tab:a-7>
]
]

#emph[Nota sui tempi:] T2 e totale escludono l'interruzione di
40 secondi descritta nel contesto.

#strong[Punteggio SUS:] 37,5/100.

#strong[Suggerimenti del soggetto:] Esempi concreti accanto ai
termini difficili; non perdere il lavoro fatto dopo
un’interruzione; poter informare il marito di cosa è
stato prenotato senza mostrargli tutti i dati medici.

#strong[Implicazioni progettuali:] Nel contesto descritto, la telefonata
durante il lavoro al PC associa il timeout a una perdita di lavoro percepita.
Il problema di comprensione riguarda i termini sanitari e burocratici.
Un canale scritto consentirebbe di rileggere i chiarimenti
e conciliarli con gli impegni lavorativi.

// --- Card 06b ----------------------------------------------------

==== Documento 06b: Scheda dei test preliminari di usabilità (concorrente) <doc:a:06b>

#heading(level: 5, numbering: none, outlined: false)[Protocollo e organizzazione]

#strong[Nome del servizio.] MioDottore (Doctolib Italia)

#heading(level: 5, numbering: none, outlined: false)[Protocollo di test]

#strong[Script di apertura] (letto al soggetto): stesso testo del
#link(<doc:a:06a>)[Documento~06a], adattato al nome del tool ("... su MioDottore mentre
osservo come le fai..."). Stesse premesse su irreversibilità delle
azioni e ruolo non direttivo dell’osservatore.

#strong[Scheda dati]: stessa struttura del #link(<doc:a:06a>)[Documento~06a] (successo,
tempo, errori, aiuti, citazioni per task); si veda la card "Test \#N"
più sotto.

#strong[Questionario di gradimento finale]: stesse domande del
#link(<doc:a:06a>)[Documento~06a] (senza la domanda specifica per il Segmento B, non
pertinente a questo tool).

#heading(level: 5, numbering: none, outlined: false)[Configurazione della sessione di test]

Si applicano i criteri del #link(<doc:a:06a>)[Documento~06a]: sessioni in presenza o da remoto,
su dispositivo abituale o del team. Le schede precisano account, modalità
e ordine dei test per ciascuno dei quattro partecipanti comuni ai due tool.

#heading(level: 5, numbering: none, outlined: false)[Metodo di test]

Test di usabilità essenziale sugli stessi quattro profili del confronto
con CUPweb.

#heading(level: 5, numbering: none, outlined: false)[Compiti del test]

#list(
  [T1: Cercare uno specialista di una categoria a scelta nella propria
  città (senza completare la prenotazione)],
  [T2: Individuare come si annullerebbe un appuntamento già fissato],
  [T3: Individuare dove e come si contatta il professionista in caso
  di dubbi],
)

#heading(level: 5, numbering: none, outlined: false)[Modalità di conduzione del test]

Come nel #link(<doc:a:06a>)[Documento~06a]: Thinking Aloud per T1 e T3, Bottom Line Data per T2.
Su MioDottore il compito consisteva nell'individuare il percorso di
annullamento. Nell'account demo CUPweb il compito richiedeva di completare
la disdetta.

#heading(level: 5, numbering: none, outlined: false)[Metriche del test]

Si applicano le metriche definite nel #link(<doc:a:06a>)[Documento~06a]: Success, Efficiency,
Efficacy, Errors, Learnability (se applicabile) e Satisfaction tramite SUS.

#heading(level: 5, numbering: none, outlined: false)[Modalità di reclutamento dei partecipanti]

Il reclutamento segue le modalità descritte nel #link(<doc:a:06a>)[Documento~06a].

#heading(level: 5, numbering: none, outlined: false)[Motivazione della scelta dei partecipanti]

Il confronto entro la stessa persona tiene conto del profilo individuale,
ma non isola l'effetto del design: task, familiarità con il servizio e
ordine delle sessioni possono influire sugli esiti. La selezione resta di
convenienza, come nel #link(<doc:a:06a>)[Documento~06a].

#heading(level: 5, numbering: none, outlined: false)[Test \#1: Soggetto Giorgio]

#strong[Data:] 23/09/2026

#strong[Assistente/conduttore:] Francesco Maria Fuligni

#strong[Osservatore:] Alessandro Campedelli

#strong[Contesto:] Test individuale condotto da remoto, con il
soggetto presso il proprio domicilio, sul tablet personale, con
MioDottore aperto nel browser. Il partecipante non dispone di un
account MioDottore. Sessione svolta il giorno successivo al test su
CUPweb (#link(<doc:a:06a>)[Documento~06a]), senza eseguire prenotazioni reali.

#strong[Risultati per task:]

#list(
  [#strong[T1 --- Cercare uno specialista nella propria città.]
  Il partecipante utilizza la
  ricerca per specializzazione e città senza difficoltà. Esita
  brevemente sul filtro "Visita online" e nota spontaneamente il
  prezzo visibile nei risultati, in contrasto con il timore di costi
  nascosti espresso su CUPweb. Esprime dubbi sull’affidabilità
  delle recensioni. Citazione: "Qui c’è scritto il
  prezzo della visita. Questo mi piace, almeno so cosa spendo prima."],
  [#strong[T2 --- Individuare come si annullerebbe un appuntamento.]
  Il partecipante cerca
  inizialmente l’opzione di annullamento nel profilo
  del medico, poi individua il centro assistenza in fondo alla pagina
  e ricava che l’annullamento richiede l’account
  personale o il link nell’email di conferma.
  Citazione: "Quindi serve l’account."],
  [#strong[T3 --- Individuare come contattare il professionista.]
  Il partecipante individua
  subito il numero di telefono dello studio e il pulsante per inviare
  un messaggio, che richiede l’account. Preferisce
  telefonare, sottolineando il valore di un contatto specifico
  rispetto a un numero generale. Citazione: "Qui almeno so a chi
  telefono: allo studio, non a un numero generale."],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto,),
  align: (left, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Successo]], [#strong[Tempo]], [#strong[Errori]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1], [Sì], [01:50], [0],
  [T2], [Sì], [02:40], [1],
  [T3], [Sì], [01:10], [0],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [], [#strong[05:40]], [#strong[1]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task MioDottore: Giorgio]),
) <tab:a-8>
]
]

#strong[Punteggio SUS:] 72,5/100.

#strong[Suggerimenti del soggetto:] Rendere verificabili le
recensioni; permettere di annullare un appuntamento senza dover
creare un account.

#strong[Implicazioni progettuali:] Il prezzo visibile nel punto di scelta
risponde al dubbio sui costi descritto per CUPweb. È una direzione utile per
presentare le alternative SSN e Libera Professione, senza
attribuire alla sola trasparenza del costo la differenza tra gli esiti. Il contatto specifico con la struttura
rassicura più di un numero generale. Da non replicare: recensioni
percepite come poco affidabili e annullamento legato all’account.

#heading(level: 5, numbering: none, outlined: false)[Test \#2: Soggetto Carla]

#strong[Data:] 24/09/2026

#strong[Assistente/conduttore:] Alessandro Campedelli

#strong[Osservatore:] Francesco Maria Fuligni

#strong[Contesto:] Test individuale condotto in presenza, presso il
domicilio della soggetta, sullo stesso PC del team del test su
CUPweb, con MioDottore aperto nel browser e senza account. Sessione
svolta il giorno successivo (rispetto al test #link(<doc:a:06a>)[Documento~06a]) per ridurre
l’affaticamento. Le affermazioni SUS sono state lette
dal conduttore. Nessuna prenotazione reale.

#strong[Risultati per task:]

#list(
  [#strong[T1 --- Cercare uno specialista nella propria città.]
  Con esitazione, la
  partecipante usa la casella di ricerca; il suggerimento automatico
  corregge un errore di digitazione. Attiva per errore un filtro e si
  preoccupa del cambiamento della lista, ma lo rimuove da sola; le
  foto dei medici e la mappa la aiutano a scegliere. Citazione: "Oh,
  ha capito lui. Bravo."],
  [#strong[T2 --- Individuare come si annullerebbe un appuntamento.]
  La partecipante cerca
  l’annullamento all’interno del
  profilo della dottoressa e apre per errore la pagina di
  prenotazione; il concetto di area personale non emerge e la
  partecipante si ferma senza individuare il percorso. Citazione: "Ma
  se non ho ancora prenotato, come faccio ad annullare?"],
  [#strong[T3 --- Individuare come contattare il professionista.]
  La partecipante individua
  subito il numero di telefono e l’indirizzo dello
  studio, e dichiara con sicurezza che telefonerebbe: è il momento di
  maggiore sicurezza dell’intera sessione. Citazione:
  "C’è il telefono qui. Questo lo so fare."],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto,),
  align: (left, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Successo]], [#strong[Tempo]], [#strong[Errori]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1], [Sì], [03:20], [1],
  [T2], [No], [05:30], [2],
  [T3], [Sì], [01:40], [0],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [], [#strong[10:30]], [#strong[3]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task MioDottore: Carla]),
) <tab:a-9>
]
]

#strong[Punteggio SUS:] 45/100.

#strong[Suggerimenti del soggetto:] Mostrare una cosa alla volta,
riducendo le opzioni in alto; tenere sempre in vista il numero di
telefono.

#strong[Implicazioni progettuali:] Anche sul competitor la
partecipante resta sotto la soglia di 68: la modernità grafica da sola
non basta al profilo a bassa autonomia digitale. I momenti di successo
coincidono con i punti in cui lo strumento la riconduce a un canale
familiare (telefono, indirizzo, foto del medico) e con la tolleranza
all’errore di digitazione.

#heading(level: 5, numbering: none, outlined: false)[Test \#3: Soggetto Silvia]

#strong[Data:] 23/09/2026, ore 18:30

#strong[Assistente/conduttore:] Matteo Boscherini

#strong[Osservatore:] Francesco Maria Fuligni

#strong[Contesto:] Test individuale condotto da remoto, in
videochiamata con condivisione dello schermo dal PC della soggetta,
dopo l’orario di lavoro. La partecipante appartiene
al Segmento B, profilo "caregiver a distanza", e dispone già di un
account MioDottore personale. Per bilanciare parzialmente
l’effetto d’ordine, questo test
precede quello su CUPweb (#link(<doc:a:06a>)[Documento~06a]). Nessuna prenotazione reale.

#strong[Risultati per task:]

#list(
  [#strong[T1 --- Cercare uno specialista nella propria città.]
  La partecipante cerca
  l’ortopedico nella città della madre, cambiando la
  località predefinita, e usa il filtro per disponibilità per trovare
  il primo posto libero, senza esitazioni. Citazione: "Qui ci metto un
  minuto, con il CUP ci metto mezz’ora."],
  [#strong[T2 --- Individuare come si annullerebbe un appuntamento.]
  La partecipante accede
  direttamente all’area personale e individua
  l’annullamento nell’elenco delle
  visite future; il successo è favorito dall’esperienza
  pregressa sulla piattaforma. Citazione: "In realtà l’ho
  già fatto una volta per mia mamma."],
  [#strong[T3 --- Individuare come contattare il professionista.]
  La partecipante individua
  subito la messaggistica con il professionista e ne apprezza la
  natura asincrona, ma osserva che le risposte arrivano solo a lei e
  che la madre resta esclusa dalla comunicazione. Citazione: "Le
  risposte arrivano a me. Mia madre non vede niente."],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto,),
  align: (left, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Successo]], [#strong[Tempo]], [#strong[Errori]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1], [Sì], [00:55], [0],
  [T2], [Sì], [01:20], [0],
  [T3], [Sì], [00:50], [0],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [], [#strong[03:05]], [#strong[0]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task MioDottore: Silvia]),
) <tab:a-10>
]
]

#strong[Punteggio SUS:] 80/100.

#strong[Suggerimenti del soggetto:] Poter condividere una visita con
il familiare assistito, in modo che anche lui riceva promemoria e
comunicazioni.

#strong[Implicazioni progettuali:] Il competitor soddisfa la
caregiver come utente singola, ma non supporta la relazione
caregiver-assistito: nessuna condivisione della visita o dei
promemoria con il familiare. Il bisogno di co-gestione non è coperto nemmeno dal benchmark, ed è quindi
una direzione progettuale per distinguere l'assistenza dall'uso individuale.

#heading(level: 5, numbering: none, outlined: false)[Test \#4: Soggetto Fatima]

#strong[Data:] 24/09/2026, ore 13:30

#strong[Assistente/conduttore:] Matteo Boscherini

#strong[Osservatore:] Alessandro Campedelli

#strong[Contesto:] Test individuale condotto in presenza, subito dopo
il test su CUPweb (#link(<doc:a:06a>)[Documento~06a]), sullo stesso PC,
con MioDottore nel browser e senza account. Nessuna
prenotazione reale.

#strong[Risultati per task:]

#list(
  [#strong[T1 --- Cercare uno specialista nella propria città.]
  La partecipante cerca
  l’oculista per la suocera e usa il filtro per
  distanza in modo mirato ("lei non guida"), senza esitazioni.
  Citazione: "Deve essere vicino, lei non guida."],
  [#strong[T2 --- Individuare come si annullerebbe un appuntamento.]
  La partecipante apre la
  pagina di accesso pensando di doversi registrare e la chiude; trova
  l’informazione nelle domande frequenti
  (annullamento tramite l’email di conferma), ma non
  il punto dell’interfaccia in cui farlo. Citazione:
  "Si fa con l’email di conferma, credo."],
  [#strong[T3 --- Individuare come contattare il professionista.]
  La partecipante individua
  subito la messaggistica e la preferisce al telefono, ma osserva che
  la conferma arriva solo a chi prenota e che per informare il marito
  dovrebbe inviargli uno screenshot. Citazione: "Mio marito come lo
  sa? Devo fare lo screenshot e mandarglielo."],
)

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto,),
  align: (left, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[Task]], [#strong[Successo]], [#strong[Tempo]], [#strong[Errori]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [T1], [Sì], [01:30], [0],
  [T2], [Parziale], [02:30], [1],
  [T3], [Sì], [01:05], [0],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Totale]], [], [#strong[05:05]], [#strong[1]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Esiti dei task MioDottore: Fatima]),
) <tab:a-11>
]
]

#strong[Punteggio SUS:] 67,5/100.

#strong[Suggerimenti del soggetto:] Una conferma condivisibile con
gli altri familiari senza ricorrere a screenshot.

#strong[Implicazioni progettuali:] Il canale scritto è per la
partecipante un supporto alla comprensione dei termini e al coordinamento
familiare, non solo una comodità. Anche qui la conferma resta individuale: per informare il
marito deve fare uno screenshot, lo stesso bisogno di condivisione
minima già emerso in intervista e nel test di Silvia.

// --- Card 07 ----------------------------------------------------

#heading(level: 4, numbering: none)[2.2.3 Analisi dei dati soggettivi e oggettivi]

La scheda conclusiva riporta l’elenco delle criticità e la #link(<sec:a:sus>)[matrice delle risposte SUS].

#heading(level: 4, numbering: none)[2.2.4 Curva di urgenza]

La #link(<sec:a:urgency>)[curva di urgenza] integra i problemi emersi dall’ispezione e dai test.

== Documento 07: Scheda conclusiva — Raccomandazioni finali della Fase A <doc:a:07>

// Titolo breve: Criticità e priorità

#heading(level: 3, numbering: none, outlined: false)[Elenco delle criticità per importanza]

L'elenco distingue le criticità dell'assessment (#link(<req:ID-01>)[ID-01]--#link(<req:ID-07>)[ID-07]), quelle
riportate nelle schede dei test (#link(<req:ID-08>)[ID-08]--#link(<req:ID-12>)[ID-12]) e l'ipotesi aggiuntiva sul
pagamento (#link(<req:ID-13>)[ID-13]).

#list(
  [#strong[ID-01]<req:ID-01>: #strong[Posizione:] flusso di autenticazione, primo passo
  di ogni azione. Autenticazione obbligatoria complessa (SPID/CIE)
  richiesta fin dal primo passo, anche per compiti semplici, impatto:
  alto; persistenza: alta; metodo di scoperta: analisi diretta (#link(<doc:a:05a>)[Documento~05a]),
  illustrato nel racconto di Carla; il caso di Giorgio distingue invece
  l'accesso tecnico dalla comprensione delle condizioni],
  [#strong[ID-02]<req:ID-02>: #strong[Posizione:] passaggio tra domini/sottodomini del
  servizio. Frammentazione tra domini scollegati tra loro (cupweb.it,
  pagonlinesanita.it, fascicolo-sanitario.it). Nel pagamento, la destinazione
  non annunciata può essere percepita come estranea alla pratica; impatto:
  medio-alto (2,5), perché il cambio di dominio genera incertezza senza
  impedire tecnicamente la prosecuzione; persistenza: alta (3), perché
  il passaggio si ripete fra servizi; metodo di scoperta: analisi diretta (#link(<doc:a:05a>)[Documento~05a]).
  Il racconto del caso di Giorgio ne illustra una possibile
  conseguenza],
  [#strong[ID-03]<req:ID-03>: #strong[Posizione:] impaginazione generale del sito.
  Interfaccia poco gerarchizzata, prevalentemente testuale, priva di
  elementi visivi di orientamento, impatto: medio; persistenza: alta;
  metodo di scoperta: analisi diretta (#link(<doc:a:05a>)[Documento~05a])],
  [#strong[ID-04]<req:ID-04>: #strong[Posizione:] pagina di scelta del canale (SSN /
  Libera Professione) e contenuti informativi in generale. Terminologia
  tecnico-burocratica non spiegata (SPID, CNS, impegnativa
  dematerializzata), impatto: medio; persistenza: media; metodo di
  scoperta: analisi diretta e inversa (#link(<doc:a:05a>)[Documento~05a]), illustrato nel caso di Giorgio
  attraverso il dubbio SSN/Libera Professione],
  [#strong[ID-05]<req:ID-05>: #strong[Posizione:] percorso di prenotazione.
  Scarsa riconoscibilità della sequenza dei passaggi e dell’avanzamento
  verso la conferma, soprattutto al primo utilizzo;
  impatto: alto (3); persistenza: medio-alta (2,5), perché la familiarità
  con il percorso può attenuare il disorientamento senza risolvere la
  scarsa visibilità dell’avanzamento; metodo di scoperta: analisi diretta
  (#link(<doc:a:05a>)[Documento~05a]), coerente con le esigenze descritte nei due casi del segmento A],
  [#strong[ID-06]<req:ID-06>: #strong[Posizione:] intera web application (desktop e mobile), per utenti con
  tecnologie assistive. Problemi di accessibilità, impatto: alto (per
  il sottoinsieme di utenti coinvolti); persistenza: media; metodo di
  scoperta: analisi diretta (#link(<doc:a:05a>)[Documento~05a]), da segnalazioni pubbliche],
  [#strong[ID-07]<req:ID-07>: #strong[Posizione:] sezione cronologia e gestione appuntamenti
  su browser mobile. Tabelle dense e non responsive, elenco non agevolmente
  ordinabile o filtrabile per data su schermo piccolo, impatto: basso-medio;
  persistenza: media; metodo di scoperta: analisi inversa (#link(<doc:a:05a>)[Documento~05a]), da
  segnalazioni di utenti reali su mobile. Pertinenza per il redesign:
  adattamento responsive secondario.],
  [#strong[ID-08]<req:ID-08>: #strong[Posizione:] schermata di modifica/disdetta di un
  appuntamento (task T2). Assenza di conferma o rassicurazione
  esplicita prima di un’azione percepita come
  irreversibile: il soggetto individua il pulsante corretto ma non lo
  preme, o lo evita, per timore di perdere definitivamente
  l’appuntamento; impatto: alto; persistenza: alta;
  frequenza: 2/4 soggetti testati sul task T2 (Giorgio e Carla;
  Silvia e Fatima completano l’azione senza questa
  esitazione; #link(<doc:a:06a>)[Documento~06a]); metodo di scoperta: test utente (#link(<doc:a:06a>)[Documento~06a]),
  non emerso dall’expert review],
  [#strong[ID-09]<req:ID-09>: #strong[Posizione:] messaggio di conferma dopo la
  disdetta o la prenotazione di un appuntamento (task T2/T3). La
  conferma è generica ("operazione eseguita") o comunque visibile solo
  a chi esegue l’azione, senza un modo integrato per
  condividerla con altri familiari coinvolti (serve uno screenshot
  manuale); impatto: medio-alto (soprattutto per il Segmento B);
  persistenza: alta; frequenza: 2/2 soggetti del Segmento B che hanno
  affrontato il tema (Silvia, #link(<doc:a:06a>)[Documento~06a]\; Fatima, #link(<doc:a:06b>)[Documento~06b]);
  metodo di scoperta: test utente (#link(<doc:a:06a>)[Documento~06a] e #link(<doc:a:06b>)[Documento~06b])],
  [#strong[ID-10]<req:ID-10>: #strong[Posizione:] flusso di prenotazione per conto di
  un familiare associato (task T1). La selezione del familiare per cui
  si sta prenotando non è visibile o chiara nel punto del flusso in
  cui serve; impatto: alto (ostacola l’uso
  multi-profilo tipico del caregiver, centrale per il progetto HPHP);
  persistenza: alta; metodo di scoperta: test utente (#link(<doc:a:06a>)[Documento~06a]), soggetto
  Silvia],
  [#strong[ID-11]<req:ID-11>: #strong[Posizione:] gestione della sessione durante
  un’interruzione (task T2). Un’interruzione
  esterna (es. una telefonata) fa scadere la sessione autenticata e
  costringe a ripetere l’accesso da capo, con perdita
  del lavoro già svolto; impatto: alto per l’uso reale
  al computer, tra attività lavorative e familiari; persistenza:
  da confermare con più soggetti; metodo di scoperta: test utente
  (#link(<doc:a:06a>)[Documento~06a]), soggetto Fatima],
  [#strong[ID-12]<req:ID-12>: #strong[Posizione:] sezione di assistenza/aiuto.
  Assenza di un canale di assistenza scritto/asincrono: è disponibile
  solo il numero verde telefonico, inadeguato per chi ha vincoli di
  orario lavorativo o necessità di chiarire i termini della procedura;
  impatto: medio-alto; persistenza: alta; frequenza: 2/2 soggetti che
  hanno cercato un canale scritto sul task T3 (Silvia, #link(<doc:a:06a>)[Documento~06a]\;
  Fatima, #link(<doc:a:06a>)[Documento~06a]); metodo di scoperta: test utente (#link(<doc:a:06a>)[Documento~06a])],
  [#strong[ID-13]<req:ID-13>: #strong[Posizione:] preparazione dei dati e compilazione
  del modulo di pagamento. Difficoltà nel riconoscere quali informazioni
  inserire e su quale documento reperirle; origine: racconto di Giorgio
  (#link(<doc:a:04a>)[Documento~04a]). La criticità riguarda il percorso e i documenti di
  pagamento ed è distinta dalla frammentazione dei domini (#link(<req:ID-02>)[ID-02]).
  Impatto: alto (3), perché l'incertezza interrompe la compilazione autonoma;
  persistenza: alta (3), perché, senza indicazioni nel modulo, la difficoltà
  di associare documenti e campi può ripresentarsi per avvisi e prestazioni diversi. I punteggi esprimono
  giudizi progettuali sul caso descritto; la frequenza non è disponibile
  e il pagamento non rientra nei task T1--T3. La priorità progettuale è
  immediata, per rimuovere l’ostacolo al completamento autonomo del pagamento.],
)

Le frequenze mantengono i denominatori delle schede di test: quattro
profili su due tool, con sottoinsiemi diversi secondo task e problema.
Per #link(<req:ID-01>)[ID-01]--#link(<req:ID-07>)[ID-07] sono disponibili giudizi qualitativi dell'assessment,
non frequenze d'uso. Per #link(<req:ID-13>)[ID-13], impatto e persistenza sono
valutati sul caso narrativo; non è disponibile una frequenza nei test.

// Titolo breve: Risultati SUS

#heading(level: 3, numbering: none, outlined: false)[Valutazione quantitativa dell’usabilità: Matrice di risposta SUS] <sec:a:sus>

Le otto schede preliminari riportano le risposte al #emph[System Usability
Scale] (SUS): dieci affermazioni su scala Likert 1--5
#cite(<sauroSUS2011>), riferite a quattro profili su due servizi.
La Tabella~#ref(<tab:a-12>, supplement: none) mantiene i singoli valori e rende verificabile
il calcolo: per gli item dispari si sottrae 1 al voto; per quelli pari si
sottrae il voto da 5. La somma dei contributi è moltiplicata per 2,5 per
ottenere il punteggio su scala 0--100.

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 9pt)
#set par(justify: false)
#table(
  columns: (42%, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center, center, center, center, center,),
  inset: (x: 3pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [], table.cell(colspan: 4, align: center)[#strong[#link(<doc:a:06a>)[CUPweb]]], table.cell(colspan: 4, align: center)[#strong[#link(<doc:a:06b>)[MioDottore]]],
    table.hline(start: 1, end: 5, stroke: 0.45pt + luma(170)),
    table.hline(start: 5, end: 9, stroke: 0.45pt + luma(170)),
    [#strong[Item / Affermazione standard SUS]], [#strong[Gio]], [#strong[Car]], [#strong[Sil]], [#strong[Fat]], [#strong[Gio]], [#strong[Car]], [#strong[Sil]], [#strong[Fat]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [1. Penso che userei questo sistema con frequenza], [1], [1], [1], [1], [1], [1], [1], [1],
  [2. Ho trovato il sistema inutilmente complesso], [1], [2], [1], [1], [1], [1], [1], [1],
  [3. Ho trovato il sistema facile da usare], [1], [1], [1], [1], [2], [1], [5], [1],
  [4. Avrei bisogno di supporto tecnico per l’uso], [1], [2], [1], [2], [1], [1], [1], [1],
  [5. Ho trovato le varie funzioni ben integrate], [1], [2], [4], [1], [5], [1], [5], [5],
  [6. Ho trovato troppa incoerenza in questo sistema], [5], [5], [2], [4], [1], [4], [1], [3],
  [7. Molte persone imparerebbero a usarlo subito], [3], [1], [2], [1], [5], [4], [5], [4],
  [8. Ho trovato il sistema molto scomodo da usare], [3], [5], [1], [3], [3], [1], [4], [1],
  [9. Mi sono sentito/a molto sicuro/a nell’usarlo], [1], [2], [2], [2], [4], [1], [4], [5],
  [10. Ho dovuto imparare molte cose prima dell’uso], [1], [4], [3], [1], [2], [3], [1], [3],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Punteggio SUS normalizzato (0--100)]], [#strong[40,0]], [#strong[22,5]], [#strong[55,0]], [#strong[37,5]], [#strong[72,5]], [#strong[45,0]], [#strong[80,0]], [#strong[67,5]],
  table.hline(stroke: 0.45pt + luma(170)),
  [#strong[Media campionaria per sistema]], table.cell(colspan: 4, align: center)[#strong[38,75] (non accettabile)], table.cell(colspan: 4, align: center)[#strong[66,25] (marginale, \< 68)],
  [#strong[Varianza campionaria ($s^2$)]], table.cell(colspan: 4, align: center)[#strong[177,08]], table.cell(colspan: 4, align: center)[#strong[227,08]],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Risposte individuali e punteggi SUS dei test preliminari]),
) <tab:a-12>
]
]

#[#set text(size: 9pt); #emph[Legenda partecipanti:] Gio = Giorgio (Segmento A2), Car = Carla (Segmento A1), Sil = Silvia (Segmento B1), Fat = Fatima (Segmento B2). Media complessiva aggregata sulle 8 sessioni: #strong[52,50/100]\; varianza campionaria complessiva: #strong[389,29].]

 Carla e Silvia presentano rispettivamente i punteggi più bassi
e più alti su entrambi i servizi. La familiarità digitale è una possibile
spiegazione, ma dispositivo, contesto, assistenza e ordine dei test possono
contribuire alla dispersione. Le otto schede riguardano gli stessi quattro
profili e costituiscono osservazioni appaiate.

Tutti i punteggi CUPweb sono inferiori al riferimento di 68/100 adottato;
la media è più bassa di quella di MioDottore. Il confronto è descrittivo:
il SUS misura l'usabilità percepita complessiva e viene interpretato
insieme agli esiti e ai comportamenti descritti nelle schede.

#heading(level: 3, numbering: none, outlined: false)[Curva di urgenza] <sec:a:urgency>

La curva comprende le criticità #link(<req:ID-01>)[ID-01]--#link(<req:ID-13>)[ID-13]. Per
#link(<req:ID-13>)[ID-13], i giudizi progettuali di impatto alto (3) e persistenza
alta (3) derivano dal caso di Giorgio: la difficoltà interrompe la
compilazione autonoma e può ripresentarsi con avvisi e prestazioni diversi
se il modulo non chiarisce la corrispondenza fra documenti e campi.
Le valutazioni esprimono priorità progettuali, non stime della prevalenza
dei problemi nel target.
La relazione impatto × persistenza è rappresentata con impatto e
persistenza convertiti in scala numerica (basso/basso-medio=1/1,5,
medio=2, medio-alto=2,5, alto=3; per la persistenza,
medio-alta=2,5) e soglia di urgenza motivata: gli
elementi con #strong[impatto + persistenza $>=$ 5,5] sono trattati
come interventi immediati. Le criticità sotto soglia sono rimandate
alla prossima iterazione di design.

#block(width: 100%, breakable: false)[
#align(center)[
#figure(
  [#set text(size: 10pt)
#set par(justify: false)
#table(
  columns: (auto, auto, auto, auto, auto,),
  align: (left, center, center, center, center,),
  inset: (x: 4pt, y: 3.5pt),
  stroke: none,
  table.hline(stroke: 0.75pt),
  table.header(
    [#strong[ID]], [#strong[Impatto]], [#strong[Persistenza]], [#strong[Somma]], [#strong[Urgenza]],
    table.hline(stroke: 0.45pt + luma(150)),
  ),
  [#link(<req:ID-01>)[ID-01]], [3], [3], [6], [Immediata],
  [#link(<req:ID-02>)[ID-02]], [2,5], [3], [5,5], [Immediata],
  [#link(<req:ID-03>)[ID-03]], [2], [3], [5], [Prossima release],
  [#link(<req:ID-04>)[ID-04]], [2], [2], [4], [Prossima release],
  [#link(<req:ID-05>)[ID-05]], [3], [2,5], [5,5], [Immediata],
  [#link(<req:ID-06>)[ID-06]], [3], [2], [5], [Prossima release],
  [#link(<req:ID-07>)[ID-07]], [1,5], [2], [3,5], [Prossima release],
  [#link(<req:ID-08>)[ID-08]], [3], [3], [6], [Immediata],
  [#link(<req:ID-09>)[ID-09]], [2,5], [3], [5,5], [Immediata],
  [#link(<req:ID-10>)[ID-10]], [3], [3], [6], [Immediata],
  [#link(<req:ID-11>)[ID-11]], [3], [2 (da confermare)], [5], [Prossima release],
  [#link(<req:ID-12>)[ID-12]], [2,5], [3], [5,5], [Immediata],
  [#link(<req:ID-13>)[ID-13]], [3], [3], [6], [Immediata],
  table.hline(stroke: 0.75pt),
)],
  kind: table,
  caption: figure.caption(position: top, [Impatto, persistenza e urgenza delle criticità]),
) <tab:a-13>
]
]

#figure(
  [#image("../assets/phase-a-impact-persistence.svg", width: 96%, alt: "Diagramma delle criticità ID-01–ID-13 per persistenza e impatto, con soglia a 5,5.")],
  kind: image,
  caption: [Distribuzione delle criticità per impatto e persistenza. Gli ID con punteggi uguali condividono il punto; i richiami neri collegano le etichette ai gruppi coincidenti.],
) <fig:urgenza>

Gli otto elementi sulla soglia o al di sopra di essa (#link(<req:ID-01>)[ID-01], #link(<req:ID-02>)[ID-02], #link(<req:ID-05>)[ID-05], #link(<req:ID-08>)[ID-08], #link(<req:ID-09>)[ID-09],
#link(<req:ID-10>)[ID-10], #link(<req:ID-12>)[ID-12], #link(<req:ID-13>)[ID-13]) coincidono in larga parte con le criticità legate
all’autenticazione, alla frammentazione dei domini,
alla difficoltà di orientamento nel percorso e alla mancanza di
conferme condivisibili e alla preparazione dei dati di pagamento.

// Titolo breve: Raccomandazioni progettuali

#heading(level: 3, numbering: none, outlined: false)[Raccomandazioni progettuali preliminari]

Le raccomandazioni traducono l'analisi in direzioni di intervento:
#link(<req:R-01>)[R-01]--#link(<req:R-06>)[R-06] riprendono i bisogni iniziali e l'assessment; #link(<req:R-07>)[R-07]--#link(<req:R-09>)[R-09]
rispondono alle criticità delle schede di test; #link(<req:R-10>)[R-10] affronta l'ipotesi
aggiuntiva sulla preparazione al pagamento.

Nel redesign si distinguono due forme di collaborazione:

#definition(title: [Modalità di collaborazione])[
#list(
  [#strong[Modalità co-pilota]: l'interessato esegue il compito con
  l'aiuto del caregiver, mantenendo il controllo delle azioni.],
  [#strong[Modalità delega completa]: il caregiver esegue il compito
  per conto dell'interessato, entro i limiti dell'autorizzazione ricevuta.],
)

In entrambe le modalità, l'accesso ai dati sanitari segue le autorizzazioni ricevute.
]

#list(
  [#strong[R-01]<req:R-01>: Ridurre il carico dell'autenticazione, semplificando
  gli accessi successivi dal computer abituale.],
  [#strong[R-02]<req:R-02>: Assicurare continuità visiva e orientamento tra i
  touchpoint, spiegando destinazione e motivo degli eventuali passaggi esterni.],
  [#strong[R-03]<req:R-03>: Rendere riconoscibili le azioni e comprensibile il lessico
  attraverso gerarchia visiva e spiegazioni contestuali.],
  [#strong[R-04]<req:R-04>: Rendere riconoscibili i passaggi della prenotazione,
  mostrando l’avanzamento e un riepilogo prima della conferma, con accesso
  alle opzioni di assistenza disponibili.],
  [#strong[R-05]<req:R-05>: Verificare la compatibilità con tecnologie assistive,
  coerentemente con la dichiarazione di accessibilità.
  La raccomandazione deriva dall'assessment (#link(<doc:a:05a>)[Documento~05a]); i test
  preliminari non includono partecipanti con disabilità visiva.],
  [#strong[R-06]<req:R-06>: Distinguere il supporto all'autonomia in modalità
  co-pilota dall'esecuzione autorizzata per conto dell'interessato in
  modalità delega completa.],
  [#strong[R-07]<req:R-07>: Rendere espliciti chi opera, per chi e con quale esito,
  con riepiloghi verificabili e condivisibili in entrambe le modalità.],
  [#strong[R-08]<req:R-08>: Consentire la ripresa del task dopo un'interruzione.],
  [#strong[R-09]<req:R-09>: Affiancare al telefono un'assistenza scritta e asincrona
  adatta a vincoli lavorativi e mediazione linguistica.],
  [#strong[R-10]<req:R-10>: Preparare la compilazione del pagamento con indicazioni
  sul documento necessario e su dove trovare ciascun dato, riducendo il
  ricorso alla memoria o alla conoscenza preventiva della procedura.],
)

// Titolo breve: Requisiti per il redesign

#heading(level: 3, numbering: none, outlined: false)[Requisiti progettuali numerati per le fasi B e C]

I requisiti traducono le direzioni #link(<req:R-01>)[R-01]--#link(<req:R-10>)[R-10] in comportamenti attesi del
servizio, mantenendo identificativi e priorità progettuali. L'esperienza
principale è progettata per computer; l'adattamento responsive estende
gli stessi obiettivi agli altri dispositivi. Il pagamento è accessorio e
mantiene distinti i propri obiettivi da quelli dei test storici.

#list(
  [#strong[REQ-01]<req:REQ-01>: Dopo un primo accesso con
  SPID/CIE, il sistema deve consentire un accesso semplificato dal computer
  abituale, riducendo la necessità di ripetere l'autenticazione forte.
  Priorità: alta.],
  [#strong[REQ-02]<req:REQ-02>: Tutti i touchpoint del
  servizio (prenotazione, disdetta, pagamento) devono condividere
  un’identità visiva coerente (intestazione, palette,
  iconografia), percepibile dall’utente come un unico
  sistema anche quando restano tecnicamente distinti. Prima di un passaggio
  esterno deve indicare il servizio di destinazione e il motivo del cambio;
  il contesto della pratica e il percorso di ritorno devono restare
  comprensibili. Il requisito non impone dominio unico o integrazione
  tecnica del servizio esterno. Priorità: alta.],
  [#strong[REQ-03]<req:REQ-03>: Ogni schermata
  deve avere una gerarchia visiva chiara (icone, colori, dimensioni dei
  testi) e ogni termine tecnico-burocratico (es. SPID, CNS, impegnativa
  dematerializzata) deve essere accompagnato da una spiegazione
  contestuale in linguaggio semplice. Priorità: media.],
  [#strong[REQ-04]<req:REQ-04>: Il percorso di prenotazione deve
  essere articolato in passaggi riconoscibili, con indicazione
  dell'avanzamento, riepilogo prima della conferma e accesso visibile alle
  opzioni di assistenza disponibili. Priorità: alta.],
  [#strong[REQ-05]<req:REQ-05>: L’interfaccia
  deve essere verificata e resa compatibile con le principali
  tecnologie assistive (screen reader), in coerenza con la
  dichiarazione di accessibilità già pubblicata dal cliente, prima del
  rilascio del prototipo finale. Priorità: media.],
  [#strong[REQ-06]<req:REQ-06>: Il sistema deve distinguere la modalità co-pilota,
  nella quale l'interessato esegue il compito con il supporto del caregiver,
  dalla modalità delega completa, nella quale il caregiver opera per suo
  conto entro l'autorizzazione ricevuta. La prima deve sostenere l'autonomia
  progressiva senza trasferire l'esecuzione al caregiver; la seconda deve
  consentire l'esecuzione delegata rendendone espliciti ruolo e limiti.
  In entrambe, la visibilità sulle prenotazioni deve essere coerente con
  il ruolo di chi opera. Priorità: alta.],
  [#strong[REQ-07]<req:REQ-07>: In ogni schermata del flusso devono essere riconoscibili
  chi opera e l'interessato cui si riferisce la pratica; durante l'uso
  assistito o delegato deve essere esplicita la modalità adottata.
  Ogni conferma di prenotazione, disdetta o modifica deve riportare un
  riepilogo dettagliato (paziente, prestazione, data/ora), inoltrabile o
  condivisibile con il caregiver, non un messaggio generico. Priorità: alta.],
  [#strong[REQ-08]<req:REQ-08>: Il sistema deve
  preservare lo stato di un task in corso per un tempo ragionevole in
  caso di interruzione della sessione, evitando che un timeout
  costringa l’utente a ripetere l’autenticazione
  e a ricominciare l’intero flusso. Priorità: media.],
  [#strong[REQ-09]<req:REQ-09>: Il servizio deve offrire,
  in aggiunta al canale telefonico, un canale di assistenza scritto/
  asincrono (es. chat o messaggistica) raggiungibile dalle stesse
  schermate in cui l’utente incontra difficoltà.
  Priorità: media.],
  [#strong[REQ-10]<req:REQ-10>: Prima di compilare il pagamento, l'utente deve poter
  riconoscere quali documenti preparare. Accanto a ciascun campo devono
  essere disponibili una spiegazione, l'indicazione di dove reperire il
  dato e un esempio illustrativo con dati fittizi, distinguibile dai valori
  da inserire. Le istruzioni devono riferirsi al documento effettivamente
  richiesto, senza assumere che tutto sia riportato sulla ricetta, ed
  essere consultabili senza perdere quanto già compilato. I campi e gli
  esempi saranno definiti sulla base del percorso verificato. Priorità
  progettuale: media; validazione specifica non ancora disponibile.],
)
