v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -70 0 -60 {lab=#net1}
N 330 -70 330 -60 {lab=#net1}
N 330 -0 330 120 {lab=N}
N -0 0 0 120 {lab=P}
N -0 120 50 120 {lab=P}
N 90 60 90 90 {lab=VS}
N 90 60 240 60 {lab=VS}
N 240 60 240 90 {lab=VS}
N 100 120 240 120 {lab=VDD_1V8}
N 90 120 100 120 {lab=VDD_1V8}
N -30 260 -0 260 {lab=0}
N -30 260 -30 290 {lab=0}
N -30 290 -0 290 {lab=0}
N 0 120 0 230 {lab=P}
N 130 260 200 260 {lab=VBN}
N 0 290 90 290 {lab=0}
N 90 290 240 290 {lab=0}
N 330 260 360 260 {lab=0}
N 360 260 360 290 {lab=0}
N 330 290 360 290 {lab=0}
N 240 290 330 290 {lab=0}
N 240 260 260 260 {lab=0}
N 260 260 260 290 {lab=0}
N 70 260 90 260 {lab=0}
N 70 260 70 290 {lab=0}
N 90 150 90 230 {lab=#net2}
N 240 150 240 230 {lab=#net3}
N 330 120 330 230 {lab=N}
N 280 120 330 120 {lab=N}
N -200 210 -200 240 {lab=#net2}
N -200 210 90 210 {lab=#net2}
N -280 190 -280 240 {lab=#net3}
N -280 190 240 190 {lab=#net3}
N -280 300 -200 300 {lab=0}
N -390 300 -280 300 {lab=0}
N -390 -80 -390 240 {lab=VDD_1V8}
N -170 120 -0 120 {lab=P}
N -170 60 -100 60 {lab=N}
N 330 -30 350 -30 {lab=#net1}
N 350 -70 350 -30 {lab=#net1}
N 330 -70 350 -70 {lab=#net1}
N -30 -30 0 -30 {lab=#net1}
N -30 -70 -30 -30 {lab=#net1}
N -30 -70 -0 -70 {lab=#net1}
N 40 -30 40 10 {lab=P}
N 0 10 40 10 {lab=P}
N 290 -30 290 20 {lab=N}
N 290 20 330 20 {lab=N}
N -50 290 -30 290 {lab=0}
N -50 290 -50 300 {lab=0}
N -200 300 -50 300 {lab=0}
N 40 220 40 260 {lab=VBN}
N 40 220 290 220 {lab=VBN}
N 290 220 290 260 {lab=VBN}
N 160 220 160 260 {lab=VBN}
N 440 220 440 250 {lab=VBN}
N 440 220 480 220 {lab=VBN}
N 480 250 500 250 {lab=0}
N 500 250 500 280 {lab=0}
N 480 280 500 280 {lab=0}
N 480 280 480 290 {lab=0}
N 360 290 480 290 {lab=0}
N 290 220 440 220 {lab=VBN}
N 480 -70 480 -30 {lab=VDD_1V8}
N 480 30 480 220 {lab=VBN}
N 480 220 560 220 {lab=VBN}
N 560 220 560 250 {lab=VBN}
N 600 280 600 290 {lab=0}
N 480 290 600 290 {lab=0}
N 600 250 620 250 {lab=0}
N 620 250 620 290 {lab=0}
N 600 290 620 290 {lab=0}
N 150 -90 150 60 {lab=VS}
N -500 290 -500 300 {lab=0}
N -500 300 -390 300 {lab=0}
N -500 200 -500 230 {lab=#net4}
N -500 110 -500 140 {lab=DIFF}
N -500 110 -460 110 {lab=DIFF}
N 150 -150 600 -150 {lab=VDD_1V8}
N 600 -150 630 -150 {lab=VDD_1V8}
N 10 -150 150 -150 {lab=VDD_1V8}
N 600 -120 630 -120 {lab=VDD_1V8}
N 630 -150 630 -120 {lab=VDD_1V8}
N 600 -90 600 220 {lab=VBP}
N 560 -120 560 -70 {lab=VBP}
N 560 -70 600 -70 {lab=VBP}
N 190 -120 560 -120 {lab=VBP}
N 110 -120 150 -120 {lab=VDD_1V8}
N 110 -150 110 -120 {lab=VDD_1V8}
N -390 -150 10 -150 {lab=VDD_1V8}
N -390 -150 -390 -80 {lab=VDD_1V8}
N -40 -120 -0 -120 {lab=VDD_1V8}
N -40 -150 -40 -120 {lab=VDD_1V8}
N -0 -90 40 -90 {lab=#net1}
N 40 -120 40 -90 {lab=#net1}
N 0 -90 0 -70 {lab=#net1}
N 0 -70 330 -70 {lab=#net1}
N 480 -150 480 -70 {lab=VDD_1V8}
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 50 120 0 0 {name=x3 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 280 120 0 1 {name=x4 }
C {devices/lab_wire.sym} 130 120 0 1 {name=p4 sig_type=std_logic lab=VDD_1V8
}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 40 260 0 1 {name=x11}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 130 260 0 1 {name=x8}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 200 260 0 0 {name=x9}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 290 260 0 0 {name=x12}
C {devices/vsource.sym} -200 270 0 0 {name=V1 value=0.2 savecurrent=false}
C {devices/vsource.sym} -280 270 0 0 {name=V2 value=0.2 savecurrent=false}
C {devices/lab_wire.sym} -250 300 0 1 {name=p6 sig_type=std_logic lab=0
}
C {devices/vsource.sym} -390 270 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/isource.sym} -170 90 2 0 {name=I0 value=1n}
C {devices/lab_wire.sym} 10 120 0 1 {name=p7 sig_type=std_logic lab=P
}
C {devices/lab_wire.sym} 310 120 0 1 {name=p8 sig_type=std_logic lab=N
}
C {devices/lab_wire.sym} -110 60 0 1 {name=p9 sig_type=std_logic lab=N
}
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 290 -30 0 0 {name=x1 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 40 -30 0 1 {name=x2 }
C {devices/simulator_commands_shown.sym} 710 -40 0 0 {name=COMMANDS
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
write JNW_SV_TL.raw
exit
.endc
.end
"}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 440 250 0 0 {name=x10 }
C {devices/lab_wire.sym} 420 220 0 1 {name=p1 sig_type=std_logic lab=VBN
}
C {devices/isource.sym} 480 0 0 0 {name=I1 value=10n}
C {devices/lab_wire.sym} 240 60 0 1 {name=p2 sig_type=std_logic lab=VS
}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 560 250 0 0 {name=x5 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 560 -120 0 0 {name=x6 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 190 -120 0 1 {name=x9[1:0]}
C {devices/ccvs.sym} -500 260 0 0 {name=H1 vnam=v1 value=1}
C {devices/ccvs.sym} -500 170 2 0 {name=H2 vnam=v2 value=1}
C {devices/lab_wire.sym} -500 110 0 1 {name=p5 sig_type=std_logic lab=DIFF
}
C {devices/lab_wire.sym} 320 -120 0 1 {name=p10 sig_type=std_logic lab=VBP
}
C {devices/lab_wire.sym} 440 -150 0 1 {name=p11 sig_type=std_logic lab=VDD_1V8
}
C {JNW_ATR_SKY130A/JNWATR_PCH_2C1F2.sym} 40 -120 0 1 {name=x7 }
