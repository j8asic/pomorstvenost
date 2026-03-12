---
title: Pad brzine broda na valovitom moru
---

## Uvod

Pri plovidbi na uzburkanom moru brod doživljava znatno veći otpor nego na mirnoj vodi. Kao posljedica toga, uz istu snagu motora brod postiže manju brzinu -- taj se fenomen naziva **nevoljni gubitak (pad) brzine** (e: *involuntary speed loss*). Ova vježba prikazuje postupak izračuna pada brzine na temelju krivulja otpora i dodatnog otpora na valovima.

## Pojmovi

- $R_{CW}$ -- ukupni otpor broda na mirnoj vodi (e: *calm water resistance*), koji uključuje otpor trupa, privjesaka, otpor zraka i sl.
- $R_{Wind}$ -- dodatni otpor vjetra (e: *wind resistance*)
- $\overline{R_W}$ -- osrednjeni dodatni otpor uslijed valova (e: *mean added resistance in waves*)
- $R_T$ -- ukupni otpor na valovitom moru
- $P_B$ -- snaga motora na kočnici (e: *brake power*)
- $P_E$ -- efektivna (vučna) snaga (e: *effective power*), $P_E = R \cdot V$
- $\eta_D$ -- stupanj djelovanja propulzije (e: *propulsive efficiency*), $P_E = \eta_D \cdot P_B$
- $V$ -- brzina broda na mirnom moru (e: *calm water speed*)
- $V_W$ -- brzina broda na valovitom moru (e: *speed in waves*)
- $\Delta V$ -- pad brzine (e: *speed loss*), $\Delta V = V - V_W$

## Metodologija

Za brod u plovidbi na određenom stanju mora, ukupni otpor je zbroj svih komponenti otpora:

$$R_T = R_{CW} + R_{Wind} + \overline{R_W}$$

Pad brzine može se izračunati uz pretpostavku da motor daje **jednaku snagu** na mirnoj vodi kao i pri plovidbi na valovitom moru:

$$P_B(V) = P_{B,W}(V_W)$$

jer je poznata snaga $P_B$ za mirno more i projektnu brzinu $V$.

Pad brzine je definiran kao:

$$\Delta V = V - V_W$$

Najjednostavnija aproksimacija dobiva se uz pretpostavku da je **stupanj djelovanja propulzije jednak** na mirnoj vodi i valovitom moru ($\eta_D \approx \text{const.}$). Tada možemo izjednačiti ne samo snage motora, već i efektivne snage $P_E$, što je umnožak otpora i brzine:

$$R_{CW}(V) \cdot V = R_T(V_W) \cdot V_W$$

Problem je što je brzina $V_W$ nepoznata i pojavljuje se i u argumentu funkcije otpora $R_T$ i kao množitelj, pa se jednadžba ne može riješiti analitički. Stoga se primjenjuje iterativni postupak opisan u nastavku.

::: {.callout-note}
U stvarnosti, propulzijski stupanj djelovanja $\eta_D$ nije konstantan jer se mijenja s brzinom i opterećenjem vijka. Za precizniji proračun potrebno je koristiti karakteristike vijka (e: *propeller open water diagram*) i krivulju snage motora. No, gornja aproksimacija daje dovoljno dobre rezultate za inženjersku procjenu.
:::

## Procedura

1. **Izračunati krivulju otpora na mirnoj vodi** $R_{CW}(V)$, npr. pomoću Maxsurf Resistance ili nekom drugom metodom (Holtrop-Mennen, ispitivanja u bazenu). Uključiti otpor privjesaka, korelacijski dodatak i sl.

2. **Izračunati krivulju dodatnog otpora na valovima** $\overline{R_W}(V)$ za zadano stanje mora, npr. prema Maxsurf Motions (koji koristi Gerritsma-Beukelman metodu temeljenu na teoriji vrpci) ili nekom drugom metodom.

3. **Izračunati otpor vjetra** $R_{Wind}$ prema brzini vjetra za zadano stanje mora, projiciranoj površini broda izloženoj vjetru (e: *transverse windage area*) i koeficijentu otpora zraka:
$$R_{Wind} = \frac{1}{2} \rho_{air} \cdot C_D \cdot A_T \cdot V_{wind}^2$$

4. **Zbrojiti krivulje** u krivulju ukupnog otpora na valovitom moru:
$$R_T(V) = R_{CW}(V) + \overline{R_W}(V) + R_{Wind}$$

5. **Nulta iteracija** -- izračunati prvu aproksimaciju brzine uvođenjem grube pretpostavke $V_W \approx V$ (tj. $\Delta V \rightarrow 0$), očitavanjem $R_{CW}$ i $R_T$ na projektnoj brzini $V$:
$$V_{W,0} = V \cdot \frac{R_{CW}(V)}{R_T(V)}$$

6. **Prva iteracija** -- za dobivenu brzinu $V_{W,0}$ ponoviti proračun, očitavanjem otpora $R_T$ na upravo izračunatoj brzini:
$$V_{W,1} = V \cdot \frac{R_{CW}(V)}{R_T(V_{W,0})}$$

7. **Ponavljati** korak 6 dok se rezultat ne ustali (konvergira). Obično su dovoljne 2--3 iteracije.

8. **Izračunati pad brzine:**
$$\Delta V = V - V_W$$

## Zadatak

Prema opisanoj proceduri i zadanom brodu potrebno je izračunati pad brzine broda uslijed valova, ukoliko brod inače plovi brzinom od **17 čvorova** na mirnom moru. Razmatrati:

- **Smjer valova:** pramčani valovi (e: *head seas*, $\mu = 180°$)
- **Spektar valova:** jednoparametarski Pierson-Moskowitz spektar (potpuno razvijeno more)
- **Značajna valna visina:** $H_S = 3$ m

Koraci:

1. U Maxsurf Resistance izračunati krivulju otpora na mirnoj vodi $R_{CW}(V)$ za raspon brzina od 0 do 20 čvorova.
2. U Maxsurf Motions izračunati krivulju dodatnog otpora na valovima $\overline{R_W}(V)$ za zadano stanje mora i pramčane valove.
3. Zanemariti otpor vjetra ($R_{Wind} = 0$) ili ga procijeniti prema Beaufortovoj ljestvici za $H_S = 3$ m (Bf 5, $V_{wind} \approx 10$ m/s).
4. U MS Excelu tablično zbrojiti $R_{CW}$ i $\overline{R_W}$ te nacrtati graf obje krivulje i njihov zbroj $R_T$.
5. Primijeniti iterativni postupak za izračun $V_W$ i $\Delta V$.
6. Rezultat izraziti u čvorovima i kao postotak projektne brzine.
