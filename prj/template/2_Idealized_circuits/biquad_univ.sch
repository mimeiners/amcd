v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 330 -300 410 -300 {lab=#net1}
N 160 -210 230 -210 {lab=#net1}
N 230 -300 230 -210 {lab=#net1}
N 160 -300 230 -300 {lab=#net1}
N 10 -610 40 -610 {lab=BPF}
N 40 -300 100 -300 {lab=BPF}
N 480 -610 540 -610 {lab=#net2}
N 40 -610 320 -610 {lab=BPF}
N 480 -730 600 -730 {lab=#net2}
N 480 -730 480 -610 {lab=#net2}
N 380 -610 480 -610 {lab=#net2}
N -80 -740 10 -740 {lab=BPF}
N 10 -740 10 -610 {lab=BPF}
N -30 -610 10 -610 {lab=BPF}
N -260 -640 -210 -640 {lab=#net3}
N -260 -740 -140 -740 {lab=#net3}
N -260 -740 -260 -640 {lab=#net3}
N -370 -640 -260 -640 {lab=#net3}
N 330 -420 490 -420 {lab=#net1}
N 330 -420 330 -300 {lab=#net1}
N 230 -300 330 -300 {lab=#net1}
N 940 -420 980 -420 {lab=#net4}
N 1040 -580 1100 -580 {lab=#net4}
N 930 -580 980 -580 {lab=#net4}
N 770 -730 770 -580 {lab=LPF}
N 1040 -690 1160 -690 {lab=#net4}
N 1040 -690 1040 -580 {lab=#net4}
N 980 -580 1040 -580 {lab=#net4}
N 1320 -690 1320 -550 {lab=HPF}
N -490 -640 -430 -640 {lab=HPF}
N -490 -840 -490 -640 {lab=HPF}
N 640 -420 640 -270 {lab=BSF}
N 640 -420 880 -420 {lab=BSF}
N 770 -580 870 -580 {lab=LPF}
N 30 -210 30 -180 {lab=#net5}
N 30 -210 100 -210 {lab=#net5}
N 30 -120 30 -100 {lab=GND}
N 10 -740 60 -740 {lab=BPF}
N 1220 -690 1320 -690 {lab=HPF}
N 1280 -550 1320 -550 {lab=HPF}
N 1320 -840 1320 -690 {lab=HPF}
N -490 -840 1320 -840 {lab=HPF}
N 1320 -550 1360 -550 {lab=HPF}
N 660 -730 770 -730 {lab=LPF}
N 720 -580 770 -580 {lab=LPF}
N 770 -730 810 -730 {lab=LPF}
N 40 -610 40 -300 {lab=BPF}
N 980 -580 980 -420 {lab=#net4}
N 550 -420 640 -420 {lab=BSF}
N 640 -270 700 -270 {lab=BSF}
N 590 -270 640 -270 {lab=BSF}
C {capa.sym} 630 -730 1 1 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -110 -740 1 1 {name=C2
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 350 -610 3 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 900 -580 3 0 {name=R2
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 1190 -690 3 0 {name=R3
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 910 -420 3 0 {name=R4
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} -400 -640 3 0 {name=R5
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 130 -300 3 0 {name=R6
value=\{RQ\}
footprint=1206
device=resistor
m=1}
C {res.sym} 130 -210 3 0 {name=R7
value=\{RH\}
footprint=1206
device=resistor
m=1}
C {gnd.sym} 540 -550 0 1 {name=l3 lab=GND sig_type=std_logic}
C {res.sym} 520 -420 3 0 {name=R8
value=\{R\}
footprint=1206
device=resistor
m=1}
C {opin.sym} 1350 -550 0 0 {name=p1 lab=HPF sig_type=std_logic}
C {opin.sym} 700 -270 0 0 {name=p2 lab=BSF sig_type=std_logic}
C {opin.sym} 800 -730 0 0 {name=p3 lab=LPF sig_type=std_logic
}
C {opin.sym} 60 -740 0 0 {name=p4 lab=BPF sig_type=std_logic}
C {opamp1.sym} -130 -610 0 0 {name=x1}
C {opamp1.sym} 620 -580 0 0 {name=x2}
C {opamp1.sym} 1180 -550 0 0 {name=x3}
C {opamp1.sym} 490 -270 0 0 {name=x4}
C {gnd.sym} 30 -100 0 0 {name=l5 lab=GND sig_type=std_logic}
C {vsource.sym} 30 -150 0 1 {name=V1 value="PULSE(-0.2 0.2 0 0.1u 0.1u 0.5m 1ms 10) AC 1"}
C {title.sym} -420 260 0 0 {name=l6 author="Mirco Meiners"}
C {gnd.sym} 1100 -520 0 1 {name=l1 lab=GND sig_type=std_logic}
C {gnd.sym} -210 -580 0 1 {name=l4 lab=GND sig_type=std_logic}
C {gnd.sym} 410 -240 0 1 {name=l2 lab=GND sig_type=std_logic}
C {devices/code_shown.sym} 1190 -410 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.param R=1k C=100n RQ=R*10 RH=R/1
.control
option sparse
save all
op
write biquad.raw
set appendwrite

*ac dec 20 10 1G
ac lin 1000 1 3k
write biquad.raw
plot db(v(LPF)) db(v(HPF)) db(v(BPF)) db(v(BSF))

.endc
"}
C {launcher.sym} 900 -170 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/launcher.sym} 900 -130 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
