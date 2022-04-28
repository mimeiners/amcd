---
title: OPAMP Open Loop Gain
---

# Objective

The objective of this experiment is to measure the open‐loop gain
characteristics of a OP27 opamp.

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board
[hardware](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html).

[Oscilloscope](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
&
[Signal](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
[generator](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
application is used for generating and observing signals on the circuit.

Extension connector pins used for **-3.3V** and **+3.3V** voltage supply
are show in the documentation
[here](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2).

# Materials

-   **Red Pitaya STEMlab 125-14**. An Red Pitaya STEMlab 125-10 is not
    suitable for this measurement due to ADC resolution!
-   OPAMP: 1x OP27
-   OPAMP: 1x OP97
-   Resistor: 2x 100 $\Omega$
-   Resistor: 2x 200 $k \Omega$
-   Resistor: 1x 100 $k \Omega$
-   Capacitor: 2x 0.1 $\mu F$
-   Capacitor: 1x 10 $\mu F$

# Background

Unlike the ideal op amp, a practical op amp has a finite gain. The
open-loop DC gain (usually referred to as $A_{VOL}$ and sometimes as
**forward gain**) is the gain of the amplifier without the feedback loop
being closed, hence the name "open-loop." For a precision op amp this
gain can be very high, on the order of 160 dB (100 million) or more. The
open loop gain of the
[OP27](http://www.analog.com/media/en/technical-documentation/data-sheets/OP27.pdf)
amplifier is arround 1.8 million.

![Figure 1: OP27 datasheet and Open Loop Gain value
marked](img/Activity_14_Fig_01.png)

The definition of open-loop gain is

$$A_{OL} = \frac{V_{out}}{(V^{+} - V^{-})} \quad (1)$$

where $(V^{+} - V^{-})$ is the input voltage difference $V_d$ that is
being amplified, $V^{+}$ a voltage on non-inverting input and $V^{-}$
voltage on inverting input.

Voltage feedback op amps operate as a **voltage in / voltage out**
amplifier and the open-loop gain is a **dimensionless ratio**, so no
units are necessary. However, data sheets sometimes express gain in
$V/mV$ or $V/ \mu V$ instead of $V/V$, for the convenience of using
smaller numbers. Or, voltage gain can also be expressed in $dB$ terms,
as gain in

$$Gain \quad in \quad dB = 20log(A_{VOL})  \quad (2)$$

::: note
::: title
Note
:::

Thus an open-loop gain of

$$1V/ \mu V \quad = \quad   1  \quad million V/V  \quad = \quad 120 dB, \quad etc.$$

Be sure to read through the
[tutorial](http://www.analog.com/media/en/training-seminars/tutorials/MT-044.pdf)
on Open Loop Gain and Open Loop Gain Nonlinearity before doing these
experiments.
:::

# Procedure

The dc gain is measured by forcing the output of the DUT(OPAMP under
test a OP27 in our case) to move by a known amount (1V in our case, look
at Figure 2) by switching R5 between the DUT output (OP27 pin 6) and a
1V reference (STEMlab OUT1 output) with switch S. If R5 is at +1V
(Switch S position POS2), then the DUT output (OP27 pin6) must move to
--1V if the input of the auxiliary amplifier is to remain unchanged near
zero. The voltage change at auxiliary amplifier output $V_{out}$ (OP97
pin 6), attenuated by **R3/R1** factor, is the input to the DUT(OP27 pin
3), which causes a 1V change of output.It is simple to calculate the
gain from this:

$$A_{OL} = Gain_{OL} = \frac{R_3}{R_2}  \frac{1V}{V_{out}} \quad (2)$$

::: note
::: title
Note
:::

In other words, DUT input differential voltage $V_d=V^{+}+{V^-}$, (where
$V^-=0$ and $V_d =
V^+$), necessary to set DUT output to -1V is $\frac{V_{out}}{A_{OL}}$.

DUT output must go to -1V since our AUX opamp is in feedback loop trying
to push his $V_d$ to 0V.
:::

**Example:**

If we take $A_{OL} = 1.8E6$ then for 1V on DUT(OP27) output we need to
have input diferential voltage $V_d$ as folows:

$$V_d = \frac{1V}{1.8E6} \approx 0.555 \mu V$$

::: note
::: title
Note
:::

In theory, in order to measure $A_{OL}$ we could only use a signal
generator (for setting the $V_{d}$) and voltmeter for measurements of
DUT output. But in practice this is almost not duable dou to
imperfections, noise levels, offset levels and etc. Because of that we
are using method shown on figure 2 where we perform the measurements of
output signal $V_{out}$ which is, through voltage divider (R3/R2)
related to $V_{d}$ and a few order of magnitudes larger than $V_{d}$ and
thus measurable with our equipment.
:::

**Construct the circuit shown in figure 2.** Before inserting the R2 and
R3 resistors in the circuit, measure and record the values of the two
resistors using a DMM if available.

In our case R3 = 97.3k $\Omega$ and R2 = 99.7 $\Omega$

::: warning
::: title
Warning
:::

Before connecting the circuit to the STEMlab -3.3V and +3.3V pins double
check your circuit. The -3.3V and +3.3V voltage supply pins do not have
short circuit handling and they can be damaged in case of short circuit.
:::

![Figure 2: Voltage supply connections and test
circuit](img/Activity_14_Fig_02.png)

::: warning
::: title
Warning
:::

C1 capacitor is used as a feedback impedance on the inverting amplifier
configuration of the AUX opamp. This is done to attenuate all AC signals
in the circuit and AUX opamp output. For this reason it is good to have
large capacitance of C1 in order to eliminate any AC signals.

We chosed 10uF and used polarized(electrolytic) capacitor here. This is
not an "ok" solution since our capacitor can be subjected to reverse
polarisation. But for good measurements and short period of measurements
the electrolytic capacitor can be used.
:::

# Step 1: S is on POS1 (Figure 2)

Instead of using switch S, R5 can be manually set on pin6 of DUT on the
breadboard. Build circuit in the breadboard and set R5 to POS1.

**Connect OUT1 to IN1 and set probe attenuations to x1.**

![Figure 3: Test circuit. R5 on POS1 (look at Figure
2)](img/Activity_14_Fig_03.png)

1.  Start the Oscilloscope & Signal Generator application

2.  On the left bottom of the screen be sure that IN1 V/div is set to
    500mV/div and IN2 V/div to 10mV/div (You can set V/div by selecting
    the desired channel and using vertical +/- controls)

3.  Using horizontal +/- controls set t/div to 100ms/div

4.  In the measurement menu select "MEAN", select IN1 and press DONE,
    select IN2 and press DONE

5.  **Readout MEAN(IN2): In our case it is -34.2mV**

    ![](img/Activity_14_Fig_04.png)

    Figure 4: Measurements of $V_{out}$ when R5 is set to POS1 (look at
    Figure 2)

# Step 2: S is on POS2 (Figure 2)

Build circuit on the breadboard and set R5 to POS2.

![Figure 5: Test circuit. R5 on POS2 (look at Figure
2)](img/Activity_14_Fig_05.png)

1.  In the OUT1 settings menu from the waveform menu select DC. Set
    Amplitude value to 1V to apply a 1V DC voltage to the circuit (R5).

    Deselect SHOW button and select enable.

2.  Adjust OUT1 amplitude until MEAN(IN1) shows near 1V.

3.  **Readout MEAN(IN2): In our case it is -34.8mV**

    ![](img/Activity_14_Fig_06.png)

    Figure 6: Measurements of $V_{out}$ when R5 is set to POS2 (look at
    Figure 2)

    ::: note
    ::: title
    Note
    :::

    As you can see from the measurements there is certain offset on the
    AUX opamp output (pin 6). Ideally when R5 is set to POS1 (figure 2)
    $V_{out}$ should be 0.
    :::

    Nonetheless, during both (POS1 and POS2) measurements the DC offset
    is the same and it will cancel out when calculating open loop gain.

    For open loop gain folowing equation 2 we get:

    $$A_{OL} = \frac{R3}{R2} \frac{1V}{(V_{out_{POS1}}-V_{out_{POS2}})} =$$$$A_{OL} = \frac{93700.0}{99.7} \frac{1V}{(-34.2mV-(-34.8mV))} =$$$$A_{OL} \approx  1566365.764 \approx 1.566 milion$$

    Compare measurements with the datasheet value from Figure 2. Our
    measurements are very close to the specified value. For more
    accurate measurement a higher resolution equipment and less noisy
    environment is necessary.
