v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 410 -30 410 -20 {lab=#net1}
N 450 -30 510 -30 {lab=#net2}
N 570 -30 590 -30 {lab=#net3}
N 150 -30 150 -20 {lab=inp}
N 150 20 150 30 {lab=inn}
N 410 30 450 30 {lab=GND}
N 410 20 410 30 {lab=GND}
N 190 30 410 30 {lab=GND}
N 190 -30 410 -30 {lab=#net1}
N 30 -30 150 -30 {lab=inp}
N 30 30 150 30 {lab=inn}
C {res.sym} 70 0 0 0 {name=Rin
value=10MEG
footprint=1206
device=resistor
m=1}
C {res.sym} 540 -30 3 0 {name=Rout
value=10
footprint=1206
device=resistor
m=1}
C {capa.sym} 320 0 0 0 {name=Cp
m=1
value=1.59u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 260 0 2 1 {name=Rp
value=1k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 450 0 0 0 {name=Ebuf value=1}
C {gnd.sym} 190 30 0 0 {name=l1 lab=GND}
C {vccs.sym} 190 0 0 0 {name=G1 value=1}
C {ipin.sym} 30 -30 0 0 {name=p1 lab=inp}
C {ipin.sym} 30 30 0 0 {name=p2 lab=inn}
C {opin.sym} 590 -30 0 0 {name=p3 lab=out}
