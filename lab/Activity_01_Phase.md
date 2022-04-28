---
title: What is Phase?
---

# Objective

The objective of this lab activity is to understand what is meant by the
phase relationship between signals and to see how well theory agrees
with practice. A secondary outcome will be a preliminary understanding
of the Red Pitaya STEMlab hardware and software - test & measurements
applications.

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board
[hardware](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html).

# Background

We will investigate the concept of phase by looking at sine waves and
passive components that will allow us to observe phase shift with real
signals. First we will look at a sin wave and the phase term in the
argument. You should be familiar with the equation:

[]{label="01_eq_1

f(t) = \\sin(\\omega t + \\theta)"}

$\omega$ sets the frequency of the sinusoidal wave as $t$ progresses and
$\theta$ defines an offset in time which defines a phase shift in the
function.

The sine function results in values ranging from 1 to -1. First set time
variable $t$ equal to a constant, say 1. The argument, $\omega t$, is
now no longer a function of time. With $\omega$ in radians,
$\sin(\frac{\pi}{4}) \approx 0.7071$.

$2\pi$ radians equals $360^{\circ}$, so $\frac{\pi}{4}$ in radians
corresponds to $45^{\circ}$; $\sin(45^{\circ}) = 0.7071$, too.

Now let $t$ vary with time like it normally does. When the value of
$\omega t$ changes linearly with time it yields a sine wave as shown in
`01_fig_01`{.interpreted-text role="numref"}. As $\omega t$ goes from 0
to $2 \pi$ the sine wave goes from 0 up to 1, down to -1 and back to 0.
This is one cycle or one period, $T$, of a sine wave. The x-axis is the
time varying argument/angle, $\omega t$, which varies from 0 to $2\pi$.

The value of $\theta$ is 0 in the function plotted in
`01_fig_01`{.interpreted-text role="numref"}. Since the $sin(0) = 0$ the
plot starts at 0. This is a simple sine wave without offset in time,
which means no phase offset. Note that if we are using degrees
$\omega t$, in a range from from 0 to $2 \pi$ or 0 to $360^{\circ}$ to
yield the sine wave shown in `01_fig_01`{.interpreted-text
role="numref"}.

![](img/Activity_01_Fig_01.png){#01_fig_01 .align-center .2 .cycles .of
.:math:`\\sin(t)`}

As a side note, what happens if $\omega t > 2\pi$?

Enter $2.5\pi$ in a calculator and see for yourself. As you should know,
the sine function repeats every $2\pi$ radians or $360^{\circ}$. It is
similar to subtracting $N\, 2 \pi$ rad from the argument where $N$ is
the largest integer that yields a non-negative result.

What happens if we plot a second sine wave into
`01_fig_01`{.interpreted-text role="numref"} with the same $\omega$
value and $\theta = 0$?

We have another sine wave which lands on top of the first sine wave.
Since $\theta = 0$ there is no phase difference between the sine waves
and they look the same in time.

Now, alter $\theta$ to $\pi/4$ rad or $45^{\circ}$ for the second sine
wave. We see the original sine wave and a second sine wave shifted to
the left in time. `01_fig_02`{.interpreted-text role="numref"} shows the
original sine wave (green) and the second sine wave (orange) with an
offset in time. Since the offset is constant, we see the original sine
wave shifted in time by a value of $\theta$ which is $1/4$ of the period
in this example.

![green - $\sin(t)$, orange -
$\sin(t + \pi/4)$.](img/Activity_01_Fig_02.png){#01_fig_02
.align-center}

$\theta$ is time offset or phase portion of `01_eq_1`{.interpreted-text
role="eq"}. The phase angle defines offset in time and vice versa.
`01_eq_2`{.interpreted-text role="eq"} shows the relationship. We
happened to choose a particularly common offset of $90^{\circ}$. The
phase offset between a sine and cosine wave is $90^{\circ}$. The offset
angle is almost always not 90. As a matter of fact it is often a
function of frequency ($f$).

# Phase

When there are two sine waves, e.g. displayed on a scope, the phase
angle can be calculated by measuring the time between the two waveforms
(negative to positive zero crossings or \"rising edges\", can be used as
time measurement reference points in the waveform). One full period of
the sine wave in time is the same as $360^{\circ}$. Taking the ratio of
the time between the two waveforms as $\Delta t$, and the time in one
period of a full sine wave as $T$, you can determine the angle between
them. `01_eq_2`{.interpreted-text role="eq"} gives the exact
relationship.

[$$\theta &= \frac{\Delta t}{T} 360^{\circ}$$$$&= \frac{\Delta t}{T} 2\pi \, rad$$$$&= \Delta t f 2 \pi \, rad$$]{label="01_eq_2"}

where $T$ is the period of the sine wave.

# Naturally occurring time offsets in sine waves

Some passive components yield a time offset between the voltage across
them and the current through them. In class we showed that the voltage
across and the current through a resistor was a simple time independent
relationship. $V / I = R$, where $R$ is real and in ohms. So the voltage
across and current through a resistor are always in phase.

For capacitors and inductors the equation relating voltage $V$ to
current $I$ is similar. $V / I = Z$, where $Z$ is an complex impedance
with real and imaginary parts. We are only looking at a capacitors in
this lab.

Generally, capacitors are made of two conductive plates separated by a
dielectric material. When a potential difference is applied across the
plates, hence an electric field is created between the plates. Capacitor
dielectrics can be made of many materials, including thin insulating
films and ceramic. A capacitor\'s distinguishing characteristic is its
capacitance (C), measured in Farads (F), which measures the ratio
between voltage and charge buildup.

The basic rule for capacitors is that the voltage across the capacitor
will not change unless there is current flowing into the capacitor. The
rate of change of the voltage ($dv_C/dt$) depends on the magnitude of
the current. For an ideal capacitor the current $i_C(t)$ is related to
the voltage by the following formula:

[]{label="01_eq_3

i_C(t) = C \\frac{dv_C(t)}{dt}"}

Right now, the full implications of this is beyond the scope of this
lab. You will observe this behavior in later labs. The impedance of a
capacitor is a function of frequency. The impedance goes down with
frequency conversely the lower the frequency the higher the impedance.

[]{label="01_eq_4

Z_C = \\frac{1}{j \\omega C},"}

where $\omega = 2 \pi f$ is defined as the angular velocity.

One subtle thing about `01_eq_4`{.interpreted-text role="eq"} is the
imaginary operator $j$. When we looked at a resistor, i.e., there is no
imaginary operator in the equation for the impedance. The sinusoidal
current through a resistor and the voltage across a resistor have no
time offset between them, as the relationship is completely real. The
only difference is in amplitude. The voltage is sinusoidal and is in
phase with the current sinusoid. This is not the case with a capacitor.
When we look at the waveform of a sinusoidal voltage across a capacitor
it will be time shifted compared to the current through the capacitor.
The imaginary operator $j$ is responsible for this. Looking at
`01_fig_03`{.interpreted-text role="numref"}, we can observe that the
current waveform has a peak (maximum) if the slope of the voltage
waveform ($dv/dt$) is maximal.

The time difference can be expressed as a phase angle between the two
waveforms as defined in `01_eq_2`{.interpreted-text role="eq"}.

![](img/Activity_01_Fig_03.png){#01_fig_03 .align-center .Phase .angle
.determination .between .voltage .(V) .and .current .(I).}

You probably have seen circuits made entirely from resistors. These
circuits have only real impedance, which means that voltages throughout
the circuit will all be in phase (i.e. $\theta = 0$ deg.) as it is the
complex impedance that shifts the current in time with respect to the
voltage. Note that the impedance of a capacitor is pure imaginary.
Resistors have real impedances, so circuits that contain both, resistors
and capacitors, will have complex impedances.

In order to calculate the theoretical phase angle between voltage (V)
and current (I) in an RC circuit:

$$i(t) = \frac{v(t)}{Z_{tot}},$$

where $Z_{tot}$ is the total circuit impedance.

Rearrange the equation until it looks like $Z_{tot} = a + jb$, where $a$
and $b$ are real numbers. The phase relationship of the current relative
to the voltage is then:

$$\theta = \arctan\left(\frac{b}{a}\right).$$

# Materials

-   Red Pitaya STEMlab 125-14 or STEMlab 125-10
-   $2 \times 470\Omega$ resistors
-   $1 \times 1 \mu F$ capacitor

You are going to use Red Pitaya\'s STEMlab board and the Oscilloscope &
Signal generator application. User guide for starting the Red Pitaya
STEMlab board can be found at
[quickstart](http://redpitaya.readthedocs.io/en/latest/doc/quickStart/first.html),
while Oscilloscope & Signal generator application is explained
[here](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html).

# Instructional Objectives

1.  Explore the phase relationship of voltages in a resistive circuit.
2.  Explore the phase relationship of voltages in an RC circuit.

# Procedure

-   Be sure the STEMlab is plugged into a local network and start up the
    web interface using web browser.
-   Start the Oscilloscope & Signal generator application. The main
    screen should look like a scope display with adjustable range,
    position and measurement parameters.
-   On the left bottom of the screen be sure that OUT1 V/div and OUT2
    V/div are both set to 200 mV/div. You can set V/div by selecting the
    desired channel and using vertical +/- controls.
-   In the OUT1 controls menu, set the frequency of OUT1 to 1000 Hz with
    $0^{\circ}$ phase and 0.9 V amplitude. Select SINE waveform shape
    and enable output.
-   In the OUT2 controls menu, set the frequency of OUT2 to 1000 Hz and
    0.9 V amplitude. Select SINE waveform shape and enable output.
-   Set t/div to 200 us/div (using horizontal +/- controls).

![Sine signal generated with Oscilloscope and Signal generator
applications. Marked with green - main setting and
controls.](img/Activity_01_Fig_04.png){#01_fig_04}

## Measure the phase angle between two generated waveforms

From the previous settings you should see what looks like 1 sine wave.
There are two just one is on top of the other - zero phase angle!

-   In the OUT1 control menu, change the phase to $90^{\circ}$.
-   In the OUT2 control menu, change the phase to $135^{\circ}$.
-   Which channel looks like the sine is occurring before the other?

The OUT2 signal should look like it is leading (happening before) the
OUT1 signal. The OUT2 signal crosses the 0 V axis from below to above
before the OUT1 signal. It turns out a positive $\theta$ is called a
phase lead. The low to high crossing time reference point is arbitrary.
The high to low crossing could also be used.

![Oscilloscope application showing two sine signal with phase
difference.](img/Activity_01_Fig_05.png){#01_fig_05 .align-center}

-   Change the phase of OUT2 to $45^{\circ}$. Now it looks like the CHB
    signal lags the CHA signal.
-   Press the red STOP button to pause the Oscilloscope acquisition.
-   Select \"CURSOR\" menu and enable X1 and X2 cursors
-   Using horizontal +/- controls set Time to 100 us/div.
-   Using mouse and left press+hold on the cursor marker(white arrow on
    the end of the cursor line) set one cursor position so that cursor
    line going through point where OUT1 is crossing 0V line.

Repeat the step for the second cursor and OUT2 signal.

-   Readout the time difference between cursors.
-   What is $\Delta t$?
-   Use the measured $\Delta t$ and `01_eq_2`{.interpreted-text
    role="eq"} to calculate the phase offset $\theta$ in degrees.

Note you cannot measure the frequency of a signal that does not have at
least one full period displayed on the screen. Usually you need more
than two cycles to get consistent results. You are generating the
frequency so you already know what it is. You don\'t need to measure it
in this part of the lab.

## Measuring magnitude using a real circuit

![R-R circuit.](img/Activity_01_Fig_06.png){#01_fig_06 .align-center}

Build the circuit shown in `01_fig_05`{.interpreted-text role="numref"}
on your solderless breadboard using two $470 \Omega$ resistors,
oscilloscope probes and Red Pitaya STEMlab board.

> NOTICE: For ground pin use probes ground leads (crocodile connectors).

![R-R circuit on the breadboard.](img/Activity_01_Fig_07.png){#01_fig_07
.align-center}

We have connected OUT1 directly to IN1 so we can observe a real voltage
signal across resistors R~1~and R~2~.

-   In the OUT1 controls menu, set the Frequency to 200 Hz with 0° Phase
    and 0.9 V amplitude. Deselect \"Show\" button, select SINE waveform
    shape and select \"ON\" button.
-   Set the horizontal time scale to 1.0 mS/Div to display two cycles of
    the waveform.
-   Click on the scope Start button if it is not already running.
-   Using vertical +/- controls set 200 mV/div for IN1 and IN2

The voltage waveform displayed in IN1(yellow) is the voltage across both
resistors (V~R1~+V~R2~). The voltage waveform displayed in IN2 is the
voltage across just R~2~(V~R2~). To display the voltage across R~1~we
use the Math waveform display options. Under the math menu for Signal1
select IN1, select operator \"-\", for Signal2 select IN2 then select
enable. You should now see a third waveform for the voltage across
R~1~(V~R1~).

-   Using vertical +/- controls set 200 mV/div (0.2 V/div) for MATH
    trace.

With this settings you are observing:

-   IN1- Input excitation signal

-   IN2- Voltage drop signal across R~2~

-   MATH - Voltage drop signal across R~1~

-   Record V~R1~and V~R2~.

    -   V~R1~\_\_\_\_\_\_\_V~pp~.
    -   V~R2~\_\_\_\_\_\_\_V~pp~.
    -   V~R1~+V~R2~\_\_\_\_\_\_\_V~pp~.

-   Can you see any difference between the zero crossings of V~R1~and
    V~R2~?

-   Can you even see two distinct sine waves?

    Probably not. There should be no observable time offset and thus no
    phase shift.

You can see that MATH (purple) and IN2 (green) trace are overlapping. To
see both traces you can adjust the vertical position of a channel to
separate them.

This can be done by selecting trace marker (on the left side of the
grid) using mouse left button and moving trace up-down. Make sure to set
the vertical position back to 0 to realign the signals.

Here we don\'t have phase shift and value of R~1~= R~2~so the signal
amplitudes for V~R1~and V~R2~will be the same. The result is that we
have two identical signals (IN2=V~R2~, MATH=V~R1~) on the Oscilloscope.

What happens if you use $220 \Omega$ value for R~2~?

## Measuring RC circuit

-   Replace R~2~with a 1 uF capacitor C~1~.

![RC circuit on](img/Activity_01_Fig_08.png){#01_fig_08}

NOTICE: For $1\, \mu F$ capacitor you will be probably using an
electrolytic capacitor.

This capacitors are polarity sensitive i.e on the positive capacitor pin
the voltage should never go negative and on negative pin (GND) voltage
should never go positive.

From previous example (RR circuit) and Oscilloscope & Signal generator
settings we are generating sine wave which is going from -0.9 V to 0.9
V, causing a wrong polarization of capacitor (it can damage a capacitor)
we need to adjust our output signal so we generate a sine signal which
is always positive (sine signal with an offset).

-   In the OUT1 settings menu set Amplitude and Offset values to 0.45 V
    (Now we are generating sine signal which is oscillating around 0.45
    V of DC offset value i.e sinusoidal signal is going from 0 V to 0.9
    V)

Because there is no DC current through the capacitor, we are not
interested in this DC value. In order to re-center our signals on the
grid, we need to shift signals in vertical direction using negative
offset values.

-   In the IN1 and IN2 settings menu set the value of Vertical Offset to
    -450 mV
-   For the stable acquisition set the trigger level in TRIGGER menu to
    0.45 V

![Oscilloscope signals with RC
circuit.](img/Activity_01_Fig_09.png){#01_fig_09}

-   Measure IN1, IN2 and Math P2P (peak to peak) value. What signal is
    the Math waveform?
-   Record V~R1~, V~C1~and V~R1~+V~C1~.
    -   V~R1~\_\_\_\_\_\_\_\_\_\_\_\_V~PP~.
    -   V~C1~\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_V~PP~.
    -   V~R1~+V~C1~\_\_\_\_\_\_\_\_\_\_\_\_V~PP~.

Now something to do with phase. Hopefully you see a few sine waves with
time offsets or phase differences displayed on the grid. Let\'s measure
the time offsets and calculate the phase differences.

-   Measure the time difference between V~R1~and V~C1~. and calculate
    the phase offsets.

Use `01_eq_2`{.interpreted-text role="eq"} and the measured $\Delta t$
to calculate the phase angle $\theta$.

The CURSORS are useful for determining $\Delta t$; here\'s how:

-   Display at least 2 cycles of the sine waves.
-   Set the horizontal time/div to 500 us/div. Note the Delta cursor
    display keeps track of the sign of the difference.

You can use the measurement display to get frequency. Since you set the
frequency of the source you don\'t really need to depend on the
measurement window for this value.

Assume $\Delta t$ is 0 if you really can\'t see any difference with 1 or
2 cycles of the sine wave on the screen.

-   Put a first cursor at the neg. to pos. zero crossing location for
    the IN1 ( V~R1~+ V~C1~) signal. Put a second cursor at the nearest
    neg. to pos. zero crossing location for the math ( V~R1~) signal.
    Record the time difference and calculate the phase angle. Note
    $\Delta t$ maybe a negative number. Does this mean the phase angle
    leads or lags?

    $\Delta t$ \_\_\_\_\_\_\_\_\_, $\theta$ \_\_\_\_\_\_\_\_\_

-   Put a first cursor at the neg. to pos. zero crossing location for
    the IN1 ( V~R1~+ V~C1~) signal. Put a second cursor at the nearest
    neg. to pos. zero crossing location for the IN2 ( V~C1~) signal.
    Record the time difference and calculate the phase angle.

    $\Delta t$ \_\_\_\_\_\_\_\_\_, $\theta$ \_\_\_\_\_\_\_\_\_

-   Put a first cursor at the neg. to pos. zero crossing location for
    the Math ( V~R1~) signal. Put a second cursor at the nearest neg. to
    pos. zero crossing location for the IN2 (V~C1~) signal. Record the
    time difference and calculate the phase angle.

    $\Delta t$ \_\_\_\_\_\_\_\_\_, $\theta$ \_\_\_\_\_\_\_\_\_

-   Measure the time difference and calculate the phase $\theta$ offset
    at a different frequency.

-   Set OUT1 frequency to 1000 Hz and the time / div to 200 us/div.

-   Put a first cursor at the neg. to pos. zero crossing location for
    the IN1 ( V~R1~+ V~C1~) signal. Put a second cursor at the nearest
    neg. to pos. zero crossing location for the math (V~R1~) signal.
    Record the time difference and calculate the phase angle. Note
    $\Delta t$ maybe a negative number. Does this mean the phase angle
    leads or lags?

    $\Delta t$ \_\_\_\_\_\_\_\_\_, $\theta$ \_\_\_\_\_\_\_\_\_

-   Put a first cursor at the neg. to pos. zero crossing location for
    the IN1 ( V~R1~+ V~C1~) signal. Put a second cursor at the nearest
    neg. to pos. zero crossing location for the IN2 ( V~C1~) signal.
    Record the time difference and calculate the phase angle.

    $\Delta t$ \_\_\_\_\_\_\_\_\_, $\theta$ \_\_\_\_\_\_\_\_\_

-   Put a first cursor at the neg. to pos. zero crossing location for
    the math ( V~R1~) signal. Put a second cursor at the nearest neg. to
    pos. zero crossing location for the IN2 (V~C1~) signal. Record the
    time difference and calculate the phase angle.

    $\Delta t$ \_\_\_\_\_\_\_\_\_, $\theta$ \_\_\_\_\_\_\_\_\_
