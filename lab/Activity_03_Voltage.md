---
title: Voltage Division
---

# Objective

The objective of this Lab activity is to verify the voltage division
properties of resistor networks.

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board hardware.
Extension connector pins used as 5V voltage source are show in the
documentation here.

# Background

Voltage division allow us to simplify the task of analyzing a circuit.
Voltage Division allows us to calculate what fraction of the total
voltage across a series string of resistors is dropped across any one
resistor. For the circuit of Figure 1, the Voltage Division formulas
are:

$$V_1 = V_S \frac{R_1}{R_1 + R_2}$$$$V_2 = V_S \frac{R_2}{R_1 + R_2}$$

![Figure 1: Voltage division.](img/Activity_03_Fig_01.png)

# Materials

-   Red Pitaya STEMlab 125-14 or STEMlab 125-10
-   Various Resistors:
    -   $470 \Omega$,
    -   $1 k\Omega$,
    -   $4.7 k\Omega$,
    -   $1.5 k\Omega$.

# Procedure

a)  Construct the circuit as shown in Fig. 1. Set $R_1 = 4.7
    k\Omega$, $R_2 = 1.5 k\Omega$ and use the fixed power supply 5 V pin
    from extension connector as voltage source V~s~. Use the
    Oscilloscope application to measure the voltages V~1~and V~2~Repeat
    this step for R~1~= R~2~= $4.7 k\Omega$ and write down the
    measurements.
b)  Calculate the voltages V~1~and V~2~by using Eqs. (1) and (2) in each
    case.
c)  Compare the results from steps a and 1.
