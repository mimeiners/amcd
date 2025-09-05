v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 30 130 30 {lab=GND}
N -410 30 -390 30 {lab=GND}
N -150 30 -130 30 {lab=GND}
N 360 30 380 30 {lab=GND}
N -420 -30 -390 -30 {lab=V1}
N -260 0 -200 0 {lab=V2}
N -200 -30 -200 0 {lab=V2}
N 60 -30 60 0 {lab=V2}
N 110 -30 130 -30 {lab=V2}
N 300 0 320 0 {lab=Vo}
N 320 -30 320 0 {lab=Vo}
N 320 -30 380 -30 {lab=Vo}
N 40 0 40 40 {lab=V2}
N 20 0 40 0 {lab=V2}
N 20 -110 20 0 {lab=V2}
N -200 -110 -200 -30 {lab=V2}
N -200 -30 -130 -30 {lab=V2}
N 300 0 300 40 {lab=Vo}
N 260 0 300 0 {lab=Vo}
N 60 -30 110 -30 {lab=V2}
N 110 -110 110 -30 {lab=V2}
N 530 -110 530 0 {lab=V2}
N 530 0 550 0 {lab=V2}
N 40 0 60 0 {lab=V2}
N 300 -20 300 0 {lab=Vo}
N 110 -110 530 -110 {lab=V2}
N 510 0 530 0 {lab=V2}
N -200 -110 20 -110 {lab=V2}
N 0 0 20 0 {lab=V2}
N -390 -380 -390 -360 {lab=V1}
C {capa.sym} 40 70 2 1 {name=C1
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 300 70 2 1 {name=C2
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {title.sym} -420 310 0 0 {name=l6 author="Mirco Meiners"}
C {gnd.sym} -150 30 0 1 {name=l2 lab=GND sig_type=std_logic}
C {gnd.sym} 110 30 0 1 {name=l3 lab=GND sig_type=std_logic}
C {gnd.sym} 360 30 0 1 {name=l4 lab=GND sig_type=std_logic}
C {gnd.sym} -410 30 0 1 {name=l11 lab=GND sig_type=std_logic}
C {ipin.sym} -420 -30 0 0 {name=p1 lab=V1}
C {opin.sym} 300 -20 1 1 {name=p2 lab=Vo}
C {opin.sym} 550 0 2 1 {name=p3 lab=V2}
C {ota_gm_100u_se.sym} -310 0 0 0 {name=x1}
C {ota_gm_100u_se.sym} -50 0 0 0 {name=x2}
C {ota_gm_100u_se.sym} 210 0 0 0 {name=x3}
C {ota_gm_100u_se.sym} 460 0 0 0 {name=x4}
C {gnd.sym} 40 100 0 1 {name=l1 lab=GND sig_type=std_logic}
C {gnd.sym} 300 100 0 1 {name=l5 lab=GND sig_type=std_logic}
C {vsource.sym} -390 -330 0 0 {name=Vinp value="DC 0.5 AC 1.0"}
C {gnd.sym} -390 -300 0 0 {name=l7 lab=GND}
C {devices/code_shown.sym} 200 -510 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.param C1=1n C2=C1
.control
option sparse
save all
op
write biquad_gm_c_se.raw
set appendwrite

ac dec 20 10 100MEG
write biquad_gm_c.raw
plot db(v(V2)) db(v(Vo))

.endc
"}
C {launcher.sym} -330 -490 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/launcher.sym} -330 -450 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {opin.sym} -390 -380 0 0 {name=p4 lab=V1}
