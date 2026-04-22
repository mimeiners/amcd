v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 360 -80 360 -60 {
lab=GND}
N 360 -170 360 -140 {
lab=v_out}
N 270 -170 360 -170 {lab=v_out}
C {devices/lab_wire.sym} 270 -170 0 1 {name=p6 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 40 -330 0 0 {name=Vdd1 value=1.5}
C {devices/vsource.sym} 120 -330 0 0 {name=Vss1 value=0}
C {devices/lab_wire.sym} 40 -360 0 1 {name=p8 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} 120 -360 0 1 {name=p9 sig_type=std_logic lab=Vss}
C {devices/lab_wire.sym} 220 -200 1 0 {name=p10 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} 220 -140 1 1 {name=p11 sig_type=std_logic lab=Vss}
C {devices/code_shown.sym} 530 -730 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.include /foss/designs/thesis/thesis_hp/Designs/Analog_Inverter/3_kpex/analog_inverter/magic_CC/analog_inverter.pex.spice

*Vin v_in 0 dc 0 pulse(0 1.5 0 1n 1n 4n 10n)

.control
reset
dc vin 0 1.5 0.01 
save all
let VP = 1.5
let vo_mid = VP/2
let dvout = deriv(v(v_out))
meas DC VSW find v(v_in) when v(v_out)=vo_mid
meas DC VIL find v(v_in) WHEN dvout=-1 CROSS=1
meas DC VIH find v(v_in) WHEN dvout=-1 CROSS=2
meas DC VOL find v(v_out) WHEN dvout=-1 CROSS=2
meas DC VOH find v(v_out) WHEN dvout=-1 CROSS=1
echo VTC measurements
print VSW
print VIL
print VIH
print VOH
print VOL
echo 
*set filetype=binary
write tb_inv_dc.raw v(v_in) v(v_out) dvout VSW VIL VIH VOL VOH
             
plot v(v_out)    
plot v(dvout)              


.endc
.end
"}
C {devices/code_shown.sym} 550 -80 0 0 {name=TT_MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/lab_wire.sym} 130 -170 0 0 {name=p12 sig_type=std_logic lab=v_in}
C {devices/gnd.sym} 40 -300 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 120 -300 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 210 -330 0 0 {name=Vin value="dc 0 pulse(0 1.5 0 1n 1n 4n 10n)"}
C {devices/lab_wire.sym} 210 -360 0 1 {name=p1 sig_type=std_logic lab=v_in}
C {devices/gnd.sym} 210 -300 0 0 {name=l1 lab=GND}
C {devices/title.sym} 170 60 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {devices/capa-2.sym} 360 -110 0 0 {name=C1
m=1
value=50f
footprint=1206
device=polarized_capacitor
}
C {devices/gnd.sym} 360 -60 0 0 {name=l7 lab=GND}
C {/foss/designs/thesis/thesis_hp/Designs/Analog_Inverter/1_schematics/Analog_Inverter.sym} 280 -170 0 0 {name=x1}
