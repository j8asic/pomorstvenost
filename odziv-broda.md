# Odziv broda na valovima

Sada kada imamo matematički opis uzburkanog mora (valni spektar), potrebno je odrediti kako će konkretan brod reagirati na to more. Ta reakcija broda naziva se **odziv (e: *response*)**. Odziv može biti kinematički (npr. amplituda poniranja, kut ljuljanja, brzina, ubrzanje) ili strukturni (npr. moment savijanja trupa, poprečna sila, naprezanje u oplati).

## Pretpostavka linearnosti i frekvencija susreta

Temelj moderne analize pomorstvenosti je pretpostavka o linearnosti sustava. Pretpostavlja se da je odziv broda linearno proporcionalan visini (amplitudi) vala koji taj odziv uzrokuje. Ako se visina vala udvostruči, udvostručit će se i amplituda posrtanja ili moment savijanja. Ova pretpostavka vrijedi za blaga i umjerena stanja mora, dok za ekstremne oluje postaje manje točna, ali je i dalje inženjerski najkorisnija.

Budući da brod plovi određenom brzinom ($V$) i pod određenim kutom prema valovima (tzv. kut kursa / e: *heading angle*, $\mu$), brod ne "osjeća" apsolutnu frekvenciju vala ($\omega$), već prividnu **frekvenciju susreta (e: *encounter frequency*)**, $\omega_e$. Veza između njih dana je izrazom:

$$\omega_e = \omega - \frac{\omega^2}{g} V \cos \mu$$

## Prijenosne funkcije (RAO)

**Prijenosna funkcija** ili **Operator amplitudnog odziva (e: *Response Amplitude Operator - RAO*)** je najvažnija karakteristika svakog broda u pomorstvenosti. RAO nam govori koliki će odziv brod ostvariti kada naiđe na pravilni harmonijski val jedinične amplitude (amplituda = 1 metar) pri određenoj frekvenciji.

Matematički, RAO je omjer amplitude odziva ($\zeta_{a,odziv}$) i amplitude pravilnog vala ($\zeta_a$):

$$RAO(\omega_e) = \frac{\zeta_{a,odziv}}{\zeta_a}$$

Svaki brod ima jedinstven set RAO krivulja (za svih 6 stupnjeva slobode te za globalna opterećenja). Te krivulje nisu statične, već ovise o:

1. **Formi trupa i rasporedu masa** (svaki projekt ima svoj RAO).
2. **Brzini broda (**$V$**)**.
3. **Kutnom smjeru nailaska valova (**$\mu$**)** (npr. pramčani valovi / e: *head seas*, valovi u bok / e: *beam seas*).
4. **Stanju krcanja** (promjena gaza i težišta drastično mijenja RAO).

RAO funkcije dobivaju se ili modelskim ispitivanjima u bazenu (e: *towing tank tests*) ili, danas najčešće, pomoću specijaliziranih hidrodinamičkih softvera koji se temelje na teoriji vrpci (e: *strip theory*) ili 3D panel metodama.

## Spektar odziva (Response Spectrum)

Kada poznajemo valni spektar mora ($S_W$) i prijenosnu funkciju broda ($RAO$), možemo izračunati **spektar odziva broda (e: *response spectrum*)**, $S_R$.

Prema principu linearne superpozicije, energija odziva na nekoj frekvenciji jednaka je energiji vala na toj frekvenciji pomnoženoj s *kvadratom* prijenosne funkcije. Ovo je temeljna jednadžba pomorstvenosti:

$$S_R(\omega_e) = |RAO(\omega_e)|^2 \cdot S_W(\omega_e)$$

Ova jednadžba predstavlja elegantno inženjersko rješenje:

- $S_W(\omega_e)$ opisuje **okoliš** (stanje mora kakvo jest, neovisno o interakciji s brodom).
- $RAO(\omega_e)$ opisuje **brod** (njegove hidrodinamičke značajke, neovisne o trenutnom moru).
- $S_R(\omega_e)$ daje konačan rezultat, **kako se taj specifični brod ponaša na tom specifičnom moru**.

Površina ispod novodobivene krivulje spektra odziva predstavlja nulti spektralni moment odziva ($m_{0,odziv}$), odnosno varijancu. Iz tog momenta, primjenom Rayleighove razdiobe inženjeri računaju ključne statističke vrijednosti. Na primjer, značajnu amplitudu ljuljanja, najveći očekivani moment savijanja u 3 sata oluje ili vjerojatnost da će pramac udariti o valove (e: *slamming probability*).

## Jednadžbe gibanja

Kada brod plovi na valovima, njegovo gibanje opisuje se sustavom diferencijalnih jednadžbi drugog reda (temeljenih na Newtonovom drugom zakonu). Za svaki stupanj slobode gibanja ($i = 1, \dots, 6$), suma inercijalnih, prigušnih i povratnih sila mora biti u ravnoteži s vanjskom uzbudnom silom mora:

$$\sum_{j=1}^{6} \left[ (M_{ij} + A_{ij})\ddot{\eta}_j + B_{ij}\dot{\eta}_j + C_{ij}\eta_j \right] = F_i$$

gdje je $M_{ij}$ matrica mase broda, $\eta_j$ pomak (kretanje), $\dot{\eta}_j$ brzina, a $\ddot{\eta}_j$ ubrzanje. Ostali članovi jednadžbe predstavljaju specifične hidrodinamičke i hidrostatičke sile koje dijelimo u dvije glavne skupine: **uzbudne sile** (desna strana jednadžbe) i **radijacijske/hidrostatičke sile** (lijeva strana jednadžbe).

### Uzbudne sile (e: Excitation forces)

Ovo su sile kojima nadolazeći valovi djeluju na brod, nastojeći ga pomaknuti iz stanja ravnoteže. Oznaka u jednadžbi je $F_i$, a računaju se uz pretpostavku da je brod *nepomičan* na valovima. Sastoje se od dvije komponente:

- **Froude-Krylovljeva sila (e: *Froude-Krylov force*):** Sila koja nastaje uslijed neometanog tlaka samog vala. Računa se integracijom dinamičkog tlaka vala (iz Airyjeve teorije) po uronjenoj površini trupa, uz pretpostavku da prisutnost broda uopće ne ometa i ne mijenja oblik vala. Ovisi isključivo o geometriji vala i geometriji uronjenog dijela trupa.
- **Difrakcijska sila (e: *Diffraction force*):** U stvarnosti, brod je čvrsto tijelo koje predstavlja prepreku. Kada val udari u nepomični trup, on se odbija i deformira (raspršuje). Difrakcijska sila je korekcija koja uzima u obzir tu promjenu polja tlaka zbog prisutnosti broda. Za brodove čije su dimenzije velike u odnosu na duljinu vala, ova komponenta postaje izuzetno značajna.

### Hidrodinamičke sile radijacije

Ove sile reakcije (e: *radiation forces*) nastaju kao reakcija samog fluida na kretanje broda. Računaju se uz pretpostavku da je more *mirno*, a da brod prisilno oscilira. Dok brod oscilira, on "gura" vodu oko sebe, stvarajući vlastite valove i trošeći energiju. Radijacijska sila dijeli se na dvije komponente koje ulaze u matricu sustava:

- **Dodana masa (e: *Added mass*),** $A_{ij}$**:** Komponenta radijacijske sile koja je proporcionalna **ubrzanju** broda ($\ddot{\eta}_j$). Budući da brod pri kretanju mora ubrzavati i određenu masu vode koja ga okružuje, ta se masa vode fiktivno "dodaje" vlastitoj masi broda u jednadžbi. Ovisi o frekvenciji osciliranja i obliku trupa.
- **Prigušenje (e: *Radiation damping*),** $B_{ij}$**:** Komponenta radijacijske sile koja je proporcionalna **brzini** broda ($\dot{\eta}_j$). Kada brod oscilira, on generira površinske valove koji putuju od broda odnoseći (zračeći) mehaničku energiju. Ovaj gubitak energije djeluje kao prigušivač kretanja broda. Najveće prigušenje javlja se pri valjanju (ljuljanju), zbog čega se često ugrađuju i dodatna viskozna prigušenja (ljuljne kobilice / e: *bilge keels*).

### Povratne sile (e: restoring forces)

Ove sile teže vratiti brod u početni, uspravni položaj ravnoteže nakon što ga je val pomaknuo. Oznaka u jednadžbi je $C_{ij}$, a sila je proporcionalna samom **pomaku** ($\eta_j$). **Povratna sila (e: *Restoring force/moment*)** je isključivo **hidrostatička** komponenta. Nastaje zbog promjene volumena istisnine (uzgona) i položaja težišta uzgona kada brod zaroni, izroni, nagne se ili posrne. Matrica krutosti $C_{ij}$ je povezana sa hidrostatikom broda, odnosno površinom vodne linije i metacentarskom visinom (e: *metacentric height - GM*).

## Metode proračuna

Budući da stvarni brodovi imaju složenu, trodimenzionalnu geometriju trupa, prijenosne funkcije (RAO) nije moguće izračunati analitički (pomoću jednostavnih formula). U modernoj brodograđevnoj praksi, RAO se određuje na dva osnovna načina: eksperimentalno i numerički.

Ispitivanje fizičkih modela broda u specijaliziranim bazenima opremljenim generatorima valova (poput *Brodarskog instituta*). Iako su najpouzdanija metoda i služe za validaciju, izrazito su skupa i dugotrajna, pa se provode samo u završnim fazama projekta.

Za svakodnevni inženjerski proračun pomorstvenosti koriste se računalni programi temeljeni na hidrodinamičkim teorijama različite složenosti:

- **Teorija vrpci (e: *Strip theory*)** je tradicionalni industrijski standard za konvencionalne, vitke brodove s brzinom napredovanja ($V > 0$). Brod se reže na niz dvodimenzionalnih poprečnih presjeka (vrpci). Hidrodinamičke sile računaju se za svaku vrpcu zasebno i zatim integriraju po duljini broda. Metoda je iznimno brza i hardverski nezahtjevna. Poznati softveri: **Maxsurf Motions** (bivši Seakeeper), **Shipmo3D**, **PDSTRIP** (open-source), **Octopus** (ABB).
- **Panel metoda (e: *Panel method*)** dijeli trup broda ispod vodne linije na stotine ili tisuće malih ravnih površina (panela). Metoda promatra cijeli 3D oblik odjednom i rješava potencijal strujanja. Znatno je točnija od teorije vrpci za brodove punijih formi, katamarane te odobalne pomorske objekte (platforme) pri nultoj ili maloj brzini, no zahtijeva više računalne snage. Poznati softveri: **DNV Sesam (WADAM/HydroD)**, **WAMIT** (svjetski standard za odobalne objekte), **ANSYS AQWA**, **HydroSTAR** (Bureau Veritas), **Nemoh** (open-source).
- **Računalna dinamika fluida (e: *Computational Fluid Dynamics - CFD*)** je najnaprednija, ali i najsloženija metoda koja rješava Navier-Stokesove jednadžbe. Za razliku od prethodnih metoda koje pretpostavljaju idealan fluid, CFD najčešće uzima u obzir viskoznost vode, turbulentno strujanje, lomljenje valova na pramcu te snažne nelinearne efekte velikih amplituda. Zbog ogromnih zahtjeva za procesorskom snagom koristi se uglavnom za znanstvena istraživanja i specifične probleme. Poznati softveri: **Siemens STAR-CCM+**, **OpenFOAM**, **ANSYS Fluent**, **NUMECA Fine/Marine**.

## Kratkoročna statistika odziva broda

Nakon što smo, pomoću prijenosnih funkcija (RAO) i valnog spektra, izračunali **spektar odziva (e: *response spectrum*)**, površina ispod te krivulje daje nam varijancu odziva, odnosno **nulti spektralni moment odziva (**$m_{0R}$**)**.

Budući da smo ranije utvrdili da se amplitude valova pokoravaju Rayleighovoj razdiobi, uz pretpostavku linearnosti, **amplitude odziva (e: *response amplitudes*)** također slijede Rayleighovu razdiobu. To nam omogućava izračun ključnih statističkih pokazatelja za bilo koje kretanje ili opterećenje.

Primjerice, **značajna amplituda odziva (e: *significant response amplitude*)** je prosjek jedne trećine najvećih amplituda u zadanom stanju mora, a računa se jednako kao i za valove:

$$R_s = 2 \sqrt{m_{0R}}$$

Općenito, vjerojatnost da će (bilo koja!) amplituda odziva ($r$) premašiti neku zadanu, kritičnu vrijednost ($R_c$) računa se integracijom Rayleighove razdiobe:

$$P(r > R_c) = \exp\left(-\frac{R_c^2}{2m_{0R}}\right)$$

Dva najvažnija i najopasnija nelinearna fenomena koja se analiziraju ovom metodom su **naplavljivanje palube** i **udaranje pramca o valove**. Za oba fenomena ključno je izračunati **relativno gibanje (e: *relative motion*)** tj. vertikalnu udaljenost između pomične površine vala i pomičnog trupa broda u određenoj točki (najčešće na pramčanoj okomici).

### Naplavljivanje palube (e: *Deck wetness / Green water*)

Naplavljivanje palube događa se kada relativno gibanje mora premaši visinu pramčanog **nadvođa (e: *freeboard*)**, $F$. U tom trenutku goleme mase krute vode prelijevaju se preko palube, ugrožavajući opremu, teret i posadu, te uzrokujući snažna udarna opterećenja na valobran (e: *breakwater*) i nadgrađe.

Pretpostavimo li da je varijanca relativnog vertikalnog gibanja na pramcu $m_{0s}$, vjerojatnost da će pojedinačni val uzrokovati naplavljivanje palube iznosi:

$$P(wet) = \exp\left(-\frac{F^2}{2m_{0s}}\right)$$

Ovaj se izraz u projektiranju koristi za optimizaciju visine pramca, gaza broda te odabir adekvatnog nadvođa prema pravilima o teretnoj vodenoj liniji (e: *Load Line Convention*).

### Udaranje pramca o valove (e: *Bow slamming*)

Udaranje pramca (*slamming*) znatno je složeniji i opasniji fenomen od naplavljivanja. Da bi došlo do *slamminga*, prema poznatoj Ochi-Motterovoj teoriji, moraju se istovremeno ispuniti **dva stroga kinematička uvjeta**:

1. **Uvjet izranjanja:** Relativno gibanje mora biti veće od lokalnog gaza broda na pramcu ($d$). Drugim riječima, dno pramca mora potpuno izaći iz vode.
2. **Uvjet brzine udarca:** Pri ponovnom uranjanju u more, relativna vertikalna brzina udara mora biti veća od određene **kritične brzine (e: *critical threshold velocity*)**, $v_{cr}$. Ako brod uroni polako, to nije *slam*, već obično poniranje. Kritična brzina ovisi o duljini i formi broda.

Kako su relativno gibanje i relativna brzina statistički nezavisne varijable, ukupna vjerojatnost *slamminga* ($P(slam)$) umnožak je vjerojatnosti ispunjavanja prvog i drugog uvjeta:

$$P(slam) = \exp\left(-\frac{d^2}{2m_{0s}}\right) \cdot \exp\left(-\frac{v_{cr}^2}{2m_{0v}}\right) = \exp\left(-\left(\frac{d^2}{2m_{0s}} + \frac{v_{cr}^2}{2m_{0v}}\right)\right)$$

gdje je:

- $m_{0s}$ -- nulti spektralni moment (varijanca) relativnog vertikalnog gibanja na pramcu.
- $m_{0v}$ -- nulti spektralni moment (varijanca) relativne vertikalne brzine na pramcu.

U praksi, broj udara pramca u vremenskom periodu $T$ računa se množenjem ove vjerojatnosti s ukupnim brojem ciklusa (susreta s valovima) u tom periodu. Ako je vjerojatnost prevelika, kapetan je prisiljen poduzeti **voljni gubitak brzine (e: *voluntary speed loss*)** ili promijeniti kurs kako bi sačuvao strukturu broda od oštećenja.
