---
title: The MOS transistor connected as a diode
---

# Objective

The purpose of this experiments is to investigate the forward current
vs. voltage characteristics of a MOS field effect transistor (NMOS and
PMOS) connected as a diode. Before doing this experiment overview of
previous experiment is
[recommended](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity22_TheBJTasDiode.html).

# Notes

In this tutorials we use the terminology taken from the user manual when
referring to the connections to the Red Pitaya STEMlab board
[hardware](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html).

[Oscilloscope](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
&
[Signal](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
[generator](http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html)
application is used for generating and observing signals on the circuit.

Extension connector pins used for **+5V** , **-3.3V** and **+3.3V**
voltage supply are show in the documentation
[here](http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2).

::: note
::: title
Note
:::

Red Pitaya STEMlab outputs can generate voltage signals with maximal
output range of +/- 1V (2Vpp). For this experiment the higher signal
amplitudes are required. Because of that we will use an
[OP484](http://www.analog.com/media/en/technical-documentation/data-sheets/OP184_284_484.pdf)
in the
[inverting](http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity13_BasicOPAmpConfigurations.html#inverting-amplifier)
opamp configuration to enable OUT1/OUT2 signal amplification achieving
voltage swing between +4.7V to -3.2V. An OP484 will be supplied from
STEMlab +5V and -3.3V voltage rails. Gain of the inverting amplifier
will be set to \~5, where $R_i  = 2.2k \Omega$ and $R_f  = 10k \Omega$

Try to answer why we have used an OP484 instead for example OP27 or
OP97. (hint \"rail-to-rail\").
:::

## Materials

-   Red Pitaya STEMlab
-   1x
    [OP484](http://www.analog.com/media/en/technical-documentation/data-sheets/OP184_284_484.pdf)
    quad rail-rail op-amp
-   1x 1kΩ Resistor
-   1x small signal NMOS transistor
    ([ZVN211](http://www.redrok.com/MOSFET_ZVN2110A_100V_320mA_4O_Vth2.4_TO-92_ELine.pdf))
-   1x small signal PMOS transistor
    ([ZVP211](https://www.diodes.com/assets/Datasheets/ZVP2110A.pdf))
-   1x Solder-less Breadboard

## NMOS as a diode

Connection of the NMOS in diode configuration is shown
`23_fig_02`{.interpreted-text role="numref"}. NMOS operate different
than the NPN BJT transistor in a diode configuration.

Forward drop down voltage will not be typical 0.7V but it is dependent
on transistor size, specification etc. For selected NMOS transistor the
so called threshold voltage $V_{TH}$ is around 2.4V.This mean when the
Gate (G) voltage exceed $V_{TH}$ the transistor will be turned ON and
start conducting. Of course since Drain (D) pin is connected to the Gate
pin of the transistor the potential of the $D-G$ will stay at the level
of the threshold voltage $V_{TH}$.

::: note
::: title
Note
:::

This configuration of NMOS will effectively produce a diode with forward
drop voltage equal to the $V_{TH}$
:::

![[ZVN211](http://www.redrok.com/MOSFET_ZVN2110A_100V_320mA_4O_Vth2.4_TO-92_ELine.pdf)
specifications](img/Activity_23_Fig_01.png){#23_fig_01 .align-center}

On the breadboard build the circuit from `23_fig_02`{.interpreted-text
role="numref"} and proceed withe the measurements.

![NMOS diode connection diagram](img/Activity_23_Fig_02.png){#23_fig_02
.align-center}

## Procedure

1.  Build the circuit from `23_fig_01`{.interpreted-text role="numref"}
    on the breadboard. Set R1=2.2kΩ, R2=10kΩ and R3=1kΩ. For M1 take
    ZVN211.

    ![NMOS diode connection on the
    breadboard](img/Activity_22_Fig_03.png){#23_fig_03 .align-center}

    ::: warning
    ::: title
    Warning
    :::

    Before connecting the circuit to the STEMlab -3.3V and +3.3V pins
    double check your circuit. The -3.3V and +3.3V voltage supply pins
    do not have short circuit handling and they can be damaged in case
    of short circuit.
    :::

2.  Start the Oscilloscope & Signal generator application

3.  In the OUT1 settings menu set Amplitude value to 0.45V, DC offset to
    -0.45 V, Frequency to 1kHz to apply the input voltage.

    From the waveform menu select TRIANGLE, deselect SHOW and select
    enable.

4.  On the left bottom of the screen be sure that IN1, IN2 and MATH
    V/div are set to 1V/div (You can set V/div by selecting the desired
    channel and using vertical +/- controls).

5.  Set t/div value to 200us/div (You can set t/div using horizontal +/-
    controls)

6.  Under MATH channel settings set $IN1-IN2$ and select ENABLE.

7.  Under IN1 and IN2 menu settings set probe to x10 and vertical offset
    to 0.

8.  Under MATH menu settings set vertical offset to 0.

9.  Under TRIGER settings, set trigger level to 1V

![NMOS diode connection
measurements](img/Activity_23_Fig_04.png){#23_fig_04 .align-center}

## VI curve measurements

Since NMOS can behave as an diode with forward voltage equal to the
$V_{TH}$ (configuration shown on `23_fig_02`{.interpreted-text
role="numref"}) we can measure its VI characteristic as we did when
performing diode measurements.For this task we will use Jupyter Notebook
Web application. How to start Jupyter Notebook and create new project is
shown on figure 5 flow chart.

::: note
::: title
Note
:::

The [Jupyter](http://jupyter.org/index.html)
[Notebook](http://jupyter.org/index.html) is a web application that
allows you to create and share documents that contain live code,
equations, visualizations and explanatory text. They have also ensured
support for the Jupyter application with Red Pitaya libraries enabling
control of all features of the STEMlab boards such as: signal
acquisition, signal generation, digital signal control, communication
etc. The Jupyter Notebook is started on the same way as any other
applications. After starting Jupyter application a web based notebook is
opened. This combination of the notebook, STEMlab and Python features
makes the STEMlab an excellent tool for prototyping and quick
programing. Since Jupyter Notebook enables text, equation and picture
editing this is a perfect tool for tutorials, examples and ect.
:::

![Creating new Jupyter notebook](img/Activity_19_Fig_07.png){#23_fig_05
.align-center}

If you have successfully created new Jupyter notebook then copy-paste
code bellow and run it.

Code bellow will generate same signal as from
`23_fig_04`{.interpreted-text role="numref"} but it will plot them in XY
graph.

For measuring $VI$ curve an \"XY\" plot is required where x-axis will
represent diode voltage $IN_2$ and y-axis a diode current
$(IN_1 - IN_2) / R_3$.

**Copy code from below into cell 1**

::: {.literalinclude language="python" linenos=""}
code/Activity_23_Code_01.py
:::

Create new cell (Insert -\> Cell Below) and copy code from below into
it.

::: {.literalinclude language="python" linenos=""}
code/Activity_23_Code_02.py
:::

Run Cell 1 and Cell 2. Notice cell 2 is a main loop for the acquisition
and re-plotting. If you stop the acquisition just run only cell 2 for
starting measurements again.

After running the code above you should get diode VI characteristic as
is shown on `23_fig_06`{.interpreted-text role="numref"}.

![NMOS VI characteristic measured using Jupyter
Notebook](img/Activity_23_Fig_06.png){#23_fig_06 .align-center}

## PMOS as a diode

Same measurements can be also don for PMOS transistor. With PMOS
transistor the voltage polarity is reversed so PMOS diode configuration
must be different than NMOS one. PMOS diode configuration is shown on
`23_fig_07`{.interpreted-text role="numref"}.

![PMOS diode connection diagram](img/Activity_23_Fig_07.png){#23_fig_07
.align-center}

## Procedure

1.  Build the circuit from `23_fig_07`{.interpreted-text role="numref"}
    on the breadboard. Set R1=2.2kΩ, R2=10kΩ and R3=1kΩ. For M1 take
    ZVP211.

    ::: warning
    ::: title
    Warning
    :::

    Before connecting the circuit to the STEMlab -3.3V and +3.3V pins
    double check your circuit. The -3.3V and +3.3V voltage supply pins
    do not have short circuit handling and they can be damaged in case
    of short circuit.
    :::

2.  Start the Oscilloscope & Signal generator application.

3.  In the OUT1 settings menu set Amplitude value to 0.45V, DC offset to
    -0.45 V, Frequency to 1kHz to apply the input voltage.

    From the waveform menu select TRIANGLE, deselect SHOW and select
    enable.

4.  On the left bottom of the screen be sure that IN1, IN2 and MATH
    V/div are set to 1V/div (You can set V/div by selecting the desired
    channel and using vertical +/- controls)

5.  Set t/div value to 200us/div (You can set t/div using horizontal +/-
    controls)

6.  Under MATH channel settings set $IN1-IN2$ and select ENABLE.

7.  Under IN1 and IN2 menu settings set probe to x10 and vertical offset
    to 0.

8.  Under MATH menu settings set vertical offset to 0.

9.  Under TRIGER settings, set trigger level to 1V

    ![PMOS diode connection
    measurements](img/Activity_23_Fig_08.png){#23_fig_08 .align-center}

As we can see from `23_fig_08`{.interpreted-text role="numref"} the PMOS
in diode configuration behaves as an diode with forward drop voltage
equal to the PMOS $V_{TH}$.

Compare `23_fig_08`{.interpreted-text role="numref"} and
`23_fig_04`{.interpreted-text role="numref"} and try to explain the
difference between NMOS and PMOS diode configurations.
