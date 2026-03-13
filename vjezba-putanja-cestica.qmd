---
title: Putanja valnih čestica
description: ""
tags: []
date: 2026-03-06
keywords: []
---


## Cilj vježbe

Programskim kodiranjem (Python) izraditi vlastitu vizualizaciju kinematike vodenih čestica prema Airyjevoj linearnoj teoriji. Vizualno dokazati kako se putanje čestica mijenjaju iz kružnih u eliptične ovisno o dubini mora te kako amplituda gibanja eksponencijalno opada s dubinom.

::: {.callout-important}
Koristiti AI Studio, Gemini, Claude ili neki drugi AI vibe-coding alat.
:::

## Teorijska podloga i matematički model

Prema Airyjevoj teoriji, svaka vodena čestica na nekoj prosječnoj dubini $z$ (gdje je površina $z=0$, a dno $z=-d$) i na horizontalnoj poziciji $x$, oscilira oko svog ravnotežnog položaja.

Njezin stvarni horizontalni pomak ($\xi$) i vertikalni pomak ($\zeta$) u vremenu $t$ zadani su jednadžbama:

**Horizontalni pomak:**

$$\xi(x,z,t) = - \frac{H}{2} \frac{\cosh[k(z+d)]}{\sinh(kd)} \sin(kx - \omega t)$$

**Vertikalni pomak:**

$$\zeta(x,z,t) = \frac{H}{2} \frac{\sinh[k(z+d)]}{\sinh(kd)} \cos(kx - \omega t)$$

gdje su:

- $H$ – visina vala
- $k = 2\pi/\lambda$ – valni broj
- $\omega = 2\pi/T$ – kružna frekvencija vala

## Radni zadatak ("Vibe coding" izazov)

Postavite u svom kodu sljedeće parametre:

- Visina vala, $H = 4 \text{ m}$
- Period vala, $T = 8 \text{ s}$
- Promatrana pozicija, $x = 0 \text{ m}$

Duboka voda (Kružne putanje):

- Postavite dubinu mora na $d = 100 \text{ m}$ (što je područje duboke vode jer je $d > \lambda/2$).
- Odaberite 4 čestice na dubinama: $z = 0 \text{ m}$ (površina), $z = -10 \text{ m}$, $z = -20 \text{ m}$ i $z = -50 \text{ m}$.
- Napišite *for petlju* koja prolazi kroz vrijeme $t$ (od $0$ do $T$) i izračunava $\xi$ i $\zeta$ za svaku česticu.
- Nacrtajte (plotajte) njihove putanje (X vs Z). 
- *Pitanje za analizu:* Što primjećujete s oblikom putanja? Koliki je promjer kružnice na površini, a koliki na dubini od 50 metara?

Plitka voda (Eliptične putanje):

- Sada promijenite dubinu mora na samo $d = 10 \text{ m}$ (plitka voda).
- Odaberite čestice na dubinama: $z = 0 \text{ m}$, $z = -5 \text{ m}$ i $z = -10 \text{ m}$ (samo dno).
- Ponovno nacrtajte putanje.
- *Pitanje za analizu:* Kako se oblik putanja promijenio? Što se događa s vertikalnim gibanjem čestice koja se nalazi na samom dnu ($z = -d$)?
