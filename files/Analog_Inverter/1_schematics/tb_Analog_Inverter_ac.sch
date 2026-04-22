v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 40 -170 60 {
lab=GND}
N -170 -80 -170 -20 {
lab=v_out}
N -260 -80 -170 -80 {lab=v_out}
C {devices/gnd.sym} -170 60 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -260 -80 0 1 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} -490 -240 0 0 {name=Vdd value=1.5}
C {devices/vsource.sym} -410 -240 0 0 {name=Vss value=0}
C {devices/lab_wire.sym} -490 -270 0 1 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} -410 -270 0 1 {name=p2 sig_type=std_logic lab=Vss}
C {devices/lab_wire.sym} -310 -110 1 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} -310 -50 1 1 {name=p5 sig_type=std_logic lab=Vss}
C {devices/code_shown.sym} 30 -460 0 0 {name=NGSPICE only_toplevel=true 
value="
*Vin v_in 0 dc 0.75 ac 1
* Bias input to midpoint (VDD/2 = 0.75V for 1.5V supply)

.control
resetop                          ; find DC operating point
ac dec 100 1 1G             ; frequency sweep from 1Hz to 1GHz
plot v(v_out)
.endc
.end
"}
C {devices/code_shown.sym} 40 -110 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/lab_wire.sym} -400 -80 0 0 {name=p7 sig_type=std_logic lab=v_in}
C {devices/gnd.sym} -490 -210 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -410 -210 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -330 -240 0 0 {name=Vin value="dc 0.75 ac 1"}
C {devices/lab_wire.sym} -330 -270 0 1 {name=Vin1 sig_type=std_logic lab=v_in

value="dc 0.75 ac 1"}
C {devices/gnd.sym} -330 -210 0 0 {name=Vin2 lab=GND
value="dc 0.75 ac 1"}
C {devices/capa-2.sym} -170 10 0 0 {name=C1
m=1
value=50f
footprint=1206
device=polarized_capacitor
}
C {Analog_Inverter.sym} -250 -80 0 0 {name=x1}
