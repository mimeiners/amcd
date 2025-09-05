v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 0 -100 0 {lab=vcm}
N -260 30 -240 30 {lab=v2p}
N -260 -30 -240 -30 {lab=v2n}
N -80 -80 -80 -30 {lab=v2n}
N -110 -30 -80 -30 {lab=v2n}
N -260 -80 -80 -80 {lab=v2n}
N -260 -80 -260 -30 {lab=v2n}
N -260 30 -260 80 {lab=v2p}
N -260 80 -80 80 {lab=v2p}
N -80 30 -80 80 {lab=v2p}
N -110 30 -80 30 {lab=v2p}
N -380 -30 -260 -30 {lab=v2n}
N -380 30 -260 30 {lab=v2p}
N -380 0 -370 0 {lab=vcm}
N -570 -390 -570 -370 {lab=vinp}
N -440 -390 -440 -370 {lab=vinn}
N -320 -390 -320 -370 {lab=vcm}
N -530 -30 -510 -30 {lab=vinn}
N -530 30 -510 30 {lab=vinp}
N 430 0 440 0 {lab=vcm}
N 270 30 300 30 {lab=outn}
N 270 -30 300 -30 {lab=outp}
N 160 -30 270 -30 {lab=outp}
N 160 30 270 30 {lab=outn}
N 270 -80 360 -80 {lab=outp}
N 160 0 170 0 {lab=vcm}
N 270 -80 270 -30 {lab=outp}
N 270 30 270 80 {lab=outn}
N 0 180 500 180 {lab=v2p}
N 270 80 360 80 {lab=outn}
N 0 -30 30 -30 {lab=v2n}
N 0 30 30 30 {lab=v2p}
N 430 -30 470 -30 {lab=v2p}
N 470 -30 500 30 {lab=v2p}
N 500 30 500 180 {lab=v2p}
N 430 30 470 30 {lab=v2n}
N 470 30 500 -30 {lab=v2n}
N 500 -190 500 -30 {lab=v2n}
N 0 -190 500 -190 {lab=v2n}
N 0 -190 0 -30 {lab=v2n}
N -80 -30 0 -30 {lab=v2n}
N 0 30 0 180 {lab=v2p}
N -80 30 0 30 {lab=v2p}
N 500 -30 520 -30 {lab=v2n}
N 500 30 520 30 {lab=v2p}
C {ota_gm_100u.sym} -430 0 0 0 {name=x1}
C {ota_gm_100u.sym} -160 0 0 0 {name=x2}
C {capa.sym} -30 60 0 1 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -570 -340 0 0 {name=Vinp value="DC 0.5 AC 0.5"}
C {gnd.sym} -570 -310 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -530 -30 0 0 {name=p5 sig_type=std_logic lab=vinn
}
C {lab_wire.sym} -530 30 0 0 {name=p7 sig_type=std_logic lab=vinp}
C {lab_wire.sym} -370 0 0 1 {name=p9 sig_type=std_logic lab=vcm}
C {lab_wire.sym} -100 0 0 1 {name=p10 sig_type=std_logic lab=vcm}
C {vsource.sym} -440 -340 0 0 {name=Vinn value="DC 0.5 AC -0.5"}
C {gnd.sym} -440 -310 0 0 {name=l4 lab=GND}
C {vsource.sym} -320 -340 0 0 {name=Vcm value=0.5 savecurrent=false}
C {gnd.sym} -320 -310 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 20 -520 0 0 {name=NGSPICE only_toplevel=true 
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
let v2d=v(v2p)-v(v2n)
plot db(v(vod)) db(v(v2d))

.endc
"}
C {launcher.sym} -510 -500 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/launcher.sym} -510 -460 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {opin.sym} -570 -390 0 0 {name=p3 lab=vinp}
C {opin.sym} -440 -390 0 0 {name=p4 lab=vinn}
C {opin.sym} -320 -390 0 0 {name=p6 lab=vcm}
C {gnd.sym} -30 90 0 1 {name=l1 lab=GND}
C {capa.sym} -30 -60 2 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -30 -90 2 0 {name=l3 lab=GND}
C {ota_gm_100u.sym} 110 0 0 0 {name=x3}
C {ota_gm_100u.sym} 380 0 0 0 {name=x4}
C {capa.sym} 210 60 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 360 -80 0 1 {name=p8 sig_type=std_logic lab=outp}
C {lab_pin.sym} 360 80 0 1 {name=p11 sig_type=std_logic lab=outn}
C {lab_wire.sym} 170 0 0 1 {name=p14 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 440 0 0 1 {name=p15 sig_type=std_logic lab=vcm}
C {gnd.sym} 210 90 0 0 {name=l5 lab=GND}
C {capa.sym} 210 -60 2 1 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 210 -90 2 1 {name=l7 lab=GND}
C {lab_pin.sym} 520 -30 0 1 {name=p1 sig_type=std_logic lab=v2n}
C {lab_pin.sym} 520 30 0 1 {name=p2 sig_type=std_logic lab=v2p}
C {title.sym} -450 340 0 0 {name=l8 author="Mirco Meiners"}
