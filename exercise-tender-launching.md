---
title: 'Exercise: Tender launching'
description: ''
short_title: ''
tags: []
authors:
  - userId: 46Jk7LBQqAa7FdGvB6EBuEkcEFB3
    nameParsed:
      literal: Josip Bašić
      given: Josip
      family: Bašić
    name: Josip Bašić
    corresponding: false
    roles: []
    affiliations: []
    id: contributors-generated-uid-0
  - userId: 4V0UmE3GfNca8YToXvBsB0BdE5F3
    nameParsed:
      literal: Davor Mimica
      given: Davor
      family: Mimica
    name: Davor Mimica
    corresponding: false
    roles: []
    affiliations: []
    id: contributors-generated-uid-1
date: '2025-03-21'
keywords: []
---


## **Introduction**

Yacht Support Vessels (YS) are designed to carry and launch tenders and other equipment for luxury yachts. Launching a tender using an onboard crane introduces a heeling moment that can compromise the vessel's stability. It is crucial to ensure the vessel remains stable and within safe operational limits throughout the tender launching process. This exercise focuses on analysing the stability of a YS during a tender launching operation, considering a critical loading condition and the use of anti-heeling measures.

::: {#fig-NsII2uE3hJ}
![](images/RGqtVCD1TCdgRglDeB9Q-K5vegJjFm81nhuz5Canp-v1.png){width="70%"}

## **Scenario**

A tender is to be launched using the onboard crane located on the starboard side. The crane operating manual specifies a maximum allowable heel angle of **5°** during lifting operations to ensure safe crane operation. The vessel is equipped with fuel that can be used to counteract the heeling moment during tender launching by transferring fuel between port and starboard tanks.

## **Prerequisites**

- Maxsurf Model of YS including Hull shape and Tank Layout
- Lightship weight and CoG
- Three different Loading conditions:
  - Departure (100%),
  - Mid Voyage (50%)
  - Arrival (10%)
:::
`{danger}
Note: **Arrival** condition is often critical for stability as it represents the vessel with minimum consumables therefore the CoG is higher relative to the baseline. Refer to the "INTACT STABILITY INFORMATION BOOKLET" for details on this loading condition.

````

Constraints:

- *Maximum Heel Angle:* The heel angle during tender launching must not exceed **5°**.
- *Loading Condition:* Three loading conditions are to be examined for launching operation.
- *Anti-Heeling System:* Consider using fuel transfer between **FOB52 and FOB53** tanks.
- *Crane Location:* Crane is located on the **starboard side** of the vessel as shown on General Arrangement.
- *Crane Outreach:* Crane is capable of lunching the Tender on Starboard side

## **Tasks**

1. **Specify Tender in stored position on Upper deck**
   - Tender weight is 10 tonnes
   - Specify Longitudinal Center of Gravity (LCG), Transverse Center of Gravity (TCG), and Vertical Center of Gravity (VCG) of the Tender
2. **Specify Crane arm Location in stored position:**
   - Crane arm Weight is 1,5 tonnes
   - Specify LCG, TCG and VCG of Crane Arm in stored position from General Arrangement
3. **Calculate equilibrium with Tender and Crane stored for each Loading condition:**
   - Departure (100%),
   - Mid Voyage (50%)
   - Arrival (10%)
4. **Prepare Tender Launching steps.**
   - Crane arm is extended to Tenders CoG
   - Tender is strapped to Crane hook and lifted above Upper deck
   - Crane arm is rotated to ship side with Tender strapped
   - Tender is lowered to Waterline
5. **Calculate Heel for each Launching step in every Loading condition**
6. **Determine critical steps where heel of 5° is exceeded in each Loading condition**
7. **Make adjustments in FOB52 and FOB53 fuel tanks to correct the heel for critical steps**

## **Deliverables**

Prepare a report that includes:

- **Calculations:**
  - Weight and location of the tender.
  - Heeling moment calculation.
  - Heel angle without anti-heeling.
  - Estimated fuel transfer for anti-heeling.
  - Heel angle with anti-heeling.
- **Sketch of each step**
- **Conclusion:** Summarise your findings and provide a conclusion on the feasibility and safety of launching the tender.

