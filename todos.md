# HPHP - Todo List

Questa checklist raccoglie esclusivamente le attività ancora da verificare o completare rispetto al report LaTeX corrente. Per il percorso complessivo del progetto fare riferimento alla [roadmap](docs/roadmap.md) e alle checklist delle singole fasi.

## Fase A

### Market research - Segmento A (sezione 04 1/2)

- [x] Recuperare le pagine esatte dei report ISTAT citati.
- [x] Inserire gli screenshot leggibili nel materiale supplementare.
- [x] Verificare che fonte, anno, pagina e didascalia coincidano con le citazioni nel report.

### Market research - Segmento B (sezione 04 2/2)

- [x] Recuperare le pagine esatte di tutti i report citati.
- [x] Inserire gli screenshot leggibili nel materiale supplementare.
- [x] Verificare che fonte, anno, pagina e didascalia coincidano con le citazioni nel report.

### Assessment delle risorse esistenti (sezioni 05a e 05b)

- [ ] Riesaminare il workbook [guideline checklist](phase-a/phase-a-guideline-checklist.xlsx).
- [ ] Individuare tutte le guideline marcate `Non verificato`.
- [ ] Stabilire quali verifiche richiedono autenticazione tramite SPID, CIE o account.
- [ ] Verificare tali aspetti con soggetti reali durante lo user testing oppure documentarne esplicitamente il rinvio e il limite.
- [ ] Accertare che ogni riga del workbook abbia giudizio, evidenza e motivazione sufficienti.
- [ ] Decidere il livello di dettaglio da mantenere nel report: sintesi delle criticità principali nel PDF e risultati completi nel workbook supplementare.
- [ ] Inserire nel report un riferimento esplicito al workbook e agli aspetti non verificati.

### Preliminary user testing (sezioni 06a e 06b)

- [x] Verificare e completare la card relativa al tool del cliente.
- [x] Verificare e completare la card relativa al competitor.
- [ ] Controllare che task, partecipanti, metriche, dati, SUS e limiti siano documentati per entrambi i tool.

### Conclusions and design recommendations (sezione 07)

- [ ] Rivedere integralmente la sezione.
- [ ] Ricostruire le conclusioni a partire dai risultati di assessment e user testing.
- [ ] Collegare ogni raccomandazione a evidenze precise e assegnarle priorità e identificativo.
- [ ] Verificare che le raccomandazioni siano utilizzabili come requisiti nelle Fasi B e C.

## Fase B

La todo list originale non segnala attività aperte per questa fase.

- [ ] Eseguire soltanto un controllo finale di coerenza con eventuali modifiche introdotte nella Fase A.

## Fase C

### Blueprint

- [ ] Stabilire se il blueprint attuale copre tutti gli scenari rilevanti.
- [ ] Decidere se servono blueprint aggiuntivi e documentare il criterio usato.
- [ ] Verificare se l'artefatto attuale è sufficientemente chiaro e completo oppure se va ricostruito con uno strumento dedicato.
- [ ] Controllare che siano rappresentati flusso end-to-end, frontstage, backstage, processi di supporto e dipendenze pertinenti.

### Versioni dei wireframe

- [ ] Documentare chiaramente il passaggio da `v0` a `v1`.
- [ ] Collegare le modifiche di `v1` alle raccomandazioni `W-01`, `W-03` e `H-01`-`H-03` emerse durante l'ispezione.
- [ ] Chiarire nel report che `v0` è la proposta iniziale di Fase C e `v1` è la revisione post-ispezione prodotta nel ciclo di Fase D.
- [ ] Decidere dove presentare `v0` e `v1` nel documento principale e nei supplementi, mantenendo esplicita la cronologia anche se i file restano raccolti nella directory `phase-c`.

### Before/After

- [ ] Verificare se gli elaborati attuali hanno qualità e comparabilità sufficienti.
- [ ] Se necessario, ricostruirli con uno strumento dedicato.
- [ ] Confrontare gli stessi task e stati, annotando problema, evidenza, modifica e risultato atteso.

### Design summary card

- [ ] Chiarire nel testo lo scopo della card: sintetizzare il legame tra ricerca, personas, requisiti e decisioni di design.
- [ ] Individuare i tre placeholder o todo ancora presenti nella card.
- [ ] Completare i tre punti e rimuovere ogni nota interna dal report finale.

## Fase D

- [ ] Verificare che le Inspection card documentino le raccomandazioni che hanno generato i wireframe `v1`.
- [ ] Rendere tracciabile la sequenza `wireframe v0 -> inspection -> raccomandazioni -> wireframe v1`.
- [ ] Aggiornare checklist, changelog e riferimenti incrociati dopo la decisione editoriale sulle versioni.

## Controllo conclusivo

- [ ] Ogni punto completato è supportato da un artefatto o da un riferimento nel report.
- [ ] La todo list, la roadmap, le checklist di fase e il PDF usano gli stessi nomi e identificativi.
- [ ] Nel documento finale non rimangono placeholder, todo interni o riferimenti ai vecchi nomi dei file.
