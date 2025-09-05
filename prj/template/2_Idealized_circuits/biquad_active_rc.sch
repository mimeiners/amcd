v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -250 30 -230 {lab=vinp}
N 160 -250 160 -230 {lab=vinn}
N 280 -250 280 -230 {lab=vcm}
N 160 390 200 390 {lab=#net1}
N 160 450 240 450 {lab=#net1}
N 160 390 160 450 {lab=#net1}
N 120 390 160 390 {lab=#net1}
N 160 190 160 260 {lab=#net2}
N 160 330 200 330 {lab=#net2}
N 160 260 250 260 {lab=#net2}
N 180 360 200 360 {lab=vcm}
N 340 260 340 330 {lab=#net3}
N 310 260 340 260 {lab=#net3}
N 300 450 340 450 {lab=#net4}
N 340 190 340 260 {lab=#net3}
N 40 390 60 390 {lab=vinp}
N 40 330 60 330 {lab=vinn}
N 120 260 160 260 {lab=#net2}
N 160 260 160 330 {lab=#net2}
N 120 330 160 330 {lab=#net2}
N 40 260 60 260 {lab=vinn}
N 40 260 40 330 {lab=vinn}
N 30 330 40 330 {lab=vinn}
N 40 450 60 450 {lab=vinp}
N 40 390 40 450 {lab=vinp}
N 30 390 40 390 {lab=vinp}
N 120 450 160 450 {lab=#net1}
N 160 450 160 520 {lab=#net1}
N 520 390 560 390 {lab=#net5}
N 520 450 600 450 {lab=#net5}
N 520 390 520 450 {lab=#net5}
N 480 390 520 390 {lab=#net5}
N 520 330 560 330 {lab=#net6}
N 520 260 610 260 {lab=#net6}
N 540 360 560 360 {lab=vcm}
N 700 260 700 330 {lab=outp}
N 670 260 700 260 {lab=outp}
N 660 450 700 450 {lab=outn}
N 740 330 760 330 {lab=outp}
N 750 390 760 390 {lab=outn}
N 400 390 420 390 {lab=#net4}
N 400 330 420 330 {lab=#net3}
N 480 260 520 260 {lab=#net6}
N 520 260 520 330 {lab=#net6}
N 480 330 520 330 {lab=#net6}
N 400 260 420 260 {lab=#net3}
N 400 260 400 330 {lab=#net3}
N 400 450 420 450 {lab=#net4}
N 400 390 400 450 {lab=#net4}
N 480 450 520 450 {lab=#net5}
N 340 330 400 330 {lab=#net3}
N 340 390 400 390 {lab=#net4}
N 340 390 340 450 {lab=#net4}
N 700 390 700 450 {lab=outn}
N 160 520 240 520 {lab=#net1}
N 300 520 340 520 {lab=#net4}
N 340 450 340 520 {lab=#net4}
N 300 190 340 190 {lab=#net3}
N 160 190 240 190 {lab=#net2}
N 670 130 750 130 {lab=outn}
N 160 130 610 130 {lab=#net2}
N 160 130 160 190 {lab=#net2}
N 750 130 750 390 {lab=outn}
N 700 390 750 390 {lab=outn}
N 740 330 740 580 {lab=outp}
N 700 330 740 330 {lab=outp}
N 670 580 740 580 {lab=outp}
N 160 580 610 580 {lab=#net1}
N 160 520 160 580 {lab=#net1}
C {capa.sym} 280 260 3 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 30 -200 0 0 {name=Vinp value="DC 0.5 AC 0.5"}
C {gnd.sym} 30 -170 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 30 330 0 0 {name=p5 sig_type=std_logic lab=vinn
}
C {lab_wire.sym} 30 390 0 0 {name=p7 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 180 360 0 0 {name=p9 sig_type=std_logic lab=vcm}
C {vsource.sym} 160 -200 0 0 {name=Vinn value="DC 0.5 AC -0.5"}
C {gnd.sym} 160 -170 0 0 {name=l4 lab=GND}
C {vsource.sym} 280 -200 0 0 {name=Vcm value=0.5 savecurrent=false}
C {gnd.sym} 280 -170 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 560 -230 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write biquad_active_rc.raw
set appendwrite

ac dec 100 10k 100MEG
write biquad_active_rc.raw
let vod=v(outp)-v(outn)
plot db(v(vod))

.endc
"}
C {launcher.sym} 150 -70 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/launcher.sym} 150 -30 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {opin.sym} 30 -250 0 0 {name=p3 lab=vinp}
C {opin.sym} 160 -250 0 0 {name=p4 lab=vinn}
C {opin.sym} 280 -250 0 0 {name=p6 lab=vcm}
C {ideal_differential_opamp.sym} 280 360 0 0 {name=x1}
C {res.sym} 90 390 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 90 330 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 270 190 3 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 270 520 3 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 270 450 3 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 90 260 3 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 90 450 3 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 640 260 3 0 {name=C5
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 760 330 0 1 {name=p8 sig_type=std_logic lab=outp}
C {lab_pin.sym} 760 390 0 1 {name=p10 sig_type=std_logic lab=outn}
C {lab_wire.sym} 540 360 0 0 {name=p13 sig_type=std_logic lab=vcm}
C {ideal_differential_opamp.sym} 640 360 0 0 {name=x2}
C {res.sym} 450 390 3 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 450 330 3 0 {name=R6
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 640 130 3 0 {name=R7
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 640 580 3 0 {name=R8
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 630 450 3 0 {name=C6
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 450 260 3 0 {name=C7
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 450 450 3 0 {name=C8
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
