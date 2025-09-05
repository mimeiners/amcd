v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -70 0 -50 {lab=outp}
N 0 -70 80 -70 {lab=outp}
N 80 -70 80 -50 {lab=outp}
N 0 50 80 50 {lab=#net1}
N -60 0 -40 0 {lab=inn}
N 0 150 0 170 {lab=outn}
N 0 170 80 170 {lab=outn}
N 80 150 80 170 {lab=outn}
N -50 -40 -40 -40 {lab=inp}
N -50 100 -40 100 {lab=inp}
N -60 140 -40 140 {lab=inn}
N -60 0 -60 140 {lab=inn}
N -50 -40 -50 100 {lab=inp}
N -60 -40 -50 -40 {lab=inp}
N 80 30 80 50 {lab=#net1}
N 0 10 0 50 {lab=#net1}
N -0 50 -0 90 {lab=#net1}
N 80 70 80 90 {lab=#net1}
N 80 70 200 70 {lab=#net1}
N 80 50 80 70 {lab=#net1}
N 240 0 240 20 {lab=#net1}
N 140 0 240 0 {lab=#net1}
N 140 0 140 30 {lab=#net1}
N 80 30 140 30 {lab=#net1}
N 80 10 80 30 {lab=#net1}
N 80 170 120 170 {lab=outn}
N 80 -70 120 -70 {lab=outp}
C {vccs.sym} 0 -20 0 0 {name=G1 value=100Meg}
C {res.sym} 80 -20 0 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {opin.sym} 120 -70 0 0 {name=p1 lab=outp}
C {ipin.sym} -60 -40 0 0 {name=p2 lab=inp}
C {ipin.sym} -60 0 0 0 {name=p3 lab=inn}
C {gnd.sym} 240 80 0 0 {name=l1 lab=GND}
C {vccs.sym} 0 120 0 0 {name=G2 value=100Meg}
C {res.sym} 80 120 0 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {vccs.sym} 240 50 0 0 {name=G3 value=100Meg}
C {opin.sym} 120 170 0 0 {name=p4 lab=outn}
C {ipin.sym} 200 30 0 0 {name=p5 lab=cm}
