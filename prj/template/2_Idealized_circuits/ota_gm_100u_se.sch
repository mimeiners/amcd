v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 -30 -40 -20 {lab=inp}
N -40 20 -40 30 {lab=inn}
N -160 -30 -40 -30 {lab=inp}
N -160 30 -40 30 {lab=inn}
N 0 30 130 30 {lab=GND}
N 0 -30 180 -30 {lab=out}
C {capa.sym} 130 0 0 0 {name=Co
m=1
value=0.25p}
C {res.sym} 70 0 2 1 {name=ro	
value=5MEG
m=1}
C {gnd.sym} 0 30 0 0 {name=l1 lab=GND}
C {vccs.sym} 0 0 0 0 {name=G1 value=200u}
C {ipin.sym} -160 -30 0 0 {name=p1 lab=inp}
C {ipin.sym} -160 30 0 0 {name=p2 lab=inn}
C {opin.sym} 180 -30 0 0 {name=p3 lab=out}
C {title.sym} -390 140 0 0 {name=l2 author="Mirco Meiners"}
C {capa.sym} -100 0 0 0 {name=Ci
m=1
value=0.1p
}
