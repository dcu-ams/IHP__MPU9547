v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 280 170 {}
N 60 0 130 0 {lab=#net1}
N 210 -0 270 0 {lab=#net2}
N 350 -0 410 -0 {lab=#net3}
N 490 -0 550 0 {lab=#net4}
N 90 -110 160 -110 {lab=VDD}
N 100 80 170 80 {lab=VSS}
N -60 -0 -20 -0 {lab=OSC}
N 630 0 680 0 {lab=OSCBUF}
C {sg13cmos5l_stdcells/sg13cmos5l_buf_1.sym} 20 0 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_buf_4.sym} 310 0 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_buf_8.sym} 450 0 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_buf_16.sym} 590 0 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_buf_2.sym} 170 0 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {ipin.sym} -60 0 0 0 {name=p1 lab=OSC}
C {iopin.sym} 90 -110 2 0 {name=p2 lab=VDD}
C {iopin.sym} 100 80 2 0 {name=p3 lab=VSS}
C {opin.sym} 680 0 0 0 {name=p4 lab=OSCBUF}
