---
title: OPAMP Gain Bandwidth Product $GBW$
---

# Objective

The objective of this activity is to explore a key parameter that
affects the performance of op-amps at high frequencies. The parameter is
the **gain-bandwidth product** ($GBW$) or unity gain bandwidth.

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board
[hardware](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html).
Extension connector pins used for **-3.3V** and **+3.3V** voltage supply
are show in the documentation
[here](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2).
[Bode](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/bode/bode.html)
analyzer application is used to measure frequency response of op-amp
circuit.

# Materials

-   Red Pitaya STEMlab
-   OPAMP: 1x OP97
-   Resistor: 2x 100 $\Omega$
-   Resistor: 1x 47 $k \Omega$
-   Resistor: 1x 100 $k \Omega$
-   Resistor: 2x 10 $k \Omega$

# Background

The forward gain, $G$ is defined as the gain of the op-amp when a signal
is fed differentially into the amplifier with no negative feedback
applied. This gain is ideally infinite at all frequencies, but in a real
op-amp is
[finite](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity14_OPAMPOpenLoopGain.html#opamp-open-loop-gain),
and depends on the frequency. At low frequency the gain is maximum,
decreases linearly with increasing frequency, and has a value of one at
the frequency commonly referred to as the unity gain or cut-off
frequency $f_{c}$ (in equation form, $G(f_c)=1$). For the **OP97
op-amp**, the **unity gain frequency is 900 kHz**, the **open-loop gain
at this frequency is simply one**. This is also the Closed-Loop
Bandwidth or the maximum frequency when the feedback is configured with
a closed loop gain of 1. $G_f$ is defined as the **gain-bandwidth
product**, $GBW$, and for all input frequencies this product is constant
and equal to $f_c$. The gain can be specified as a simple number
(magnitude) or in dB(decibel).

$$GBW = gain * f_c$$$$or$$$$GBW = gain * BW$$

where $f_c$ is cut-off frequency (at $f_c$ gain drops by -3dB ( -3dB =
$1 / \sqrt{2}$ drob in signal amplitude)) and $BW$ frequency bandwidth
in this case given as $BW = f_c$

Figure 1, from the OP97 datasheet, graphically illustrates this
relationship. When feedback is provided, as in an
[inverting](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity13_BasicOPAmpConfigurations.html#inverting-amplifier)
[amplifier](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity13_BasicOPAmpConfigurations.html#inverting-amplifier),
the gain is given by G = --R2/R1; however, it must be recognized that
the magnitude of this gain can never exceed the gain as given by the
gain-bandwidth product.

![](img/Activity_15_Fig_01.png)

Figure 1: OP97 Open-Loop Gain, Phase vs. Frequency

::: note
::: title
Note
:::

You should remember following: The maximum frequency of "normal
operation" (i.e frequency bandwidth, i.e cut-off frequency, i.e
frequency where gain drops by 3dB) of your op-amp circuit (amplifier) in
non-inverting or inverting configuration will be ALWAYS dependent on the
GAIN. **If you chose higher gain the frequency bandwidth will be lower
and vice versa.**

For example: If we want to have inverting amplifier with gain = 100
based on OP97 then our frequency bandwidth will be given as:

$$BW = GBW_{OP927}/100 = 900 kHz / 100  = 9 kHz$$

for gain = 1000

$$BW = GBW_{OP927}/1000 = 900 kHz / 1000  = 900 Hz$$
:::

# Procedure

Build the circuit shown in figure 2 on your solderless breadboard to
measure the frequency response of a inverting amplifier configured with
a closed loop gain of 1000. Because the circuit's gain is so high, the
circuit needs to be driven with a very small input signal. In order to
generate small signal with the STEMlab generator, a 1/1000
[voltage](https://en.wikipedia.org/wiki/Voltage_divider)
[divider](https://en.wikipedia.org/wiki/Voltage_divider), \[R3 -
(R4\|\|R1)\], is used to reduce the 2V p2p sine signal to 2 mV p2p at
the inverting amplifier input. R4 and R1 are effectively in parallel due
to the "virtual ground" at pin 2. The parallel combination of R4 and R1
will be 50 Ω which with the 47 KΩ R3 results in a divider ratio close to
1/1000.

![](img/Activity_15_Fig_02.png)

Figure 2: Inverting amplifier with gain of 1000

::: warning
::: title
Warning
:::

Before connecting the circuit to the STEMlab -3.3V and +3.3V pins double
check your circuit. The -3.3V and +3.3V voltage supply pins do not have
short circuit handling and they can be damaged in case of short circuit.
:::

1.  Set up the filter circuit as shown in figure 2 on your solderless
    breadboard, with the component values R1 = R4 = 100 Ω, R2 = 100 kΩ
    and R3 = 47 kΩ.
2.  Start the Bode analyzer application. The Bode analyzer application
    will make a frequency sweep in such way it will generate sine signal
    on $OUT1$ within frequency range selected by us(in settings menu).
    $IN1$ input signal is directly connected to $OUT_1$ following that
    $IN1=V_{in}$. $IN2$ is connected on the other side of the filter and
    from that $IN2=V_{out}$. Bode analyzer application will then for
    each frequency step take the ratio of $IN1/IN2$ ($V_{in}/V_{out}$)
    and calculate frequency response.
3.  In the Bode analyzer settings menu set for:

-   start frequency: 100 Hz
-   end frequency: 20 kHz
-   number of steps: 50
-   scale: Log
-   select RUN button

![](img/Activity_15_Fig_03.png)

Figure 3: Typical OP97 Bode Plot Gain = 1000

From the figure 3 we can see that theory and OP97 datasheet data are
consistent with the measurement. At gain = 1000 the BW is 900Hz. Set R2
to 10 kΩ, R3 = 4.7 kΩ, repeat the measurements and observe the results.

![](img/Activity_15_Fig_04.png)

Figure 3: Typical OP97 Bode Plot Gain = 100

As we can see from the figure 4 for x10 less gain the BW is increased
x10 confirming the equation $GBW = BW * Gain = const$.
