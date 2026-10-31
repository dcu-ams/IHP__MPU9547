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
N -220 20 -150 20 {lab=INT}
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
N 150 160 240 160 {lab=OSC}
N -40 -500 -40 -460 {lab=0}
N 40 -500 40 -460 {lab=0}
N -40 -400 -40 -300 {lab=VDD3V3}
N 40 -400 40 -300 {lab=VDD1V2}
N 0 480 0 500 {lab=0}
N -0 300 0 420 {lab=PGND}
N -380 20 -280 20 {lab=VDD3V3}
N -670 60 -670 80 {lab=0}
N -670 -20 -670 -0 {lab=CLK}
N -670 -20 -150 -20 {lab=CLK}
N -480 60 -150 60 {lab=RESET}
N -480 60 -480 80 {lab=RESET}
N -480 140 -480 160 {lab=0}
C {vsource.sym} -40 -430 2 0 {name=VVDD3V3 value=3.3 savecurrent=true}
C {vsource.sym} 40 -430 2 1 {name=VVDD1V2 value=1.2 savecurrent=true}
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
C {devices/code_shown.sym} -420 700 0 0 {name=NGSPICE only_toplevel=true 
value="
* These files are not needed as using flat netlist
* .include ~/IHP-Open-PDK/ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
* .include ~/IHP-Open-PDK/ihp-sg13cmos5l/libs.ref/sg13cmos5l_io/spice/sg13cmos5l_io.spice

.option klu

.save i(VVDD3V3) i(VVDD1V2) i(VGND) 
.save V(RESET) V(CLK) 
.save V(D7) V(D6) V(D5) V(D4) V(D3) V(D2) V(D1) V(D0)
.save V(A9) V(A8) V(A7) V(A6) V(A5) V(A4) V(A3) V(A2) V(A1) V(A0)
.save V(WR) V(RD) V(IORQ) V(M1) V(MREQ) 

.control
tran 0.1n 500n
write tb_MPU9547_Z80_startup_tran.raw

set hcopydevtype=svg
set color0=white
set color1=black
hardcopy tb_MPU9547_Z80_startup_clk_reset.svg V(RESET) V(CLK) 
hardcopy tb_MPU9547_Z80_startup_data.svg V(D7) V(D6) V(D5) V(D4) V(D3) V(D2) V(D1) V(D0)
hardcopy tb_MPU9547_Z80_startup_address.svg V(A9) V(A8) V(A7) V(A6) V(A5) V(A4) V(A3) V(A2) V(A1) V(A0)
hardcopy tb_MPU9547_Z80_startup_control.svg V(WR) V(RD) V(IORQ) V(M1) V(MREQ) 
.endc

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
C {lab_wire.sym} -500 -20 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -170 20 0 0 {name=p12 sig_type=std_logic lab=INT}
C {lab_wire.sym} -160 60 0 0 {name=p13 sig_type=std_logic lab=RESET}
C {res.sym} -250 20 1 0 {name=R10
value=1k
footprint=1206
device=resistor
m=1}
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
C {res.sym} -260 210 0 0 {name=R12
value=1
footprint=1206
device=resistor
m=1}
C {noconn.sym} 240 160 2 0 {name=l3}
C {noconn.sym} -220 -240 0 0 {name=l15}
C {noconn.sym} -220 -220 0 0 {name=l23}
C {noconn.sym} -220 -200 0 0 {name=l24}
C {noconn.sym} -220 -180 0 0 {name=l25}
C {noconn.sym} -220 -160 0 0 {name=l26}
C {noconn.sym} -220 -140 0 0 {name=l27}
C {noconn.sym} -220 -120 0 0 {name=l28}
C {noconn.sym} -220 -100 0 0 {name=l29}
C {lab_wire.sym} -300 20 0 0 {name=p32 sig_type=std_logic lab=VDD3V3}
C {vsource.sym} -670 30 0 0 {name=VCLK value="PULSE(0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {gnd.sym} -670 80 0 0 {name=l2 lab=0}
C {vsource.sym} -480 110 0 0 {name=VRESET value="PWL(0 3.3 60n 3.3 61n 0 160n 0 161n 3.3)" savecurrent=false}
C {gnd.sym} -480 160 0 0 {name=l30 lab=0}
