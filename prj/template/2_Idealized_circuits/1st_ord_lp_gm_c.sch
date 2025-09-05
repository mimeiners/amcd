v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 430 -0 440 0 {lab=vcm}
N 200 -30 260 30 {lab=outn}
N 280 30 300 30 {lab=outn}
N 280 -30 300 -30 {lab=outp}
N 460 -80 460 -30 {lab=outp}
N 430 -30 460 -30 {lab=outp}
N 280 -80 460 -80 {lab=outp}
N 280 -80 280 -30 {lab=outp}
N 280 30 280 80 {lab=outn}
N 260 30 280 30 {lab=outn}
N 280 80 460 80 {lab=outn}
N 460 30 460 80 {lab=outn}
N 430 30 460 30 {lab=outn}
N 260 -30 280 -30 {lab=outp}
N 200 30 260 -30 {lab=outp}
N 160 -30 200 -30 {lab=outn}
N 160 30 200 30 {lab=outp}
N 460 -30 550 -30 {lab=outp}
N 460 30 550 30 {lab=outn}
N 10 30 30 30 {lab=vinp}
N 10 -30 30 -30 {lab=vinn}
N 160 0 170 0 {lab=vcm}
N 30 -250 30 -230 {lab=vinp}
N 160 -250 160 -230 {lab=vinn}
N 280 -250 280 -230 {lab=vcm}
C {ota_gm_100u.sym} 110 0 0 0 {name=x1}
C {ota_gm_100u.sym} 380 0 0 0 {name=x2}
C {capa.sym} 520 0 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 550 -30 0 1 {name=p1 sig_type=std_logic lab=outp}
C {lab_pin.sym} 550 30 0 1 {name=p2 sig_type=std_logic lab=outn}
C {vsource.sym} 30 -200 0 0 {name=Vinp value="DC 0.5 AC 0.5"}
C {gnd.sym} 30 -170 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 10 -30 0 0 {name=p5 sig_type=std_logic lab=vinn
}
C {lab_wire.sym} 10 30 0 0 {name=p7 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 170 0 0 1 {name=p9 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 440 0 0 1 {name=p10 sig_type=std_logic lab=vcm}
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
write biquad_gm_c.raw
set appendwrite

ac dec 100 1k 100MEG
write biquad_gm_c.raw
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
