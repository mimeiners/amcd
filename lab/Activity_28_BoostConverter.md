---
title: DC-DC Boost Converter
---

# Objective

Here we will explore an inductor based circuit which can produce an
output voltage which is higher than the supplied voltage. This class of
circuits are referred to as DC to DC converters or boost regulators. In
this experiment the voltage from a 1.5 V supply ( battery ) will be
boosted to a voltage high enough ( \~ 5 V) to drive two LEDs in series.
**Note that forward voltage of LED is typically 1.8V although for some
diodes it can go up to 3.3V (blue LED)**

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board
[hardware](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html).
[Oscilloscope](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
&
[Signal](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
[generator](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
application is used for generating and observing signals on the circuit.
Extension connector pins used for **+5V**, **-3.3V** and **+3.3V**
voltage supply are show in the documentation
[here](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2).

# Background Basics

Temporarily connect one of your LEDs from the 1.5 V battery. Be careful
to note the polarity of the diode so it will be forward biased. Does it
light up? Probably not since 1.5 V is generally not enough to turn on an
LED. We need a way to boost the 1.5 V to a higher voltage to light a
single LED let alone two LEDs connected in series.

A boost converter (step-up converter) is a DC-to-DC power converter that
steps up voltage (while stepping down current) from its input (supply)
to its output (load). It is a class of switched-mode power supply (SMPS)
containing at least two semiconductors (a diode and a transistor) and at
least one energy storage element: a capacitor, inductor, or the two in
combination. To reduce voltage ripple, filters made of capacitors
(sometimes in combination with inductors) are normally added to such a
converter\'s output (load-side filter) and input (supply-side filter).

::: note
::: title
Note
:::

Theory of operation of DC - DC boost converter is nicely explained in
[this Wikipedia article](https://en.wikipedia.org/wiki/Boost_converter).
Before going into experiment short overview of the theory is
recommended.
:::

Classical DC - DC boost converter circuit is shown on figure 1.
Depending on the desired operating (switching) frequency and maximum
current rating the inductor $L_1$ should be selected. In this experiment
for $L_1$ an $100 \mu H$ power inductor with 1A current rating is used.
Operating (switching) frequency should be in range of $10 - 50  kHz$.
For the rectifier $D_1$ and the snubber $D_2$ diodes classical
[1N4001](http://www.vishay.com/docs/88503/1n4001.pdf) or a 1N3064 can be
used. For the $M_1$ transistor we will use
[IRLU120N](http://www.infineon.com/dgdl/irlr120n.pdf?fileId=5546d462533600a4015356695f642663).
We selected this power MOSFET transistor since it has low threshold
voltage $V_{TH}$. If you use high threshold voltage FET transistors and
low voltage driving signal (gate signal) the switching of the MOSFET
could be non-optimal. Selected MOSFET already has snubber diode
integrated so external diode $D_2$ is not necessary.

::: note
::: title
Note
:::

Simple DC-DC [boost converter
calculator](https://learn.adafruit.com/diy-boost-calc/the-calculator) is
also available on Adafruit web page.
:::

For storage capacitor $C_1$ and electrolytic high capacitance capacitor
should be selected. The selection of this capacitor depends on current
ratings, switching frequency and inductor value. But to be on the safe
side values above $10 \mu F$ would be sufficient. An DC-DC boost
converter used in this experiment is shown in figure 1.

![](img/Activity_28_Fig_01.png)

Figure 1: DC to DC boost converter

On figure 1 basic DC-DC boost converter circuit is shown. To the
converter circuit a 200 $\Omega$ load is added. **For stable operation
of DC-DC boost converter either constant load or load regulation is
needed**. Without regulation any change of the load will affect the
output voltage level. Therefore we have set 200 $\Omega$ load to
stabilize output voltage. Parallel to the load two LED diodes in series
with 1K resistors are added. Note that adding or removing additional
LEDs parallel to the load will not affect output voltage since current
drawn by LED will be much smaller than current drawn by 200 $\Omega$
load. **LEDs are used as indicators that our DC battery voltage is
BOOSTED UP form 1.5 V to \~5V.** If the LEDs are off that means our
battery voltage is bellow LED forward voltage (2x1.8V) and therefore
indicating that DC-DC boost converter circuit is not working correctly.

Red Pitaya STEMlab outputs can generate voltage signals with maximal
output range of +/- 1V (2Vpp). For MOSFET switching the higher signal
amplitudes are required.Because of that we have used two NPN transistors
in switching mode as intermediate stage between OUT1 switching signal
and MOSFET transistor. OUT1 square signal will switch ON and OFF first
NPN transistor causing its collector voltage to swing between 0-5V. This
collector voltage then controls second NPN transistor and its collector
voltage, also swinging between 0-5V, will then switch ON/OFF the MOSFET
transistor. The reason why two NPN transistors are used is to have OUT1
and MOSFET gate signal in phase. I.e when OUT1 is high the signal on the
MOSFET gate should be also high. Using one transistor will cause 180
phase delay. **You can also see the other more important problem here.
If we use only one NPN transistor then when OUT1 is constantly turned
OFF the MOSFET transistor will be constantly turned ON producing short
circuit: battery - inductor - mosfet - gnd**. Using two NPN transistor
will prevent this happening.

::: warning
::: title
Warning
:::

Note that +5V voltage rail from the STEMlab is used only for transistor
switching and not for the load supply. I.e electrical energy is flowing
from battery to the LOAD and LEDs.
:::

# Materials

-   Red Pitaya STEMlab
-   1x 1kΩ Resistor
-   3x 470Ω Resistor
-   1x 10kΩ Resistor
-   1x $100 \mu H$ Power inductor
-   1x $47 \mu F$ Capacitor
-   2x LED (red)
-   1x 1W 200Ω Resistor
-   1x Signal diode
    ([1N4001](http://www.vishay.com/docs/88503/1n4001.pdf))
-   2x Small signal NPN transistor
    ([2N3904](https://www.sparkfun.com/datasheets/Components/2N3904.pdf))
-   1x Power MOS transistor
    ([IRLU120N](http://www.infineon.com/dgdl/irlr120n.pdf?fileId=5546d462533600a4015356695f642663))
-   1x AA 1.5V battery
-   1x Solder-less Breadboard

# Procedure

1.  Following instructions above and schematics from figure 1 build the
    circuit on the breadboard.

![](img/Activity_28_Fig_02.png)

Figure 2: DC - DC boost converter on the breadboard

2.  **Set IN1 and IN2 scope probes attenuations to x10**
3.  Connect IN1 scope probe to the point 3 (figure 1) and IN2 scope
    probe to the point (5)
4.  Start the Oscilloscope & Signal generator application - **OUT1 must
    be disabled (turned off)**
5.  In the IN1 and IN2 menu settings set probe attenuation to x10
6.  In the MEASUREMENTS menu select MEAN measurements for IN1 and IN2
7.  What are the values of the DC voltage on point 3 and 5 (figure 1)?

At this point, when OUT1 switching signal is disabled the DC-DC boost
converter is not functional. Transistor $M_1$ is turned off (open
circuit) and battery voltage is, across inductor $L_1$ and diode $D_1$ ,
transfered to the load side (point 5, figure 1). For DC signals (no
switching) the $L_1$ inductor behaves as a short circuit therefore
output voltage is the battery voltage decreased by $D_1$ diode forward
voltage: $V_{out} = V_{battery} - V_{diode}$. This state is shown in the
measurements on figure 3. As we expected the $LED_1$ and $LED_2$ are
turned off since output voltage is below LEDs forward voltage (2x1.8V).

![](img/Activity_28_Fig_03.png)

Figure 3: DC - DC boost converter is turned off

8.  In the OUT1 menu settings set frequency to 10kHz, waveform to PWM,
    amplitude to 0.5V, DC offset to 0.5V, deselect SHOW and select ON.
9.  In the MEASUREMENTS menu select P2P measurements for IN1 and IN2
10. Set t/div value to 100us/div (You can set t/div using horizontal +/-
    controls)

At this point when OUT1 switching signal is enabled the DC-DC boost
converter is functional and behaves as described in theory above. Output
voltage is boosted up to approximately 5V and LEDs are turned ON. This
state is shown on figure 4. As we can see from the measurements some
ripple appears at battery and output voltage.Output voltage ripple is
caused by battery voltage ripple and transistor $M_1$ switching. Battery
voltage ripple is due to fact that battery is not ideal voltage source
and when $M_1$ is turned on, current drown from battery is causing
voltage drop.

![](img/Activity_28_Fig_04.png)

Figure 4: DC - DC boost converter is turned on

::: note
::: title
Note
:::

Ripple voltage values are one of the main parameters of the DC-DC
converter quality. Lower output ripple corresponds to better DC-DC boost
converter. Capacitor $C_1$ is therefore needed in order to compensate
and smooth out switching voltage appearing on inductor $L_1$ and diode
$D_1$. Try to remove $C_1$ and observe $V_{out}$.
:::

11. In order to observe switching voltages of the $M_1$, set IN1 probe
    to the point 2 ( figure 1) and IN2 probe to the point 4 ( figure 1)
12. In the IN2 settings menu set vertical offset -4.0V (to better see
    IN2 signal)
13. In the TRIGGER menu select NORMAL and set trigger level to 3.0V
14. Set t/div value to 20us/div (You can set t/div using horizontal +/-
    controls)

![](img/Activity_28_Fig_05.png)

Figure 5: M1 switching voltages

On the figure 5 $M_1$ gate and drain signals are shown. From figure 5 we
can see that gate signal is an switching square wave controlling the
transistor. Drain signal corresponds to the \"open/closed\" states of
the transistor $M_1$ but during the \"off\" state a significant
oscillations are visible. This is the affect of the inductor $L_1$ since
it will appose any change in the current trough it which will affect the
$M_1$ drain voltage.

::: note
::: title
Note
:::

DC-DC boos converter output voltage value is often controlled with
$duty-cycle$ of the switching signal.
:::

15. In order to observe affects of the switching signal (OUT1) duty
    cycle set IN1 probe to the point 2 ( figure 1) and IN2 probe to the
    point 5 ( figure 1)
16. In the IN1 and IN2 menu settings set vertical offset to -3.0V
17. Set t/div value to 50us/div (You can set t/div using horizontal +/-
    controls)
18. In the OUT1 menu settings change duty cycle from $30-80 \%$ and
    observe results.

![](img/Activity_28_Fig_06.png)

![](img/Activity_28_Fig_07.png)

Figure 5: Above: Output voltage at 40% duty cycle. Below: Output voltage
at 80% duty cycle

::: warning
::: title
Warning
:::

From figure 5 we can observe the affect of the duty cycle on the output
voltage. If we go with the duty cycle to 0% or 100% then we will turn
off or short circuit $M_1$ transistor therefore duty cycle should be
limited above for short circuit preventing and circuit damaging.
:::

# Questions

1.  Change load value to $470 \Omega$ and observe results.
2.  Change OUT1 frequency to from 5 - 20 kHz. Measure and record the
    boosted output voltage waveform and the current waveforms. Explain
    what has changed and why?
3.  How would adding LC filter on the converter output affect the
    voltage ripple?
