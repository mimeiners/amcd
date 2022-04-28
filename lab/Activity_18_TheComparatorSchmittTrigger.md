---
title: The Comparator, Positive Feedback and Schmitt Trigger
---

# Objective

The objective of this activity is to investigate the voltage comparator,
the use of positive feedback and the operation of the Schmitt Trigger
configuration. The use of conventional operational amplifiers as a
substitute for voltage comparators will described in basic op amp
circuits
[section](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity13_BasicOPAmpConfigurations.html#using-an-op-amp-as-a-comparator).

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board
[hardware](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html).
Extension connector pins used for **5V** voltage supply are show in the
documentation
[here](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2).
[Oscilloscope](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
&
[Signal](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
[generator](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
application is used for generating and observing signals on the circuit.

# Background

## The Voltage Comparator

A Differential Voltage Comparator such as the
[AD8561](http://www.analog.com/media/en/technical-documentation/data-sheets/AD8561.pdf)
from the analog parts kit has a pinout similar in many ways to that of a
conventional opamp but with many important differences (figure 1). There
are the usual $V_+$ and $V_-$ power supply pins but a comparator will
also have a ground (GND) pin as well. The differential $+IN$ and $-IN$
pins are essentially the same as a conventional op-amp. There will also
be an output pin as in an opamp but there is often a second "inverting"
( or complementary ) output. Also, while the voltage at the output of an
opamp can generally swing close to the $+$ and $-$ supply rails, the
output of a comparator will swing only between ground(gnd) and the $+$
supply. This makes the output more like a digital signal and compatible
with standard logic gates such as TTL or CMOS. The voltage comparator
can be thought of as a single bit analog-to-digital converter (ADC). The
AD8561 also includes a LATCH input which will latch or freeze the output
and prevent it from changing even if the inputs change.

![](img/Activity_18_Fig_01.png)

Figure 1:
[AD8561](http://www.analog.com/media/en/technical-documentation/data-sheets/AD8561.pdf)
datasheet and pin assignments

# Materials

-   Red Pitaya STEMlab
-   OPAMP: 1x
    [AD8561](http://www.analog.com/media/en/technical-documentation/data-sheets/AD8561.pdf)
    voltage comparator
-   Voltage regulator: 1x LM317
-   Resistor: 2x 4.7 $k \Omega$
-   Resistor: 1x 20 $k \Omega$
-   Resistor: 1x 47 $k \Omega$
-   Resistor: 1x 100 $k \Omega$
-   Capacitor: 1x 0.1 $\mu F$

# Directions

Construct the comparator test circuit as shown in figure 2 on your
solder-less breadboard. The two 4.7 kΩ pull-up resistors are optional
and are used to increase the peak positive output swing to closer to the
+5 V supply.

![](img/Activity_18_Fig_02.png)

Figure 2:
[AD8561](http://www.analog.com/media/en/technical-documentation/data-sheets/AD8561.pdf)
comparator circuit

::: note
::: title
Note
:::

Voltage Comparators are extremely sensitive to the noise and glitches on
the power supply rail. Noisy power supply rail will cause glitches on
the output signal. This glitches will be present at switching threshold
voltages. In other words, comparator will have some trouble deciding to
switch on V+ or to V- when comparing two input signals affected by the
power supply noise. Because of that here we use a voltage regulator to
stabilize our power supply rail and prevent noisy output from the
comparator. You can try directly using 5V power supply rail and observe
the results and compare them with the results obtained using voltage
regulator. Note: It is not necessary to drop down voltage from 5V to
2.5V but we chose that just form simplicity.
:::

![](img/Activity_18_Fig_03.png)

Figure 3:
[AD8561](http://www.analog.com/media/en/technical-documentation/data-sheets/AD8561.pdf)
comparator circuit on the breadboard

[LM317](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity13_BasicOPAmpConfigurations.html#first-step-connecting-dc-power)
Voltage regulator is described in
[previous](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity13_BasicOPAmpConfigurations.html#first-step-connecting-dc-power)
section.

# Procedure

1.  Set Oscilloscope probes attenuation; IN1 to x1 and IN2 to x10
2.  Start the Oscilloscope & Signal Generator application.
3.  To apply input voltage $V_{in}$ in the OUT1 settings menu set
    Amplitude value to 0.5V and DC offset to 0.5V. From the waveform
    menu select TRIANGLE, deselect SHOW button and select enable.
4.  In the OUT2 settings menu set Amplitude value to 0.5V, from the
    waveform menu select DC and select enable.
5.  In the IN2 settings menu set probe attenuation to x10
6.  On the left bottom of the screen be sure that IN1 V/div is set to
    500mV/div (You can set V/div by selecting the desired channel and
    using vertical +/- controls)
7.  On the left bottom of the screen be sure that IN2 V/div is set to
    1V/div (You can set V/div by selecting the desired channel and using
    vertical +/- controls)
8.  On the left bottom of the screen be sure that OUT2 V/div is set to
    500mV/div (You can set V/div by selecting the desired channel and
    using vertical +/- controls)
9.  Set t/div value to 200us/div (You can set t/div using horizontal +/-
    controls)

![](img/Activity_18_Fig_04.png)

Figure 4:
[AD8561](http://www.analog.com/media/en/technical-documentation/data-sheets/AD8561.pdf)
comparator circuit measurements

You should see a square wave that is high ( near +2.5 V ) when the input
signal level is a greater than 0.5 V (OUT2 DC value) and low ( near 0 V
) when the input signal is less than 0.5 V. Note the levels of the input
triangle wave where the output changes from low to high and from high to
low.

Now connect Channel IN1 (set probe attenuation x10 and IN1 settings menu
set probe attenuation to x10) to the inverting output ( pin 8 ). You
should again see a square wave but with opposite phase to pin 7(IN2).
Also change DC level of OUT2 (set amplitude to 0.7V) - this will change
switching level of the voltage comparator causing different times
duration of HIGH and LOW states of the comparator output. You should
again see two square waves with opposite phases but now with opposite
HIGH and LOW time durations.

1.  Set Oscilloscope probes attenuation; IN1 to x10 and IN2 to x10
2.  In the OUT2 settings menu set Amplitude value to 0.7V, from the
    waveform menu select DC and select enable.
3.  In the IN2 and IN2 settings menu set probe attenuation to x10 and
    offset level -1700mV

::: note
::: title
Note
:::

From description above you can maybe see how to make an PWM (pulse width
modulation) signal using constant frequency triangle signal and
changeable DC $V_{ref}$ value.
:::

![](img/Activity_18_Fig_05.png)

Figure 5:
[AD8561](http://www.analog.com/media/en/technical-documentation/data-sheets/AD8561.pdf)
both output measurements at different $V_{ref}=0.7V$

Zoom into the falling edge of the output (IN2) square wave by adjusting
the Horizontal position and time per division settings such that the
falling edge is centered on the time axis and the time per div is small
enough to see the transition time of the edge (5 uS/div). You should see
that the output does not go from the high output level all the way to
the low output level all at once but stops part way and spends some time
at an intermediate level before continuing the rest of the way to the
low output level. You should should also see this delay when
transitioning from low to high (IN1). This delay is caused by noise as
the input signal slowly passes through the input threshold level ( 0.7
Volts in this case ) and can cause problems. This is the reason why it
is good to have low noise power supply and low noise input signals on
voltage comparator. Try to repeat switching noise measurement at more
noisy power supply (5V pin directly form STEMlab board)

![](img/Activity_18_Fig_06.png)

Figure 6: Switching noise measurements.

::: note
::: title
Note
:::

Usually our intuition is to correlate high possibility of noise issues
with high frequency signals. In case of voltage comparator this is not
always true. If we increase OUT1 ($V_{in}$) frequency to 100kHz the
switching noise will be much lower. Way is that? You may think like
this: Voltage comparator has very sensitive inputs and it is constantly
comparing values of $V_{in}$ and $V_{ref}$. Now let\'s set $V_{in}$ to
be noiseless signal and $V_{ref} = DC +(-) A_{noise}$. When triangle
wave $V_{in}$ signal is slowly approaching $V_{ref}$ the voltage
comparator will start switching and if the $V_{ref}$ amplitude swingings
around DC value by $A_{noise}$ the comparator output will change states
according to the $V_{in}  - (V_{ref} = DC +(-) A_{noise})$ ratio. So, as
long $V_{in}$ amplitude **stays in the range** of
$V_{ref} = DC +(-) A_{noise}$ value the comparator output will
effectively switch on $A_{noise}$ and not on the input signals. Once
$V_{in}$ goes below $V_{ref} = DC - A_{noise}$ or above
$V_{ref} = DC + A_{noise}$ the comparator output will switch high or low
but now on input signal values not on noise values. You can see that
**low frequency triangle wave** $V_{in}$ amplitude **will spend more
time** near $V_{ref} = DC +(-) A_{noise}$ causing voltage comparator to
produce noisy output while **high frequency triangle wave** $V_{in}$
amplitude will **quickly pass by** $V_{ref} = DC +(-) A_{noise}$ range
preventing voltage comparator to produce any noise switching.
:::

![](img/Activity_18_Fig_07.png)

Figure 7: Switching event at high input signal frequency (100kHz)

# Using positive feedback to add hysteresis: the Schmitt trigger

**Along side low noise power supply a common solution to the problem
just outlined is to add noise immunity to the comparator circuit by
incorporating hysteresis into the transition threshold voltage**
$V_{th}$, as shown in figure 8. By "hysteresis" we mean that the
threshold voltage is a function of the system's current operating state,
which is defined for this circuit by its output voltage: positive or
negative saturation. Because $V_{th}$, the voltage at pin 2, is
determined by the voltage divider constructed from resistors R1 and R2,
it changes in response to a change in the output voltage: once the
output has gone high in response to an input which has passed below the
threshold voltage, the threshold voltage is changed to a higher value
$V_{th+}$ ( $V_{ref}$ + a fraction of the output high voltage );
conversely, an input voltage climbing through $V_{th+}$ will change the
output to its low state and cause the threshold voltage to be set to a
lower value $V_{th-}$ ( $V_{ref}$ - a fraction of the output low
voltage).

![](img/Activity_18_Fig_08.png)

Figure 8: Schmitt trigger

This difference between $V_{th+}$ and $V_{th-}$ means that once a
transition is triggered by a change in $V_{in}$, noise excursions
smaller than this difference on the input will not cause $V_{in}$ to
cross the hysteresis gap $V_{hist} = V_{th+} - V_{th-}$ and cause an
undesired reversal of the output state. If the hysteresis gap is made
large enough, then the system can be made completely impervious to the
noise on the input signal, eliminating the spurious output levels
suffered by the basic comparator circuit (figure 1).

## Calculating the threshold

Let's call the maximum and minimum output voltages $V_{high}$ and
$V_{low}$. The threshold voltage when the output is at $V_{high}$ and at
$V_{low}$ is:

The resulting hysteresis gap for the circuit of figure 8 is given by:

$$V_{th_{high}} = \frac{R_1}{R_1+R_2} (V_{high}+V_{ref})+V_{ref}  \quad (1)$$$$.$$$$V_{th_{low}} = \frac{R_1}{R_1+R_2} (V_{low}-V_{ref})+V_{ref}  \quad (2)$$

The resulting hysteresis gap for the circuit of figure 8 is given by:

$$V_{hist} = V_{th_{high}}-V_{th_{low}} = \frac{R_1}{R_1+R_2} (V_{high}-V_{low}) \quad (3)$$

For the AD8561 with a +2.5 V power supply and pull-up resistor,
$V_{high} - V_{low} \approx 2.3 V$. Because the other end of the voltage
divider (bottom of R1) is connected to $V_{ref} = 0.5 V$, the threshold
voltages $V_{th_{high}}$ and $V_{th_{low}}$ will be centered around 0.5V
($V_{ref}$) assuming that $V_{high}$ and $V_{low}$ are more or less
centered around 0.5 V). Connecting the bottom of R1 to a different
voltage reference source rather than to mid supply will not affect the
hysteresis gap, but it will center that gap around a threshold
proportional to the new reference voltage. In fact the negative input
pin of the comparator could be connected to the fixed reference voltage
and the end of R1 considered as the input. This in effect reverses or
inverts the sense of the two outputs. Above stated can be represented in
Schmitt Hysteresis plot shown on figure 9.

![](img/Activity_18_Fig_09.png)

Figure 9: Schmitt Hysteresis

::: note
::: title
Note
:::

Hysteresis gap equation places a potential restriction on the ratio
R1/R2 for a Schmitt trigger: unless R1 \< R2, the hysteresis gap will be
larger than one half of the peak to peak output voltage swing range of
the comparator and depending on the reference voltage value, one or the
other of the Schmitt trigger thresholds might be beyond the range of the
output voltage. Assuming the input signal voltage range is also limited
to the output swing range ( in other word the power supply rails ) then
the circuit's output could lock-up and no longer respond to any changes
in the input rendering the circuit useless.
:::

# Procedure

Add the two positive feedback resistors to your circuit as shown in
figure 8. Use values for R2 = 100 KΩ and R1 equal to 10 KΩ. Using IN2,
again observe the output square wave but note the level of the input
triangle wave when the output changes level from low to high and high to
low. Explain your results. Try a value for R2 less than R1. Does the
circuit still work?

1.  Set Oscilloscope probes attenuation; IN1 to x1 and IN2 to x10
2.  Start the Oscilloscope & Signal Generator application.
3.  To apply input voltage $V_{in}$ in the OUT1 settings menu set
    Amplitude value to 0.5V and DC offset to 0.5V. From the waveform
    menu select TRIANGLE, deselect SHOW button and select enable.
4.  In the OUT2 settings menu set Amplitude value to 0.5V, from the
    waveform menu select DC, deselect SHOW and select enable.
5.  On the left bottom of the screen be sure that IN1 V/div is set to
    200mV/div (You can set V/div by selecting the desired channel and
    using vertical +/- controls)
6.  On the left bottom of the screen be sure that IN2 V/div is set to
    500mV/div (You can set V/div by selecting the desired channel and
    using vertical +/- controls)
7.  In the IN1 settings menu set probe attenuation to x1 and offset
    level to -500mV
8.  In the IN2 settings menu set probe attenuation to x10 and offset
    level to -1000mV
9.  In the TRIGGER settings menu select source IN2, select positive edge
    and set trigger level to 2V
10. Set t/div value to 200us/div (You can set t/div using horizontal +/-
    controls)

![](img/Activity_18_Fig_10.png)

Figure 10: Schmitt Hysteresis and output signal

Compare results from figure 10 and figure 4. Look at the levels of IN1
when IN2 goes high and low.

To see if the delay caused by the input noise has changed, again zoom
into the falling and rising edges of the output square wave by adjusting
the Horizontal position and time per division setting. Does the output
pause at the same intermediate level as it transitions or does it no
longer have this delay?

1.  In the TRIGGER settings menu select source IN2, select positive
    edge, NORMAL and set trigger level to 2V
2.  Set t/div value to 5us/div (You can set t/div using horizontal +/-
    controls)

![](img/Activity_18_Fig_11.png)

Figure 11: Switching noise with hysteresis

As you can see from figure 11 when using hysteresis switching noise is
not present at all. Compare figure 6 and figure 11.
