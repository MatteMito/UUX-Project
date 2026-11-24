# Phase C Checklist

> Le spunte si basano sui [documenti 01–05 della Fase C](phase-c.typ), sui [blueprint](blueprints/), sui [wireframe](wireframes/), sulle [tavole Before/After](before-after/) e sulla descrizione della suite testata in [Fase D](../phase-d/phase-d.typ). Restano aperte le verifiche di accessibilità, dei sorgenti e della cronologia delle versioni.

Riferimento: [specifiche complete](../docs/specs.md).

## 1. Modello e requisiti di design

- [x] Dichiarare il modello di design adottato.
- [x] Usare un approccio top-down dagli obiettivi alla strategia.
- [x] Usare un approccio bottom-up dalle parti al sistema.
- [x] Importare i requisiti numerati delle Fasi A e B.
- [x] Ordinare i requisiti per priorità.
- [x] Definire principi coerenti con audience, tono e messaggio.
- [x] Delimitare contenuti, servizi e confini del prototipo.

## 2. Information Architecture

- [x] Creare l'inventario dei contenuti e dei servizi.
- [x] Definire raggruppamenti coerenti con il modello mentale degli utenti.
- [x] Definire etichette chiare e consistenti.
- [x] Definire la gerarchia delle funzioni.
- [x] Definire navigazione globale e locale.
- [x] Definire ricerca, filtri, aiuto e percorsi alternativi.
- [x] Mappare i task principali nell'architettura.
- [ ] Verificare completezza, trovabilità e recuperabilità dei contenuti.

**Deliverable:** Information Architecture card con sitemap o task map.

## 3. Interaction Design

- [x] Descrivere il framework complessivo del sistema.
- [x] Elencare senza ambiguità i servizi disponibili.
- [x] Mappare i flussi principali e secondari.
- [x] Progettare feedback, conferme e notifiche.
- [x] Progettare annullamento, errori e recupero.
- [x] Definire il ruolo dell'intermediario nei diversi passaggi.
- [ ] Verificare coerenza con scenari e personas.

## 4. Blueprint

- [x] Identificare componenti e connessioni del servizio.
- [x] Rappresentare il flusso end-to-end.
- [x] Includere interazioni dell'utente e risposte del sistema.
- [ ] Includere frontstage, backstage e processi di supporto quando pertinenti.
- [ ] Rappresentare dipendenze esterne e passaggi di responsabilità.
- [x] Creare più prospettive se una sola non descrive il sistema completo.
- [ ] Adattare le viste a implementatori, cliente o altri destinatari.
- [ ] Verificare che tutte le parti necessarie all'implementazione siano presenti.
- [x] Motivare se un unico blueprint copre tutti gli scenari o se sono necessarie viste aggiuntive.
- [ ] Verificare che lo strumento e il formato usati garantiscano leggibilità e modificabilità.

**Deliverable:** uno o più blueprint completi.

## 5. Wireframe e prototipo

- [ ] Definire il livello di fedeltà.
- [x] Creare un wireframe per ogni schermata significativa.
- [x] Includere testi, immagini, comandi ed etichette necessari ai task.
- [x] Inserire contenuti realistici quando influenzano tono o comprensione.
- [ ] Evitare dettagli inutili e interfacce eccessivamente generiche.
- [ ] Progettare stati normali, vuoti, caricamento, errore e successo.
- [x] Includere l'accesso ai passaggi ovvi anche quando non vengono disegnati.
- [ ] Verificare accessibilità, contrasto, leggibilità e aree di tocco.
- [ ] Verificare coerenza tra IA, flussi, blueprint e schermate.
- [x] Rendere navigabili i task principali.
- [x] Eseguire un controllo interno prima della Fase D.
- [ ] Congelare e nominare la versione iniziale.
- [ ] Identificare la versione iniziale come `v0` e conservarla come baseline pre-ispezione.

**Deliverable:** wireframe e prototipo testabile.

## 6. Before/After

- [x] Selezionare parti e task equivalenti da confrontare.
- [ ] Acquisire screenshot datati del sistema originale.
- [x] Mostrare lo stesso stato nel redesign.
- [x] Mantenere un livello di dettaglio confrontabile.
- [ ] Annotare problema, evidenza, cambiamento e risultato atteso.
- [x] Evidenziare differenze funzionali, informative e visive.
- [ ] Dichiarare eventuali ricostruzioni schematiche.
- [ ] Prepararsi a difendere ogni scelta.
- [ ] Verificare che il formato e lo strumento scelti garantiscano leggibilità, confrontabilità e modificabilità degli elaborati.

**Deliverable:** confronto Before/After approfondito.

## 7. Design card e versioni

- [x] Spiegare come le personas hanno influenzato il design.
- [x] Collegare le decisioni alle evidenze e ai requisiti.
- [ ] Documentare alternative e design scartati.
- [ ] Assegnare un nome stabile a ogni versione.
- [ ] Conservare un changelog con input, modifica e motivazione.
- [ ] Archiviare la versione iniziale prima dell'ispezione.
- [ ] Archiviare separatamente le versioni successive.
- [ ] Collegare `v1` alle raccomandazioni dell'ispezione di Fase D e renderne esplicita la cronologia.
- [x] Verificare che la Design summary card sia completa e priva di placeholder o note interne.
- [ ] Dichiarare assunzioni, limiti e aspetti fuori scope.

**Deliverable:** Design card.

## Controllo finale della fase

- [x] Information Architecture card completa.
- [ ] Blueprint completo e coerente.
- [x] Wireframe coerenti nel livello di fedeltà.
- [ ] Tutti gli elementi che trasmettono tono e messaggio sono progettati.
- [x] Prototipo sufficiente per eseguire i task della Fase D.
- [x] Before/After basato su elementi equivalenti.
- [x] Design card collegata a personas ed evidenze.
- [x] Versione da valutare congelata e identificata.
