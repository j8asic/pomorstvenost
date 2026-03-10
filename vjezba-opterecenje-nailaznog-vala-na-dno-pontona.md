---
title: 'Exercise: Incident wave on the pontoon bottom'
description: ''
short_title: ''
tags: []
date: '2025-03-25'
keywords: []
---


## Introduction

The Froude-Krylov approximation *neglects diffraction of waves* around a ship or marine object, if it is (considerably) smaller than the wavelength. In other words, *the load of the wave on the ship is approximately equal to the load of the undisturbed incident wave.*

## Task

The task is to draw a side view of the pontoon, and the profile of the wave incident and pressure on the pontoon. Then the pontoon heaving force due to the incidence of a regular first-order bow wave should be determined.

## Procedure

1. The pontoon is defined by:
   1. length *L* \[m\],
   2. width *B* \[m\],
   3. draft *d* \[m\].
2. The regular wave is defined by:
   1. period *T* \[s\],
   2. height *H* \[m\],
   3. water depth *h* \[m\].
3. The wavelength is determined by the recursive equation $\lambda_i = \lambda_0 \tanh \left( \frac{2 \pi h}{\lambda_{i-1}} \right)$, where $\lambda_0 = \frac{gT^2}{2\pi}$. Perform *N* (e.g. 20) iterations for the wavelength to converge, and take the final value $\lambda = \lambda_N$.
4. The wave:
   1. circular frequency is $\omega = \frac{2\pi}{T}$, and
   2. wave number is $k = \frac{2\pi}{\lambda}$,
   3. choose an arbitrary observed time instant *t* \[s\] within the period *T (t < T)*.
5. The equation of the wave profile at position *x* and at time instant *t* is given by the equation $\zeta(x,t) = \frac{H}{2} \cos(kx - \omega t)$. Divide the pontoon in length into *M* (e.g., 50) segments and calculate the wave elevation at the locations.
6. The wave pressure at a certain position *x*, depth *z* (< 0), and time instant *t* is given by the equation $p(x, z, t) = \rho g \zeta(x, t) \frac{\cosh(k(z+h))}{\cosh(kh)} - \rho g z$. Calculate the pressure on each segment of the pontoon bottom.
7. Integrate the pressure over the segments to obtain the total force $F_{FK,3}$ (Froude-Krylov force in the vertical direction), i.e., the excitation force for the heaving pontoon.

## Results and analysis

- Draw a graph of the wave profile along the length of the pontoon, obtained in step 5.
- Draw a graph of the pressure on each segment of the pontoon bottom, obtained in step 6.
- Show what is the ratio of the excitation force and the buoyancy force of the pontoon. Change the time instant *t* from step 4, and discuss when this ratio is largest.

