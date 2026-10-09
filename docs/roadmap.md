# HPHP Project Roadmap

> Checklist operativa per condurre il progetto dall'avvio alla presentazione finale.
> Ordine di lavoro: **Fase A -> Fase B -> Fase C -> Fase D -> consegna**.
>
> Aggiornamento: **9 ottobre 2026**, branch di riferimento `phase-b`, commit `59c8746`, incluse le revisioni locali di A/B. `[x]` indica un contenuto o un'attività documentati negli artefatti disponibili; non certifica automaticamente la provenienza dei dati né l'approvazione del team. `[ ]` indica lavoro o verifica ancora necessari. I gate restano aperti finché tutte le condizioni sono soddisfatte.
>
> **Stato sintetico:** A/B sviluppate, con verifiche residue di chiusura; C/D avviate con materiali storici da riallineare al browser CUPweb e alle quattro personas. Il lavoro separato in `origin/phase-c-start` non è incorporato in questo branch.

## 0. Impostazione del progetto

### Organizzazione

- [x] Definire componenti del team.
- [ ] Consolidare responsabilità e referenti delle attività successive.
- [ ] Assegnare un referente per ricerca, design, test e documentazione.
- [ ] Stabilire calendario, milestone e incontri di revisione.
- [x] Creare una cartella condivisa con struttura e nomi coerenti.
- [ ] Definire la convenzione di versionamento degli artefatti.
- [ ] Predisporre un registro delle decisioni progettuali.
- [x] Predisporre la tracciabilità A/B: `ID -> R -> REQ -> P/U -> C`, anche nello [strumento interattivo](../strumento-tracciabilita.html).
- [ ] Completare la matrice fino a schermate, soluzioni e verifiche delle Fasi C/D.
- [ ] Definire regole per consenso, anonimizzazione e gestione dei dati dei partecipanti.

### Materiali di lavoro

- [x] Template delle card del corso.
- [x] Fogli per raccolta e analisi dei dati.
- [x] Strumenti per wireframe, prototipo e blueprint.
- [ ] Moduli SUS ufficiali.
- [x] Modelli per note, interviste e sessioni di test.
- [ ] Registro di problemi, rischi e scelte scartate.

### Gate 0

- [ ] Ruoli, strumenti, cartelle, calendario e metodi di documentazione sono definiti.

## 1. Fase A - Ethnographic research e assessment

### A1. Business purpose

- [x] Identificare il cliente e il committente.
- [x] Descrivere il prodotto o servizio esistente.
- [x] Delimitare chiaramente il perimetro del redesign.
- [x] Motivare perché il cliente dovrebbe finanziare il progetto.
- [x] Definire Product Objectives, Business Goals e Brand Identity.
- [x] Definire metriche di successo osservabili.
- [ ] Esplicitare vincoli organizzativi, tecnici, normativi ed economici.

**Artefatto:** [Client card](../phase-a/phase-a.tex), Documento 02.

**Evidenza:** redesign di CUPweb da browser PC/smartphone; obiettivi di autonomia, fiducia e supporto del caregiver. Le metriche sono obiettivi, non benefici già raggiunti.

### A2. Segmentazione degli utenti

- [x] Elencare tutte le audience coinvolte.
- [x] Scegliere dimensioni demografiche, psicologiche, comportamentali e contestuali rilevanti.
- [x] Definire segmenti specifici e omogenei.
- [x] Selezionare e motivare i segmenti prioritari.
- [x] Descrivere bisogni, capacità, barriere e contesti d'uso.
- [x] Identificare utenti diretti, intermediari e stakeholder.
- [x] Tradurre i segmenti in prime implicazioni di design.

**Artefatto:** [User Segmentation card](../phase-a/phase-a.tex), Documento 03; utenti diretti a bassa/maggiore autonomia e caregiver a distanza/conviventi.

### A3. Ricerca sugli utenti

- [x] Formulare domande e obiettivi di ricerca.
- [x] Selezionare metodi adeguati: statistiche, survey, interviste, focus group, osservazione, contextual inquiry o task analysis.
- [x] Preparare protocollo e traccia.
- [ ] Localizzare o confermare le attestazioni individuali del consenso e la gestione dei dati.
- [x] Documentare il reclutamento di quattro partecipanti reali attraverso la rete del team.
- [ ] Confermare l'età di Fatima e dichiarare l'eventuale caso esplorativo fuori dal target 45–60.
- [x] Condurre le attività senza guidare indebitamente i partecipanti.
- [x] Raccogliere e anonimizzare dati, osservazioni e citazioni.
- [x] Analizzare pattern, bisogni, barriere e differenze tra segmenti.
- [x] Verificare ogni dato quantitativo con fonte, anno e pagina.
- [x] Conservare nei supplementi screenshot leggibili delle pagine esatte dei report citati.
- [x] Documentare limiti e bias.
- [x] Ricavare implicazioni di design non banali.

**Artefatti:** [Market Research](../phase-a/phase-a.tex), Documenti 04a/04b; [tracce](../materiali-di-ricerca/tracce-intervista.md), [tracker](../materiali-di-ricerca/tracker-reclutamento.md), screenshot delle fonti.

**Stato:** quattro interviste riportate; campione di comodo. Le verifiche degli originali sono elencate nel [registro delle evidenze](../materiali-di-ricerca/verifica-evidenze-fase-a.md).

### A4. Assessment delle risorse esistenti

- [x] Selezionare il tool del cliente e almeno un competitor o prodotto ispiratore.
- [x] Acquisire screenshot datati dei sistemi analizzati.
- [x] Definire e numerare le guideline.
- [x] Eseguire una prima esplorazione con tutto il team.
- [x] Eseguire analisi diretta: sistema rispetto alle guideline.
- [x] Eseguire analisi inversa: guideline rispetto al sistema.
- [x] Analizzare funzioni, target e task principali.
- [ ] Per ogni problema registrare schermata, descrizione, guideline, metodo di scoperta, persistenza, impatto, frequenza ed evidenza.
- [ ] Motivare tutti i giudizi non conformi o parziali.
- [x] Verificare conteggi e riepiloghi quantitativi.
- [x] Distinguere risultati verificati e aspetti non verificabili.
- [ ] Pianificare la verifica con utenti reali degli aspetti che richiedono SPID, CIE o account, oppure documentarne il rinvio.

**Artefatti:** Assessment 05a/05b nel [report](../phase-a/phase-a.tex), [workbook](../phase-a/phase-a-guideline-checklist.xlsx) e screenshot.

**Limite aperto:** 88 guideline per tool; 64 giudizi CUPweb e 69 MioDottore non verificati, più 1 N/A CUPweb distinto. Il [censimento derivato](../materiali-di-ricerca/verifica-guideline-non-verificate.md) è presente; servono riesame delle voci pubbliche e motivazioni specifiche dei rinvii. L'ispezione documentata non attesta copertura integrale.

### A5. User test preliminare

- [x] Definire 3-4 task completi, realistici e misurabili.
- [x] Preparare un protocollo uniforme.
- [x] Scegliere Thinking Aloud, Bottom Line Data o una combinazione motivata.
- [x] Definire metriche: successo, tempo, accuratezza, errori, learnability e satisfaction/SUS.
- [x] Reclutare 2-6 partecipanti reali pertinenti.
- [x] Pianificare il richiamo di almeno due partecipanti nella Fase D.
- [x] Eseguire un pilot del protocollo.
- [x] Condurre le sessioni e registrare eventuali deviazioni.
- [x] Compilare una Test Data card per partecipante.
- [ ] Verificare separatamente completezza e confrontabilità delle card del tool cliente e del competitor.
- [x] Somministrare il SUS standard senza modificarlo.
- [x] Calcolare risultati individuali, media e varianza.
- [x] Integrare i problemi emersi con l'expert review.
- [x] Costruire una curva d'urgenza con soglia motivata.

**Artefatti:** pilot e card 06a/06b nel [report](../phase-a/phase-a.tex), [protocollo](../materiali-di-ricerca/protocollo-test-utente.md), [risposte SUS](../materiali-di-ricerca/risposte-sus.md).

**Stato:** quattro persone, otto sessioni su due tool; dry run interno escluso dal campione. Media SUS CUPweb 38,75, MioDottore 66,25. Aiuto dopo blocco di Carla dichiarato. Verificare gli originali e gli endpoint dei task prima di confrontarli con il redesign; la learnability richiede ripetizioni pianificate.

### A6. Conclusioni e raccomandazioni

- [x] Riassumere assessment e user test.
- [x] Formulare raccomandazioni specifiche e implementabili.
- [x] Collegare ogni raccomandazione a evidenze precise.
- [x] Stabilire priorità: urgente, importante, futuro.
- [x] Distinguere risultati validati e ipotesi.
- [x] Tradurre le raccomandazioni in requisiti di design numerati.
- [ ] Eseguire una revisione editoriale completa della card prima di usarla come input per le fasi successive.

**Artefatto:** [Documento 07](../phase-a/phase-a.tex): `ID-01…ID-12`, `R-01…R-09`, `REQ-01…REQ-09` e curva di urgenza. La priorità usa la somma impatto + persistenza con soglia 5,5; uniformare la notazione prima della chiusura editoriale.

### Verifiche residue A

- [ ] Localizzare verbali/schede originali, attestazioni del consenso ed esportazione SUS, oppure documentarne motivatamente l'indisponibilità.
- [ ] Chiudere la verifica anagrafica di Fatima senza inventare o sovrascrivere dati.
- [ ] Riesaminare le motivazioni delle guideline non verificate e aggiornare i relativi riferimenti.
- [ ] Verificare la versione PDF dopo le correzioni locali del report.

### Gate A

- [ ] Target, problemi, baseline e requisiti sono sostenuti da evidenze reali.
- [x] Riconciliare i punteggi SUS e gli aggregati per tool con le risposte per item conservate.
- [ ] Riconciliare risposte, citazioni e card con gli originali di sessione e l'esportazione del questionario.
- [x] Le raccomandazioni costituiscono un input utilizzabile per le fasi successive.

## 2. Fase B - Feasibility study, personas e use case

### B1. Context of use

- [x] Descrivere ambiente, dispositivo, tempo disponibile e pressione cognitiva.
- [x] Valutare competenze tecniche, di dominio e linguistiche.
- [x] Valutare capacità fisiche e visive, concentrazione e motivazione.
- [x] Individuare attività esterne al prodotto che influenzano il task.
- [x] Identificare vincoli e opportunità di contesto.

### B2. Scenari e personas

- [x] Generare più scenari e personas a partire dai dati di ricerca.
- [x] Selezionare protagonista e personas secondarie.
- [x] Documentare personas e scenari scartati con motivazione.
- [x] Rendere ogni persona specifica, credibile e coerente con un segmento.
- [x] Definire obiettivi, comportamenti, competenze, frustrazioni e motivazioni.
- [x] Scrivere use case concreti, end-to-end e contestualizzati.
- [x] Evidenziare conflitti e relazioni tra personas.
- [x] Derivare implicazioni e requisiti di design.
- [x] Verificare che le personas generino decisioni non ovvie.

**Artefatti:** [Fase B](../phase-b/phase-b.tex), [workbook](../phase-b/phase-b-personas-and-cast.xlsx), foto, quattro radar individuali, confronto e sovrapposizione del cast.

**Stato:** Pina protagonista, Elena e Amina secondarie, Renato aggiuntivo; due scenari da browser smartphone e due desktop. `P-01…P-11`, due implicazioni per ciascuno dei quattro use case e `C-01…C-12`. Le personas sono sintetiche e distinte dai quattro partecipanti reali. Le revisioni locali hanno riallineato le ambientazioni di Pina e Renato; resta la verifica delle fonti primarie A.

### Gate B

- [ ] Confermare sulla documentazione primaria la derivazione delle personas dalla ricerca e risolvere il limite anagrafico del caso Fatima.
- [x] Ogni requisito importante indica la persona e lo scenario a cui risponde.
- [x] Contesto, competenze e motivazioni sono utilizzabili per progettare e testare.

## 3. Fase C - Design proposal

**Stato:** IA, blueprint, wireframe v0/v1 e Before/After esistono, ma derivano in parte dalla proposta precedente. Le caselle seguenti richiedono copertura del perimetro attuale: browser CUPweb, quattro personas e nove REQ. Gli otto blueprint SVG di `origin/phase-c-start` sono alternative separate da valutare, non deliverable già adottati.

**Prossimo passo:** concordare task e varianti da coprire, criteri di successo, confini dell'assistenza e prerequisiti di autenticazione; dimensionare poi blueprint e schermate sui flussi, non sul solo numero di personas.

### C1. Modello e principi di design

- [ ] Dichiarare il modello di progettazione adottato.
- [ ] Definire principi coerenti con obiettivi, audience e tono.
- [ ] Ordinare i requisiti per priorità.
- [ ] Collegare i requisiti alle evidenze e alle personas.
- [ ] Definire contenuti, funzionalità e confini del prototipo.

### C2. Information Architecture

- [ ] Creare l'inventario dei contenuti e servizi.
- [ ] Raggruppare e denominare le funzioni secondo il modello mentale degli utenti.
- [ ] Definire gerarchia e navigazione globale.
- [ ] Definire ricerca, filtri, aiuto e percorsi alternativi.
- [ ] Mappare i task principali nell'architettura.
- [ ] Verificare completezza e coerenza delle etichette.

**Artefatto:** Information Architecture card con sitemap o task map.

### C3. Interaction design e blueprint

- [ ] Descrivere flussi principali e secondari.
- [ ] Progettare errori, recuperi, annullamento, conferme e notifiche.
- [ ] Creare uno o più blueprint adeguati alla complessità del servizio.
- [ ] Motivare esplicitamente se un solo blueprint è sufficiente o se servono viste aggiuntive per altri scenari o destinatari.
- [ ] Valutare se l'artefatto corrente debba essere ricostruito con uno strumento dedicato.
- [ ] Includere physical evidence, customer actions, frontstage, backstage, support processes e linee di interazione/visibilità.
- [ ] Rappresentare dipendenze e passaggi di responsabilità.
- [ ] Verificare che il blueprint descriva il servizio end-to-end.

**Artefatti:** flow map e blueprint completi.

### C4. Wireframe e prototipo

- [ ] Definire il livello di fedeltà.
- [ ] Creare un wireframe per ogni schermata significativa.
- [ ] Inserire testi reali quando determinano tono, motivazione o comprensione.
- [ ] Definire comandi, etichette, immagini e feedback necessari.
- [ ] Progettare stati normali, vuoti, errore, caricamento e successo.
- [ ] Verificare coerenza tra IA, flussi, blueprint e schermate.
- [ ] Verificare accessibilità, contrasto, dimensioni e aree di tocco.
- [ ] Rendere i task principali navigabili in un prototipo.
- [ ] Eseguire un controllo interno del prototipo.
- [ ] Salvare ogni iterazione con changelog.
- [ ] Identificare `v0` come proposta iniziale e documentare `v1` come revisione derivata dall'ispezione di Fase D.

**Artefatti:** wireframe, prototipo testabile, inventario degli stati e changelog.

### C5. Before / After

- [ ] Selezionare task e schermate comparabili.
- [ ] Usare screenshot reali e datati per il “prima”, quando possibile.
- [ ] Mostrare lo stesso stato e livello di dettaglio nel “dopo”.
- [ ] Annotare problema, evidenza, soluzione e risultato atteso.
- [ ] Evidenziare cambiamenti funzionali, informativi e visivi.
- [ ] Dichiarare eventuali ricostruzioni schematiche.
- [ ] Verificare se il confronto debba essere ricostruito con uno strumento dedicato per assicurare leggibilità e comparabilità.

**Artefatto:** confronto Before/After approfondito.

### C6. Design summary

- [ ] Spiegare come ricerca e personas hanno influenzato il design.
- [ ] Documentare alternative e decisioni scartate.
- [ ] Riassumere versioni, input e cambiamenti.
- [ ] Collegare criticità, requisiti e soluzioni.
- [ ] Dichiarare assunzioni, limiti e aspetti fuori scope.
- [ ] Verificare che la Design summary card sia completa e priva di placeholder o note interne.

**Artefatto:** Design card.

### Gate C

- [ ] Il prototipo consente di eseguire tutti i task di test.
- [ ] Ogni scelta critica è collegata a un requisito e a un'evidenza.
- [ ] Blueprint, IA, wireframe e Before/After sono coerenti.
- [ ] La versione da valutare è congelata e identificata.

## 4. Fase D - Evaluation of design

**Stato:** Cognitive Walkthrough e Heuristic Analysis storiche sono documentate e hanno generato il delta v1; date/versioni e copertura del nuovo scope restano da consolidare. Non risultano risultati formativi/sommativi completati.

**Verifica del protocollo prima del reclutamento:** le note del corso e questa roadmap non coincidono su riuso dei partecipanti e obbligatorietà del formativo. Le voci D2/D3 sono una sequenza operativa da confermare con le specifiche applicabili; confrontare le [specifiche](specs.md) e il materiale didattico originale prima di fissare il campione.

### D1. Inspection

- [ ] Scegliere Cognitive Walkthrough, Action Analysis e/o Heuristic Analysis.
- [ ] Definire versione, task, valutatori e criteri.
- [ ] Eseguire valutazioni individuali quando previsto.
- [ ] Consolidare problemi, severità e raccomandazioni.
- [ ] Collegare ogni finding a una schermata o fase del flusso.
- [ ] Correggere il prototipo.
- [ ] Documentare il passaggio tra versione iniziale e versione post-ispezione.
- [ ] Collegare ogni raccomandazione dell'ispezione alla modifica introdotta nella versione successiva dei wireframe.

**Artefatti:** Inspection card, schede di valutazione e changelog.

### D2. Formative user testing

- [ ] Congelare la versione da testare.
- [ ] Definire task e metriche confrontabili con la baseline.
- [ ] Coinvolgere almeno due partecipanti del test preliminare.
- [ ] Reclutare ulteriori partecipanti pertinenti, se necessario.
- [ ] Eseguire un pilot e condurre i test con persone reali.
- [ ] Compilare una card per partecipante.
- [ ] Raccogliere metriche, errori, osservazioni e SUS.
- [ ] Calcolare risultati aggregati, media e varianza.
- [ ] Costruire una curva d'urgenza.
- [ ] Prioritizzare le modifiche e creare una nuova versione.
- [ ] Ripetere il ciclo design-test se i risultati sono ambigui o insoddisfacenti.

**Artefatti:** Formative Test card, dataset, SUS, curva d'urgenza, nuova versione e changelog.

### D3. Summative user testing

- [ ] Congelare la versione finale.
- [ ] Reclutare preferibilmente partecipanti nuovi.
- [ ] Utilizzare task, condizioni e metriche coerenti con i test precedenti.
- [ ] Condurre le sessioni senza modificare il prototipo.
- [ ] Somministrare il SUS standard.
- [ ] Calcolare risultati individuali e aggregati.
- [ ] Confrontare sistema corrente, iterazioni e versione finale.
- [ ] Separare risultati osservati e interpretazioni.
- [ ] Dichiarare limiti, bias ed effetto apprendimento.

**Artefatti:** Summative Test card, dataset, tabelle quantitative, SUS e confronto finale.

### D4. Conclusioni del progetto

- [ ] Riprendere obiettivi e metriche iniziali.
- [ ] Dichiarare risultati raggiunti e non raggiunti.
- [ ] Sostenere ogni conclusione con dati.
- [ ] Confrontare quantitativamente e qualitativamente redesign e originale.
- [ ] Evidenziare punti di forza e debolezza.
- [ ] Descrivere errori del team e correzioni.
- [ ] Proporre miglioramenti futuri di affidabilità, funzionalità e usabilità.
- [ ] Evitare generalizzazioni non sostenute dal campione.

**Artefatto:** Project Conclusion card.

### Gate D

- [ ] Ispezione, test formativi e test sommativo sono conclusi nell'ordine corretto.
- [ ] Ogni sessione reale dispone di dati e card individuale.
- [ ] Tutti i cambiamenti tra versioni sono motivati.
- [ ] Le conclusioni coincidono con dati e materiali sorgente.

## 5. Documentazione e consegna

### Documento principale

- [ ] Integrare tutte le card in un unico documento.
- [ ] Inserire indice, numerazione, figure, tabelle e didascalie.
- [ ] Usare riferimenti incrociati e ID coerenti.
- [ ] Eliminare placeholder, campi vuoti e note interne.
- [ ] Inserire i dati quantitativi necessari a verificare le conclusioni.
- [ ] Mantenere la sintesi leggibile e spostare i dettagli nei supplementi.
- [ ] Esportare un unico PDF e controllarlo pagina per pagina.

### Materiale supplementare

- [ ] Fonti, screenshot e protocolli.
- [ ] Dati grezzi anonimizzati, tabelle e calcoli.
- [ ] Checklist di assessment e card individuali.
- [ ] Versioni precedenti, alternative e scelte scartate.
- [ ] Registri delle decisioni e file editabili.

### Controllo e packaging

- [ ] Verificare che numeri e grafici coincidano con i dati sorgente.
- [ ] Verificare nomi, versioni e riferimenti.
- [ ] Rimuovere dati personali non necessari.
- [ ] Controllare leggibilità di tabelle, immagini e Before/After.
- [ ] Creare un unico ZIP con PDF e supplementi.
- [ ] Aprire e verificare lo ZIP su un secondo dispositivo.
- [ ] Caricare il pacchetto nella piattaforma prevista.

### Gate finale

- [ ] Un lettore esterno può ricostruire il percorso dalle evidenze alle conclusioni.
- [ ] Ogni affermazione importante è verificabile.
- [ ] Il pacchetto è completo, leggibile e privo di dati sensibili superflui.

## 6. Presentazione

- [ ] Costruire la narrazione: problema -> evidenze -> personas -> design -> iterazioni -> risultati.
- [ ] Selezionare un task principale da mostrare end-to-end.
- [ ] Preparare un Before/After sostenuto da dati.
- [ ] Selezionare i numeri chiave: successo, tempo, errori, SUS e campione.
- [ ] Distribuire gli interventi fra i componenti del team.
- [ ] Preparare demo e backup statico.
- [ ] Provare tempi e passaggi tra relatori.
- [ ] Preparare risposte su metodo, campione, personas, versioni, limiti e scelte scartate.
- [ ] Prenotare l'appuntamento entro la scadenza del corso.
- [ ] Presentare il progetto entro il termine finale.

## 7. Milestone sintetiche

- [ ] M0 - Setup del progetto.
- [x] M1 - Business purpose e segmentazione documentati.
- [ ] Confermare con il team perimetro e responsabilità per le fasi successive.
- [x] M2 - Ricerca utenti e sintesi documentate.
- [ ] Chiudere le verifiche delle fonti primarie e del campione di Fase A.
- [ ] M3 - Assessment e baseline consolidati: baseline presente; motivazioni delle guideline e originali da verificare.
- [x] M4 - Raccomandazioni e requisiti definiti e numerati.
- [x] M5 - Quattro personas, scenari e requisiti del cast documentati.
- [ ] Confermare il Gate B dopo le verifiche residue di A e il controllo finale degli artefatti.
- [ ] M6 - IA, blueprint e prima versione del design completati.
- [ ] M7 - Inspection completata e redesign aggiornato.
- [ ] M8 - Test formativo e iterazione completati.
- [ ] M9 - Versione finale congelata e test sommativo concluso.
- [ ] M10 - Documento, supplementi e ZIP verificati.
- [ ] M11 - Presentazione pronta.
