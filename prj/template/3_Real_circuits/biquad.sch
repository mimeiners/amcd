v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 190 250 190 {lab=#net1}
N 250 100 250 190 {lab=#net1}
N 60 100 120 100 {lab=BPF}
N 300 -400 420 -400 {lab=#net2}
N 300 -400 300 -260 {lab=#net2}
N -110 -440 -20 -440 {lab=BPF}
N -290 -440 -170 -440 {lab=#net3}
N 330 -40 460 -40 {lab=#net1}
N 800 -230 880 -230 {lab=#net4}
N 480 -400 620 -400 {lab=LPF}
N 620 -400 620 -230 {lab=LPF}
N 880 -360 970 -360 {lab=#net4}
N 880 -360 880 -230 {lab=#net4}
N 1200 -360 1200 -200 {lab=HPF}
N 1030 -360 1200 -360 {lab=HPF}
N -530 -290 -460 -290 {lab=HPF}
N -530 -700 -530 -290 {lab=HPF}
N 1200 -700 1200 -360 {lab=HPF}
N 80 190 120 190 {lab=Vin}
N 250 100 330 100 {lab=#net1}
N 1110 -200 1200 -200 {lab=HPF}
N 540 -230 620 -230 {lab=LPF}
N -290 -290 -240 -290 {lab=#net3}
N -20 -440 -20 -260 {lab=BPF}
N -60 -260 -20 -260 {lab=BPF}
N 880 -230 930 -230 {lab=#net4}
N 330 160 380 160 {lab=GND}
N 330 100 380 100 {lab=#net1}
N 300 -260 360 -260 {lab=#net2}
N -290 -440 -290 -290 {lab=#net3}
N -400 -290 -290 -290 {lab=#net3}
N -290 -230 -240 -230 {lab=GND}
N 300 -200 360 -200 {lab=GND}
N 880 -170 930 -170 {lab=GND}
N 180 100 250 100 {lab=#net1}
N 60 -260 60 100 {lab=BPF}
N -20 -260 60 -260 {lab=BPF}
N 630 -40 690 -40 {lab=BSF}
N 560 130 630 130 {lab=BSF}
N -530 -700 1200 -700 {lab=HPF}
N 630 130 670 130 {lab=BSF}
N 1200 -200 1240 -200 {lab=HPF}
N 620 -230 680 -230 {lab=LPF}
N 740 -230 800 -230 {lab=#net4}
N 750 -40 800 -40 {lab=#net4}
N 60 -260 140 -260 {lab=BPF}
N 200 -260 300 -260 {lab=#net2}
N -470 -110 -410 -110 {lab=d_ena}
N -470 -80 -410 -80 {lab=ibias}
N -470 -50 -410 -50 {lab=vdd}
N -470 -20 -410 -20 {lab=vss}
N -160 -380 -160 -340 {lab=vdd
}
N -120 -380 -120 -340 {lab=ibias}
N 440 -350 440 -310 {lab=vdd
}
N 1010 -320 1010 -280 {lab=vdd
}
N 460 10 460 50 {lab=vdd
}
N 480 -350 480 -310 {lab=ibias}
N 1050 -320 1050 -280 {lab=ibias}
N 500 10 500 50 {lab=ibias}
N -160 -180 -160 -140 {lab=vss}
N -120 -180 -120 -140 {lab=d_ena}
N 440 -150 440 -110 {lab=vss}
N 480 -150 480 -110 {lab=d_ena}
N 1010 -120 1010 -80 {lab=vss}
N 1050 -120 1050 -80 {lab=d_ena}
N 460 210 460 250 {lab=vss}
N 500 210 500 250 {lab=d_ena}
N 800 -230 800 -40 {lab=#net4}
N 330 -40 330 100 {lab=#net1}
N 630 -40 630 130 {lab=BSF}
N 520 -40 630 -40 {lab=BSF}
C {capa.sym} 450 -400 1 1 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -140 -440 1 1 {name=C2
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 170 -260 3 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 710 -230 3 0 {name=R2
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 1000 -360 3 0 {name=R3
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 720 -40 3 0 {name=R4
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} -430 -290 3 0 {name=R5
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 150 100 3 0 {name=R6
value=\{RQ\}
footprint=1206
device=resistor
m=1}
C {res.sym} 150 190 3 0 {name=R7
value=\{RH\}
footprint=1206
device=resistor
m=1}
C {res.sym} 490 -40 3 0 {name=R8
value=\{R\}
footprint=1206
device=resistor m=1}
C {opin.sym} 1240 -200 0 0 {name=p1 lab=HPF sig_type=std_logic}
C {opin.sym} 670 130 0 0 {name=p2 lab=BSF sig_type=std_logic}
C {opin.sym} 620 -400 0 0 {name=p3 lab=LPF sig_type=std_logic}
C {opin.sym} -20 -440 0 0 {name=p4 lab=BPF sig_type=std_logic}
C {title.sym} -420 310 0 0 {name=l6 author="Julian Höpe, Julian Scheeler, Sven Samland"}
C {ipin.sym} 80 190 0 0 {name=p5 lab=Vin}
C {ipin.sym} -470 -20 0 0 {name=p9 lab=vss}
C {ipin.sym} -470 -50 0 0 {name=p16 lab=vdd}
C {ipin.sym} -470 -80 2 1 {name=p21 lab=ibias}
C {ipin.sym} -470 -110 2 1 {name=p23 lab=d_ena}
C {ota-improved.sym} -160 -260 0 0 {name=x1}
C {ota-improved.sym} 440 -230 0 0 {name=x2}
C {ota-improved.sym} 1010 -200 0 0 {name=x4}
C {ota-improved.sym} 460 130 0 0 {name=x3}
C {gnd.sym} 300 -200 0 0 {name=l2 lab=GND sig_type=std_logic}
C {gnd.sym} 330 160 0 0 {name=l3 lab=GND sig_type=std_logic}
C {gnd.sym} 880 -170 0 0 {name=l4 lab=GND sig_type=std_logic}
C {gnd.sym} -290 -230 0 0 {name=l11 lab=GND sig_type=std_logic}
C {lab_wire.sym} -160 -380 0 0 {name=p6 lab=vdd}
C {lab_wire.sym} 440 -350 0 0 {name=p7 lab=vdd}
C {lab_wire.sym} 1010 -320 0 0 {name=p8 lab=vdd}
C {lab_wire.sym} 460 10 0 0 {name=p10 lab=vdd}
C {lab_wire.sym} -120 -380 0 1 {name=p12 lab=ibias}
C {lab_wire.sym} -160 -140 0 0 {name=p13 lab=vss}
C {lab_wire.sym} -120 -140 0 1 {name=p14 lab=d_ena}
C {lab_wire.sym} 480 -350 0 1 {name=p19 lab=ibias}
C {lab_wire.sym} 1050 -320 0 1 {name=p25 lab=ibias}
C {lab_wire.sym} 500 10 0 1 {name=p29 lab=ibias}
C {lab_wire.sym} 440 -110 0 0 {name=p31 lab=vss}
C {lab_wire.sym} 480 -110 0 1 {name=p32 lab=d_ena}
C {lab_wire.sym} 1010 -80 0 0 {name=p33 lab=vss}
C {lab_wire.sym} 1050 -80 0 1 {name=p34 lab=d_ena}
C {lab_wire.sym} 460 250 0 0 {name=p35 lab=vss}
C {lab_wire.sym} 500 250 0 1 {name=p36 lab=d_ena}
