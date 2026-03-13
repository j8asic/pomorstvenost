---
title: Kontejnerski brod u MaxSurf-u
description: ""
tags: []
date: 2026-03-06
keywords: []
---


## Uvod

Upoznavanje s alatima programa *MaxSurf Modeler* za globalnu i lokalnu modifikaciju brodske forme. Na postojećem modelu kontejnerskog broda potrebno je izvršiti parametarsku prilagodbu glavnih dimenzija i položaja težišta uzgona, kako bi pripremili jedinstven model za kasniji proračun pomorstvenosti i upravljivosti. Primjenom softverskog paketa *MaxSurf Motions* (bivši *Seakeeper*) izvršiti numerički proračun pomorstvenosti na formi.

## Početno stanje i učitavanje modela

Otvorite program *MaxSurf Modeler* i učitajte zadani predložak modela pod nazivom `ContainerShip_1Surface`. Ovaj predložak standardno se nalazi u instalacijskom direktoriju programa na putanji: `MaxSurf_Instalacija \ Sample Designs \ Ships`.

Učitani model predstavlja kontejnerski brod sa sljedećim početnim izmjerama:

- Duljina na vodnoj liniji, $L_{WL} = 100 \text{ m}$
- Širina, $B = 18 \text{ m}$
- Gaz, $T = 6.6 \text{ m}$
- Uzdužni položaj težišta uzgona, $L_{CB} = 49 \text{ m}$ (mjereno od krmene okomice)
- Masa istisnine, $\Delta = 8100 \text{ t}$

Prije početka rada, obratite pozornost na zadani koordinatni sustav broda, koji je postavljen na presjecište Krmene okomice (AP) i Osnovne ravnine (BL).

## Radni zadatak

Svaki student mora izvršiti izmjenu postojećeg modela prema individualnim parametrima iz tablice u nastavku. **Strogi uvjet vježbe je da masa istisnine mora ostati nepromijenjena** ($\Delta = 8100 \text{ t}$).

## Postupak modeliranja

1. **Otključavanje modela** Predlošci u MaxSurfu su zaštićeni od slučajnih promjena. Kako biste omogućili uređivanje, kliknite desnim tipkom miša bilo gdje na radni prozor i odaberite opciju **Unlock**.
2. **Globalna promjena dimenzija** Glavne izmjere modela najlakše je promijeniti globalnom transformacijom. U glavnom izborniku odaberite **Surfaces -> Size Surfaces**. Upišite nove vrijednosti za duljinu i širinu prema vašem zadatku. Nakon ove promjene, obavezno otvorite prozor *Data -> Calculate Hydrostatics* kako biste provjerili novu istisninu i gaz.
3. **Lokalna prilagodba (Namještanje** $L_{CB}$ **i istisnine)** Budući da se promjenom duljine i širine promijenila i istisnina, potrebno je lokalno prilagoditi formu kako biste zadovoljili uvjete zadatka.
4. **Uzdužna preraspodjela uzgona (**$L_{CB}$**):** Prebacite se u **Profile** pogled. Uključite prikaz mreže kontrolnih točaka (ikona *Net*). Sada možete odabrati cijele stupce kontrolnih točaka i uzdužno ih pomicati. Pomicanjem volumena trupa prema pramcu ili krmi direktno upravljate položajem $L_{CB}$.
5. **Podešavanje punoće (Istisnina):** Prebacite se u **Body Plan** (nacrt rebara). Namještajte lokalnu punoću forme pomicanjem kontrolnih točaka na aktivnom rebru. Aktivno rebro mijenjate klikom na plave trokute u alatnoj traci (Prethodno/Sljedeće). Širenjem rebara povećavate istisninu, dok je sužavanjem smanjujete, bez promjene glavnih dimenzija.

::: {.callout-important}
Prilagođavanje forme trupa je iterativan i inženjerski osjetljiv proces. Glatkoća linija (tzv. fairness) važnija je od pogađanja dimenzija u milimetar. Ako imate većih problema pri "lovljenju" točnih vrijednosti istisnine i $L_{CB}$ bez da pritom uništite formu broda, približite se traženim vrijednostima što je više moguće.
:::


## Inicijalizacija i postavke metode proračuna

1. Otvorite modul *MaxSurf Motions* i učitajte vaš prilagođeni model kontejnerskog broda (**File > Open > Open Design**).
2. Kao i u ostalim MaxSurf modulima, prvo je potrebno definirati fizikalne postavke pod izbornikom **Analysis**:
   - **Tip analize:** Odaberite vrpčastu metodu (**Analysis type > Strip method**).
   - **Stanje krcanja:** Postavite gaz do projektne vodne linije, bez uzdužnog nagiba (**Draft and Trim**).
   - **Proračunska mreža:** Odaberite **Measure Hull** kako biste brod uzdužno podijelili na vrpce (presjeke).
     - Upisati broj vrpci (preporuka: **minimalno 15 do 20**).
     - *Napomena:* Program će aproksimirati stvarne presjeke broda pomoću **Lewisovih formi (e: *Lewis forms*)** ili polinoma. Ako koristite polinome, postavite minimalno 5. stupanj. Ukoliko na modelu imate modeliran *skeg* (krmenu peraju) ili druge privjeske, obavezno ih isključite iz proračuna prije ovog koraka.
   - **Raspored masa (e: *Mass Distribution*):** Karakteristike tromosti tijela dobivaju se prema centraciji broda. Za ovu vježbu koristite sljedeće inženjerske procjene:
     - Vertikalno težište mase (VCG) mora biti iznad težišta uzgona (CB). Postavite **VCG = 1.3 \* T** (gaz).
     - Polumjer inercije mase za ljuljanje (e: *roll radius of gyration*): **0.35 \* B**
     - Polumjer inercije mase za poniranje/posrtanje (e: *pitch/yaw radius of gyration*): **0.25 \* L**
   - **Faktori prigušenja (e: *Damping factors*):** Budući da se teorija vrpci temelji na potencijalnom (neviskoznom) strujanju i da smo zanemarili privjeske, sustavu moramo ručno zadati viskozno prigušenje kako rezultati u rezonanciji ne bi otišli u beskonačnost.
     - Faktor prigušenja za ljuljanje (Roll) postavite na **7.5%**.
     - Faktor prigušenja za poniranje/posrtanje (Heave/Pitch) postavite na **1.0%**.
   - Pod opcijama *Strip Theory Method* omogućite izračun za sve smjerove valova.

## Definiranje uvjeta plovidbe i okoliša (Prozor *Inputs*)

Nakon definiranja broda, potrebno je zadati okolišne uvjete u prozoru **Inputs**:

1. **Brzina (tab *Speeds*):** Odaberite **Edit > Add Speed** i postavite brzinu napredovanja broda na **18 kts** (čvorova).
2. **Kutovi nailaska valova (tab *Headings*):** Odaberite **Edit > Add Heading**. Generirajte minimalno 5 smjerova valova u koracima od **45°**, počevši od krmenih valova (**0°**) do pramčanih valova (**180°**).
   - *Napomena:* Inženjerski standard je rad u radijanima. Ako niste sigurni u preračunavanje, naučite, ili promijenite postavke prikaza preko **Data > Units**.
3. **Stanje mora (tab *Spectra*):** Odaberite **Edit > Add Spectrum** i dodajte standardni jednoparametarski spektar valova (npr. ITTC ili Pierson-Moskowitz).
4. **Referentne točke (tab *Locations*):** Odaberite **Edit > Add Remote Location** kako bismo pratili odzive na specifičnim mjestima na brodu. Koordinatni ishod (ovisno o vašem modelu) najčešće je na krmenoj okomici (AP) i simetrali.
   - **Lokacija 1 (Kontejner na palubi):** Postavite na **X = 75 m**, **Y = 7 m**, **Z = VCG + 15 m**.
   - **Lokacija 2 (Zapovjednički most / Posada):** Postavite na **X = 20 m**, **Y = 0 m**, **Z = VCG + 15 m**.

## Proračun i zadaci za samostalni rad

Pokrenite izračun odabirom **Analysis > Solve Seakeeping Analysis**. Po završetku, rezultate možete analizirati kroz alatnu traku u nekoliko formata:

- Tekstualno izvješće (prozor *Results*).
- Polarni grafovi odziva u ovisnosti o kutu valova (prozor *Polar Graph*).
- Krivulje prijenosnih funkcija (RAO) i rezultantnog spektra (prozor *Graph*).

::: {.callout-important}
Proučite dobivene polarne grafove i prijenosne funkcije te ih pokušajte logički povezati s teoretskim nastavnim materijalima i User Manual-om.
:::

## Zadaci za predaju

Prema gore navedenoj proceduri i postavkama, iterativno izvršite sljedeće zadatke:

1. **Strukturni kriterij (Kontejner):** Povećavajte značajnu visinu vala ($H_S$) u postavkama spektra sve dok najveće apsolutno ubrzanje na **Lokaciji 1** ne dosegne kritičnu vrijednost od **0.5g** (odnosno **4.9 m/s²**). *Napomena: Maksimalno ubrzanje procijenite statističkom relacijom **a_max = 4 \* RMS**.* \* U izvješću navedite pri kojoj se visini vala to dogodilo te odgovorite **koji je stupanj slobode gibanja** (poniranje, posrtanje, ljuljanje...) i **za koji napadni kut valova** najnepovoljniji za ovaj kontejner.
2. **Kriterij radne sposobnosti posade (MSI):** Na sličan način, iterativno pronađite uvjete pri kojima će **Indeks morske bolesti (MSI - Motion Sickness Incidence)** na **Lokaciji 2** premašiti **50%** za vrijeme dvosatnog izlaganja ($t = 2$ sata) zadanom spektru valova. U izvješću odgovorite koji napadni kut valova i koje kretanje broda najviše pridonose visokom MSI indeksu na mostu.
