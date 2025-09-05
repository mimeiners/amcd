v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -20 -40 -20 {lab=inp}
N -70 20 -40 20 {lab=inn}
N 0 -40 0 -30 {lab=outn}
N 0 40 0 50 {lab=outp}
N 0 -40 10 -40 {lab=outn}
N 0 -50 0 -40 {lab=outn}
N 0 40 10 40 {lab=outp}
N 0 30 0 40 {lab=outp}
N 0 -130 0 -110 {lab=cmb}
N 0 110 0 130 {lab=cmb}
N 140 -60 140 -30 {lab=cmb}
N 180 -20 200 -20 {lab=cm}
C {vccs.sym} 0 0 0 0 {name=G1 value=100e-6}
C {res.sym} 0 80 0 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {ipin.sym} -70 -20 0 0 {name=p1 lab=inp}
C {res.sym} 0 -80 0 0 {name=R3
value=1G
footprint=1206
device=resistor
m=1}
C {ipin.sym} -70 20 0 0 {name=p2 lab=inn}
C {opin.sym} 10 40 0 0 {name=p3 lab=outp}
C {opin.sym} 10 -40 0 0 {name=p4 lab=outn}
C {vcvs.sym} 140 0 0 1 {name=E1 value=1}
C {gnd.sym} 140 30 0 0 {name=l1 lab=GND}
C {gnd.sym} 180 20 0 0 {name=l2 lab=GND}
C {ipin.sym} 200 -20 0 1 {name=p5 lab=cm}
C {lab_wire.sym} 0 -130 0 0 {name=p6 sig_type=std_logic lab=cmb
}
C {lab_wire.sym} 140 -60 0 0 {name=p7 sig_type=std_logic lab=cmb
}
C {lab_wire.sym} 0 130 2 1 {name=p8 sig_type=std_logic lab=cmb
}
