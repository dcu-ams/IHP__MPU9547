v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -320 -80 -320 -0 {lab=VDD1V8}
N -320 -80 150 -80 {lab=VDD1V8}
N -180 0 -0 0 {lab=OSC}
N -180 120 150 120 {lab=GND}
N -320 60 -320 120 {lab=GND}
N -180 60 -180 120 {lab=GND}
N -320 120 -180 120 {lab=GND}
N 300 -0 440 -0 {lab=OSCDIV1024}
N 150 120 440 120 {lab=GND}
N 440 60 440 120 {lab=GND}
N 150 80 150 120 {lab=GND}
C {vsource.sym} -180 30 0 0 {name=V1 value="PULSE(0 1.2 0 0.1n 0.1n 0.2n 0.6n 0)" savecurrent=false}
C {vsource.sym} -320 30 0 0 {name=V2 value=1.2 savecurrent=false}
C {capa-2.sym} 440 30 0 0 {name=C1
m=1
value=1f
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 90 120 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 410 0 0 0 {name=p1 sig_type=std_logic lab=OSCDIV1024}
C {devices/code_shown.sym} -340 210 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -350 280 0 0 {name=NGSPICE only_toplevel=true 
value="
.include ~/IHP-Open-PDK/ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice

.save V(OSC) V(OSCDIV1024) i(v2) 

.control
tran 0.1n 5u
write tb_div1024_tran.raw

set hcopydevtype=svg
set color0=white
set color1=black
hardcopy tb_div1024.svg V(OSCDIV1024) 

* waits until simulation is done
set controlswait
meas tran period trig v(OSCDIV1024) td=1u val=0.6 rise=1 targ v(OSCDIV1024) td=1u val=0.6 rise=2
let freq=1/period
print period
print freq
.endc
"}
C {lab_wire.sym} -80 -80 0 0 {name=p2 sig_type=std_logic lab=VDD1V8}
C {lab_wire.sym} -80 0 0 0 {name=p3 sig_type=std_logic lab=OSC}
C {DIV1024.sym} 0 0 0 0 {name=x1}
