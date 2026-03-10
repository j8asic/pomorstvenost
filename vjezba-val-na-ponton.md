---
title: 'Vježba: Val na ponton'
description: ''
tags: []
date: '2026-03-06'
keywords: []
---


# **Uvod**

Ova vježba razmatra hidrodinamičko opterećenje usidrenog pontona na pravilnim valovima. Proračun se temelji na **Froude-Krylovljevoj aproksimaciji**, koja pretpostavlja da prisutnost broda ne ometa i ne mijenja polje tlakova nailaznog vala. Drugim riječima, u potpunosti se zanemaruje pojava difrakcije (ogibanja valova oko objekta). Ova je pretpostavka inženjerski opravdana samo u slučajevima kada su dimenzije plovnog objekta znatno manje od duljine morskog vala ($\lambda \gg L$).

# **Zadatak**

Izraditi numerički model (MS Excel) za izračun profila vala i pripadajućeg hidrodinamičkog tlaka na dno pontona. Numeričkom integracijom potrebno je odrediti ukupnu vertikalnu Froude-Krylovljevu silu poniranja ($F_{FK,3}$) te pronaći u kojem vremenskom trenutku ona dosiže svoj maksimum.

**1. Definiranje ulaznih parametara pontona i okoliša:**

- **Ponton:** Duljina pontona $L$ (m), širina pontona $B$ (m), gaz pontona $d$ (m). *(Napomena: dno pontona nalazi se na vertikalnoj koordinati* $z = -d$*)*.
- **More i val:** Gustoća mora $\rho$ (npr. 1025 kg/m³), dubina mora do dna $h$ (m), visina pravilnog vala $H$ (m), period vala $T$ (s).

**2. Proračun kinematike vala (Airyjeva teorija):**

- Kružna frekvencija vala: $\omega = \frac{2\pi}{T}$
- Valna duljina ($\lambda$) za duboku vodu služi kao početna vrijednost iteracije: \
  $\lambda_0 = \frac{g T^2}{2\pi}$
- Točna valna duljina za zadanu dubinu određuje se rekurzivnom (iterativnom) jednadžbom:\
  $\lambda_i = \lambda_0 \tanh\left(\frac{2\pi h}{\lambda_{i-1}}\right)$. \
  U Excelu napravite otprilike 20 iteracija kako bi vrijednost konvergirala, te za konačnu valnu duljinu uzmite zadnju vrijednost $\lambda = \lambda_{20}$.
- Valni broj: $k = \frac{2\pi}{\lambda}$

**3. Numerička integracija tlaka po duljini pontona:**

- Odaberite proizvoljni vremenski trenutak $t$ (s) u rasponu od 0 do $T$.
- Podijelite duljinu pontona na $M$ segmenata (npr. $M = 50$) za numeričku integraciju (slično kao u prethodnoj vježbi). Korak integracije iznosi $dX = L / M$.
- Napravite integracijsku tablicu s $M$ redova. Za svaki segment $i$ na uzdužnoj poziciji $x_i$ izračunajte:
  - **Profil vala (elevacija površine): **\
    $\zeta(x_i,t) = \frac{H}{2} \cos(k x_i - \omega t)$
  - **Ukupni tlak na dno pontona** $z = -d$**:**\
    $p(x_i, -d, t) = \rho g \zeta(x_i,t) \frac{\cosh(k(-d+h))}{\cosh(kh)} - \rho g (-d)$. \
    Napomena: Prvi član je dinamički tlak vala, a drugi član $\rho g d$ je konstantni hidrostatički tlak.

**4. Proračun sila i analiza rezultata:**

- Ukupna vertikalna uzbudna sila ($F_{FK,3}$) dobiva se množenjem tlaka s površinom segmenta ($B \cdot dX$) i zbrajanjem svih segmenata (integracija): $F_{FK,3} = \sum_{i=1}^{M} p(x_i, -d, t) \cdot (B \cdot dX)$
- Istisninska sila pontona (težina) iznosi $\Delta = L \cdot B \cdot d \cdot \rho \cdot g$.
- Izračunajte omjer uzbudne sile i istisninske sile pontona.
- **Analiza:** Promijenite vremenski trenutak $t$ u Excelu nekoliko puta (ili napravite graf ovisnosti sile o vremenu $t$) i zabilježite u kojem trenutku vala je vertikalna sila najveća. Nacrtajte graf profila vala po duljini pontona za taj kritični trenutak

