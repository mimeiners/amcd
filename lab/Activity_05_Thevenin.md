---
title: Thévenin Equivalent Circuit and Maximum Power Transfer
---

# Objective

The objective of this Lab activity is to verify Thévenin\'s theorem by
obtaining the Thévenin equivalent voltage (V~TH~) and Thévenin
equivalent resistance (R~TH~) for the given circuit. Verify the Maximum
Power Transfer Theorem.

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board
[hardware](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html).
Extension connector pin used as 3.3 V voltage source are show in the
documentation
[here](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2).

# Background

Thévenin\'s Theorem is a process by which a complex circuit is reduced
to an equivalent circuit consisting of a single voltage source (V~TH~)
in series with a single resistance (R~TH~) and a load resistance (R~L~).
After creating the Thévenin Equivalent Circuit, the load voltage V~L~or
the load current Il may be easily determined.

One of the principal uses of Thévenin\'s theorem is to replace a large
portion of a circuit, often a more complicated and uninteresting part,
by a simple equivalent. The new simpler circuit enables rapid
calculations of the voltage, current, and power which the more
complicated original circuit is able to deliver to a load. It also helps
to choose the optimal value of the load (resistance) for maximum power
transfer.

![Figure 1.](img/Activity_05_Fig_01.png)

![Figure 2: Thévenin Equivalent Circuit of Figure
1](img/Activity_05_Fig_02.png)

2.  The Maximum Power Transfer Theorem states that an independent
    voltage source in series with a resistance R~s~or an independent
    current source in parallel with a resistance Rs, delivers a maximum
    power to the load resistance R~L~when R~L~= R~s~.

In terms of a Thévenin Equivalent Circuit, maximum power is delivered to
the load resistance R~L~when R~L~is equal to the Thévenin equivalent
resistance R~TH~of the circuit.

![Figure 3: Maximum Power Transfer](img/Activity_05_Fig_03.png)

# Materials

Red Pitaya STEMlab 125-14 or STEMlab 125-10

Various Resistors:

> 100 Ω,
>
> 330 Ω,
>
> 470 Ω,
>
> 1 KΩ,
>
> 1.5 KΩ

# Procedure

1.  Verifying the Thévenin\'s theorem:

```{=html}
<!-- -->
```
a)  Construct the circuit of figure 1 using the following component
    values:

R1 = 330 Ω

R2 = 100 Ω

R3 = 100 Ω

R4 = 330 Ω

R5 = 1 KΩ

Rl = 1.5 KΩ

Vs = +3.3V

::: note
::: title
Note
:::

Instead of voltage source "V~s~" shown on the Figure 1 use the STEMlab
voltage pin on extension connector
[E1](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e1).
:::

b\) Accurately measure the voltage V~L~across the load resistance using
Oscilloscope application. Set oscilloscope probe attenuation x10 Start
Oscilloscope application and in IN1 and IN2 settings menu select Probe
attenuation x10

> Use the Oscilloscope application by connecting channel IN1 to the +
> node of V~L~and connect channel IN2 to the - node. V~L~will be the
> difference between IN1 volts and IN2 volts. This value will later be
> compared to the one you will find using Thevenin Equivalent.

c)  Find V~TH~: Remove the load resistance R~L~and measure the open
    circuit voltage VOC across the terminals. Use the Oscilloscope
    application by connecting channel IN1 to the + node of V~OC~and
    connect channel IN2 to the - node. V~OC~will be the difference
    between IN1 volts and IN2 volts. This is equal to V~TH~. See figure
    4

::: note
::: title
Note
:::

To get voltage values of IN1 and IN2 select MEAS menu, select MEAN value
and select DONE.
:::

![Figure 4: Measuring the Thevenin Voltage](img/Activity_05_Fig_04.png)

d)  Find R~TH~: Remove the source voltage Vs and construct the circuit
    as shown in figure 5. Use the Multimeter to measure the resistance
    looking into the opening where R~L~was. This gives R~TH~. Make sure
    there is no power applied to the circuit before measuring with the
    Multimeter and the ground connection has been moved as shown.

![Figure 5: Measuring the Thevenin Resistance
R~TH~.](img/Activity_05_Fig_05.png)

e)  Obtaining V~TH~and R~TH~, construct the circuit of figure 2. Create
    the value of R~rh~using a series and or parallel combination of
    resistors from your parts kit.

Using the Oscilloscope & Signal generator application - connect channel
OUT1 for the V~TH~source. In the OUT1 settings menu select "DC" signal
waveform and in the Amplitude field set the value to what you measured
for V~TH~in step c). Select "enable" button.

![](img/Activity_05_Fig_06.png)

Figure 6: Thevenin Equivalent Construction

f)  With R~L~ set to the 1.5 KΩ used in step b) measure the V~L~ for the
    equivalent circuit and compare it to the V~L~ obtained in step b).
    This verifies the Thévenin theorem.
g)  Optional: Repeat steps 1 b) to 1 f) for R~L~ = 2.2 KΩ

```{=html}
<!-- -->
```
2.  Verifying the Maximum Power Transfer theorem:

```{=html}
<!-- -->
```
a)  Construct the circuit as in figure 7 using the following values:

Vs = +3.3 V

R~1~ = R~2~ = 100 Ω

R~3~ = 1 KΩ

R~L~= combinations of 1 KΩ and 100 Ω resistors ( figure 8 )

![](img/Activity_05_Fig_07.png)

Figure 8. Rl configurations

d)  Calculate the power for each load resistor value using;

$$P_L = \frac{V_L^{2}}{R_L}$$

Then, interpolate between your measurements to calculate the load
resistor value corresponding to the maximum power (P~l\ max~). This
value should be equal to R~TH~ of circuit in figure 7 with respect to
load terminals.

# Questions

1.  Calculate the percentage error difference between the load voltages
    obtained for circuits of figure 1 and figure 2.
2.  Using Voltage Division for circuit of figure 2, calculate V~L~.
    Compare it to the measured values. Explain any differences.
3.  Calculate the maximum power transmitted to the load Rl obtained for
    the circuit of figure 3.
