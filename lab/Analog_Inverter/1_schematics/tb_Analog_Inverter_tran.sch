v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/lab_wire.sym} -250 -160 0 1 {name=p6 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} -480 -320 0 0 {name=Vdd1 value=1.5}
C {devices/vsource.sym} -400 -320 0 0 {name=Vss1 value=0}
C {devices/lab_wire.sym} -480 -350 0 1 {name=p8 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} -400 -350 0 1 {name=p9 sig_type=std_logic lab=Vss}
C {devices/lab_wire.sym} -300 -190 1 0 {name=p10 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} -300 -130 1 1 {name=p11 sig_type=std_logic lab=Vss}
C {devices/code_shown.sym} 20 -730 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/lab_wire.sym} -390 -160 0 0 {name=p12 sig_type=std_logic lab=v_in}
C {devices/gnd.sym} -480 -290 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -400 -290 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 30 -610 0 0 {name=NGSPICE2 only_toplevel=true 
value="

Vin v_in 0 dc 0 pulse(0 1.5 0 1n 1n 4n 10n)
.control


* Transient analysis
tran 0.01n 20n
save all
let VP=1.5
let per10 = Vp*0.1
let per50 = Vp*0.5
let per90 = Vp*0.9
meas TRAN t_rise  TRIG v(v_out) VAL=per10 rise=2  TARG v(v_out) VAL=per90 rise=2
meas TRAN t_fall  TRIG v(v_out) VAL=per90 fall=2  TARG v(v_out) VAL=per10 fall=2
meas TRAN t_delay  TRIG v(v_in) VAL=per50 rise=1 TARG v(v_out) VAL=per50 fall=1
echo TRAN measurements
print t_delay
print t_rise
print t_fall
echo
set filetype=binary
write tb_inv_tran.raw v(v_in) v(v_out) t_rise t_fall t_delay 


plot v(v_out) v(v_in)

.endc
.end
"}
C {devices/title.sym} -560 90 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {/foss/designs/thesis/workspace/thesis_hp/designs/analog_inverter/1_schematics/analog_inverter.sym} -240 -160 0 0 {name=x1}
