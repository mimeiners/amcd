<!-- !split -->
<!-- jupyter-book 01_lec.md -->
# Introduction and Survey

*Risks and Side Effects and/or Discomforts.* 
A script is a keyword selection. It is characterized by my ideas and prejudices about electronics and circuit design
strongly but not completely. And as common, this script has been written with a lot of time constraints, hence, it is
not fully proof read and contains errors. Therefore, you should never rely solely on this script. Consult other sources
like books, papers and application notes, also.



<!-- !split -->
## Analysis vs. Design
Unlike common perception, analog circuit analysis and design is not "black magic"
*Circuit analysis.* 
* The art of decomposing a circuit into manageable pieces.
* Based on the simple, but sufficiently accurate models.
  * "Just-in-time" modeling &ndash; Do not use a complex model unless you know why it's needed!

* One circuit $\Rightarrow$ one solution



*Circuit design.* 
* The art of synthesizing circuits based on experience from extensive analysis
* One set of specifications $\Rightarrow$ Many solutions
* Design skills are best acquired through *learning by doing*
  * This is why we'll have a design project.



<!-- !split -->
## Signal Conditioning
*Wikipedia.* 
"In electronics, signal conditioning means manipulating an analog signal in such a way that
it meets the requirements of the next stage for further processing."

"Signal conditioning can include amplification, filtering, converting, range matching, isolation and
any other processes required to make sensor output suitable for processing after conditioning."



<!-- !split -->
## Meeting a System

<!-- <img src="fig/lec01-wireless_comm.png" width="400"><p><em>Block diagram of a wireless communication system. <div id="fig:wireless_comm"></div></em></p> -->
![<p><em>Block diagram of a wireless communication system. <div id="fig:wireless_comm"></div></em></p>](fig/lec01-wireless_comm.png)

<!-- !split -->
## Low-Noise Amplifier (LNA)

<!-- <img src="fig/lec01-lna_cs_stage.png" width="400"><p><em>Low noise amplifier (LNA). <div id="fig:lna_cs"></div></em></p> -->
![<p><em>Low noise amplifier (LNA). <div id="fig:lna_cs"></div></em></p>](fig/lec01-lna_cs_stage.png)

<!-- !split -->
## Mixers
<!-- !bslidecell 00 0.3 -->
<!-- <img src="fig/lec01-mixer_single_balanced_block.png" width="400"><p><em>Block diagram. <div id="fig:mixer"></div></em></p> -->
![<p><em>Block diagram. <div id="fig:mixer"></div></em></p>](fig/lec01-mixer_single_balanced_block.png)
<!-- !eslidecell -->

<!-- !bslidecell 01 0.6 -->
<!-- <img src="fig/lec01-mixer_single_balanced_circuit.png" width="400"><p><em>Circuit. <div id="fig:mixer_cir"></div></em></p> -->
![<p><em>Circuit. <div id="fig:mixer_cir"></div></em></p>](fig/lec01-mixer_single_balanced_circuit.png)
<!-- !eslidecell -->

<!-- !split -->
## Cross-Coupled Oscillators
<!-- <img src="fig/lec01-oscillator_circuit.png" width="400"> -->
![](fig/lec01-oscillator_circuit.png)

*Frequency of oscillation.* 
$$
\begin{equation}
\omega_{osc} = \frac{1}{\sqrt{L_1(C_{GS2}+C_{DB1}+4C_{GD}+C_1)}}
\end{equation}
$$



<!-- !split -->
## Phase-Locked Loop (PLL)
<!-- <img src="fig/lec01-pll_circuit.png" width="400"> -->
![](fig/lec01-pll_circuit.png)

<!-- !split -->
## Biquads (Active Filter)
<!-- <img src="fig/lec01-biquad_circuit.png" width="400"> -->
![](fig/lec01-biquad_circuit.png)

<!-- !split -->
## ADC / DAC
<!-- <img src="fig/lec01-sdm_circuit.png" width="400"> -->
![](fig/lec01-sdm_circuit.png)

<!-- !split -->
## Course Objectives
* Acquire a thorough understanding of the basic principles, challenges and limitations in analog/mixed-signal (AMS) circuit design
  * Focus on concepts that are unlikely to expire
  * Preparation for further study of state-of-the-art "fine-tuned" realizations 

* Strategy
  * Acquire basic intuition by studying a selection of commonly used circuit and design techniques
  * Acquire depth through a design project that entails design, optimization and thorough characterization of a filter circuit


<!-- !split -->
## Scientific Computing / Data Science
* [Python](https://www.anaconda.com/download/)
* [R Project](https://www.r-project.org) 
* [Matlab](http://de.mathworks.com/?requestedDomain=de.mathworks.com)
* [Gnuplot](http://www.gnuplot.info) ([Gnuplotting](http://www.gnuplotting.org))
* [Command-line tools](http://jeroenjanssens.com/2013/09/19/seven-command-line-tools-for-data-science.html) 

<!-- !split -->
## Analog Circuit Simulation (SPICE)
* [LTspice (Analog Devices)](https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html)
* [TINA-TI (Texas Instruments)](https://www.ti.com/tool/TINA-TI)
* [ngspice (Open Source)](http://ngspice.sourceforge.net)
* [ELDO (Siemens EDA)](https://eda.sw.siemens.com/en-US/eldo/)
* [Spectre (cadence)](https://www.cadence.com/en_US/home/tools/custom-ic-analog-rf-design/circuit-simulation/spectre-simulation-platform.html)
* [PrimeSim HSPICE (SYNOPSIS)](https://www.synopsys.com/implementation-and-signoff/ams-simulation/primesim-hspice.html)

<!-- !split -->
## Design Project
*Design and Characterization of a Universal Filter (Biquad).* 

* Use different descriptions
  * System Level (Math, e.g. Matlab/Simulink, Python)
  * Circuit Level (SPICE)

* Characterisation with Red Pitaya STEMLab
  * Circuit will be built on ASLK Pro

* Technical/Design Report
  * [IEEE templates](https://www.ieee.org/conferences/publishing/templates.html)
  * max. 8 pages
  * Teams of 2-3 students



<!-- !split -->
## Data Science
* Store data in work folder as table (ASCII file, CSV format)
* Store data in Excel like sheet (.xlsx, .ods)
* Store data in specific format, e.g. mat-files (HDF5)
* Store data in [databases](https://db-engines.com), e.g. SQlite

<!-- !split -->
## OS Tools
  * [Shells (bash, zsh, PowerShell, CMD)](https://en.wikipedia.org/wiki/Shell_%28computing%29)
    * [oh-my-zsh](https://ohmyz.sh),
    * [bash-it](https://bash-it.readthedocs.io/en/latest/)
    * [secure shell (ssh)](https://de.wikipedia.org/wiki/Secure_Shell)

  * [Version Control (git)](https://git-scm.com)
  * [Cygwin](https://cygwin.com)
    * A large collection of GNU and open source tools which provide functionality similar to a linux distribution on windows.


<!-- !split -->
## Code Editors
  * [Emacs](https://www.gnu.org/software/emacs/)
  * [Vim](https://www.vim.org)
  * [Notepad++](https://notepad-plus-plus.org)
  * [Atom](https://atom.io)
  * [Visual Studio Code](https://code.visualstudio.com)
  * [PyCharm](https://www.jetbrains.com/pycharm/)

<!-- !split -->
## Are your writing or TeXing?
  * [MikTeX (Windows, MacOS, Linux)](https://miktex.org/)
  * [MacTeX (MacOS)](https://www.tug.org/mactex/)
  * [TeXLive (Linux)](http://tug.org/texlive/)

<!-- !split -->
## LaTeX Editors
  * IDE's
    * [TeXStudio](http://www.texstudio.org)
    * [TeXMaker](http://www.xm1math.net/texmaker/)
    * [TeXWorks](http://www.tug.org/texworks/)

  * Collaborative Frameworks
    * [ShareLaTeX, Online LaTeX](https://www.sharelatex.com/)
    * [CoCalc - Online LaTeX](https://cocalc.com/doc/latex-editor.html)


<!-- !split -->
## Bibliography and LaTeX
  * [Citavi im Detail > Titel exportieren > Export nach BibTeX](https://www1.citavi.com/sub/manual5/de/exporting_to_bibtex.html)
  * [RefWorks - Library Guide Univ. Melbourne](https://unimelb.libguides.com/c.php?g=565734\&p=3912294)
  * [Benutzerdefinierte BibTex-Keys mit Zotero | nerdpause](https://nerdpause.de/benutzerdefinierte-bibtex-keys-mit-zotero/)
  * [JabRef - Library Guide Univ. Melbourne](https://unimelb.libguides.com/c.php?g=565734\&p=3897117)
  * [EndNote - Library Guide Univ. Melbourne](https://unimelb.libguides.com/latexbibtex/endnote)

<!-- !split -->
## Design Project Flow
* Literature research in journals, professional (serious) internet forums (e.g. application notes of semiconductor companies) and library 
  * Set-up literature database

* Concept of your system
  * Partitioning
  * Functions
  * Work packages

* Design, implementation and validation
  * Mathmatical description
  * SPICE modeling and simulation
  * Data analysis and validation
  * Design report


<!-- !split -->
## Assignments
*Design Project.* 
* **System Modell** Matlab/Python
* **Circuit Design** SPICE
* **Characterisation/Measurement** Red Pitaya
* **Technical/Design Report**



<!-- !split -->
## Course Prerequisites
* Fundamentals of linux operating systems 
* Fundamentals of microelectronics
  * Device physics and models
  * Transistor level analog circuits, elementary gain stages
  * Control theory (requency response, feedback, stability)
  * System theory (Laplace and Z-transform)

* Prior exposure to SPICE, Matlab/Simulink, Python (NumPy, SciPy) or equivalent
* Please talk to me if you are not sure if you have the required background

<!-- !split -->
## Course Topics
* Design of Operational Transconductance Ampilfiers (OTAs)
  * Analysis and design
  * OTAs as integrators
  * Noise analysis

* Continuous time filters
  * Biquad designs
  * Approximation errors
  * Circuit simulation

* Switched capacitor filters
  * Sampling
  * Bilinear transform s-domain to z-domain


<!-- !split -->
## Brave New World
<!-- !bslidecell 00 0.9 -->
<!-- <img src="./fig/lec01-AMD@16nm@Jaguar.jpg" width="600"> -->
![](./fig/lec01-AMD@16nm@Jaguar.jpg)
<!-- !eslidecell -->

<!-- !split -->
## From Sand to Silicon (Infineon, Dresden)
<!-- !bslidecell 00 0.9 -->

<iframe width="793" height="446" src="https://www.youtube.com/embed/bor0qLifjz4?list=PLO_wT97BGA6xC6hNy9VGtt1bKwVuQXI5B" frameborder="0" allowfullscreen></iframe>

<!-- !eslidecell -->

<!-- !split -->
## FinFET (Intel)
<!-- !bslidecell 00 0.9 -->

<iframe width="793" height="446" src="https://www.youtube.com/embed/_VMYPLXnd7E" frameborder="0" allowfullscreen></iframe>

<!-- !eslidecell -->

<!-- !split -->
## TSMC Fab (Next Gen 7/5 nm)
<!-- !bslidecell 00 0.9 -->

<iframe width="793" height="446" src="https://www.youtube.com/embed/Hb1WDxSoSec" frameborder="0" allowfullscreen></iframe>

<!-- !eslidecell -->

<!-- !split -->
## Once upon a time ...

<!-- !bslidecell 00 0.45 -->
<!-- <img src="fig/lec01-vacuum_tube.png" width="400"><p><em>1906 Electron Tube</em></p> -->
![<p><em>1906 Electron Tube</em></p>](fig/lec01-vacuum_tube.png)
<!-- !eslidecell -->

<!-- !bslidecell 01 0.45 -->
<!-- <img src="fig/lec01-1st_transistor.png" width="400"><p><em>1947 1st Transistor, Bell Labs</em></p> -->
![<p><em>1947 1st Transistor, Bell Labs</em></p>](fig/lec01-1st_transistor.png)
<!-- !eslidecell -->

<!-- !split -->
## First IC and today's chips
<!-- !bslidecell 00 0.45 -->
<!-- <img src="fig/lec01-1st_ic_kilby.png" width="400"><p><em>1958 Jack Kilby's 1st IC</em></p> -->
![<p><em>1958 Jack Kilby's 1st IC</em></p>](fig/lec01-1st_ic_kilby.png)
<!-- !eslidecell -->

<!-- !bslidecell 01 0.45 -->
<!-- <img src="fig/lec01-modern_ic.png" width="400"><p><em>Moderner IC</em></p> -->
![<p><em>Moderner IC</em></p>](fig/lec01-modern_ic.png)
<!-- !eslidecell -->

<!-- !split -->
## Design and Manufacturing

<!-- <img src="fig/lec01-design_manufacturing.png" width="200"><p><em>(c) M. Ortmanns, Univ. Ulm</em></p> -->
![<p><em>(c) M. Ortmanns, Univ. Ulm</em></p>](fig/lec01-design_manufacturing.png)

<!-- !split -->
## Technology Shrink

<!-- <img src="fig/lec01-technology_shrink.png" width="200"><p><em>(c) M. Ortmanns, Univ. Ulm</em></p> -->
![<p><em>(c) M. Ortmanns, Univ. Ulm</em></p>](fig/lec01-technology_shrink.png)

<!-- !split -->
## Moore's Law
<!-- !bslidecell 00 0.9 -->


<embed src="https://players.brightcove.net/734546229001/default_default/index.html?videoId=4144803153001" width="793" height="446" autoplay="false" loop="true"></embed>
<p><em></em></p>


<!-- !eslidecell -->

<!-- !split -->
## Evolution of Products
* Driven by technology improvement
  * Costs (larger chips, smaller feature size, better yield)
  * Performance  (new devices, higher speed, less power)

* Driven by design methodology improvement
  * Architecture (performance, features)
  * CAD (development costs, time-to-market)

* Complexity of designs double each year
* Role of CAD
  * Improve productivity of design processes
  * Reduce complexity for designer
  * Guarantee proper operation of the devices


<!-- !split -->
## EDA Competence
* EDA Vendors (tool developers)
  * Identification fo design tasks, demand for tools
  * Development of strategies and algorithms
  * Implementation of software tools
  * Verification of stability and functionality of the software tools

* IC Manufacturers
  * Decision planning, which tool might increase productivity
  * EDA tool managers, installation and maintenance
  * Experts of software usage, application in product design and developement

* Lecturers and students
  * Job oppertunities
  * Need to keep up-to-date


<!-- !split -->
## View on Hardware (I)

<!-- <img src="fig/lec01-views_on_hardware_1.png" width="400"> -->
![](fig/lec01-views_on_hardware_1.png)

<!-- !split -->
## View on Hardware (II)

<!-- <img src="fig/lec01-views_on_hardware_2.png" width="400"><p><em>(c) M. Ortmanns, Univ. Ulm</em></p> -->
![<p><em>(c) M. Ortmanns, Univ. Ulm</em></p>](fig/lec01-views_on_hardware_2.png)

<!-- !split -->
## Abstraction Layers

<!-- <img src="fig/lec01-abstraction_layer.png" width="400"><p><em>(c) M. Ortmanns, Univ. Ulm</em></p> -->
![<p><em>(c) M. Ortmanns, Univ. Ulm</em></p>](fig/lec01-abstraction_layer.png)

<!-- !split -->
## Design Flow

<!-- <img src="fig/lec01-design_flow.png" width="400"><p><em>(c) M. Ortmanns, Univ. Ulm</em></p> -->
![<p><em>(c) M. Ortmanns, Univ. Ulm</em></p>](fig/lec01-design_flow.png)

<!-- !split -->
## Continuous Verification

<!-- <img src="fig/lec01-verification.png" width="400"><p><em>(c) M. Ortmanns, Univ. Ulm</em></p> -->
![<p><em>(c) M. Ortmanns, Univ. Ulm</em></p>](fig/lec01-verification.png)

<!-- !split -->
## Front End vs. Back End (analog)

<!-- <img src="fig/lec01-front-end_back-end_analog.png" width="400"><p><em>(c) M. Ortmanns, Univ. Ulm</em></p> -->
![<p><em>(c) M. Ortmanns, Univ. Ulm</em></p>](fig/lec01-front-end_back-end_analog.png)

<!-- !split -->
## Front End vs. Back End (digital)

<!-- <img src="fig/lec01-front-end_back-end_digital.png" width="400"><p><em>(c) M. Ortmanns, Univ. Ulm</em></p> -->
![<p><em>(c) M. Ortmanns, Univ. Ulm</em></p>](fig/lec01-front-end_back-end_digital.png)

<!-- !split -->
## Design Methodology
* Full Custom – fully manual: ASIC
  * Mostly analog circuits
  * Basic digital gates
  * Full control, but long development time (up to years)

* Semi-custom: ASIC-manufacturing with use of pre-designed parts
  * Standard cells, Macro cells, IP’s
  * Re-use of pre-defined blocks or mask sets
  * Limited control/flexibility, but shorter development time (down to weeks)

* Fully automated: No manufacturing, re-programmable ASICs
  * FPGA, PLA
  * Solely digital circuits
  * Rapid prototyping


<!-- !split -->
## Analog Design Entry

<!-- <img src="fig/lec01-design_entry_analog.png" width="400"> -->
![](fig/lec01-design_entry_analog.png)

<!-- !split -->
## Netlist

<!-- <img src="fig/lec01-netlist.png" width="400"> -->
![](fig/lec01-netlist.png)

<!-- !split -->
## Layout

<!-- <img src="fig/lec01-inverter_layout.png" width="400"> -->
![](fig/lec01-inverter_layout.png)

<!-- !split -->
## Digital Design Entry

<!-- <img src="fig/lec01-design_entry_digital.png" width="400"> -->
![](fig/lec01-design_entry_digital.png)

<!-- !split -->
## Hardware Description Language

<!-- <img src="fig/lec01-hdl_inv.png" width="400"> -->
![](fig/lec01-hdl_inv.png)

<!-- !split -->
## Technology-Gates and Netlisting

<!-- <img src="fig/lec01-technology_gate_netlist.png" width="400"> -->
![](fig/lec01-technology_gate_netlist.png)

<!-- !split -->
## Standard Cell Layout

<!-- <img src="fig/lec01-standard_cell_layout.png" width="400"> -->
![](fig/lec01-standard_cell_layout.png)

<!-- !split -->
<!-- ======= Filter Design ======= -->
<!-- # #include "lec-02-filter-design.do.txt" -->

<!-- !split -->
<!-- ======= Biquads ======= -->
<!-- # #include "lec-03-biquads.do.txt" -->

<!-- !split -->
<!-- ======= Ladders ======= -->
<!-- # #include "lec-04-ladders.do.txt" -->

<!-- !split -->
<!-- ======= Noise ======= -->
<!-- # #include "lec-05-noise.do.txt" -->

<!-- !split -->
<!-- ===== gm/ID ===== -->
<!-- # #include "lec-06-gm-ID.do.txt" -->

<!-- !split -->
<!-- ======= OTA Design for Integrators ======= -->
<!-- # #include "lec-07-ota-design.do.txt" -->

<!-- !split -->
<!-- ======= OTA Settling ======= -->
<!-- # #include "lec-08-ota-settling.do.txt" -->

<!-- !split -->
<!-- ======= Integrators ======= -->
<!-- # #include "lec-09-integrators.do.txt" -->

<!-- !split -->
<!-- ======= SC Filter ======= -->
<!-- # #include "lec-10-sc_filter.do.txt" -->

<!-- !split -->
<!-- ======= ADC/DAC Introduction ======= -->
<!-- # #include "lec-11-adc_dac_intro.do.txt" -->

<!-- !split -->
<!-- ======= ADC Metrics ======= -->
<!-- # #include "lec-12-adc_metrics.do.txt" -->

<!-- !split -->
