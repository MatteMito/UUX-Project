# HPHP Project Roadmap

> Mega checklist operativa per condurre il progetto dall'avvio alla presentazione finale.
> Ordine di lavoro: **Fase A -> Fase B -> Fase C -> Fase D -> consegna**.

## 0. Impostazione del progetto

### Organizzazione

- [ ] Definire componenti del team e responsabilità.
- [ ] Assegnare un referente per ricerca, design, test e documentazione.
- [ ] Stabilire calendario, milestone e incontri di revisione.
- [ ] Creare una cartella condivisa con struttura e nomi coerenti.
- [ ] Definire la convenzione di versionamento degli artefatti.
- [ ] Predisporre un registro delle decisioni progettuali.
- [ ] Predisporre una matrice di tracciabilità: `evidenza -> problema -> requisito -> soluzione -> verifica`.
- [ ] Definire regole per consenso, anonimizzazione e gestione dei dati dei partecipanti.

### Materiali di lavoro

- [ ] Template delle card del corso.
- [ ] Fogli per raccolta e analisi dei dati.
- [ ] Strumenti per wireframe, prototipo e blueprint.
- [ ] Moduli SUS ufficiali.
- [ ] Modelli per note, interviste e sessioni di test.
- [ ] Registro di problemi, rischi e scelte scartate.

### Gate 0

- [ ] Ruoli, strumenti, cartelle, calendario e metodi di documentazione sono definiti.

## 1. Fase A - Ethnographic research e assessment

### A1. Business purpose

- [ ] Identificare il cliente e il committente.
- [ ] Descrivere il prodotto o servizio esistente.
- [ ] Delimitare chiaramente il perimetro del redesign.
- [ ] Motivare perché il cliente dovrebbe finanziare il progetto.
- [ ] Definire Product Objectives, Business Goals e Brand Identity.
- [ ] Definire metriche di successo osservabili.
- [ ] Esplicitare vincoli organizzativi, tecnici, normativi ed economici.

**Artefatto:** Client card.

### A2. Segmentazione degli utenti

- [ ] Elencare tutte le audience coinvolte.
- [ ] Scegliere dimensioni demografiche, psicologiche, comportamentali e contestuali rilevanti.
- [ ] Definire segmenti specifici e omogenei.
- [ ] Selezionare e motivare i segmenti prioritari.
- [ ] Descrivere bisogni, capacità, barriere e contesti d'uso.
- [ ] Identificare utenti diretti, intermediari e stakeholder.
- [ ] Tradurre i segmenti in prime implicazioni di design.

**Artefatto:** User Segmentation card.

### A3. Ricerca sugli utenti

- [ ] Formulare domande e obiettivi di ricerca.
- [ ] Selezionare metodi adeguati: statistiche, survey, interviste, focus group, osservazione, contextual inquiry o task analysis.
- [ ] Preparare protocollo, traccia e consenso.
- [ ] Reclutare partecipanti reali appartenenti ai segmenti.
- [ ] Condurre le attività senza guidare indebitamente i partecipanti.
- [ ] Raccogliere e anonimizzare dati, osservazioni e citazioni.
- [ ] Analizzare pattern, bisogni, barriere e differenze tra segmenti.
- [ ] Verificare ogni dato quantitativo con fonte, anno e pagina.
- [ ] Conservare nei supplementi screenshot leggibili delle pagine esatte dei report citati.
- [ ] Documentare limiti e bias.
- [ ] Ricavare implicazioni di design non banali.

**Artefatti:** Market Research card, materiali di ricerca e sintesi delle evidenze.

### A4. Assessment delle risorse esistenti

- [ ] Selezionare il tool del cliente e almeno un competitor o prodotto ispiratore.
- [ ] Acquisire screenshot datati dei sistemi analizzati.
- [ ] Definire e numerare le guideline.
- [ ] Eseguire una prima esplorazione con tutto il team.
- [ ] Eseguire analisi diretta: sistema rispetto alle guideline.
- [ ] Eseguire analisi inversa: guideline rispetto al sistema.
- [ ] Analizzare funzioni, target e task principali.
- [ ] Per ogni problema registrare schermata, descrizione, guideline, metodo di scoperta, persistenza, impatto, frequenza ed evidenza.
- [ ] Motivare tutti i giudizi non conformi o parziali.
- [ ] Verificare conteggi e riepiloghi quantitativi.
- [ ] Distinguere risultati verificati e aspetti non verificabili.
- [ ] Pianificare la verifica con utenti reali degli aspetti che richiedono SPID, CIE o account, oppure documentarne il rinvio.

**Artefatti:** una Assessment card per ogni tool, checklist completa e archivio screenshot.

### A5. User test preliminare

- [ ] Definire 3-4 task completi, realistici e misurabili.
- [ ] Preparare un protocollo uniforme.
- [ ] Scegliere Thinking Aloud, Bottom Line Data o una combinazione motivata.
- [ ] Definire metriche: successo, tempo, accuratezza, errori, learnability e satisfaction/SUS.
- [ ] Reclutare 2-6 partecipanti reali pertinenti.
- [ ] Pianificare il richiamo di almeno due partecipanti nella Fase D.
- [ ] Eseguire un pilot del protocollo.
- [ ] Condurre le sessioni e registrare eventuali deviazioni.
- [ ] Compilare una Test Data card per partecipante.
- [ ] Verificare separatamente completezza e confrontabilità delle card del tool cliente e del competitor.
- [ ] Somministrare il SUS standard senza modificarlo.
- [ ] Calcolare risultati individuali, media e varianza.
- [ ] Integrare i problemi emersi con l'expert review.
- [ ] Costruire una curva d'urgenza con soglia motivata.

**Artefatti:** Preliminary User Testing card, card individuali, dataset, SUS e curva d'urgenza.

### A6. Conclusioni e raccomandazioni

- [ ] Riassumere assessment e user test.
- [ ] Formulare raccomandazioni specifiche e implementabili.
- [ ] Collegare ogni raccomandazione a evidenze precise.
- [ ] Stabilire priorità: urgente, importante, futuro.
- [ ] Distinguere risultati validati e ipotesi.
- [ ] Tradurre le raccomandazioni in requisiti di design numerati.
- [ ] Eseguire una revisione editoriale completa della card prima di usarla come input per le fasi successive.

**Artefatto:** Conclusion and Design Recommendation card.

### Gate A

- [ ] Target, problemi, baseline e requisiti sono sostenuti da evidenze reali.
- [ ] I dati quantitativi sono riconciliabili con i materiali grezzi.
- [ ] Le raccomandazioni costituiscono un input utilizzabile per le fasi successive.

## 2. Fase B - Feasibility study, personas e use case

### B1. Context of use

- [ ] Descrivere ambiente, dispositivo, tempo disponibile e pressione cognitiva.
- [ ] Valutare competenze tecniche, di dominio e linguistiche.
- [ ] Valutare capacità fisiche e visive, concentrazione e motivazione.
- [ ] Individuare attività esterne al prodotto che influenzano il task.
- [ ] Identificare vincoli e opportunità di contesto.

### B2. Scenari e personas

- [ ] Generare più scenari e personas a partire dai dati di ricerca.
- [ ] Selezionare protagonista e personas secondarie.
- [ ] Documentare personas e scenari scartati con motivazione.
- [ ] Rendere ogni persona specifica, credibile e coerente con un segmento.
- [ ] Definire obiettivi, comportamenti, competenze, frustrazioni e motivazioni.
- [ ] Scrivere use case concreti, end-to-end e contestualizzati.
- [ ] Evidenziare conflitti e relazioni tra personas.
- [ ] Derivare implicazioni e requisiti di design.
- [ ] Verificare che le personas generino decisioni non ovvie.

**Artefatti:** Team card, Cast card, Persona card, scenari/use case e grafici delle competenze.

### Gate B

- [ ] Ogni persona deriva dalla ricerca e rappresenta un segmento preciso.
- [ ] Ogni requisito importante indica la persona e lo scenario a cui risponde.
- [ ] Contesto, competenze e motivazioni sono utilizzabili per progettare e testare.

## 3. Fase C - Design proposal

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
- [ ] M1 - Business purpose e segmentazione approvati.
- [ ] M2 - Ricerca utenti conclusa.
- [ ] M3 - Assessment e baseline concluse.
- [ ] M4 - Raccomandazioni e requisiti definiti.
- [ ] M5 - Personas e scenari consolidati.
- [ ] M6 - IA, blueprint e prima versione del design completati.
- [ ] M7 - Inspection completata e redesign aggiornato.
- [ ] M8 - Test formativo e iterazione completati.
- [ ] M9 - Versione finale congelata e test sommativo concluso.
- [ ] M10 - Documento, supplementi e ZIP verificati.
- [ ] M11 - Presentazione pronta.
