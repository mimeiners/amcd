v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -250 30 -230 {lab=vinp}
N 160 -250 160 -230 {lab=vinn}
N 280 -250 280 -230 {lab=vcm}
N 140 150 180 150 {lab=#net1}
N 140 280 220 280 {lab=#net1}
N 140 150 140 210 {lab=#net1}
N 100 150 140 150 {lab=#net1}
N 140 -50 140 20 {lab=#net2}
N 140 90 180 90 {lab=#net2}
N 100 -50 140 -50 {lab=#net2}
N 140 -50 230 -50 {lab=#net2}
N 160 120 180 120 {lab=vcm}
N 320 -50 320 90 {lab=outp}
N 290 -50 320 -50 {lab=outp}
N 320 150 320 280 {lab=outn}
N 280 280 320 280 {lab=outn}
N 320 90 380 90 {lab=outp}
N 320 150 380 150 {lab=outn}
N 20 -50 40 -50 {lab=outp}
N 20 -110 20 -50 {lab=outp}
N 20 -110 320 -110 {lab=outp}
N 320 -110 320 -50 {lab=outp}
N 20 280 40 280 {lab=outn}
N 20 280 20 340 {lab=outn}
N 20 340 320 340 {lab=outn}
N 320 280 320 340 {lab=outn}
N 20 150 40 150 {lab=vinp}
N 20 90 40 90 {lab=vinn}
N 100 20 140 20 {lab=#net2}
N 140 20 140 90 {lab=#net2}
N 100 90 140 90 {lab=#net2}
N 20 20 40 20 {lab=vinn}
N 20 20 20 90 {lab=vinn}
N 10 90 20 90 {lab=vinn}
N 20 210 40 210 {lab=vinp}
N 20 150 20 210 {lab=vinp}
N 10 150 20 150 {lab=vinp}
N 100 210 140 210 {lab=#net1}
N 140 210 140 280 {lab=#net1}
N 100 280 140 280 {lab=#net1}
C {capa.sym} 260 -50 3 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 380 90 0 1 {name=p1 sig_type=std_logic lab=outp}
C {lab_pin.sym} 380 150 0 1 {name=p2 sig_type=std_logic lab=outn}
C {vsource.sym} 30 -200 0 0 {name=Vinp value="DC 0.5 AC 0.5"}
C {gnd.sym} 30 -170 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 10 90 0 0 {name=p5 sig_type=std_logic lab=vinn
}
C {lab_wire.sym} 10 150 0 0 {name=p7 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 160 120 0 0 {name=p9 sig_type=std_logic lab=vcm}
C {vsource.sym} 160 -200 0 0 {name=Vinn value="DC 0.5 AC -0.5"}
C {gnd.sym} 160 -170 0 0 {name=l4 lab=GND}
C {vsource.sym} 280 -200 0 0 {name=Vcm value=0.5 savecurrent=false}
C {gnd.sym} 280 -170 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 460 -230 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write bilinear_active_rc.raw
set appendwrite

ac dec 100 10k 100MEG
write bilinear_active_rc.raw
let vod=v(outp)-v(outn)
plot db(v(vod))

.endc
"}
C {launcher.sym} 550 200 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/launcher.sym} 550 240 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {opin.sym} 30 -250 0 0 {name=p3 lab=vinp}
C {opin.sym} 160 -250 0 0 {name=p4 lab=vinn}
C {opin.sym} 280 -250 0 0 {name=p6 lab=vcm}
C {ideal_differential_opamp.sym} 260 120 0 0 {name=x1}
C {res.sym} 70 150 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 70 90 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 70 -50 3 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 70 280 3 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 250 280 3 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 70 20 3 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 70 210 3 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
