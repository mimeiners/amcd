v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1160 -200 1160 -130 {lab=VOUT}
N 1030 -320 1120 -320 {lab=VIN}
N 1030 -200 1030 -100 {lab=VIN}
N 1030 -100 1120 -100 {lab=VIN}
N 850 -200 1030 -200 {lab=VIN}
N 1030 -320 1030 -200 {lab=VIN}
N 1160 -400 1160 -350 {lab=VDD}
N 960 0 1160 0 {lab=VSS}
N 1160 -30 1160 0 {lab=VSS}
N 1160 -100 1260 -100 {lab=VSS}
N 1160 -30 1260 -30 {lab=VSS}
N 1160 -320 1240 -320 {lab=VDD}
N 1240 -400 1240 -320 {lab=VDD}
N 1160 -400 1240 -400 {lab=VDD}
N 1160 -200 1380 -200 {lab=VOUT}
N 1160 -290 1160 -200 {lab=VOUT}
N 1160 -440 1160 -400 {lab=VDD}
N 1160 -70 1160 -30 {lab=VSS}
N 1260 -100 1260 -30 {lab=VSS}
N 950 -440 1160 -440 {lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 1140 -320 0 0 {name=M1
l=0.52u
w=2.6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1140 -100 0 0 {name=M2
l=0.52u
w=1.3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} 850 -200 0 0 {name=p4 lab=VIN}
C {devices/iopin.sym} 950 -440 0 1 {name=p2 lab=VDD}
C {devices/iopin.sym} 960 0 0 1 {name=p3 lab=VSS}
C {devices/opin.sym} 1380 -200 0 0 {name=p6 lab=VOUT}
C {devices/title.sym} 170 70 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
