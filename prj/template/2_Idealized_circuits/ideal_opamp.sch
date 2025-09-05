v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -50 0 -30 {lab=out}
N 0 -50 80 -50 {lab=out}
N 80 -50 80 -30 {lab=out}
N 0 30 0 50 {lab=GND}
N 0 50 80 50 {lab=GND}
N 80 30 80 50 {lab=GND}
N -60 -20 -40 -20 {lab=inp}
N -60 20 -40 20 {lab=inn}
N 80 -50 100 -50 {lab=out}
C {vccs.sym} 0 0 0 0 {name=G1 value=1Meg}
C {res.sym} 80 0 0 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {iopin.sym} 100 -50 0 0 {name=p1 lab=out}
C {ipin.sym} -60 -20 0 0 {name=p2 lab=inp}
C {ipin.sym} -60 20 0 0 {name=p3 lab=inn}
C {gnd.sym} 0 50 0 0 {name=l1 lab=GND}
