v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -250 30 -230 {lab=vinp}
N 160 -250 160 -230 {lab=vinn}
N 280 -250 280 -230 {lab=vcm}
N 240 40 280 40 {lab=#net1}
N 240 100 280 100 {lab=#net2}
N 200 160 240 160 {lab=#net2}
N 240 100 240 160 {lab=#net2}
N 200 100 240 100 {lab=#net2}
N 240 -30 240 40 {lab=#net1}
N 200 40 240 40 {lab=#net1}
N 200 -30 240 -30 {lab=#net1}
N 240 160 320 160 {lab=#net2}
N 240 -30 330 -30 {lab=#net1}
N 260 70 280 70 {lab=vcm}
N 420 -30 420 40 {lab=outp}
N 390 -30 420 -30 {lab=outp}
N 420 100 420 160 {lab=outn}
N 380 160 420 160 {lab=outn}
N 420 40 480 40 {lab=outp}
N 420 100 480 100 {lab=outn}
N 120 -30 140 -30 {lab=outp}
N 120 -90 120 -30 {lab=outp}
N 120 -90 420 -90 {lab=outp}
N 420 -90 420 -30 {lab=outp}
N 120 160 140 160 {lab=outn}
N 120 160 120 220 {lab=outn}
N 120 220 420 220 {lab=outn}
N 420 160 420 220 {lab=outn}
N 110 100 140 100 {lab=vinp}
N 110 40 140 40 {lab=vinn}
C {capa.sym} 360 -30 3 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 480 40 0 1 {name=p1 sig_type=std_logic lab=outp}
C {lab_pin.sym} 480 100 0 1 {name=p2 sig_type=std_logic lab=outn}
C {vsource.sym} 30 -200 0 0 {name=Vinp value="DC 0.5 AC 0.5"}
C {gnd.sym} 30 -170 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 110 40 0 0 {name=p5 sig_type=std_logic lab=vinn
}
C {lab_wire.sym} 110 100 0 0 {name=p7 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 260 70 0 0 {name=p9 sig_type=std_logic lab=vcm}
C {vsource.sym} 160 -200 0 0 {name=Vinn value="DC 0.5 AC -0.5"}
C {gnd.sym} 160 -170 0 0 {name=l4 lab=GND}
C {vsource.sym} 280 -200 0 0 {name=Vcm value=0.5 savecurrent=false}
C {gnd.sym} 280 -170 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 510 -430 0 0 {name=NGSPICE only_toplevel=true 
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
C {launcher.sym} 150 -380 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/launcher.sym} 150 -340 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {opin.sym} 30 -250 0 0 {name=p3 lab=vinp}
C {opin.sym} 160 -250 0 0 {name=p4 lab=vinn}
C {opin.sym} 280 -250 0 0 {name=p6 lab=vcm}
C {ideal_differential_opamp.sym} 360 70 0 0 {name=x1}
C {res.sym} 170 100 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 170 40 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 170 -30 3 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 170 160 3 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 350 160 3 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
