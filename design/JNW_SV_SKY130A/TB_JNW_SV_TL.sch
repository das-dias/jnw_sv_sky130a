v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 370 -90 370 -60 {lab=#net1}
N 280 -110 280 -60 {lab=#net2}
N 220 0 300 0 {lab=0}
N 110 0 220 0 {lab=0}
N 300 0 450 0 {lab=0}
N 0 -10 0 0 {lab=0}
N 0 0 110 0 {lab=0}
N 0 -100 0 -70 {lab=#net3}
N 0 -190 0 -160 {lab=DIFF}
N 0 -190 40 -190 {lab=DIFF}
N 560 -70 560 -40 {lab=VBN}
N 560 -70 600 -70 {lab=VBN}
N 600 -40 620 -40 {lab=0}
N 620 -40 620 -10 {lab=0}
N 600 -10 620 -10 {lab=0}
N 600 -10 600 0 {lab=0}
N 600 -360 600 -320 {lab=VDD_1V8}
N 600 -260 600 -70 {lab=VBN}
N 600 -440 600 -360 {lab=VDD_1V8}
N 450 -0 600 -0 {lab=0}
N 670 -70 670 -40 {lab=VBN}
N 710 -10 710 0 {lab=0}
N 710 -40 730 -40 {lab=0}
N 730 -40 730 0 {lab=0}
N 710 0 730 0 {lab=0}
N 710 -440 740 -440 {lab=VDD_1V8}
N 710 -410 740 -410 {lab=VDD_1V8}
N 740 -440 740 -410 {lab=VDD_1V8}
N 710 -380 710 -70 {lab=VBP}
N 670 -410 670 -360 {lab=VBP}
N 670 -360 710 -360 {lab=VBP}
N 600 -0 710 -0 {lab=0}
N 600 -70 670 -70 {lab=VBN}
N 280 -120 280 -110 {lab=#net2}
N 280 -120 350 -120 {lab=#net2}
N 370 -120 370 -80 {lab=#net1}
N 310 -490 310 -420 {lab=IP}
N 310 -570 310 -550 {lab=IN}
N 310 -570 330 -570 {lab=IN}
N 330 -570 330 -420 {lab=IN}
N 350 -470 350 -420 {lab=VBP}
N 290 -510 290 -420 {lab=VBN}
N 370 -440 370 -420 {lab=VDD_1V8}
N 370 -440 600 -440 {lab=VDD_1V8}
N 480 -440 480 -60 {lab=VDD_1V8}
N 270 -440 270 -420 {lab=0}
N 230 -440 270 -440 {lab=0}
N 230 -440 230 0 {lab=0}
N 600 -440 710 -440 {lab=VDD_1V8}
C {devices/vsource.sym} 370 -30 0 0 {name=V1 value=0.2 savecurrent=false}
C {devices/vsource.sym} 280 -30 0 0 {name=V2 value=0.2 savecurrent=false}
C {devices/lab_wire.sym} 310 0 0 1 {name=p6 sig_type=std_logic lab=0
}
C {devices/vsource.sym} 480 -30 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/isource.sym} 310 -520 2 0 {name=I0 value=0n}
C {devices/ccvs.sym} 0 -40 0 0 {name=H1 vnam=v1 value=1}
C {devices/ccvs.sym} 0 -130 2 0 {name=H2 vnam=v2 value=1}
C {devices/lab_wire.sym} 0 -190 0 1 {name=p5 sig_type=std_logic lab=DIFF
}
C {devices/simulator_commands_shown.sym} 860 -390 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param mc_mm_switch=0
.param mc_pr_switch=0
.include tt.spi
*.include ss.spi
.option gmin=1e-15
.lib "../../../tech/ngspice/temperature.spi" Tl
.lib "../../../tech/ngspice/supply.spi" Vl
.include ../../../../cpdk/ngspice/ideal_circuits.spi
.option savecurrents
.save all
.control
optran 0 0 0 10n 10u 0
op
write TB_JNW_SV_TL.raw
exit
.endc
.end
"}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 560 -40 0 0 {name=x10 }
C {devices/lab_wire.sym} 560 -70 0 1 {name=p1 sig_type=std_logic lab=VBN
}
C {devices/isource.sym} 600 -290 0 0 {name=I1 value=10n}
C {devices/lab_wire.sym} 600 -440 0 1 {name=p11 sig_type=std_logic lab=VDD_1V8
}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 670 -40 0 0 {name=x5 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 670 -410 0 0 {name=x6 }
C {devices/lab_wire.sym} 710 -360 0 1 {name=p2 sig_type=std_logic lab=VBP
}
C {JNW_SV_SKY130A/JNW_SV_TL.sym} 320 -270 1 0 {name=x1}
C {devices/lab_wire.sym} 310 -440 3 1 {name=p3 sig_type=std_logic lab=IP
}
C {devices/lab_wire.sym} 330 -440 3 1 {name=p4 sig_type=std_logic lab=IN
}
C {devices/lab_wire.sym} 350 -460 3 1 {name=p7 sig_type=std_logic lab=VBP
}
C {devices/lab_wire.sym} 290 -440 3 1 {name=p8 sig_type=std_logic lab=VBN
}
