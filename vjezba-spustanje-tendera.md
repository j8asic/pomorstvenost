---
title: 'Vježba: Spuštanje tendera'
---


## Uvod

Brodovi za podršku jahtama (e: *Yacht Support Vessels - YS*) projektirani su za prijevoz i spuštanje tendera i ostale opreme za luksuzne jahte. Spuštanje tendera pomoću brodske dizalice unosi moment naginjanja (e: *heeling moment*) koji može ugroziti stabilitet plovila. Stoga je ključno osigurati da brod ostane stabilan i unutar sigurnih operativnih granica tijekom cijelog postupka spuštanja. Ova vježba bavi se analizom stabiliteta YS broda tijekom operacije spuštanja tendera, uzimajući u obzir kritično stanje krcanja i primjenu sustava za protuuteg nagiba.

![](images/tender-launching.png){#fig-tender-launching width="70%"}

## Scenarij

Tender se spušta pomoću brodske dizalice smještene na desnom boku (e: *starboard side*). Priručnik za rad dizalice propisuje najveći dopušteni kut nagiba od **5°** tijekom operacija dizanja kako bi se osigurao siguran rad dizalice. Brod je opremljen gorivom koje se može koristiti za protuuteg momentu naginjanja tijekom spuštanja tendera, prebacivanjem goriva između lijevog i desnog tanka.

## Preduvjeti

- Maxsurf model YS broda koji uključuje oblik trupa i raspored tankova
- Masa praznog broda (e: *lightship weight*) i položaj težišta
- Tri stanja krcanja:
  - Polazak (100% zaliha)
  - Sredina putovanja (50% zaliha)
  - Dolazak (10% zaliha)

::: {.callout-important}
Stanje **dolaska** često je kritično za stabilitet jer brod tada ima minimum potrošnih zaliha, pa je težište mase relativno više u odnosu na kobilicu. Za detalje o ovom stanju krcanja konzultirati dokument "INTACT STABILITY INFORMATION BOOKLET".
:::

Ograničenja:

- *Najveći kut nagiba:* Kut nagiba tijekom spuštanja tendera ne smije premašiti **5°**.
- *Stanje krcanja:* Operacija spuštanja mora se razmotriti za sva tri stanja krcanja.
- *Sustav za protuuteg nagiba:* Razmotriti prebacivanje goriva između tankova **FOB52 i FOB53**.
- *Položaj dizalice:* Dizalica se nalazi na **desnom boku** broda prema Općem planu (e: *General Arrangement*).
- *Doseg dizalice:* Dizalica je sposobna spustiti tender na desni bok.

## Zadaci

1. **Definirati tender u uskladištenom položaju na gornjoj palubi**
   - Masa tendera iznosi 10 tona
   - Odrediti uzdužni položaj težišta (LCG), poprečni položaj težišta (TCG) i vertikalni položaj težišta (VCG) tendera
2. **Definirati ruku dizalice u uskladištenom položaju:**
   - Masa ruke dizalice iznosi 1,5 tona
   - Odrediti LCG, TCG i VCG ruke dizalice u uskladištenom položaju prema Općem planu
3. **Izračunati ravnotežu s uskladištenim tenderom i dizalicom za svako stanje krcanja:**
   - Polazak (100%)
   - Sredina putovanja (50%)
   - Dolazak (10%)
4. **Pripremiti korake spuštanja tendera:**
   - Ruka dizalice se produžuje do težišta tendera
   - Tender se veže na kuku dizalice i podiže iznad gornje palube
   - Ruka dizalice se zakreće prema boku broda s vezanim tenderom
   - Tender se spušta do vodne linije
5. **Izračunati nagib za svaki korak spuštanja u svakom stanju krcanja**
6. **Odrediti kritične korake u kojima nagib prelazi 5° za svako stanje krcanja**
7. **Izvršiti korekcije u tankovima goriva FOB52 i FOB53 kako bi se ispravio nagib u kritičnim koracima**

## Izvještaj

Pripremiti izvještaj koji uključuje:

- **Proračuni:**
  - Masa i položaj tendera
  - Proračun momenta naginjanja
  - Kut nagiba bez protuutega
  - Procjena potrebnog prebacivanja goriva za protuuteg
  - Kut nagiba s protuutegom
- **Skica svakog koraka** spuštanja
- **Zaključak:** Sažeti rezultate i dati zaključak o izvedivosti i sigurnosti spuštanja tendera.
