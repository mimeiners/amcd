v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -40 120 -10 {lab=#net1}
N 120 -40 150 -40 {lab=#net1}
N -80 -330 -80 -300 {lab=vss}
N -80 -330 -50 -330 {lab=vss}
N 40 -330 40 -300 {lab=vdd}
N 40 -330 70 -330 {lab=vdd}
N 40 -470 70 -470 {lab=ibias}
N -80 -470 -80 -440 {lab=d_ena}
N -80 -470 -50 -470 {lab=d_ena}
N 120 50 120 70 {lab=GND}
N 40 -470 40 -430 {lab=ibias}
N 40 -370 40 -330 {lab=vdd}
N 200 -170 200 -120 {lab=d_ena}
N 220 -170 220 -120 {lab=ibias}
N 240 -170 240 -120 {lab=vdd}
N 260 -170 260 -120 {lab=vss}
C {vsource.sym} 120 20 0 1 {name=V1 value="DC 0.8 AC 1"}
C {title.sym} -420 310 0 0 {name=l6 author="Mirco Meiners"}
C {launcher.sym} -480 160 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {gnd.sym} -80 -240 0 0 {name=l7 lab=GND sig_type=std_logic}
C {vsource.sym} -80 -270 0 0 {name=Vss value=0}
C {opin.sym} -50 -330 0 0 {name=p7 lab=vss}
C {gnd.sym} 40 -240 0 0 {name=l8 lab=GND sig_type=std_logic}
C {vsource.sym} 40 -270 0 0 {name=Vdd value=1.5}
C {opin.sym} 70 -330 0 0 {name=p8 lab=vdd}
C {isource.sym} 40 -400 2 0 {name=I0 value=5u}
C {opin.sym} 70 -470 0 0 {name=p17 lab=ibias}
C {vsource.sym} -80 -410 0 0 {name=Venable value=1.5}
C {opin.sym} -50 -470 0 0 {name=p22 lab=d_ena}
C {gnd.sym} 120 70 0 0 {name=l5 lab=GND sig_type=std_logic}
C {gnd.sym} -80 -380 0 0 {name=l9 lab=GND sig_type=std_logic}
C {devices/launcher.sym} -480 200 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} -580 -440 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.param R=1k C=100n RQ=R*1 RH=R/1
.control
option sparse
save all
op
write biquad_tb.raw
set appendwrite

ac dec 20 10 1G
*ac lin 1000 1 3k
write biquad_tb.raw
plot db(v(LPF)) db(v(HPF)) db(v(BPF)) db(v(BSF))

noise v(LPF) Vin dec 101 1k 100MEG 1000
print onoise_total

.endc
"}
C {devices/code_shown.sym} -570 40 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {biquad.sym} 300 70 0 0 {name=x1}
C {iopin.sym} 450 -80 0 0 {name=p5 lab=LPF
}
C {iopin.sym} 450 -60 0 0 {name=p6 lab=HPF

}
C {iopin.sym} 450 -40 0 0 {name=p9 lab=BPF
}
C {iopin.sym} 450 -20 0 0 {name=p10 lab=BSF
}
C {lab_wire.sym} 200 -170 1 0 {name=p1 sig_type=std_logic lab=d_ena}
C {lab_wire.sym} 220 -170 1 0 {name=p2 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 240 -170 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 260 -170 1 0 {name=p4 sig_type=std_logic lab=vss}
