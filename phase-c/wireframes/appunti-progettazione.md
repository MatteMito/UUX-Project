# Appunti di progettazione · CUPweb

## Perimetro e prime scelte

- Abbiamo scelto il PC come postazione principale. Avevamo ipotizzato un percorso mobile con codice SMS a ogni accesso. Lo abbiamo accantonato perché obbligava chi prenota da PC a passare comunque dal telefono, riproponendo la difficoltà emersa con SPID. Sul computer abituale abbiamo previsto il PIN, con SPID o CIE per la prima autenticazione. La fruizione da smartphone resta secondaria e il redesign riguarda il portale web.
- Abbiamo concentrato gli scenari su prenotazione, gestione degli appuntamenti e supporto familiare. Consultazione semplice e modifica anagrafica sono rimaste fuori dagli scenari principali perché meno rappresentative del problema di prenotazione. Il pagamento è rimasto un passaggio collegato alla visita.
- Per il cast ci servivano quattro situazioni diverse. Pina e Renato ci hanno fatto confrontare due livelli di autonomia. Elena e Amina hanno portato due modi di assistere, a distanza e in presenza. Abbiamo lasciato fuori una figura sanitaria o di farmacia, esterna ai segmenti intervistati, e un profilo di dipendenza totale, per cui avevamo poche evidenze. Un secondo caregiver simile a Elena avrebbe ripetuto le stesse esigenze progettuali.

## Dalle personas alle schermate

- **Pina.** Dalla home portiamo in primo piano la prossima visita e l’avvio della prenotazione. Nel percorso guidato lasciamo visibili i passaggi e il riepilogo prima della conferma. Con il Co-pilota Elena può indicare dove guardare, mentre Pina mantiene il controllo dei comandi. [Home](wf-02.png) · [Co-pilota](wf-07.png)
- **Elena.** Per le operazioni autorizzate per conto del familiare abbiamo previsto un percorso in delega. Il profilo attivo resta riconoscibile anche quando la caregiver agisce in fretta. Prima della disdetta mostriamo la visita che sta per annullare. Dopo la conferma lasciamo dieci minuti per ripensarci. [Deleghe](wf-15.png) · [Conferma della disdetta](wf-13.png) · [Ripensamento](wf-14.png)
- **Renato.** Abbiamo affiancato servizio pubblico e libera professione per rendere visibili costi ed esenzioni prima di scegliere sede e orario. Le istruzioni essenziali restano nella schermata, con gli approfondimenti disponibili su richiesta. Così chi conosce già il percorso può proseguire senza perdere il confronto a colpo d’occhio. [Confronto dei costi](wf-04.png)
- **Amina.** Abbiamo previsto che una prenotazione possa essere interrotta. Da «Serve aiuto?» si può salvare la pratica e riprendere dal punto raggiunto. Il promemoria condivisibile permette di coordinarsi in famiglia e ridurre il rischio di prenotazioni doppie. [Pannello di aiuto](wf-19.png) · [Promemoria](wf-10.png)

## Verifica e scelte rinviate

- Nel pilot abbiamo esteso il primo compito alla consultazione guidata del bollettino pagoPA. Volevamo vedere se chi prenota riesce anche a individuare i dati da leggere sull’avviso. La guida visiva e il recupero della ricevuta sono due passaggi distinti nel flusso. [Pagamento assistito](wf-17.png) · [Ricevute](wf-18.png)
- Abbiamo rinviato la ricerca a testo libero e il dettaglio ulteriore delle tariffe accessorie. Nel percorso illustrato restano il confronto tra i due regimi e la guida al pagamento. Le due estensioni erano sotto la soglia di priorità definita nella valutazione iniziale.
- Dopo i test abbiamo annotato tre correzioni per le schermate: distinguere l’etichetta di prossimità dai pulsanti, indicare quando parte l’SMS di disdetta e rendere la disdetta più facile da trovare nella scheda della visita. La vista compatta delle deleghe è rimasta tra gli sviluppi futuri per chi assiste più familiari.

Riferimenti: [cast e scenari](../../phase-b/phase-b.typ), [scheda di progettazione e confronto prima/dopo](../phase-c.typ), [pilot, rilievi e raccomandazioni](../../phase-d/phase-d.typ).
