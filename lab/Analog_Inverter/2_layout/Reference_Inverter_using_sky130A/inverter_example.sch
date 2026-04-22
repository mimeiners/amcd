v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 70 160 100 {
lab=VDD}
N 160 260 160 290 {
lab=VSS}
N 100 130 120 130 {
lab=IN}
N 100 230 120 230 {
lab=IN}
N 50 180 100 180 {
lab=IN}
N 160 130 170 130 {
lab=VDD}
N 170 100 170 130 {
lab=VDD}
N 160 100 170 100 {
lab=VDD}
N 160 230 170 230 {
lab=VSS}
N 170 230 170 260 {
lab=VSS}
N 160 260 170 260 {
lab=VSS}
N 160 180 210 180 {
lab=out}
N 160 160 160 180 {
lab=out}
N 160 180 160 200 {
lab=out}
N 100 130 100 230 {
lab=IN}
C {sky130_fd_pr/nfet_01v8.sym} 140 230 0 0 {name=M1
L=0.15
W=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 140 130 0 0 {name=M2
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 50 180 0 0 {name=p1 lab=IN}
C {devices/ipin.sym} 160 70 1 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 160 290 1 1 {name=p3 lab=VSS}
C {devices/opin.sym} 210 180 0 0 {name=p4 lab=OUT}
