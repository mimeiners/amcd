v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 40 -110 70 {lab=#net1}
N -110 40 -80 40 {lab=#net1}
N -80 -330 -80 -300 {lab=vss}
N -80 -330 -50 -330 {lab=vss}
N 40 -330 40 -300 {lab=vdd}
N 40 -330 70 -330 {lab=vdd}
N 40 -470 70 -470 {lab=ibias}
N -110 130 -110 150 {lab=GND}
N 40 -470 40 -430 {lab=ibias}
N 40 -370 40 -330 {lab=vdd}
N -10 -90 -10 -40 {lab=ibias}
N 10 -90 10 -40 {lab=vdd}
N 30 -90 30 -40 {lab=vss}
C {vsource.sym} -110 100 0 1 {name=V1 value="DC 0.8 AC 1"}
C {title.sym} -420 310 0 0 {name=l6 author="Mirco Meiners"}
C {launcher.sym} -480 160 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {gnd.sym} -80 -240 0 0 {name=l7 lab=GND sig_type=std_logic}
C {vsource.sym} -80 -270 0 0 {name=Vss value=0}
C {iopin.sym} -50 -330 0 0 {name=p7 lab=vss}
C {gnd.sym} 40 -240 0 0 {name=l8 lab=GND sig_type=std_logic}
C {vsource.sym} 40 -270 0 0 {name=Vdd value=1.5}
C {iopin.sym} 70 -330 0 0 {name=p8 lab=vdd}
C {isource.sym} 40 -400 2 0 {name=I0 value=400u}
C {opin.sym} 70 -470 0 0 {name=p17 lab=ibias}
C {gnd.sym} -110 150 0 0 {name=l5 lab=GND sig_type=std_logic}
C {devices/launcher.sym} -480 200 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} -580 -440 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.param C1=1p C2=C1
.control
option sparse
save all
op
write biquad_gm_c_se_tb.raw
set appendwrite

ac dec 20 10 1G
write biquad_gm_c_se_tb.raw
plot db(v(Vo)) db(v(V2))

noise v(V2) V1 dec 101 1k 100MEG 1000
print onoise_total

.endc
"}
C {devices/code_shown.sym} -570 40 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {opin.sym} 220 0 0 0 {name=p5 lab=Vo
}
C {opin.sym} 220 20 0 0 {name=p6 lab=V2

}
C {lab_wire.sym} -10 -90 1 0 {name=p2 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 10 -90 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 30 -90 1 0 {name=p4 sig_type=std_logic lab=vss}
C {biquad_gm_c_se.sym} 70 150 0 0 {name=x1}
