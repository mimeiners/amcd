---
title: Current Sensing using a Difference Amplifier
---

# Objective

The objective of this lab activity is to investigate current sensing
techniques that use an op-amp configured as a difference amplifier.

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board
[hardware](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html).
Extension connector pins used for **-3.3V** and **+3.3V** voltage supply
are show in the documentation
[here](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2).
[Oscilloscope](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
&
[Signal](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
[generator](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
application is used for generating and observing signals on the circuit.

# Background

We have investigated the
[difference](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity16_DifferenceAmplifier.html#difference-amplifier)
[amplifier](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity16_DifferenceAmplifier.html#difference-amplifier).
Now we will use it as a current sense amplifier. One of the major
applications of the op-amp difference amplifier is in measuring the
current at point in a circuit other than where it flows into or out of
ground or the common node. The current to be measured is converted into
a small voltage by breaking open the current path and inserting a low
value resistor in series. This resistor is called a current shunt
resistor or just shunt. The resistance is kept small and the voltage
drop across the shunt small to reduce any effect this change might have
on the operation of the circuit. Current going through shunt resistor
therefore path current is given as

$$I_{path} = I_{shunt} = \frac{\Delta V}{R_{shunt}} \quad (1)$$

Since differential voltage across resistor (given as
$\Delta V = V_{R_{shunt_{node_1}}}-V_{R_{shunt_{node_2}}})$ should be
measured we can see that a difference amplifier is an ideal circuit for
that task. The small differential voltage drop across the shunt is
amplified and converted to a single ended (common referenced) voltage by
an op-amp difference amplifier.

![](img/Activity_17_Fig_01.png)

Figure 1: Basic Difference Amplifier in current sensing configuration

From the figure 1 we know that differential voltage $\Delta V$ given as
$\Delta V = I_L R_s$ is carrying information about LOAD current. Also
from
[difference](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity16_DifferenceAmplifier.html#difference-amplifier)
[amplifier](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity16_DifferenceAmplifier.html#difference-amplifier)
theory we know that $\Delta V$ will be somehow related to the $V_{out}$.
First assumption is as following:

$$V_{out} \propto \Delta V = I_L R_s  \quad (1)$$

or,

$$I_L \propto \frac{V_{out}}{R_s}$$

In other words; simply by measuring and scaling $V_{out}$ we will
measure load current, where $R_{s}$ is shunnt resistor. Transfer
characteristic of
[difference](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity16_DifferenceAmplifier.html#difference-amplifier)
[amplifier](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity16_DifferenceAmplifier.html#difference-amplifier)
for circuit shown on figure 1 is:

$$V_{out} = V_+ \bigg( 1 + \frac{R_2}{R_1} \bigg) - V_- \bigg(\frac{R_2}{R_1} \bigg) \quad (2)$$

Where $V_{+}$ and $V_{-}$ are voltages on noninverting(pin 3) and
inverting(pin 2) opamp inputs respectively. Substituting $V_{+}$ and
$V_{-}$ for voltages on shunt resistor nodes we get

$$V_{out} = V_S \bigg( \frac{R_4}{R_3+R_4}\bigg) \bigg( 1 + \frac{R_2}{R_1} \bigg) - V_L \bigg(\frac{R_2}{R_1} \bigg) \quad (3)$$

where $V_S$ is source voltage and $V_L$ load voltage. We can also write

$$V_S = V_{R_{shunt_{node_1}}} \quad V_L = V_{R_{shunt_{node_2}}}$$

and

$$V_S = V_L + \Delta V  \quad   \Delta V= V_S - V_L$$

On the first look, by adding resistor $R_4$ to the circuit, shown on
figure 1, somehow we have complicated transfer function; from equation
(2) to equation (3). But adding $R_4$ is necessary in order to equalize
factor $1+R_2/R_1$ to the factor $R_2/R_1$ from the equation (2) in
order to get opamp input voltages equally amplified and therefore
enabling simple $\Delta V$ to $V_{out}$ correlation. The important step
is to select values of $R_3$ and $R_4$ as

$$R_4=R_2  \quad   R_3=R_1$$

Using identities above we can write equation (3) as

$$V_{out} = V_S \bigg( \frac{R_2}{R_1+R_2}\bigg) \bigg( 1 + \frac{R_2}{R_1} \bigg) - V_L \bigg(\frac{R_2}{R_1} \bigg) \quad (4)$$$$.$$$$V_{out} = V_S \bigg( \frac{R_2}{R_1+R_2} + \frac{R_2R_2}{R_1(R_1+R_2)} \bigg) - V_L \bigg(\frac{R_2}{R_1} \bigg)$$

It holds that

$$\bigg( \frac{R_2}{R_1+R_2} + \frac{R_2R_2}{R_1(R_1+R_2)} \bigg) = \frac{R_2}{R_1}$$

So we can write equation (4) simple as:

$$V_{out} = V_S \bigg(\frac{R_2}{R_1} \bigg) - V_L \bigg(\frac{R_2}{R_1} \bigg) \quad (5)$$

Now we have simple equation (5) for our difference amplifier form figure
1 and the last step is to rewrite it in terms of $\Delta V$ i.e in terms
of $I_L$

$$V_{out} = \bigg(\frac{R_2}{R_1} \bigg) (V_S- V_L)$$$$.$$$$V_{out} = \frac{R_2}{R_1} \Delta V$$$$.$$$$V_{out} =  \frac{R_2}{R_1}  I_L R_S \quad (6)$$

::: note
::: title
Note
:::

And for $I_L$ we get:

$$I_L = V_{out} \frac{R_1}{R_2 R_S}  \quad (7)$$
:::

## **In our example we have**

$$R_4=R_2 = 100k \Omega , \quad  R_3=R_1 10k \Omega , \quad R_2/R_1=10 , \quad R_S = R_5 = 10 \Omega , \quad I_L = \frac{V_{out}}{10 R_S}$$

::: note
::: title
Note
:::

**In our example load current is given as**

$$I_L = \frac{V_{out}}{100}  \quad (8)$$
:::

# Materials

-   Red Pitaya STEMlab
-   OPAMP: 1x
    [OP484](http://www.analog.com/media/en/technical-documentation/data-sheets/OP184_284_484.pdf)
    quad rail to rail amplifier
-   Resistor: 3x 10 $k \Omega$
-   Resistor: 1x 100 $k \Omega$
-   Resistor: 1x 10 $\Omega$
-   Resistor: 1x 220 $\Omega$
-   Capacitor: 1x 0.1 $\mu F$
-   Inductor: 1x 4.7 $mH$

# Directions

Build the current sense amplifier shown in figure 2. R6 is added to
stabilize the output of the OP484. When using large feedback resistances
the OP484 can be unstable due to the large input capacitance of the IN2
input. $V_{S}$ is provided directly from the OUT1 STEMlab output as
\"power supply\" for the LOAD. The load will consist of different
impedances such as a resistor, capacitor or inductor. IN2 input voltage
signal will directly show load current as is shown in the equation 8.

![](img/Activity_17_Fig_02.png)

Figure 2: Difference Amplifier circuit for current sensing

Components values are next:

$$R_4=R_2 = 100k \Omega , \quad  R_3=R_1 = 10k \Omega ,  \quad R_S = R_5 = 10 \Omega , \quad R_6 = 220 \Omega ,$$$$\quad C_1 = 0.1 \mu F , \quad \quad L_1 = 4.7 mH$$

# Procedure

## Resistor LOAD

For LOAD take $470 \Omega$ resistor and build circuit shown on figure 2.

![](img/Activity_17_Fig_03.png)

Figure 3: Difference Amplifier circuit for current sensing - Resistive
LOAD

1.  Start the Oscilloscope & Signal Generator application.
2.  In the OUT1 settings menu set Amplitude value to 0.5V to apply a
    sine wave as the input voltage $V_{source}$. From the waveform menu
    select SINE, deselect SHOW button and select enable.
3.  For the stable acquisition set the trigger source to IN1
4.  On the left bottom of the screen be sure that IN1 V/div is set to
    200mV/div (You can set V/div by selecting the desired channel and
    using vertical +/- controls)
5.  On the left bottom of the screen be sure that IN2 V/div is set to
    50mV/div (You can set V/div by selecting the desired channel and
    using vertical +/- controls)
6.  In the measurement menu select "MAX" , select IN1 and press DONE
7.  In the measurement menu select "MAX" , select IN2 and press DONE
8.  Set t/div value to 200us/div (You can set t/div using horizontal +/-
    controls)
9.  Readout measurements of IN2 and calculate load current using
    equation (8)

![](img/Activity_17_Fig_04.png)

Figure 4: Resistive LOAD current measurements

From the measurements from figure 4 we can calculate max load current
as:

$$I_L = \frac{IN2_{max}}{100} = \frac{108.0mV}{100} = 1.08mA$$

We can check our measurements by calculating load current as

$$I_L = \frac{OUT1_{max}}{R_{load} + R_s } = \frac{0.5V}{470 \Omega+10 \Omega} = 1.04mA$$

We can see that measured current is as what we expected confirming
correct behaviour of our difference amplifier. The difference of 0.04mA
between exact and measured value of load current comes from nominal
tolerances values of load and shunt resistors.

## Capacitance LOAD

For LOAD take $0.1 \mu F$ capacitor and build circuit shown on figure 2.

![](img/Activity_17_Fig_05.png)

Figure 5: Capacitance LOAD

![](img/Activity_17_Fig_06.png)

Figure 6: Capacitance LOAD current measurements

From the measurements from figure 6 we can calculate max load current
as:

$$I_L = \frac{IN2_{max}}{100} = \frac{36.5mV}{100} = 0.36mA$$

We can check our measurements by calculating load current as

$$I_L = \frac{OUT1_{max}}{Z_{load} + R_s } = \frac{OUT1_{max}}{\frac{1}{2 \pi f_{OUT_1} C_1}  + R_s } = \frac{0.5V}{1592 \Omega+10 \Omega} = 0.31mA$$

## Inductive LOAD

For LOAD take $4.7 mH$ inductor and build circuit shown on figure 2.

![](img/Activity_17_Fig_07.png)

Figure 7: Inductive LOAD

1.  In the OUT1 settings menu set Amplitude value to 0.2V
2.  On the left bottom of the screen be sure that IN1 V/div is set to
    50mV/div (You can set V/div by selecting the desired channel and
    using vertical +/- controls)
3.  On the left bottom of the screen be sure that IN2 V/div is set to
    500mV/div (You can set V/div by selecting the desired channel and
    using vertical +/- controls)

![](img/Activity_17_Fig_08.png)

Figure 8: Inductive LOAD current measurements

From the measurements from figure 8 we can calculate max load current
as:

$$I_L = \frac{IN2_{max}}{100} = \frac{620mV}{100} = 6.2mA$$

We can check our measurements by calculating load current as

$$I_L = \frac{OUT1_{max}}{Z_{load} + R_s } = \frac{OUT1_{max}}{2 \pi f_{OUT_1} L_1  + R_s } = \frac{0.2V}{30 \Omega+10 \Omega} = 5.0mA$$

::: note
::: title
Note
:::

At inductive load we have largest difference in measurements. Try to
explain why. Hint. parasitics, series resistance of an inductor.
:::
