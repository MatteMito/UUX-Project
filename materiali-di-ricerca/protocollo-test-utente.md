# Protocollo di user testing preliminare --- Documenti 06a / 06b

Vale sia per il test sul tool del cliente (CUPweb, 06a) sia per il test sul competitor (MioDottore, 06b). Aggiornare il [tracker di reclutamento](tracker-reclutamento.md) prima e dopo ogni sessione.

## 1. Prima della sessione

- [ ] Verificare che il soggetto rientri nel segmento A o B (vedi [tracce-intervista.md](tracce-intervista.md) per i criteri).
- [ ] Preparare account demo/test (dove possibile) così da non toccare dati sanitari reali del soggetto.
- [ ] Preparare dispositivo del team preconfigurato identico, come backup se il soggetto non vuole usare il proprio.
- [ ] Stampare: questo protocollo, scheda dati, questionario di gradimento; avere pronto il link al modulo Google SUS del corso.
- [ ] Assegnare i ruoli: un conduttore (parla col soggetto), un osservatore (prende note sulla scheda dati).

## 2. Script di apertura (da leggere al soggetto)

> "Grazie per il tuo tempo. Ti chiederò di provare a fare alcune cose su [CUPweb / MioDottore] mentre osservo come le fai. Non sto valutando te, ma lo strumento: se qualcosa non è chiaro, è un problema dello strumento, non tuo. Prova a dire ad alta voce cosa stai pensando o cercando mentre lo fai, quando te lo chiederò esplicitamente. Puoi fermarti quando vuoi. Non c'è fretta."

Chiarire inoltre:
- che non verranno eseguite azioni reali irreversibili (nessuna prenotazione/disdetta vera, salvo account demo);
- che l'osservatore prenderà appunti ma non interverrà per aiutare, salvo bloccaggio totale.

## 3. Task ed esecuzione

### 06a --- CUPweb (Browser PC / Smartphone)

| # | Task | Metodologia |
|---|---|---|
| T1 | Accedere a CUPweb dal browser e individuare come prenotare una visita specialistica (senza completare la prenotazione) | Thinking Aloud |
| T2 | Disdire un appuntamento fittizio già presente nell'account demo/test | Bottom Line Data (non interrompere, non aiutare) |
| T3 | Individuare dove e come chiedere aiuto/assistenza in caso di difficoltà | Thinking Aloud |

### 06b --- MioDottore

| # | Task | Metodologia |
|---|---|---|
| T1 | Cercare uno specialista di una categoria a scelta nella propria città (senza completare la prenotazione) | Thinking Aloud |
| T2 | Individuare come si annullerebbe un appuntamento già fissato | Bottom Line Data |
| T3 | Individuare dove e come si contatta il professionista in caso di dubbi | Thinking Aloud |

Per ogni task, il conduttore legge la consegna **testuale identica per tutti i soggetti** (per confrontabilità), es.:
> "Immagina di dover [obiettivo del task]. Fammi vedere come lo faresti, partendo da qui."

Non fornire suggerimenti su dove cliccare. Se il soggetto è completamente bloccato per più di ~3 minuti su un task Thinking Aloud, annotare "non completato" e passare al task successivo; su Bottom Line Data lasciare più margine ma annotare il tempo comunque.

## 4. Test pilota

Prima di condurre i test con i soggetti reali definitivi, eseguire **un pilot** con una persona disponibile (anche non perfettamente in target) per verificare che: i task siano comprensibili, il tempo totale sia ragionevole (~20-30 minuti), la scheda dati sia compilabile in tempo reale. Annotare qui eventuali modifiche al protocollo emerse dal pilot:

- Data pilot: 21/09/2026
- Modifiche apportate dopo il pilot: dry run interno al team (un membro nel ruolo di partecipante, un secondo come conduttore/osservatore) su CUPweb; ha portato a consolidare 7 regole operative (conduttore non suggerisce il percorso, richieste di aiuto spontanee annotate prima di aiutare, intervento minimo consentito solo su blocco totale, tempi registrati al netto delle interruzioni, errori/esitazioni/richieste di rassicurazione come eventi distinti, nessuna azione reale di prenotazione/disdetta, citazioni testuali separate dall'interpretazione). Dettaglio completo in Documento 06 (`phase-a.tex`).

## 5. Scheda dati (da compilare durante il test, per soggetto)

Tool testato: __________  Nome fittizio soggetto: __________  Data: __________  Conduttore: __________  Osservatore: __________

| Task | Successo (sì/no/parziale) | Tempo impiegato | N. errori | Tipo di errori | Aiuti richiesti (sì/no, quali) | Citazioni/osservazioni rilevanti |
|---|---|---|---|---|---|---|
| T1 | | | | | | |
| T2 | | | | | | |
| T3 | | | | | | |

Note comportamentali aggiuntive (esitazioni, segnali di ansia/frustrazione, commenti spontanei): __________

Learnability (solo se un task viene ripetuto o se emergono differenze tra primo e secondo tentativo): __________

## 6. Dopo i task --- questionari

1. **SUS standard** (System Usability Scale, 10 item, scala 1-5 da "fortemente in disaccordo" a "fortemente d'accordo") --- somministrare tramite il modulo Google ufficiale del corso. Testo di riferimento delle 10 affermazioni standard, da usare solo come backup se il modulo non è disponibile in sessione:
   1. Penso che userei questo sistema frequentemente.
   2. Ho trovato il sistema inutilmente complesso.
   3. Ho trovato il sistema facile da usare.
   4. Penso che avrei bisogno del supporto di una persona tecnica per usare questo sistema.
   5. Ho trovato le varie funzioni del sistema ben integrate.
   6. Ho trovato troppa incoerenza in questo sistema.
   7. Immagino che la maggior parte delle persone imparerebbe a usare questo sistema molto rapidamente.
   8. Ho trovato il sistema molto scomodo da usare.
   9. Mi sono sentito/a molto sicuro/a nell'usare il sistema.
   10. Ho avuto bisogno di imparare molte cose prima di riuscire a usare il sistema.

2. **Questionario di gradimento finale** (domande aperte, da porre a voce o per iscritto):
   - Cosa ti è piaciuto di più di questo strumento?
   - Cosa ti ha creato più difficoltà o fastidio?
   - Se potessi cambiare una sola cosa, cosa cambieresti?
   - Ti sentiresti sicuro/a a usarlo da solo/a a casa? Perché sì/no?
   - *(solo per 06a, segmento B)* Cosa ti darebbe fiducia per lasciare che [il tuo familiare] lo usi senza il tuo aiuto?

3. Chiedere se disponibile a essere ricontattato per la Fase D e annotarlo nel tracker.

## 7. Dopo la sessione

- [ ] Trascrivere la scheda dati in digitale entro 24h.
- [ ] Calcolare il punteggio SUS individuale (formula standard: item dispari punteggio-1, item pari 5-punteggio, somma ×2,5).
- [ ] Aggiornare la tabella riassuntiva SUS (Documento 07) con media e varianza una volta raccolti tutti i soggetti.
- [ ] Copiare i risultati nella card "Test #N: Soggetto..." dedicata in `phase-a.tex` (vedi template più sotto).

---

## Template LaTeX per la card individuale di partecipante

Da copiare e compilare, una volta per soggetto, sotto la relativa card 06a o 06b in `phase-a.tex` (sostituisce i placeholder `\projecttodo` corrispondenti):

```latex
\fieldheading{Test \#1 --- Soggetto: [nome fittizio]}

\textbf{Data:} [gg/mm/aaaa] \quad \textbf{Assistente/conduttore:} [nome] \quad \textbf{Osservatore:} [nome]

\textbf{Contesto:} [dove si è svolto il test, dispositivo usato, presenza di terzi]

\textbf{Risultati per task:}
\begin{itemize}
\item T1 --- Successo: [sì/no/parziale]; Tempo: [mm:ss]; Errori: [n. e tipo]; Note: [...]
\item T2 --- Successo: [sì/no/parziale]; Tempo: [mm:ss]; Errori: [n. e tipo]; Note: [...]
\item T3 --- Successo: [sì/no/parziale]; Tempo: [mm:ss]; Errori: [n. e tipo]; Note: [...]
\end{itemize}

\textbf{Punteggio SUS:} [0-100]

\textbf{Citazioni significative:} "[...]"

\textbf{Suggerimenti del soggetto:} [...]

\textbf{Riflessioni utili per il design:} [...]
```
