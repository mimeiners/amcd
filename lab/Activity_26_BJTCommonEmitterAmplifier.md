---
title: BJT Common Emitter Amplifier
---

# Objective

The purpose of this experiment is to investigate the common emitter
configuration using the BJT device.

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board
[hardware](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html).

[Oscilloscope](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
&
[Signal](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
[generator](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
application is used for generating and observing signals on the circuit.

Extension connector pins used for **+5 V**, **-3.3 V** and **+3.3 V**
voltage supply are show in the documentation
[here](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2).

# Background

The configuration, shown in Fig. 1, demonstrates an npn transistor used
as a common-emitter amplifier. Output load resistor $R_L$ is chosen such
that for the desired nominal collector current $I_C$, approximately one
third of the +5 V voltage (1.6 V) appears at $V_{CE}$ (at DC operating
point condition). Resistor $R_B$ sets the nominal bias operating point
for the transistor (base current $I_B$) to sink the required collector
current $I_C$. The input signal is AC coupled to the base of the
transistor with capacitor $C_1$ to not disturb **DC bias conditions**.
Voltage divider $\frac{R_1}{R_2}$ is chosen to provide a self-biased DC
operating point. Resistor $R_E$ is used to add emitter degeneration
(current feedback) in order to stabilize the DC operating point.

The best approach for selecting the $R_L$ and $R_E$ is to enable voltage
drops across $Q_1$, $R_L$ and $R_E$ equal to the 1/3 of the $V_{CC}$ (at
DC operating point condition). Therefore $R_E$ = $R_L$. Adding the
emitter degeneration resistor has improved the stability of the DC
operating point at the cost of reduced amplifier gain. A higher gain for
AC signals can be restored to some extent by adding capacitor $C_E$
across the degeneration resistor $R_E$, effectively setting the \" $R_E$
\" value close to zero for AC signals. Capacitor $C_2$ is added to block
the DC component of the output signal.

::: note
::: title
Note
:::

How to design an common-emitter amplifier is nicely explained in a video
tutorial on [The Signal
Path](https://www.youtube.com/watch?v=Y2ELwLrZrEM&t=1213s) Youtube
channel.
:::

![](img/Activity_26_Fig_01.png)

Figure 1: Common-emitter amplifier configuration

# Quick calculation of the common emitter amplifier

Suppose that we want to design an amplifier with the gain $A = 5$ using
npn transistor
[2N3904](https://www.sparkfun.com/datasheets/Components/2N3904.pdf) and
a voltage supply of $V_{CC} = 5V$.

For the npn transistor 2N3904 we can assume that $\beta = 100$ and
$v_{CE_{sat}} = 0.2 V$. First step is to set DC operating point by
deciding voltages across $R_L$, $R_E$ and $Q_1$.

$$V_{R_L}+(V_{CE}+v_{CE_{sat}})+V_{R_E} = V_{CC}  \quad  (1)$$

If we take into account $v_{CE_{sat}}$ and 1/3 ratio of voltages on
$R_L$, $R_E$ and $Q_1$ we get following:

$$1.6 V + 1.6 V + 0.2 V + 1.6 V = 5 V  \quad (2)$$

From desired value of gain $A$ we can calculate $R_L$ using Eqs. (3) \--
(7)

$$A  = \beta \frac{R_{out}}{R_{in}}.  \quad (3)$$

where $R_{out}$ is the resistor connected in series with the collector
and $R_{in}$ is the resistor connected in series with the base.

$$R_{out} = R_L  \quad \text{and,} \quad R_{in} = R_{B} \quad (4)$$

It follows:

$$A  = \beta \frac{R_L}{R_B}   \quad (5)$$

In this step we need to **set current ratings of our amplifier** i.e we
need to choose $I_C$ to calculate $R_L$.

Let\'s set $I_C = 5 mA$, then

$$R_L =  \frac{V_{R_L}}{I_C} = \frac{1.6V}{5mA} =  320 \Omega   \quad (6)$$

In order to satisfy Eq. (2) it follows that:

$$R_E = R_L, \quad  \text{i.e.} \quad R_E = \frac{V_{R_L}}{I_C} = 320  \Omega. \quad (7)$$

Now we can calculate $R_{in}$ i.e $R_{B}$ value as:

$$R_{B} = \beta \frac{R_L}{A} = 100 \frac{320 \Omega }{5} = 6.4k \Omega. \quad (8)$$

The last step is to calculate values of DC bias resistors $R_1$ and
$R_2$. $R_2$ can be obtained from \"cookbook\" relation given in Eq. (9)
and therefore $R_1$ can be calculated from Eq. (10).

$$R_2 &\approx 10 R_E  \quad (9)$$$$R_2 &= 3.2 k \Omega$$

$$R_1 = \frac{V_{CC} - (v_{BE}+V_{R_E})}{\frac{(v_{BE}+V_{R_E})}{R_2}}  \quad (10)$$

where $v_{BE} = 0.6 V$

$$R_1 = \frac{5V - (0.6V+1.6V)}{ \frac{(0.6V + 1.6V)}{3.2k \Omega}} = 4.0k \Omega$$

::: note
::: title
Note
:::

Above shown calculation of the common emitter amplifier should be use as
a guideline and not as a definitive design blueprint. The reason for
this is that in majority of cases calculated values of the resistors
will be outside of the resistors values available on the market.
Therefore resistor values should be rounded or changed in order to fit
them to the closes values of commonly available resistors. It is a good
practice to set $R_1$ and $R_B$ as potentiometer since with this two
resistors we can manually tune the amplifier. Tuning the amplifier is
necessary since transistors can differ from each other.

Selecting the values of capacitors $C_1$, $C_2$ and $C_E$ is done by
using high value capacitors while the maximum voltage rating of the
capacitors must be larger than $V_{CC}$. Commonly an electrolytic
capacitors are used in ranges of $\mu F$. If we want to bring (emitter -
gnd) impedance (for AC) close to zero then $C_E$ must be large as
possible. Also $C_1$ , $C_2$ should be large to prevent large voltage
drops across them.
:::

# Materials

-   Red Pitaya STEMlab
-   2x 470Ω Resistor
-   2x 10kΩ Resistor
-   1x 10kΩ Trimer
-   1x 1kΩ Resistor
-   1x 10uF Capacitor
-   2x 4.7uF Capacitor
-   1x small signal npn transistor
    ([2N3904](https://www.sparkfun.com/datasheets/Components/2N3904.pdf))
-   1x Solder-less Breadboard

# Procedure

Following calculations and guidelines above we have built common emitter
amplifier shown in figure 2. We had an $470 \Omega$ resistors available
and those resistors where used for $R_L$ and $R_E$. After selecting the
$R_L$ and $R_E$ the other components have been calculated and selected.

![](img/Activity_26_Fig_02.png)

Figure 2: Common emitter amplifier with components values

1.  Build the circuit on from figure 2 on the breadboard.

![](img/Activity_26_Fig_03.png)

Figure 3: Common emitter amplifier on the breadboard

2.  Start the Oscilloscope & Signal generator application
3.  In the OUT1 settings menu set Amplitude value to 0.1V, DC offset to
    0 V and frequency to 10kHz to apply the input voltage. From the
    waveform menu select SINE, deselect SHOW button and select enable.
4.  On the left bottom of the screen be sure that IN1 and IN2 V/div are
    set to 200mV/div (You can set V/div by selecting the desired channel
    and using vertical +/- controls)
5.  Set t/div value to 20us/div (You can set t/div using horizontal
    +/-controls)
6.  In the trigger menu settings and select NORMAL
7.  In the measurements menu select P2P for IN1 and IN2

![](img/Activity_26_Fig_04.png)

Figure 4: Common emitter amplifier measurements

On figure 3 the measurements of the common emitter amplifier is shown.
From the P2P measurements we can calculate achieved gain and it is
approximately $A \approx 9$.

# Questions

1.  Try to change value of $R_{B_{pot}}$ and observe the change in the
    gain?
2.  What is the maximum voltage swing of the output signal?
3.  Increase OUT1 frequency and try to measure amplifier bandwidth.

For question 2 follow next:

Set the **IN2 scope probe to x10, in the IN2 menu set probe attenuation
to 10** and increase OUT1 amplitude to 0.2V. What is the P2P value of
the IN2?

With gain $A = 9$, input signal P2P amplitude 0.4V the output P2P(IN2)
value should be $0.4 \times 9 = 3.6 V$ ! But it is not? Signal is cut
off! Can you explain why?

::: hint
::: title
Hint
:::

Check the calculations above and voltages across $V_{CE}$
:::
