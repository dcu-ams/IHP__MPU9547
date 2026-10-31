v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -600 -200 -600 -120 {lab=VDD}
N -600 -200 -130 -200 {lab=VDD}
N -460 -120 -280 -120 {lab=EN}
N -460 0 -130 0 {lab=GND}
N -600 -60 -600 0 {lab=GND}
N -460 -60 -460 0 {lab=GND}
N -600 0 -460 0 {lab=GND}
N 20 -120 160 -120 {lab=OSCBUF}
N -130 0 160 0 {lab=GND}
N 160 -60 160 0 {lab=GND}
N -130 -40 -130 0 {lab=GND}
C {ANACORE.sym} -130 -120 0 0 {name=x1}
C {vsource.sym} -460 -90 0 0 {name=V1 value="PWL(0 0 1n 0 1.1n 1.2 10u 1.2 10.0001u 0)" savecurrent=false}
C {vsource.sym} -600 -90 0 0 {name=V2 value=1.2 savecurrent=false}
C {capa-2.sym} 160 -90 0 0 {name=C1
m=1
value=1f
footprint=1206
device=polarized_capacitor}
C {gnd.sym} -190 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 130 -120 0 0 {name=p1 sig_type=std_logic lab=OSCBUF}
C {devices/code_shown.sym} -620 90 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -630 160 0 0 {name=NGSPICE only_toplevel=true 
value="
.include ~/IHP-Open-PDK/ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice

.control
tran 0.1n 3u
save V(EN) V(OSCBUF) @v2[i]

.endc
"}
C {lab_wire.sym} -360 -200 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -360 -120 0 0 {name=p3 sig_type=std_logic lab=EN}
