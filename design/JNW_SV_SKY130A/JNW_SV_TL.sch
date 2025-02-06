v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Translinear gain cell} 300 -660 0 0 1 1 {}
N 300 -440 300 -430 {lab=VS1}
N 630 -440 630 -430 {lab=VS1}
N 630 -370 630 -250 {lab=IN}
N 300 -370 300 -250 {lab=IP}
N 300 -250 350 -250 {lab=IP}
N 390 -310 390 -280 {lab=VS}
N 390 -310 540 -310 {lab=VS}
N 540 -310 540 -280 {lab=VS}
N 400 -250 540 -250 {lab=VDD_1V8}
N 390 -250 400 -250 {lab=VDD_1V8}
N 270 -110 300 -110 {lab=VSS}
N 270 -110 270 -80 {lab=VSS}
N 270 -80 300 -80 {lab=VSS}
N 300 -250 300 -140 {lab=IP}
N 430 -110 500 -110 {lab=VBN}
N 300 -80 390 -80 {lab=VSS}
N 390 -80 540 -80 {lab=VSS}
N 630 -110 660 -110 {lab=VSS}
N 660 -110 660 -80 {lab=VSS}
N 630 -80 660 -80 {lab=VSS}
N 540 -80 630 -80 {lab=VSS}
N 540 -110 560 -110 {lab=VSS}
N 560 -110 560 -80 {lab=VSS}
N 370 -110 390 -110 {lab=VSS}
N 370 -110 370 -80 {lab=VSS}
N 390 -220 390 -140 {lab=ON}
N 540 -220 540 -140 {lab=OP}
N 630 -250 630 -140 {lab=IN}
N 580 -250 630 -250 {lab=IN}
N 630 -400 650 -400 {lab=VS1}
N 650 -440 650 -400 {lab=VS1}
N 630 -440 650 -440 {lab=VS1}
N 270 -400 300 -400 {lab=VS1}
N 270 -440 270 -400 {lab=VS1}
N 270 -440 300 -440 {lab=VS1}
N 340 -400 340 -360 {lab=IP}
N 300 -360 340 -360 {lab=IP}
N 590 -400 590 -350 {lab=IN}
N 590 -350 630 -350 {lab=IN}
N 250 -80 270 -80 {lab=VSS}
N 340 -150 340 -110 {lab=VBN}
N 340 -150 590 -150 {lab=VBN}
N 590 -150 590 -110 {lab=VBN}
N 460 -150 460 -110 {lab=VBN}
N 450 -460 450 -310 {lab=VS}
N 310 -520 450 -520 {lab=VDD_1V8}
N 410 -490 450 -490 {lab=VDD_1V8}
N 410 -520 410 -490 {lab=VDD_1V8}
N 260 -490 300 -490 {lab=VDD_1V8}
N 260 -520 260 -490 {lab=VDD_1V8}
N 300 -460 340 -460 {lab=VS1}
N 340 -490 340 -460 {lab=VS1}
N 300 -460 300 -440 {lab=VS1}
N 300 -440 630 -440 {lab=VS1}
N 200 -520 300 -520 {lab=VDD_1V8}
N 300 -520 310 -520 {lab=VDD_1V8}
N 630 -250 680 -250 {lab=IN}
N 170 -250 300 -250 {lab=IP}
N 190 -80 250 -80 {lab=VSS}
N 190 -150 340 -150 {lab=VBN}
N 390 -180 410 -180 {lab=ON}
N 520 -180 540 -180 {lab=OP}
N 490 -490 580 -490 {lab=VBP}
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 350 -250 0 0 {name=x3 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 580 -250 0 1 {name=x4 }
C {devices/lab_wire.sym} 430 -250 0 1 {name=p4 sig_type=std_logic lab=VDD_1V8
}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 340 -110 0 1 {name=x11}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 430 -110 0 1 {name=x8}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 500 -110 0 0 {name=x9}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 590 -110 0 0 {name=x12}
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 590 -400 0 0 {name=x1 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 340 -400 0 1 {name=x2 }
C {devices/lab_wire.sym} 540 -310 0 1 {name=p2 sig_type=std_logic lab=VS
}
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 490 -490 0 1 {name=x9[1:0]}
C {JNW_ATR_SKY130A/JNWATR_PCH_2C1F2.sym} 340 -490 0 1 {name=x7 }
C {devices/ipin.sym} 200 -520 0 0 {name=p3 lab=VDD_1V8}
C {devices/ipin.sym} 170 -250 0 0 {name=p5 lab=IP}
C {devices/ipin.sym} 680 -250 0 1 {name=p6 lab=IN}
C {devices/ipin.sym} 190 -80 0 0 {name=p9 lab=VSS}
C {devices/ipin.sym} 190 -150 0 0 {name=p11 lab=VBN}
C {devices/opin.sym} 410 -180 2 1 {name=p12 lab=ON}
C {devices/opin.sym} 520 -180 2 0 {name=p13 lab=OP}
C {devices/ipin.sym} 570 -490 0 1 {name=p1 lab=VBP}
C {cborder/border_xs.sym} 0 0 0 0 {}
C {devices/lab_wire.sym} 530 -440 0 1 {name=p7 sig_type=std_logic lab=VS1

}
