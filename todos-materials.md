# HPHP - Project Deliverables & Materials Todo List

Questa checklist operativa raccoglie e traccia in modo granulare tutti i **materiali, artefatti, file supplementari e revisioni di design** da produrre e consegnare per il progetto HPHP, integrando le specifiche dei materiali con la todo list principale.

---

## Fase A — Research, Assessment & User Testing

### 1. Market Research & Fonti Supplementari
- [ ] **Screenshot ISTAT & CNEL-Censis**
  - [ ] Individuare le pagine esatte dei report ISTAT e CNEL-Censis citati nel Documento 02 (Market Research).
  - [ ] Catturare screenshot ad alta risoluzione e leggibili con intestazione e fonte ben visibili.
  - [ ] Salvare i file nella cartella dedicata: `/materiale supplementare/fonti/`.
  - [ ] Verificare la perfetta corrispondenza di fonte, anno, pagina e didascalia con i riferimenti nel report LaTeX.

### 2. Assessment delle Risorse Esistenti (Card 05a / 05b)
- [ ] **Verifica del Workbook Excel (`HPHP_FaseA_GuidelineChecklist.xlsx`)**
  - [ ] Revisionare riga per riga il foglio di lavoro verificando completezza di giudizio, evidenza e motivazione per ogni guideline.
  - [ ] Censire e distinguere le voci marcate `Non verificato`:
    - [ ] Identificare quelle motivate da vincolo tecnico (richiedono credenziali reali SPID/CIE/account personale).
    - [ ] Sanare eventuali voci rimaste incomplete per altri motivi prima delle sessioni di test.
  - [ ] Assicurarsi che l'Excel finale sia pulito e pronto per essere incluso come allegato supplementare ufficiale.
- [ ] **Integrazione Metodologica nel Report LaTeX**
  - [ ] Incollare in calce alla sezione *Metodo di ispezione* di entrambe le Card 05a e 05b la nota di chiarimento sul file Excel:
    > *"Il dettaglio guideline-per-guideline (punteggi, note per singola voce) è mantenuto nel file separato `HPHP_FaseA_GuidelineChecklist.xlsx`, allegato come materiale supplementare — qui si riporta solo la sintesi delle criticità principali, come previsto dal formato del corso. Le voci contrassegnate 'Non verificato' corrispondono a funzionalità raggiungibili solo dietro autenticazione (SPID/CIE/account personale), non testabili in fase di expert review senza credenziali reali: verranno verificate nello User Testing preliminare (Documento 06a/06b) con soggetti che dispongono di credenziali proprie."*

### 3. Reclutamento & Conduzione Preliminary User Testing (06a / 06b)
- [ ] **Piano di Reclutamento Partecipanti**
  - [ ] Reclutare **Segmento A** (anziani): 2–3 persone (65–85 anni, competenza digitale bassa/media).
  - [ ] Reclutare **Segmento B** (caregiver familiari): 2–3 persone (45–60 anni).
  - [ ] Assicurare la disponibilità di almeno **2 partecipanti complessivi** per la seconda sessione di test comparativo in Fase D.
  - [ ] Compilare e mantenere aggiornato il foglio/tracker partecipanti nel materiale supplementare:
    - [ ] Contatti inviati tramite i messaggi template (Segmento A / Segmento B).
    - [ ] Registrazione disponibilità Fase D comunicata post-test.
- [ ] **Esecuzione Test e Raccolta Dati Empirici**
  - [ ] Somministrare i test su tool del cliente (06a) e competitor (06b).
  - [ ] Documentare task completati, errori, note qualitative e trascrizioni think-aloud.
  - [ ] Raccogliere i questionari SUS compilati da utenti reali (non simulati).
  - [ ] Calcolare metriche oggettive: punteggi medi SUS, varianza, tassi di successo dei task.

### 4. Conclusions and Design Recommendations (Sezione 07)
- [ ] **Matrice di Sintesi & Prioritizzazione**
  - [ ] Popolare la tabella raccomandazioni a partire dai dati reali di assessment e test preliminari (`ID-01` ... `ID-07`).
  - [ ] Compilare per ciascun ID: Fonte, Evidenza empirica dai test, Raccomandazione progettuale, Priorità (*urgente* / *prossima release*).
  - [ ] Calcolare e tracciare la curva di urgenza (Impatto × Frequenza) basata sulle evidenze raccolte.
  - [ ] Allineare la numerazione e gli identificativi per il riutilizzo diretto come requisiti formali in Fase B e Fase C.

---

## Fase B — Requirements & Alignment

- [ ] **Controllo di Coerenza Requisiti**
  - [ ] Verificare la piena rispondenza tra le raccomandazioni finali di Fase A (`ID-01`...`ID-07`) e i requisiti/personas definiti in Fase B.
  - [ ] Assicurare l'allineamento dei casi d'uso con gli scenari del blueprint di Fase C.

---

## Fase C — Design Artefacts & Wireframes

### 1. Service Blueprint
- [ ] **Finalizzazione Artefatto Blueprint**
  - [ ] Verificare la copertura completa dello scenario primario (prenotazione ricorrente di Pina).
  - [ ] Valutare la necessità di un secondo blueprint per casi secondari/critici (es. disdetta/modifica appuntamento).
  - [ ] Verificare la conformità ai criteri del corso: rappresentazione chiara di flusso end-to-end, touchpoint, frontstage, backstage, processi di supporto e dipendenze di sistema.
  - [ ] Assicurare l'esportazione in alta definizione per il PDF e/o cartella allegati.

### 2. Before/After Artefact
- [ ] **Tavola Comparativa Visiva**
  - [ ] Acquisire gli screenshot reali dell'interfaccia attuale (CUPweb).
  - [ ] Affiancare a ogni schermata attuale il corrispondente wireframe riprogettato a parità di stato e task (requisito esplicito del corso).
  - [ ] Annotare puntualmente: problema riscontrato nell'originale, evidenza empirica/euristica, modifica apportata nel redesign e risultato atteso.

### 3. Produzione Wireframe `v1` (Post-Inspection / Change Spec)
- [ ] **Generazione Schermate `v1_dopo_inspection`**
  - [ ] **Schermata 2 (Scelta prestazione)**: Sostituire l'icona "R" con etichetta esplicita *"Prenota di nuovo"* + icona freccia circolare (`W-01`).
  - [ ] **Schermata 3 (Autenticazione leggera SMS)**:
    - [ ] Inserire istruzione illustrata: *"Controlla i messaggi SMS del tuo telefono, poi torna qui"* (`W-02`).
    - [ ] Inserire opzione/pulsante esplicito di annullamento/uscita dal flusso (`H-02`).
  - [ ] **Schermata 4 (Data/ora)**: Implementare stato/feedback per slot non disponibili (*"Questo orario non è più disponibile, scegline un altro"*) (`H-01`).
  - [ ] **Nuova Schermata — Errore SMS**: Disegnare schermata di errore codice SMS errato/scaduto con azione di recupero (*"Invia di nuovo il codice"*) (`H-01`).
  - [ ] **Nuova Schermata — Slot non più disponibile**: Disegnare schermata di collisione slot al checkout con redirect pulito alla selezione data/ora (`H-01`).
  - [ ] **Nuova Schermata — Conferma post-prenotazione**: Disegnare schermata finale esplicita (*"Prenotazione confermata ✓"*, riepilogo dati, azione *"Aggiungi al calendario del telefono"*) (`W-03`).
  - [ ] *(Facoltativo / Backlog)* **Schermata 7 (Dashboard "Chi assisto")**: Valutare vista tabellare densa per profilo caregiver esperto (`H-03`).
- [ ] **Organizzazione Cartella & Asset**
  - [ ] Archiviare ordinatamente i file nella directory `phase-c/v1_dopo_inspection/`.

### 4. Design Summary Card (Documento 06)
- [ ] **Compilazione Registro Versioni**
  - [ ] Inserire la voce relativa a `v1_dopo_inspection`:
    - Nome cartella: `v1_dopo_inspection`
    - Data completamento: `[Data]`
    - Tipo di valutazione generatrice: `Cognitive Walkthrough (Doc. 02a) + Heuristic Analysis (Doc. 02b)`
    - Modifiche introdotte: `[W-01] [W-02] [W-03] [H-01] [H-02]` (con annotazione di `H-03` differito).
    - Criticità risolte: collegamento formale agli ID criticità di Fase A.
  - [ ] Rimuovere tutti i placeholder e i TODO interni ancora presenti nella card.

---

## Fase D — Evaluation & Inspection Validation

- [ ] **Inspection Cards & Tracciabilità**
  - [ ] Verificare che le schede di Cognitive Walkthrough e Heuristic Analysis contengano i riferimenti precisi (`W-01`...`W-03`, `H-01`...`H-03`).
  - [ ] Documentare la sequenza formale di iterazione: `Wireframe v0` → `Expert Inspection` → `Raccomandazioni` → `Wireframe v1`.
- [ ] **Test Utente Formativi/Sommativi**
  - [ ] Ri-contattare i partecipanti reclutati in Fase A per il test comparativo prima/dopo su `v1`.
  - [ ] Registrare metriche di completamento ed esiti del re-test.

---

## Packaging, Delivery & Controllo Finale

- [ ] **Verifica della Nomenclatura e Riferimenti Incrociati**
  - [ ] Uniformare ID raccomandazioni, codici wireframe, denominazione file e tabelle tra report LaTeX, roadmap e checklist.
- [ ] **Controllo Materiali Supplementari**
  - [ ] `/materiale supplementare/fonti/` (screenshot ISTAT/CNEL nominati chiaramente).
  - [ ] `HPHP_FaseA_GuidelineChecklist.xlsx` (foglio ripulito senza note interne).
  - [ ] `phase-c/v1_dopo_inspection/` (esportazioni grafiche PNG/SVG/PDF dei wireframe aggiornati).
  - [ ] Tracker reclutamento anonimizzato e compilato.
- [ ] **Final Polish**
  - [ ] Assicurarsi che nel report principale e negli allegati non rimanga alcun TODO residuo, testo segnaposto o nota di bozza.
