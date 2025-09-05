v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1.45 < 1.5(nom) < 1.55V} 190 -850 0 0 0.4 0.4 {}
N 540 -670 600 -670 {
lab=gate_p}
N 460 -620 460 -580 {
lab=gate_p}
N 460 -620 540 -620 {
lab=gate_p}
N 460 -640 460 -620 {
lab=gate_p}
N 540 -670 540 -620 {
lab=gate_p}
N 350 -270 350 -180 {
lab=vss}
N 550 -270 550 -180 {
lab=vss}
N 350 -180 550 -180 {
lab=vss}
N 550 -300 610 -300 {
lab=vss}
N 610 -300 610 -180 {
lab=vss}
N 550 -180 610 -180 {
lab=vss}
N 290 -300 290 -180 {
lab=vss}
N 290 -180 350 -180 {
lab=vss}
N 460 -820 460 -700 {
lab=vdd}
N 460 -820 640 -820 {
lab=vdd}
N 640 -820 640 -700 {
lab=vdd}
N 640 -670 700 -670 {
lab=vdd}
N 700 -820 700 -670 {
lab=vdd}
N 640 -820 700 -820 {
lab=vdd}
N 400 -670 460 -670 {
lab=vdd}
N 400 -820 400 -670 {
lab=vdd}
N 400 -820 460 -820 {
lab=vdd}
N 640 -600 640 -580 {
lab=out}
N 460 -520 460 -480 {
lab=tail}
N 640 -520 640 -480 {
lab=tail}
N 590 -480 640 -480 {
lab=tail}
N 720 -550 720 -460 {
lab=inn}
N 500 -670 540 -670 {
lab=gate_p}
N 190 -180 290 -180 {lab=vss}
N 680 -550 720 -550 {
lab=inn}
N 640 -600 780 -600 {lab=out}
N 640 -640 640 -600 {
lab=out}
N 180 -820 400 -820 {lab=vdd}
N 440 -300 510 -300 {lab=ibias}
N 290 -300 350 -300 {lab=vss}
N 180 -550 420 -550 {lab=inp}
N 180 -460 720 -460 {lab=inn}
N 550 -480 550 -330 {lab=tail}
N 510 -480 550 -480 {
lab=tail}
N 460 -550 510 -550 {lab=tail}
N 510 -550 510 -480 {lab=tail}
N 460 -480 510 -480 {
lab=tail}
N 590 -550 640 -550 {lab=tail}
N 590 -550 590 -480 {lab=tail}
N 550 -480 590 -480 {
lab=tail}
N 350 -400 350 -330 {lab=ibias}
N 180 -400 350 -400 {lab=ibias}
N 350 -400 440 -400 {lab=ibias}
N 440 -400 440 -300 {lab=ibias}
N 390 -300 440 -300 {lab=ibias}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="(c) 2024-2025 M. Meiners, Apache-2.0 license"}
C {sg13g2_pr/sg13_lv_nmos.sym} 530 -300 0 0 {name=M5
l=5u
w=14u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 620 -670 0 0 {name=M4
l=5u
w=31u
ng=10
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 440 -550 0 0 {name=M1
l=5u
w=33u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 660 -550 0 1 {name=M2
l=5u
w=33u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 480 -670 0 1 {name=M3
l=5u
w=31u
ng=10
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 370 -300 0 1 {name=M6
l=5u
w=18u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} 180 -400 0 0 {name=p1 lab=ibias}
C {devices/iopin.sym} 180 -820 0 1 {name=p2 lab=vdd}
C {devices/iopin.sym} 190 -180 0 1 {name=p3 lab=vss}
C {devices/ipin.sym} 180 -550 0 0 {name=p4 lab=inp}
C {devices/ipin.sym} 180 -460 0 0 {name=p5 lab=inn}
C {devices/opin.sym} 780 -600 0 0 {name=p6 lab=out}
C {devices/lab_wire.sym} 580 -670 0 0 {name=p10 sig_type=std_logic lab=gate_p}
C {devices/lab_wire.sym} 550 -390 0 0 {name=p11 sig_type=std_logic lab=tail}
C {sg13g2_pr/annotate_fet_params.sym} 920 -270 0 0 {name=annot1 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} 920 -480 0 0 {name=annot2 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 1080 -480 0 0 {name=annot3 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} 920 -680 0 0 {name=annot4 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} 1080 -680 0 0 {name=annot5 ref=M4}
