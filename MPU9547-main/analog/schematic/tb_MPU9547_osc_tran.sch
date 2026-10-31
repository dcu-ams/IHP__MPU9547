v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -240 -150 -240 {lab=D0}
N -220 -220 -150 -220 {lab=D1}
N -220 -200 -150 -200 {lab=D2}
N -220 -180 -150 -180 {lab=D3}
N -220 -160 -150 -160 {lab=D4}
N -220 -140 -150 -140 {lab=D5}
N -220 -120 -150 -120 {lab=D6}
N -220 -100 -150 -100 {lab=D7}
N -220 -20 -150 -20 {lab=CLK}
N -220 20 -150 20 {lab=INT}
N -220 60 -150 60 {lab=RESET}
N -260 160 -260 180 {lab=EN}
N -260 160 -150 160 {lab=EN}
N -260 240 -260 280 {lab=0}
N 150 -240 220 -240 {lab=A0}
N 150 -220 220 -220 {lab=A1}
N 150 -200 220 -200 {lab=A2}
N 150 -180 220 -180 {lab=A3}
N 150 -160 220 -160 {lab=A4}
N 150 -140 220 -140 {lab=A5}
N 150 -120 220 -120 {lab=A6}
N 150 -100 220 -100 {lab=A7}
N 150 -80 220 -80 {lab=A8}
N 150 -60 220 -60 {lab=A9}
N 150 -20 220 -20 {lab=WR}
N 150 0 220 0 {lab=RD}
N 150 20 220 20 {lab=IORQ}
N 150 40 220 40 {lab=M1}
N 150 60 220 60 {lab=MREQ}
N 240 160 240 180 {lab=OSC}
N 150 160 240 160 {lab=OSC}
N 240 240 240 280 {lab=0}
N -40 -500 -40 -460 {lab=0}
N 40 -500 40 -460 {lab=0}
N -340 -100 -280 -100 {lab=0}
N -340 60 -340 100 {lab=0}
N -340 -120 -340 -100 {lab=0}
N -340 -240 -280 -240 {lab=0}
N -340 -220 -280 -220 {lab=0}
N -340 -240 -340 -220 {lab=0}
N -340 -200 -280 -200 {lab=0}
N -340 -220 -340 -200 {lab=0}
N -340 -180 -280 -180 {lab=0}
N -340 -200 -340 -180 {lab=0}
N -340 -160 -280 -160 {lab=0}
N -340 -180 -340 -160 {lab=0}
N -340 -140 -280 -140 {lab=0}
N -340 -160 -340 -140 {lab=0}
N -340 -120 -280 -120 {lab=0}
N -340 -140 -340 -120 {lab=0}
N -340 60 -280 60 {lab=0}
N -340 20 -340 60 {lab=0}
N -340 20 -280 20 {lab=0}
N -340 -20 -340 20 {lab=0}
N -340 -20 -280 -20 {lab=0}
N -340 -100 -340 -20 {lab=0}
N -40 -400 -40 -300 {lab=VDD3V3}
N 40 -400 40 -300 {lab=VDD1V2}
N 0 480 0 500 {lab=0}
N -0 300 0 420 {lab=PGND}
C {vsource.sym} -40 -430 2 0 {name=VVDD3V3 value=3.3 savecurrent=true}
C {vsource.sym} 40 -430 2 1 {name=VVDD1V2 value=1.2 savecurrent=true}
C {vsource.sym} -260 210 0 0 {name=V3 value="PWL(0 0 0.2n 0 0.3n 3.3)" savecurrent=false}
C {gnd.sym} -260 280 0 0 {name=l1 lab=0}
C {gnd.sym} 0 500 0 1 {name=l4 lab=0}
C {noconn.sym} 220 -240 2 0 {name=l5}
C {noconn.sym} 220 -220 2 0 {name=l6}
C {noconn.sym} 220 -200 2 0 {name=l7}
C {noconn.sym} 220 -180 2 0 {name=l8}
C {noconn.sym} 220 -160 2 0 {name=l9}
C {noconn.sym} 220 -140 2 0 {name=l10}
C {noconn.sym} 220 -120 2 0 {name=l11}
C {noconn.sym} 220 -100 2 0 {name=l12}
C {noconn.sym} 220 -80 2 0 {name=l13}
C {noconn.sym} 220 -60 2 0 {name=l14}
C {noconn.sym} 220 -20 2 0 {name=l16}
C {noconn.sym} 220 0 2 0 {name=l17}
C {noconn.sym} 220 20 2 0 {name=l18}
C {noconn.sym} 220 40 2 0 {name=l19}
C {noconn.sym} 220 60 2 0 {name=l20}
C {capa.sym} 240 210 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 240 280 0 0 {name=l15 lab=0}
C {lab_wire.sym} 210 160 0 0 {name=p1 sig_type=std_logic lab=OSC}
C {lab_wire.sym} -210 160 0 0 {name=p2 sig_type=std_logic lab=EN}
C {gnd.sym} 40 -500 2 0 {name=l21 lab=0}
C {gnd.sym} -40 -500 2 0 {name=l22 lab=0}
C {devices/code_shown.sym} -410 580 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {MPU9547.sym} 0 0 0 0 {}
C {lab_wire.sym} -190 -240 0 0 {name=p3 sig_type=std_logic lab=D0}
C {lab_wire.sym} -190 -220 0 0 {name=p4 sig_type=std_logic lab=D1}
C {lab_wire.sym} -190 -200 0 0 {name=p5 sig_type=std_logic lab=D2}
C {lab_wire.sym} -190 -180 0 0 {name=p6 sig_type=std_logic lab=D3}
C {lab_wire.sym} -190 -160 0 0 {name=p7 sig_type=std_logic lab=D4}
C {lab_wire.sym} -190 -140 0 0 {name=p8 sig_type=std_logic lab=D5}
C {lab_wire.sym} -190 -120 0 0 {name=p9 sig_type=std_logic lab=D6}
C {lab_wire.sym} -190 -100 0 0 {name=p10 sig_type=std_logic lab=D7}
C {res.sym} -250 -240 1 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -220 1 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -200 1 0 {name=R3
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -180 1 0 {name=R4
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -160 1 0 {name=R5
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -140 1 0 {name=R6
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -120 1 0 {name=R7
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -100 1 0 {name=R8
value=1
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -170 -20 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -170 20 0 0 {name=p12 sig_type=std_logic lab=INT}
C {lab_wire.sym} -160 60 0 0 {name=p13 sig_type=std_logic lab=RESET}
C {res.sym} -250 -20 1 0 {name=R9
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} -250 20 1 0 {name=R10
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} -250 60 1 0 {name=R11
value=1
footprint=1206
device=resistor
m=1}
C {gnd.sym} -340 100 0 0 {name=l2 lab=0}
C {lab_wire.sym} 190 -240 0 0 {name=p14 sig_type=std_logic lab=A0}
C {lab_wire.sym} 190 -220 0 0 {name=p15 sig_type=std_logic lab=A1}
C {lab_wire.sym} 190 -200 0 0 {name=p16 sig_type=std_logic lab=A2}
C {lab_wire.sym} 190 -180 0 0 {name=p17 sig_type=std_logic lab=A3}
C {lab_wire.sym} 190 -160 0 0 {name=p18 sig_type=std_logic lab=A4}
C {lab_wire.sym} 190 -140 0 0 {name=p19 sig_type=std_logic lab=A5}
C {lab_wire.sym} 190 -120 0 0 {name=p20 sig_type=std_logic lab=A6}
C {lab_wire.sym} 190 -100 0 0 {name=p21 sig_type=std_logic lab=A7}
C {lab_wire.sym} 190 -80 0 0 {name=p22 sig_type=std_logic lab=A8}
C {lab_wire.sym} 190 -60 0 0 {name=p23 sig_type=std_logic lab=A9}
C {lab_wire.sym} 210 -20 0 0 {name=p24 sig_type=std_logic lab=WR}
C {lab_wire.sym} 210 0 0 0 {name=p25 sig_type=std_logic lab=RD}
C {lab_wire.sym} 210 20 0 0 {name=p26 sig_type=std_logic lab=IORQ}
C {lab_wire.sym} 210 40 0 0 {name=p27 sig_type=std_logic lab=M1}
C {lab_wire.sym} 210 60 0 0 {name=p28 sig_type=std_logic lab=MREQ}
C {lab_wire.sym} -40 -380 3 0 {name=p29 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 40 -380 3 0 {name=p30 sig_type=std_logic lab=VDD1V2}
C {vsource.sym} 0 450 0 1 {name=VGND value=0 savecurrent=true}
C {lab_wire.sym} 0 320 3 0 {name=p31 sig_type=std_logic lab=PGND}
C {devices/code_shown.sym} -410 710 0 0 {name=NGSPICE only_toplevel=true 
value="
* These files are not needed as using flat netlist
* .include ~/IHP-Open-PDK/ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
* .include ~/IHP-Open-PDK/ihp-sg13cmos5l/libs.ref/sg13cmos5l_io/spice/sg13cmos5l_io.spice

.option klu

.save i(VVDD3V3) i(VVDD1V2) i(VGND) 
.save V(EN) V(OSC)

.control
tran 0.1n 3.1u
write tb_MPU9547_osc_tran.raw

set hcopydevtype=svg
set color0=white
set color1=black
hardcopy tb_MPU9547_osc.svg V(OSC)
.endc

"}
