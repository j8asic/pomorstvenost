# Utjecaj pomorstvenosti na operativnost

## Kriteriji operativnosti broda

**Kriteriji operativnosti (e: *Operability criteria / Seakeeping criteria*)** definiraju granične vrijednosti odziva broda iznad kojih plovni objekt, posada ili oprema više ne mogu sigurno i učinkovito obavljati svoju zadaću.

Kada statistički proračun pomorstvenosti pokaže da će brod u zadanom stanju mora premašiti ove kriterije, smatra se da brod gubi radnu sposobnost. U stvarnosti, to je trenutak kada zapovjednik mora promijeniti kurs ili namjerno usporiti brod (tzv. voljni gubitak brzine / e: *voluntary speed loss*).

Standardni kriteriji operativnosti (prema preporukama klasifikacijskih društava i organizacija poput NATO-a i NORDFORSK-a) dijele se u tri glavne skupine:

**1. Strukturni kriteriji (e: *Structural safety criteria*)** Štite trup broda od lokalnih oštećenja i prevelikih opterećenja:

- **Vjerojatnost udaranja pramca (e: *Probability of slamming*):** Općenito se dopušta maksimalno 1% do 3% (odnosno 1 do 3 udara na 100 susreta s valovima) za trgovačke brodove.
- **Vjerojatnost naplavljivanja palube (e: *Probability of deck wetness / green water*):** Uobičajena granica tolerancije iznosi najviše 5%.

**2. Kriteriji radne sposobnosti posade (e: *Habitability and crew criteria*)** Osiguravaju da posada može sigurno hodati, obavljati radne zadatke i da nije onesposobljena umorom:

- **Vertikalna ubrzanja (e: *Vertical accelerations*):** Na zapovjedničkom mostu (gdje posada boravi) obično su ograničena na 0.15g do 0.2g (tzv. RMS vrijednost). Na samom pramcu dopuštaju se viša ubrzanja (do 0.4g) prije nego što postanu opasna za strukturu.
- **Indeks morske bolesti (e: *Motion Sickness Incidence - MSI*):** Statistički postotak osoba na brodu koje će povraćati unutar 2 sata izloženosti valovima. Za putničke brodove i trajekte ovaj je kriterij iznimno strog (često ograničen na ispod 10%).

**3. Kriteriji opreme i tereta (e: *Equipment and cargo criteria*)** Ograničavaju kretanja kako bi se spriječilo prevrtanje tereta ili omogućio rad specijalne opreme:

- **Amplituda ljuljanja (e: *Roll amplitude*):** Za opću plovidbu trgovačkih brodova ograničava se na značajnu amplitudu od 6° do 8°. Međutim, za specijalne operacije (npr. spuštanje helikoptera na vojni brod ili rad s teškim odobalnim dizalicama) granica može biti vrlo stroga, iznoseći samo 2° do 3°.

## Gubitak brzine zbog dodatnog otpora na valovima

Pri plovidbi na uzburkanom moru, brod doživljava znatno veći otpor nego na mirnoj vodi pri istoj brzini. Ta razlika naziva se **dodatni otpor na valovima (e: *added resistance in waves*)**, $R_{AW}$.

Za razliku od linearnih kretanja (poput poniranja i posrtanja) koja su proporcionalna amplitudi vala ($\zeta_a$), dodatni otpor je **nelinearna pojava drugog reda**. On je proporcionalan **kvadratu amplitude vala** ($\zeta_a^2$). To znači da ako se visina vala udvostruči, dodatni otpor se učetverostruči, što ima dramatičan utjecaj na potrošnju goriva.

Dodatni otpor na valovima sastoji se od dvije glavne fizikalne komponente, koje dominiraju u različitim uvjetima:

1. **Efekt refleksije i difrakcije (e: *Diffraction effect / Reflection limit*)** je mehanizam koji dominira pri plovidbi na **kratkim valovima** (kada je valna duljina znatno manja od duljine broda, $\lambda/L < 0.5$). Brod u ovim uvjetima ne doživljava značajna kretanja (poniranje i posrtanje su zanemarivi), ali kratki valovi udaraju u pramac i reflektiraju se od njega. Energija vala koja se razbije o pramac izravno se pretvara u dodatni otpor. Optimizacija forme pramca (npr. okomiti pramac, *X-bow*, *Leadge bow*) danas je ključna za smanjenje ove komponente.
2. **Efekt kretanja broda (e: *Motion-induced effect / Radiation effect*)** je mehanizam koji dominira na **dugim valovima**, a doseže svoj apsolutni maksimum u uvjetima rezonancije, odnosno kada je duljina vala približno jednaka duljini broda ($\lambda/L \approx 1.0$). U ovim uvjetima brod snažno posrće i ponira. Svojim kretanjem, masivni trup broda generira vlastite, radijacijske valove koje širi oko sebe. Energija potrebna za stvaranje tih valova nepovratno se gubi i manifestira se kao izuzetno velik dodatni otpor.

Kao izravna posljedica dodatnog otpora i pogoršanih radnih uvjeta, dolazi do smanjenja brzine broda. U inženjerskoj praksi strogo razlikujemo dva tipa gubitka brzine:

- **Nevoljni gubitak brzine (e: *Involuntary speed loss*):** Brod gubi na brzini unatoč tome što glavni brodski motor i dalje razvija istu, konstantnu snagu (postavke snage se ne mijenjaju). Do usporavanja dolazi isključivo zbog toga što se povećao ukupan otpor trupa ($R_{AW}$), ali i zbog pada **učinkovitosti brodskog vijka (e: *propeller efficiency drop*)**. Naime, zbog poniranja i posrtanja krme, vijak neravnomjerno zahvaća vodu (ili čak djelomično izranja), što drastično smanjuje njegov porivni stupanj djelovanja.
- **Voljni gubitak brzine (e: *Voluntary speed loss*):** Namjerno smanjenje snage motora koje zapovjednik naređuje kako bi zaštitio brod. Kada kretanja broda na uzburkanom moru premaše **kriterije operativnosti** (obrađene u prethodnom poglavlju) npr. kad udaranje pramca (*slamming*) ili ubrzanja postanu opasni za strukturu trupa ili teret, a jedini način da se amplituda odziva smanji je usporavanje broda ili promjena kursa.

U kontekstu modernih propisa Međunarodne pomorske organizacije (IMO), precizan izračun $R_{AW}$ postao je obvezan. Zbog strogih ekoloških normi poput **EEDI** (Indeks energetske učinkovitosti novogradnji / e: *Energy Efficiency Design Index*) i **CII** (Indeks ugljičnog intenziteta / e: *Carbon Intensity Indicator*), brodovi se više ne projektiraju samo za idealne uvjete na mirnoj vodi, već se njihova forma optimizira za stvarna stanja mora na njihovoj specifičnoj ruti, kako bi se minimizirala potrošnja goriva i emisija stakleničkih plinova uslijed valova.
