---
title: Impedance Measurement - Frequency Effects
---

# Objective

The objective of this activity is to:

1.  Measure component impedance and circuit impedance using the
    Impedance Analyzer applcation.
2.  Study the magnitude and phase changes with change in frequency for
    an RLC circuit.

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board
[hardware](http://redpitaya.readthedocs.io/en/latest/index.html).
[Impedance](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/marketplace/marketplace.html#impedance-analyzer)
[analyzer](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/marketplace/marketplace.html#impedance-analyzer)
application is used to measure RLC circuit impedane $Z(f)$. Alongside
Impedance analyzer application for impedance measurement we have used an
[LCR](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/lcr_meter/lcr_meter.html)
[meter](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/lcr_meter/lcr_meter.html)
[frontend](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/lcr_meter/lcr_meter.html).
Although LCR meter frontend is intended when using LCR meter application
it can be also used for Impedance analyzer application. The Impedance
analyzer application enables measurements of Impedance, Phase and other
parameters of the selected DUT (Device Under Test). Measurements can be
performed in the Frequency sweep mode with 1Hz frequency resolution or
in the Measurements sweep mode with the desired number of measurements
at constant frequency. The selectable frequency range is from 1Hz to
60MHz, although the recommended frequency range is up to 1MHz. The
impedance range is from 0.1 Ohm to 10 Mohm. When using the Impedance
analyzer application with the LCR Extension module, insert 0 in the
shunt resistor field.

# Background

Impedance is the resistance to the flow of alternating current. It is
the total opposition that a circuit offers to the flow of current at a
particular frequency. Impedance $Z$ is expressed as a combination of
Resistance $R$ and Reactance $X$ and is measured in $\Omega$. It can be
expressed as a complex quantity as:

$$Z = R+jX \quad (1)$$

For a ideal resistor, the impedance is the same as the DC resistance
$Z=R_{DC}$. For a capacitor, the impedance (or more specifically, the
reactance) $X_C$ is imaginary and **negative** reactive part of the
impedance. The reactance of the capacitor depends upon the frequency and
is given as:

$$X_C = \frac{1}{j\omega C} \quad (2)$$

For an inductor, the impedance (or more specifically, the reactance)
$X_L$ is imaginary and **positive** reactive part of the impedance. The
reactance of the inductor also depends upon the frequency and is given
as:

$$X_L = j\omega L \quad (3)$$

The impedance of a series RLC circuit is the sum of the impedances of
respective components.

$$Z = R + Z_L + Z_C \quad (4)$$

or

$$Z = R + jX_L - jX_C \quad (5)$$

This can also be represented as a phasor with **magnitude** $|Z|$ and
**phase** $P$ where Z = $|Z|e^{jP}$

$$|Z| = \sqrt{R^2 + (X_L - X_C )^2} \quad (6)$$

$$P = arctan(\frac{(X_L - X_C )}{R}) \quad (7)$$

![](img/Activity_11_Fig_01.png)

Figure 1: Series RLC circuit.

# Materials

-   Red Pitaya STEMlab 125-14 or STEMlab 125-10
-   Resistor Rs: 1 kΩ
-   Capacitor Cs: 0.047 µF
-   Inductor Ls: 22 mH

# Procedure

## Measuring components

With LCR meter application we can measure inductance, resistance and
capacitance our elements in the circuit at selected frequency. LCR meter
can help you to measure each component separately in order to extract
its value if not visible/readable on the packaging:

1.  Start LCR meter
2.  Connect the measured component to the LCR meter probes
3.  On the LCR meter application select measurement mode/parameter
4.  Select measurement frequency to 1kHz
5.  Repeat steps above for Rs, Ls and Cs

![](img/Activity_11_Fig_02.png)

Figure 2: LCR meter application

::: note
::: title
Note
:::

Actual(measured) values of the components Rs, Cs, Ls are different than
marked (color code for resistor and printed values on inductor and
capacitor). The difference is due to components values tolerances
:::

## Measuring series RLC circuit Impedance

1.  Set up the circuit as shown in figure 1 and figure 2 on your
    solderless breadboard, with the component values Rs = 1 KΩ, Cs =
    0.047 µF, Ls = 22 mH.

![](img/Activity_11_Fig_03.png)

Figure 3: STEMlab with LCR meter frontend and series RLC circuit

2.  Start the Impedance analyzer application.

::: note
::: title
Note
:::

Impedance analyzer is community application and it needs to be
downloaded from Application marketplace (bazaar). Click on Application
marketplace icon and select Install for Impedance analyzer.
:::

3.  

    Start Impedance analyzer and:

    :   -   under **Measurement settings menu** set number of steps: 20
        -   under **Frequency sweep** set Start frequency to 1kHz and
            End frequency to 50kHz
        -   select **Start measurement**

![](img/Activity_11_Fig_04.png)

Figure 4: Graph of the RLC circuit impedance magnitude taken with
Impedance analyzer application

4.Plot mesured Phase

:   -   under **Plot settings menu** for **Y-axis** select **P\[deg\]**

![](img/Activity_11_Fig_05.png)

Figure 5: Graph of the RLC circuit impedance phase taken with Impedance
analyzer application

::: note
::: title
Note
:::

The frequency at which this occurs **(Phase = 0)** is called resonant
frequency. At resonant frequency the total reactance is zero and the
circuit is purely resistive.
:::

For

$$Z = R + j(X_L - X_C ) \quad (8)$$

If

$$X_L  - X_C  = 0 \quad (9)$$

then

$$Z = R \quad (10)$$

Resonant frequency can be mathematically derived using equation to be:

$$f_0 = \frac {1}{2 \pi \sqrt{LC}} \quad (11)$$

# Questions

1.  Compute the resonant frequency fo for the series RLC using
    equation (11) and compare it to the measured value. What is the
    percentage error between the two?
2.  Give your conclusions from the observations made in step 3 of the
    procedure.
3.  Compute the magnitude and phase for the series RLC circuit, when the
    reactive component equals the resistive component.
