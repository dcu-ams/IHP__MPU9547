v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -320 -100 {}
T {DUMMY} 380 280 0 0 0.4 0.4 {}
T {DUMMY} 750 280 0 0 0.4 0.4 {}
N 0 -80 100 -80 {lab=OSC}
N 30 -40 100 -40 {lab=#net1}
N 20 -60 100 -60 {lab=#net2}
N 280 -60 300 -60 {lab=#net2}
N 300 -60 300 0 {lab=#net2}
N 20 0 300 0 {lab=#net2}
N 20 -60 20 0 {lab=#net2}
N 330 -40 400 -40 {lab=#net3}
N 320 -60 400 -60 {lab=#net4}
N 580 -60 600 -60 {lab=#net4}
N 600 -60 600 0 {lab=#net4}
N 320 0 600 0 {lab=#net4}
N 320 -60 320 0 {lab=#net4}
N 280 -80 400 -80 {lab=#net5}
N 630 -40 700 -40 {lab=#net6}
N 620 -60 700 -60 {lab=#net7}
N 880 -60 900 -60 {lab=#net7}
N 900 -60 900 0 {lab=#net7}
N 620 0 900 0 {lab=#net7}
N 620 -60 620 0 {lab=#net7}
N 580 -80 700 -80 {lab=#net8}
N 930 -40 1000 -40 {lab=#net9}
N 920 -60 1000 -60 {lab=#net10}
N 1180 -60 1200 -60 {lab=#net10}
N 1200 -60 1200 0 {lab=#net10}
N 920 0 1200 0 {lab=#net10}
N 920 -60 920 0 {lab=#net10}
N 880 -80 1000 -80 {lab=#net11}
N 1230 -40 1300 -40 {lab=#net12}
N 1220 -60 1300 -60 {lab=#net13}
N 1480 -60 1500 -60 {lab=#net13}
N 1500 -60 1500 0 {lab=#net13}
N 1220 0 1500 0 {lab=#net13}
N 1220 -60 1220 0 {lab=#net13}
N 1180 -80 1300 -80 {lab=#net14}
N 1530 -40 1600 -40 {lab=#net15}
N 1520 -60 1600 -60 {lab=#net16}
N 1780 -60 1800 -60 {lab=#net16}
N 1800 -60 1800 0 {lab=#net16}
N 1520 0 1800 0 {lab=#net16}
N 1520 -60 1520 0 {lab=#net16}
N 1480 -80 1600 -80 {lab=#net17}
N 1830 -40 1900 -40 {lab=#net18}
N 1820 -60 1900 -60 {lab=#net19}
N 2080 -60 2100 -60 {lab=#net19}
N 2100 -60 2100 0 {lab=#net19}
N 1820 0 2100 0 {lab=#net19}
N 1820 -60 1820 0 {lab=#net19}
N 1780 -80 1900 -80 {lab=#net20}
N 2130 -40 2200 -40 {lab=#net21}
N 2120 -60 2200 -60 {lab=#net22}
N 2380 -60 2400 -60 {lab=#net22}
N 2400 -60 2400 0 {lab=#net22}
N 2120 0 2400 0 {lab=#net22}
N 2120 -60 2120 0 {lab=#net22}
N 2080 -80 2200 -80 {lab=#net23}
N 2430 -40 2500 -40 {lab=#net24}
N 2420 -60 2500 -60 {lab=#net25}
N 2680 -60 2700 -60 {lab=#net25}
N 2700 -60 2700 0 {lab=#net25}
N 2420 0 2700 0 {lab=#net25}
N 2420 -60 2420 0 {lab=#net25}
N 2380 -80 2500 -80 {lab=#net26}
N 2730 -40 2800 -40 {lab=#net27}
N 2720 -60 2800 -60 {lab=#net28}
N 2980 -60 3000 -60 {lab=#net28}
N 3000 -60 3000 0 {lab=#net28}
N 2720 0 3000 0 {lab=#net28}
N 2720 -60 2720 0 {lab=#net28}
N 2680 -80 2800 -80 {lab=#net29}
N 2980 -80 3040 -80 {lab=OSCDIV1024}
N 310 120 390 120 {lab=#net30}
N 310 140 390 140 {lab=#net30}
N 310 120 310 140 {lab=#net30}
N 310 160 390 160 {lab=#net30}
N 310 140 310 160 {lab=#net30}
N 690 120 750 120 {lab=#net31}
N 690 140 750 140 {lab=#net31}
N 690 120 690 140 {lab=#net31}
N 690 160 750 160 {lab=#net31}
N 690 140 690 160 {lab=#net31}
N 930 120 960 120 {lab=#net32}
N 930 140 960 140 {lab=#net33}
N 570 120 600 120 {lab=#net34}
N 570 140 600 140 {lab=#net35}
N 310 160 310 200 {lab=#net30}
N 690 160 690 210 {lab=#net31}
N 1300 180 1300 220 {lab=VSS}
N 1180 180 1300 180 {lab=VSS}
N 1050 180 1050 220 {lab=VSS}
N 1180 180 1180 220 {lab=VSS}
N 1050 180 1180 180 {lab=VSS}
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 190 -60 0 0 {name=x23 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {iopin.sym} -340 -180 2 0 {name=p1 lab=VDD}
C {iopin.sym} -340 60 2 0 {name=p12 lab=VSS}
C {ipin.sym} 0 -80 0 0 {name=p13 lab=OSC}
C {opin.sym} 3040 -80 0 0 {name=p14 lab=OSCDIV1024}
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 490 -60 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 790 -60 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 1090 -60 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 1390 -60 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 1690 -60 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 1990 -60 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 2290 -60 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 2590 -60 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 2890 -60 0 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tiehi.sym} 30 -40 2 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tiehi.sym} 330 -40 2 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tiehi.sym} 630 -40 2 0 {name=x13 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tiehi.sym} 930 -40 2 0 {name=x14 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tiehi.sym} 1230 -40 2 0 {name=x15 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tiehi.sym} 1530 -40 2 0 {name=x16 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tiehi.sym} 1830 -40 2 0 {name=x17 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tiehi.sym} 2130 -40 2 0 {name=x18 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tiehi.sym} 2430 -40 2 0 {name=x19 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tiehi.sym} 2730 -40 2 0 {name=x20 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 840 140 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dfrbp_1.sym} 480 140 0 0 {name=x21 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tielo.sym} 310 200 0 0 {name=x22 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tielo.sym} 690 210 0 0 {name=x24 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {noconn.sym} 600 120 2 0 {name=l1}
C {noconn.sym} 600 140 2 0 {name=l2}
C {noconn.sym} 960 120 2 0 {name=l3}
C {noconn.sym} 960 140 2 0 {name=l4}
C {sg13cmos5l_stdcells/sg13cmos5l_tielo.sym} 1050 220 0 0 {name=x25 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tielo.sym} 1180 220 0 0 {name=x26 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_tielo.sym} 1300 220 0 0 {name=x27 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {lab_wire.sym} 1250 180 0 0 {name=p2 sig_type=std_logic lab=VSS}
