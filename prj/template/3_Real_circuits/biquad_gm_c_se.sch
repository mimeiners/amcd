v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 30 130 30 {lab=vss}
N -410 30 -390 30 {lab=vss}
N -150 30 -130 30 {lab=vss}
N 360 30 380 30 {lab=vss}
N -420 -30 -390 -30 {lab=V1}
N -260 0 -200 0 {lab=V2}
N -200 -30 -200 0 {lab=V2}
N 60 -30 60 0 {lab=V2}
N 110 -30 130 -30 {lab=V2}
N 300 0 320 0 {lab=Vo}
N 320 -30 320 0 {lab=Vo}
N 320 -30 380 -30 {lab=Vo}
N 40 0 40 40 {lab=V2}
N 20 0 40 0 {lab=V2}
N -200 -30 -130 -30 {lab=V2}
N 300 0 300 40 {lab=Vo}
N 260 0 300 0 {lab=Vo}
N 60 -30 110 -30 {lab=V2}
N 530 0 550 0 {lab=V2}
N 40 0 60 0 {lab=V2}
N 300 -20 300 0 {lab=Vo}
N 110 -160 530 -160 {lab=V2}
N 510 0 530 0 {lab=V2}
N -200 -160 20 -160 {lab=V2}
N 0 0 20 0 {lab=V2}
N -330 -100 -330 -60 {lab=ibias}
N -310 -100 -310 -60 {lab=vdd}
N -290 -100 -290 -60 {lab=vss}
N -70 -100 -70 -60 {lab=ibias}
N -50 -100 -50 -60 {lab=vdd}
N -30 -100 -30 -60 {lab=vss}
N 190 -100 190 -60 {lab=ibias}
N 210 -100 210 -60 {lab=vdd}
N 230 -100 230 -60 {lab=vss}
N 440 -100 440 -60 {lab=ibias}
N 460 -100 460 -60 {lab=vdd}
N 480 -100 480 -60 {lab=vss}
N -200 -160 -200 -30 {lab=V2}
N 20 -160 20 0 {lab=V2}
N 110 -160 110 -30 {lab=V2}
N 530 -160 530 0 {lab=V2}
N 40 100 40 120 {lab=vss}
N 300 100 300 120 {lab=vss}
N -410 120 -350 120 {lab=ibias}
N -410 160 -350 160 {lab=vdd}
N -410 200 -350 200 {lab=vss}
C {capa.sym} 40 70 2 1 {name=C1
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 300 70 2 1 {name=C2
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {title.sym} -420 310 0 0 {name=l6 author="Mirco Meiners"}
C {ipin.sym} -420 -30 0 0 {name=p1 lab=V1}
C {opin.sym} 300 -20 1 1 {name=p2 lab=Vo}
C {opin.sym} 550 0 2 1 {name=p3 lab=V2}
C {ota_gm_100u_se.sym} -310 0 0 0 {name=x1}
C {ota_gm_100u_se.sym} -50 0 0 0 {name=x2}
C {ota_gm_100u_se.sym} 210 0 0 0 {name=x3}
C {ota_gm_100u_se.sym} 460 0 0 0 {name=x4}
C {lab_wire.sym} -330 -100 1 0 {name=p5 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} -310 -100 1 0 {name=p6 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} -290 -100 1 0 {name=p7 sig_type=std_logic lab=vss
}
C {lab_wire.sym} -70 -100 1 0 {name=p8 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} -50 -100 1 0 {name=p9 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} -30 -100 1 0 {name=p10 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 190 -100 1 0 {name=p11 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 210 -100 1 0 {name=p12 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 230 -100 1 0 {name=p13 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 440 -100 1 0 {name=p14 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 460 -100 1 0 {name=p15 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 480 -100 1 0 {name=p16 sig_type=std_logic lab=vss
}
C {lab_wire.sym} -410 30 0 0 {name=p4 sig_type=std_logic lab=vss
}
C {lab_wire.sym} -150 30 0 0 {name=p17 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 360 30 0 0 {name=p18 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 110 30 0 0 {name=p19 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 40 120 0 0 {name=p20 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 300 120 0 0 {name=p21 sig_type=std_logic lab=vss
}
C {ipin.sym} -410 120 0 0 {name=p22 lab=ibias}
C {iopin.sym} -410 160 0 1 {name=p23 lab=vdd}
C {iopin.sym} -410 200 0 1 {name=p24 lab=vss}
C {lab_wire.sym} -350 120 2 0 {name=p25 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} -350 200 2 0 {name=p26 sig_type=std_logic lab=vss
}
C {lab_wire.sym} -350 160 2 0 {name=p27 sig_type=std_logic lab=vdd
}
