v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 620 -140 620 -100 {lab=VDD1V2}
N 130 -140 620 -140 {lab=VDD1V2}
N 130 -140 130 -80 {lab=VDD1V2}
N -80 -140 130 -140 {lab=VDD1V2}
N 280 -0 470 -0 {lab=#net1}
N 770 0 860 -0 {lab=OSCBUF}
N 620 100 620 160 {lab=VSS}
N 130 160 620 160 {lab=VSS}
N 130 80 130 160 {lab=VSS}
N -80 0 -20 -0 {lab=EN}
N -80 160 130 160 {lab=VSS}
C {OSCDIV.sym} -20 0 0 0 {name=x1}
C {OSCBUFOUT.sym} 620 0 0 0 {name=x2}
C {ipin.sym} -80 0 0 0 {name=p1 lab=EN}
C {iopin.sym} -80 -140 2 0 {name=p2 lab=VDD}
C {iopin.sym} -80 160 2 0 {name=p3 lab=VSS}
C {opin.sym} 860 0 0 0 {name=p4 lab=OSCBUF}
C {sg13cmos5l_stdcells/sg13cmos5l_decap_8.sym} 90 -240 0 0 {name=x50[478..0] VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_decap_4.sym} 380 -240 0 0 {name=x3[4..0] VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
