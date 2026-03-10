---
title: 'Vježba: Udaranje pramca i zalijevanje palube'
description: ''
tags: []
date: '2025-10-07'
keywords: []
---


## Cilj vježbe

Korištenjem rezultata iz prethodnog proračuna pomorstvenosti (MaxSurf Motions), studenti će u MS Excelu izraditi kalkulator kratkoročne statistike odziva. Cilj je odrediti vjerojatnost i učestalost pojave naplavljivanja palube i udaranja pramca o valove te ocijeniti operativnost broda.

## Probability of Exceeding a Certain Value

Ako je provedena analiza pomorstvenosti, možemo pretpostaviti da se funkcija gustoće vjerojatnosti gibanja broda može prikazati **Rayleighovom razdiobom**. Tada je moguće izračunati vjerojatnost premašivanja određene (kritične) amplitude gibanja pomoću izraza:

$$P\left(z>z_{crit}\right)=\exp\left(-\frac{z_{crit}^{2}}{2m_{0z}}\right)$$

gdje je:

- $z$ amplituda promatranog odziva (gibanja),
- $z_{crit}$ kritična (granična) vrijednost promatranog odziva,
- $m_{0z}$ nulti spektralni moment (varijanca) promatranog odziva.

Ako razmatramo ukupnu vjerojatnost višestrukih uvjeta premašivanja koji međusobno nisu povezani (statistički su nezavisni), tada se njihove pojedinačne vjerojatnosti množe:

$$P\left(x>x_{crit},\,y>y_{crit}\right)=P\left(x>x_{crit}\right)\times P\left(y>y_{crit}\right)$$


## Učestalost premašivanja

Ako je potrebno znati koliko će se puta neka vrijednost premašiti u zadanom vremenu, to se može izračunati korištenjem prethodno dobivene vjerojatnosti $P$:

$$N=\frac{\tau}{T_{P}}\times P$$

gdje je:

- $\tau$ promatrano vrijeme u sekundama (npr. 3600 s za jedan sat),
- $T_P$ srednji period osciliranja (period između vrhunaca), izračunat kao, $T_{P}=2\pi\sqrt{m_{2}/m_{4}}$,
- $N$ očekivani broj premašivanja (događaja) u zadanom vremenu.

````{important}
Gornja jednadžba vrijedi za kratkoročnu prognozu, uz pretpostavku konstantnog stanja mora tijekom plovidbe.

````


## Voda na palubi

Pretpostavljamo da će doći do pojave naplavljivanja palube (e: *green water*) ako relativni vertikalni pomak pramca premaši visinu nadvođa ($FB$$). Dakle, uvjet je $z > FB$.

Postupak proračuna:

1. Tijekom proračuna pomorstvenosti (u MaxSurfu), postavite mjernu točku (*Remote location*) za relativno gibanje na udaljenosti od **0.05L do 0.1L** od pramčane okomice (FP) prema krmi.
2. Nakon izvođenja proračuna, očitajte dobivene vrijednosti varijance ($m_0$) i perioda ($T_P$) za **relativni vertikalni pomak** promatrane točke.
3. U Excelu izračunajte vjerojatnost premašivanja visine nadvođa: $P(z > FB)$.


## Udaranje pramca

Pretpostavljamo da će doći do razornog udaranja pramca o valove ako su istovremeno ispunjena **dva uvjeta**:

1. Relativni vertikalni pomak pramca premašuje gaz broda ($z > T$), tj. pramac izranja iz vode.
2. Relativna vertikalna brzina pri ponovnom uranjanju premašuje kritičnu brzinu udara ($u > u^*$).

Kritična brzina $u^*$ definirana je na temelju brojnih eksperimentalnih istraživanja (Ochi) sljedećom empirijskom jednadžbom:

$$u_{*}=0.0195\frac{B}{b_{25}}\sqrt{Lg}$$

gdje je:

- $B$ širina broda na glavnom rebru,
- $b_{25}$ poluširina rebra smještenog na 25% duljine broda od pramčane okomice (FP), mjereno na visini od **0.03B** iznad kobilice,
- $L$ projektna duljina broda,
- $g$ ubrzanje sile teže.

Postupak proračuna:

1. Koristite istu mjernu točku na pramcu (0.05L do 0.1L od FP).
2. Iz MaxSurfa očitajte varijancu ($m_0$) i period ($T_P$) za **relativni vertikalni pomak**, ali i za **relativnu brzinu**.
3. Na nacrtu brodskih linija (ili u MaxSurf Modeleru na *Body planu*) očitajte poluširinu $b_{25}$ za vaš specifični trup te izračunajte kritičnu brzinu $u^*$.
4. Izračunajte pojedinačne vjerojatnosti za izranjanje pramca $P(z > T)$ te za premašivanje kritične brzine $P(u > u^*)$.
5. Ukupnu vjerojatnost *slamminga* dobivate njihovim množenjem: $P_S = P(z > T) \cdot P(u > u^*)$
6. **Provjera kriterija:** Provjerite premašuje li dobivena vjerojatnost maksimalno dopuštenu granicu. U inženjerskoj se praksi najčešće uzima da vjerojatnost udaranja pramca ne bi smjela biti veća od **3%**. Izračunajte očekivani broj udara u jednom satu plovidbe ($N$).

