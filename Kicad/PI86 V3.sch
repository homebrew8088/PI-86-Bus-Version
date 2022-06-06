EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 20000 15000
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 6225 1925 0    50   ~ 0
GND
$Comp
L pspice:CAP C1
U 1 1 6086EA25
P 5975 1925
F 0 "C1" V 5660 1925 50  0000 C CNN
F 1 "0.1uF" V 5751 1925 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5975 1925 50  0001 C CNN
F 3 "~" H 5975 1925 50  0001 C CNN
	1    5975 1925
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS573 U2
U 1 1 610632BC
P 10675 1925
F 0 "U2" H 10675 2906 50  0000 C CNN
F 1 "74HC573" H 10675 2815 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 10675 1925 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 10675 1925 50  0001 C CNN
	1    10675 1925
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS573 U3
U 1 1 610661C4
P 10750 6650
F 0 "U3" H 10750 7631 50  0000 C CNN
F 1 "74HC573" H 10750 7540 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 10750 6650 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 10750 6650 50  0001 C CNN
	1    10750 6650
	1    0    0    -1  
$EndComp
Text Label 10175 2125 2    50   ~ 0
A16_
Text Label 10175 1925 2    50   ~ 0
A18_
Text Label 10175 1825 2    50   ~ 0
A19_
Text Label 10675 2725 0    50   ~ 0
GND
Text Label 10750 7450 0    50   ~ 0
GND
Text Label 7650 9675 0    50   ~ 0
GND
$Comp
L pspice:CAP C4
U 1 1 6106BA7C
P 7400 9675
F 0 "C4" V 7085 9675 50  0000 C CNN
F 1 "0.1uF" V 7176 9675 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7400 9675 50  0001 C CNN
F 3 "~" H 7400 9675 50  0001 C CNN
	1    7400 9675
	0    1    1    0   
$EndComp
Text Label 10725 950  0    50   ~ 0
GND
$Comp
L pspice:CAP C2
U 1 1 6106C0FE
P 10475 950
F 0 "C2" V 10160 950 50  0000 C CNN
F 1 "0.1uF" V 10251 950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10475 950 50  0001 C CNN
F 3 "~" H 10475 950 50  0001 C CNN
	1    10475 950 
	0    1    1    0   
$EndComp
Text Label 10250 6150 2    50   ~ 0
AD7
Text Label 10250 6250 2    50   ~ 0
AD6
Text Label 10250 6350 2    50   ~ 0
AD5
Text Label 10250 6450 2    50   ~ 0
AD4
Text Label 10250 6550 2    50   ~ 0
AD3
Text Label 10250 6650 2    50   ~ 0
AD2
Text Label 10250 6750 2    50   ~ 0
AD1
Text Label 10250 6850 2    50   ~ 0
AD0
Text Label 6875 10200 2    50   ~ 0
AD7
Text Label 6875 10300 2    50   ~ 0
AD6
Text Label 6875 10400 2    50   ~ 0
AD5
Text Label 6875 10500 2    50   ~ 0
AD4
Text Label 6875 10600 2    50   ~ 0
AD3
Text Label 6875 10700 2    50   ~ 0
AD2
Text Label 6875 10800 2    50   ~ 0
AD1
Text Label 6875 10900 2    50   ~ 0
AD0
Text Label 7375 11500 0    50   ~ 0
GND
Text Label 10250 7050 2    50   ~ 0
ALE
Text Label 8050 2425 0    50   ~ 0
DTR
Text Label 8050 2525 0    50   ~ 0
DEN
Text Label 6875 11200 2    50   ~ 0
DEN
Text Label 6875 11100 2    50   ~ 0
DTR
Text Label 10175 2325 2    50   ~ 0
ALE
Text Label 3975 4125 0    50   ~ 0
X1
Text Label 3975 4325 0    50   ~ 0
X2
Text Label 8050 2625 0    50   ~ 0
ALE
Text Label 6800 11550 0    50   ~ 0
DEN
$Comp
L Device:R R5
U 1 1 61072939
P 6650 11550
F 0 "R5" V 6443 11550 50  0000 C CNN
F 1 "10K ohm" V 6534 11550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6580 11550 50  0001 C CNN
F 3 "~" H 6650 11550 50  0001 C CNN
	1    6650 11550
	0    1    1    0   
$EndComp
Text Label 6650 4225 2    50   ~ 0
GND
Text Label 13625 12925 0    50   ~ 0
HF_PCLK
Text Label 13625 13125 0    50   ~ 0
SPK_OUT
Text Label 11300 12025 0    50   ~ 0
IRQ2
Text Label 11300 12125 0    50   ~ 0
IRQ1
$Comp
L Device:Crystal Y1
U 1 1 610DE620
P 4150 4750
F 0 "Y1" H 4150 4482 50  0000 C CNN
F 1 "Crystal" H 4150 4573 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 4150 4750 50  0001 C CNN
F 3 "~" H 4150 4750 50  0001 C CNN
	1    4150 4750
	-1   0    0    1   
$EndComp
Text Label 4000 4750 2    50   ~ 0
X1
Text Label 4300 4750 0    50   ~ 0
X2
$Comp
L Interface:8259 U7
U 1 1 6113F110
P 10700 12325
F 0 "U7" H 10700 13606 50  0000 C CNN
F 1 "71059" H 10700 13515 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 10700 12325 50  0001 C CIN
F 3 "http://pdos.csail.mit.edu/6.828/2005/readings/hardware/8259A.pdf" H 10700 12325 50  0001 C CNN
	1    10700 12325
	1    0    0    -1  
$EndComp
$Comp
L Timer:8253 U8
U 1 1 6114018C
P 13025 12525
F 0 "U8" H 13025 13706 50  0000 C CNN
F 1 "71054" H 13025 13615 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm" H 13075 12775 50  0001 C CNN
F 3 "http://www.cpcwiki.eu/imgs/e/e3/8253.pdf" H 12575 13425 50  0001 C CNN
	1    13025 12525
	1    0    0    -1  
$EndComp
$Comp
L Timer:8284 U6
U 1 1 61142859
P 3275 3725
F 0 "U6" H 3275 4806 50  0000 C CNN
F 1 "71011" H 3275 4715 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm" H 3275 3725 50  0001 C CIN
F 3 "http://www.cpu-galaxy.at/cpu/ram%20rom%20eprom/other_intel_chips/other_intel-Dateien/D8284A_Datasheet.pdf" H 3275 3725 50  0001 C CNN
	1    3275 3725
	1    0    0    -1  
$EndComp
Text Label 8050 2825 0    50   ~ 0
AD0
Text Label 8050 2925 0    50   ~ 0
AD1
Text Label 8050 3025 0    50   ~ 0
AD2
Text Label 8050 3125 0    50   ~ 0
AD3
Text Label 6650 3425 2    50   ~ 0
INTA
Text Label 6650 3225 2    50   ~ 0
INTR
Text Label 6650 2425 2    50   ~ 0
CLK_88
Text Label 3975 3125 0    50   ~ 0
CLK1
$Comp
L Device:R R1
U 1 1 6115385B
P 4800 3400
F 0 "R1" V 4593 3400 50  0000 C CNN
F 1 "27 ohm" V 4684 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4730 3400 50  0001 C CNN
F 3 "~" H 4800 3400 50  0001 C CNN
	1    4800 3400
	0    1    1    0   
$EndComp
Text Label 4950 3400 0    50   ~ 0
CLK_88
Text Label 4650 3400 2    50   ~ 0
CLK1
Text Label 3975 3325 0    50   ~ 0
READY1
Text Label 10700 13425 0    50   ~ 0
GND
Text Label 10100 13025 2    50   ~ 0
INTR
Text Label 10100 13125 2    50   ~ 0
INTA
Text Label 10100 12425 2    50   ~ 0
A0
Text Label 12425 12725 2    50   ~ 0
IORD
Text Label 12425 12825 2    50   ~ 0
IOWR
Text Label 10100 12825 2    50   ~ 0
IORD
Text Label 10100 12725 2    50   ~ 0
IOWR
Text Label 10100 12625 2    50   ~ 0
IO_002X
Text Label 13625 11925 0    50   ~ 0
HF_PCLK
Text Label 13625 12425 0    50   ~ 0
HF_PCLK
Text Label 13625 12125 0    50   ~ 0
IRQ0
Text Label 11300 12225 0    50   ~ 0
IRQ0
Text Label 13025 13525 0    50   ~ 0
GND
Text Label 9850 11025 0    50   ~ 0
GND
$Comp
L pspice:CAP C7
U 1 1 61168CB8
P 9600 11025
F 0 "C7" V 9285 11025 50  0000 C CNN
F 1 "0.1uF" V 9376 11025 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9600 11025 50  0001 C CNN
F 3 "~" H 9600 11025 50  0001 C CNN
	1    9600 11025
	0    1    1    0   
$EndComp
Text Label 2900 2150 0    50   ~ 0
GND
$Comp
L pspice:CAP C6
U 1 1 61169247
P 2650 2150
F 0 "C6" V 2335 2150 50  0000 C CNN
F 1 "0.1uF" V 2426 2150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2650 2150 50  0001 C CNN
F 3 "~" H 2650 2150 50  0001 C CNN
	1    2650 2150
	0    1    1    0   
$EndComp
Text Label 13950 11250 0    50   ~ 0
GND
$Comp
L pspice:CAP C8
U 1 1 61169660
P 13700 11250
F 0 "C8" V 13385 11250 50  0000 C CNN
F 1 "0.1uF" V 13476 11250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 13700 11250 50  0001 C CNN
F 3 "~" H 13700 11250 50  0001 C CNN
	1    13700 11250
	0    1    1    0   
$EndComp
Text Label 2575 3425 2    50   ~ 0
GND
Text Label 2575 3525 2    50   ~ 0
GND
Text Label 2575 3825 2    50   ~ 0
GND
Text Label 2575 3925 2    50   ~ 0
GND
Text Label 2575 4125 2    50   ~ 0
GND
Text Label 3275 4625 2    50   ~ 0
GND
Text Label 2575 3125 2    50   ~ 0
RESET
Text Label 3975 3525 0    50   ~ 0
RESET1
Text Label 6650 2825 2    50   ~ 0
RESET1
Text Label 2575 3325 2    50   ~ 0
RDY1
Text Label 6650 2625 2    50   ~ 0
READY1
$Comp
L Connector:Raspberry_Pi_2_3 J1
U 1 1 629DC735
P 16375 4725
F 0 "J1" H 16375 6206 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 16375 6115 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 16375 4725 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 16375 4725 50  0001 C CNN
	1    16375 4725
	1    0    0    -1  
$EndComp
Wire Wire Line
	17650 4125 17650 2625
Wire Wire Line
	17650 2625 13400 2625
Wire Wire Line
	17175 4225 17600 4225
Wire Wire Line
	17600 4225 17600 2675
Wire Wire Line
	17600 2675 13400 2675
Wire Wire Line
	17175 4125 17650 4125
Wire Wire Line
	17175 4425 17550 4425
Wire Wire Line
	17550 4425 17550 2725
Wire Wire Line
	17550 2725 13400 2725
Wire Wire Line
	15575 4225 14975 4225
Wire Wire Line
	14975 4225 14975 2775
Wire Wire Line
	14975 2775 13400 2775
Wire Wire Line
	15575 5425 14900 5425
Wire Wire Line
	14900 5425 14900 2825
Wire Wire Line
	14900 2825 13400 2825
Wire Wire Line
	15575 4925 14825 4925
Wire Wire Line
	14825 4925 14825 2875
Wire Wire Line
	14825 2875 13400 2875
Wire Wire Line
	17175 5125 17500 5125
Wire Wire Line
	17500 5125 17500 2925
Wire Wire Line
	17500 2925 13400 2925
Wire Wire Line
	17175 5025 17450 5025
Wire Wire Line
	17450 5025 17450 2975
Wire Wire Line
	17450 2975 13400 2975
Text Label 13400 2925 2    50   ~ 0
BUS_6
Text Label 13400 2975 2    50   ~ 0
BUS_7
Text Label 13400 2875 2    50   ~ 0
BUS_5
Text Label 13400 2825 2    50   ~ 0
BUS_4
Text Label 13400 2775 2    50   ~ 0
BUS_3
Text Label 13400 2725 2    50   ~ 0
BUS_2
Text Label 13400 2675 2    50   ~ 0
BUS_1
Text Label 13400 2625 2    50   ~ 0
BUS_0
Text Label 11175 1525 0    50   ~ 0
BUS_6
Text Label 11175 1425 0    50   ~ 0
BUS_7
Text Label 11175 1625 0    50   ~ 0
BUS_5
Text Label 11175 1725 0    50   ~ 0
BUS_4
Text Label 11175 1825 0    50   ~ 0
BUS_3
Text Label 11175 1925 0    50   ~ 0
BUS_2
Text Label 11175 2025 0    50   ~ 0
BUS_1
Text Label 11175 2125 0    50   ~ 0
BUS_0
Text Label 11250 6250 0    50   ~ 0
BUS_6
Text Label 11250 6150 0    50   ~ 0
BUS_7
Text Label 11250 6350 0    50   ~ 0
BUS_5
Text Label 11250 6450 0    50   ~ 0
BUS_4
Text Label 11250 6550 0    50   ~ 0
BUS_3
Text Label 11250 6650 0    50   ~ 0
BUS_2
Text Label 11250 6750 0    50   ~ 0
BUS_1
Text Label 11250 6850 0    50   ~ 0
BUS_0
Text Label 10250 7150 2    50   ~ 0
A0-A7_OUTPUT_E
Text Label 10725 3150 0    50   ~ 0
GND
$Comp
L 74xx:74LS573 U5
U 1 1 629FF739
P 7450 8100
F 0 "U5" H 7450 9081 50  0000 C CNN
F 1 "74HC573" H 7450 8990 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 7450 8100 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 7450 8100 50  0001 C CNN
	1    7450 8100
	1    0    0    -1  
$EndComp
Text Label 7450 8900 0    50   ~ 0
GND
Text Label 7600 7050 0    50   ~ 0
GND
$Comp
L pspice:CAP C5
U 1 1 629FF747
P 7350 7050
F 0 "C5" V 7035 7050 50  0000 C CNN
F 1 "0.1uF" V 7126 7050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7350 7050 50  0001 C CNN
F 3 "~" H 7350 7050 50  0001 C CNN
	1    7350 7050
	0    1    1    0   
$EndComp
Text Label 7950 7700 0    50   ~ 0
BUS_6
Text Label 7950 7600 0    50   ~ 0
BUS_7
Text Label 7950 7800 0    50   ~ 0
BUS_5
Text Label 7950 7900 0    50   ~ 0
BUS_4
Text Label 7950 8000 0    50   ~ 0
BUS_3
Text Label 7950 8100 0    50   ~ 0
BUS_2
Text Label 7950 8200 0    50   ~ 0
BUS_1
Text Label 7950 8300 0    50   ~ 0
BUS_0
Text Label 10175 2425 2    50   ~ 0
A16-A19_OUTPUT_E
Text Label 6650 4025 2    50   ~ 0
SSO
Text Label 6950 8100 2    50   ~ 0
IO_M
Text Label 6950 8200 2    50   ~ 0
DTR
Text Label 6950 8600 2    50   ~ 0
S0_S2_OUTPUT_E
Text Label 13725 3925 2    50   ~ 0
S0_S2_OUTPUT_E
Text Label 13725 3725 2    50   ~ 0
A8-A15_OUTPUT_E
Text Label 13725 3625 2    50   ~ 0
A16-A19_OUTPUT_E
Text Label 13725 3825 2    50   ~ 0
A0-A7_OUTPUT_E
$Comp
L 74xx:74LS04 U10
U 1 1 62A0FF73
P 1600 6575
F 0 "U10" H 1600 6892 50  0000 C CNN
F 1 "74HC04" H 1600 6801 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1600 6575 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1600 6575 50  0001 C CNN
	1    1600 6575
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U10
U 7 1 62A109B1
P 1550 7125
F 0 "U10" V 1183 7125 50  0000 C CNN
F 1 "74HC04" V 1274 7125 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1550 7125 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1550 7125 50  0001 C CNN
	7    1550 7125
	0    1    1    0   
$EndComp
Text Label 1725 6000 0    50   ~ 0
GND
$Comp
L pspice:CAP C10
U 1 1 62A11DF6
P 1475 6000
F 0 "C10" V 1160 6000 50  0000 C CNN
F 1 "0.1uF" V 1251 6000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1475 6000 50  0001 C CNN
F 3 "~" H 1475 6000 50  0001 C CNN
	1    1475 6000
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS74 U11
U 1 1 62A12A62
P 3250 6500
F 0 "U11" H 3250 6981 50  0000 C CNN
F 1 "74HC74" H 3250 6890 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3250 6500 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3250 6500 50  0001 C CNN
	1    3250 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U11
U 3 1 62A138B4
P 3275 8050
F 0 "U11" V 2908 8050 50  0000 C CNN
F 1 "74HC74" V 2999 8050 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3275 8050 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3275 8050 50  0001 C CNN
	3    3275 8050
	0    1    1    0   
$EndComp
Text Label 1050 7125 2    50   ~ 0
GND
Text Label 1900 6575 0    50   ~ 0
CLR
Text Label 1300 6575 2    50   ~ 0
ALE
Text Label 2950 6500 2    50   ~ 0
BUS_READY
Text Label 3250 6800 0    50   ~ 0
CLR
Text Label 3250 6200 0    50   ~ 0
NOT_Q
Text Label 3550 6600 0    50   ~ 0
NOT_Q
Text Label 3550 6400 0    50   ~ 0
RDY1
Text Label 3250 5875 0    50   ~ 0
GND
$Comp
L pspice:CAP C11
U 1 1 62A17A75
P 3000 5875
F 0 "C11" V 2685 5875 50  0000 C CNN
F 1 "0.1uF" V 2776 5875 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3000 5875 50  0001 C CNN
F 3 "~" H 3000 5875 50  0001 C CNN
	1    3000 5875
	0    1    1    0   
$EndComp
Text Label 2875 8050 2    50   ~ 0
GND
Text Label 13875 5125 2    50   ~ 0
BUS_READY
Text Label 13875 5025 2    50   ~ 0
RDY1
Text Label 6950 8000 2    50   ~ 0
GND
Text Label 6950 7900 2    50   ~ 0
GND
Text Label 6950 7800 2    50   ~ 0
GND
Text Label 6950 7700 2    50   ~ 0
GND
Text Label 6950 7600 2    50   ~ 0
GND
Text Label 10175 1425 2    50   ~ 0
GND
Text Label 10175 1525 2    50   ~ 0
GND
Text Label 10175 1625 2    50   ~ 0
GND
Text Label 16675 6025 0    50   ~ 0
GND
Text Label 16475 3425 1    50   ~ 0
3V3
Text Label 10675 1125 1    50   ~ 0
3V3
Text Label 10225 950  2    50   ~ 0
3V3
Text Label 10225 3150 2    50   ~ 0
3V3
Text Label 7150 9675 2    50   ~ 0
3V3
Text Label 7375 9900 2    50   ~ 0
3V3
Text Label 6500 11550 2    50   ~ 0
3V3
Text Label 7100 7050 2    50   ~ 0
3V3
Text Label 7450 7300 2    50   ~ 0
3V3
Text Label 6950 8500 2    50   ~ 0
3V3
Text Label 13625 12025 0    50   ~ 0
3V3
Text Label 13450 11250 2    50   ~ 0
3V3
Text Label 13025 11525 2    50   ~ 0
3V3
Text Label 1225 6000 2    50   ~ 0
3V3
Text Label 2750 5875 2    50   ~ 0
3V3
Text Label 2950 6400 2    50   ~ 0
3V3
Text Label 2050 7125 0    50   ~ 0
3V3
Text Label 3675 8050 0    50   ~ 0
3V3
Text Label 2400 2150 2    50   ~ 0
3V3
Text Label 3275 2825 2    50   ~ 0
3V3
Text Label 5725 1925 2    50   ~ 0
3V3
Text Label 7350 2125 2    50   ~ 0
3V3
Text Label 6650 4425 2    50   ~ 0
3V3
Text Label 2575 3625 2    50   ~ 0
3V3
Text Label 11300 12825 0    50   ~ 0
3V3
Text Label 13900 5225 2    50   ~ 0
RESET
Text Label 10700 11225 0    50   ~ 0
3V3
Text Label 9350 11025 2    50   ~ 0
3V3
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 62A1E52A
P 15675 1525
F 0 "J2" H 15755 1517 50  0001 L CNN
F 1 "FAN" H 15755 1471 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 15675 1525 50  0001 C CNN
F 3 "~" H 15675 1525 50  0001 C CNN
	1    15675 1525
	1    0    0    -1  
$EndComp
Text Label 15475 1525 2    50   ~ 0
5+
Text Label 15475 1625 2    50   ~ 0
GND
Text Label 16175 3425 1    50   ~ 0
5+
Text Label 13850 5975 2    50   ~ 0
IRQ1
$Comp
L 74xx:74LS74 U11
U 2 1 62A2588E
P 3225 7325
F 0 "U11" H 3225 7806 50  0000 C CNN
F 1 "74HC74" H 3225 7715 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3225 7325 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3225 7325 50  0001 C CNN
	2    3225 7325
	1    0    0    -1  
$EndComp
Text Label 3225 7025 2    50   ~ 0
3V3
Text Label 3225 7625 2    50   ~ 0
3V3
Text Label 2925 7325 2    50   ~ 0
PCLK88
Text Label 2925 7225 2    50   ~ 0
FBK
Text Label 3525 7425 0    50   ~ 0
FBK
Text Label 3525 7225 0    50   ~ 0
HF_PCLK
Text Label 4950 3650 0    50   ~ 0
PCLK88
Text Label 3975 3725 0    50   ~ 0
PCLK1
Text Label 4650 3650 2    50   ~ 0
PCLK1
$Comp
L Device:R R2
U 1 1 62A28581
P 4800 3650
F 0 "R2" V 4593 3650 50  0000 C CNN
F 1 "27 ohm" V 4684 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4730 3650 50  0001 C CNN
F 3 "~" H 4800 3650 50  0001 C CNN
	1    4800 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	17175 5225 18225 5225
Wire Wire Line
	18225 5225 18225 7500
Wire Wire Line
	18225 7500 13600 7500
Wire Wire Line
	17175 3825 18275 3825
Wire Wire Line
	18275 3825 18275 7550
Wire Wire Line
	18275 7550 13600 7550
Wire Wire Line
	17175 4525 18325 4525
Wire Wire Line
	18325 4525 18325 7600
Wire Wire Line
	18325 7600 13600 7600
Wire Wire Line
	17175 4625 18375 4625
Wire Wire Line
	18375 4625 18375 7650
Wire Wire Line
	18375 7650 13600 7650
Wire Wire Line
	17175 5525 18425 5525
Wire Wire Line
	18425 5525 18425 7700
Wire Wire Line
	18425 7700 13600 7700
Wire Wire Line
	15575 4525 15275 4525
Wire Wire Line
	15275 4525 15275 7750
Wire Wire Line
	15275 7750 13600 7750
Wire Wire Line
	15575 5325 15225 5325
Wire Wire Line
	15225 5325 15225 7800
Wire Wire Line
	15225 7800 13600 7800
Wire Wire Line
	15575 3825 13725 3825
Wire Wire Line
	15575 3925 14325 3925
Wire Wire Line
	14325 3925 14325 3725
Wire Wire Line
	14325 3725 13725 3725
Wire Wire Line
	15575 4325 14075 4325
Wire Wire Line
	14075 4325 14075 3625
Wire Wire Line
	14075 3625 13725 3625
Wire Wire Line
	15575 5025 13875 5025
Wire Wire Line
	15575 5125 13875 5125
Wire Wire Line
	15575 5225 13900 5225
Wire Wire Line
	17175 4925 17700 4925
Wire Wire Line
	17700 4925 17700 6700
Wire Wire Line
	17700 6700 14600 6700
Text Label 12425 13225 2    50   ~ 0
IO_004X
Text Label 12425 13025 2    50   ~ 0
A1
Text Label 12425 12925 2    50   ~ 0
A0
Text Label 13600 7750 2    50   ~ 0
IO_004X
Text Label 13600 7650 2    50   ~ 0
A1
Text Label 13600 7600 2    50   ~ 0
A0
Text Label 13600 7700 2    50   ~ 0
IO_002X
$Comp
L 74xx:74LS257 U12
U 1 1 62A58E8A
P 2550 11250
F 0 "U12" H 2550 12331 50  0000 C CNN
F 1 "74HC257" H 2550 12240 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2550 11250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 2550 11250 50  0001 C CNN
	1    2550 11250
	1    0    0    -1  
$EndComp
Text Label 10175 1725 2    50   ~ 0
GND
Text Label 6950 8300 2    50   ~ 0
SSO
Text Label 2550 10350 0    50   ~ 0
3V3
Text Label 2550 12250 0    50   ~ 0
GND
Text Label 2050 10650 2    50   ~ 0
RD
Text Label 2050 10750 2    50   ~ 0
PU1
Text Label 2050 10950 2    50   ~ 0
PU1
Text Label 2050 11050 2    50   ~ 0
RD
Text Label 2050 11250 2    50   ~ 0
PU1
Text Label 2050 11350 2    50   ~ 0
WR
Text Label 2050 11550 2    50   ~ 0
WR
Text Label 2050 11650 2    50   ~ 0
PU1
Text Label 2050 11850 2    50   ~ 0
IO_M
Text Label 2050 11950 2    50   ~ 0
GND
Text Label 3050 10650 0    50   ~ 0
MRD
Text Label 3050 10950 0    50   ~ 0
IORD
Text Label 3050 11250 0    50   ~ 0
IOWR
Text Label 3050 11550 0    50   ~ 0
MWR
Text Label 3175 10000 0    50   ~ 0
GND
$Comp
L pspice:CAP C12
U 1 1 62A5F613
P 2925 10000
F 0 "C12" V 2610 10000 50  0000 C CNN
F 1 "0.1uF" V 2701 10000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2925 10000 50  0001 C CNN
F 3 "~" H 2925 10000 50  0001 C CNN
	1    2925 10000
	0    1    1    0   
$EndComp
Text Label 2675 10000 2    50   ~ 0
3V3
$Comp
L Device:R R3
U 1 1 62A61AB2
P 1800 9975
F 0 "R3" V 1593 9975 50  0000 C CNN
F 1 "10K ohm" V 1684 9975 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 9975 50  0001 C CNN
F 3 "~" H 1800 9975 50  0001 C CNN
	1    1800 9975
	0    1    1    0   
$EndComp
Text Label 1950 9975 0    50   ~ 0
PU1
Text Label 1650 9975 2    50   ~ 0
3V3
Text Label 6650 3825 2    50   ~ 0
HOLD
Text Label 6650 3625 2    50   ~ 0
HOLDA
Text Label 6050 4150 0    50   ~ 0
HOLD
$Comp
L Device:R R4
U 1 1 62A63F69
P 5900 4150
F 0 "R4" V 5693 4150 50  0000 C CNN
F 1 "10K ohm" V 5784 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5830 4150 50  0001 C CNN
F 3 "~" H 5900 4150 50  0001 C CNN
	1    5900 4150
	0    1    1    0   
$EndComp
Text Label 5750 4150 2    50   ~ 0
GND
Text Label 10750 5850 2    50   ~ 0
3V3
Text Label 10375 5525 2    50   ~ 0
3V3
Text Label 10675 3325 2    50   ~ 0
3V3
Text Label 10175 3625 2    50   ~ 0
A15
Text Label 10175 3725 2    50   ~ 0
A14
Text Label 10175 3825 2    50   ~ 0
A13
Text Label 10175 3925 2    50   ~ 0
A12
Text Label 10175 4025 2    50   ~ 0
A11
Text Label 10175 4125 2    50   ~ 0
A10
Text Label 10175 4225 2    50   ~ 0
A9
Text Label 10175 4325 2    50   ~ 0
A8
Text Label 11175 4325 0    50   ~ 0
BUS_0
Text Label 11175 4225 0    50   ~ 0
BUS_1
Text Label 11175 4125 0    50   ~ 0
BUS_2
Text Label 11175 4025 0    50   ~ 0
BUS_3
Text Label 11175 3925 0    50   ~ 0
BUS_4
Text Label 11175 3825 0    50   ~ 0
BUS_5
Text Label 11175 3625 0    50   ~ 0
BUS_7
Text Label 11175 3725 0    50   ~ 0
BUS_6
Text Label 10175 4525 2    50   ~ 0
ALE
$Comp
L pspice:CAP C9
U 1 1 629F5691
P 10475 3150
F 0 "C9" V 10160 3150 50  0000 C CNN
F 1 "0.1uF" V 10251 3150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10475 3150 50  0001 C CNN
F 3 "~" H 10475 3150 50  0001 C CNN
	1    10475 3150
	0    1    1    0   
$EndComp
Text Label 10675 4925 0    50   ~ 0
GND
$Comp
L 74xx:74LS573 U9
U 1 1 629F5683
P 10675 4125
F 0 "U9" H 10675 5106 50  0000 C CNN
F 1 "74HC573" H 10675 5015 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 10675 4125 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 10675 4125 50  0001 C CNN
	1    10675 4125
	1    0    0    -1  
$EndComp
Text Label 10175 4625 2    50   ~ 0
A8-A15_OUTPUT_E
Text Label 8050 4425 0    50   ~ 0
A15
Text Label 8050 4325 0    50   ~ 0
A14
Text Label 8050 4225 0    50   ~ 0
A13
Text Label 8050 4125 0    50   ~ 0
A12
Text Label 8050 4025 0    50   ~ 0
A11
Text Label 8050 3925 0    50   ~ 0
A10
Text Label 8050 3825 0    50   ~ 0
A9
Text Label 8050 3725 0    50   ~ 0
A8
Text Label 8050 3525 0    50   ~ 0
AD7
Text Label 8050 3425 0    50   ~ 0
AD6
Text Label 8050 3325 0    50   ~ 0
AD5
Text Label 8050 3225 0    50   ~ 0
AD4
Text Label 7250 5725 0    50   ~ 0
GND
Text Label 7450 5725 0    50   ~ 0
GND
Text Label 8050 5325 0    50   ~ 0
RD
Text Label 8050 5225 0    50   ~ 0
WR
Text Label 8050 5125 0    50   ~ 0
IO_M
$Comp
L MCU_Intel:8088 U1
U 1 1 6113D842
P 7350 3925
F 0 "U1" H 7350 5906 50  0000 C CNN
F 1 "70108 - V20" H 7350 5815 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 7400 4025 50  0001 C CIN
F 3 "http://datasheets.chipdb.org/Intel/x86/808x/datashts/8088/231456-006.pdf" H 7350 3975 50  0001 C CNN
	1    7350 3925
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C3
U 1 1 6106B923
P 10625 5525
F 0 "C3" V 10310 5525 50  0000 C CNN
F 1 "0.1uF" V 10401 5525 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10625 5525 50  0001 C CNN
F 3 "~" H 10625 5525 50  0001 C CNN
	1    10625 5525
	0    1    1    0   
$EndComp
Text Label 10875 5525 0    50   ~ 0
GND
Text Label 8050 4925 0    50   ~ 0
A19_
Text Label 8050 4825 0    50   ~ 0
A18_
Text Label 8050 4725 0    50   ~ 0
A17_
Text Label 8050 4625 0    50   ~ 0
A16_
Text Label 10675 10000 0    50   ~ 0
GND
Text Label 13600 7500 2    50   ~ 0
D0_D7_OUTPUT_E
Text Label 13600 7550 2    50   ~ 0
D0_D7_DIR
Text Label 10100 11525 2    50   ~ 0
D7
Text Label 10100 11625 2    50   ~ 0
D6
Text Label 10100 11725 2    50   ~ 0
D5
Text Label 10100 11825 2    50   ~ 0
D4
Text Label 10100 11925 2    50   ~ 0
D3
Text Label 10100 12025 2    50   ~ 0
D2
Text Label 10100 12125 2    50   ~ 0
D1
Text Label 10100 12225 2    50   ~ 0
D0
Text Label 12425 11825 2    50   ~ 0
D7
Text Label 12425 11925 2    50   ~ 0
D6
Text Label 12425 12025 2    50   ~ 0
D5
Text Label 12425 12125 2    50   ~ 0
D4
Text Label 12425 12225 2    50   ~ 0
D3
Text Label 12425 12325 2    50   ~ 0
D2
Text Label 12425 12425 2    50   ~ 0
D1
Text Label 12425 12525 2    50   ~ 0
D0
Wire Wire Line
	17175 4825 17725 4825
Wire Wire Line
	17725 4825 17725 6750
Wire Wire Line
	17725 6750 14500 6750
Wire Wire Line
	14500 6750 14500 5675
Wire Wire Line
	14500 5675 13850 5675
Wire Wire Line
	17175 3925 17750 3925
Wire Wire Line
	17750 6800 14400 6800
Wire Wire Line
	14400 6800 14400 5750
Wire Wire Line
	14400 5750 13850 5750
Wire Wire Line
	17750 3925 17750 6800
Wire Wire Line
	17175 5425 17775 5425
Wire Wire Line
	17775 5425 17775 6875
Wire Wire Line
	17775 6875 14325 6875
Wire Wire Line
	14325 6875 14325 5825
Wire Wire Line
	14325 5825 13850 5825
Wire Wire Line
	15575 4125 15100 4125
Wire Wire Line
	15100 4125 15100 5900
Wire Wire Line
	15100 5900 13850 5900
Wire Wire Line
	15575 4625 15125 4625
Wire Wire Line
	15125 4625 15125 5975
Wire Wire Line
	15125 5975 13850 5975
Text Label 13850 6050 2    50   ~ 0
IRQ2
Wire Wire Line
	15575 4725 15050 4725
Wire Wire Line
	15050 4725 15050 6050
Wire Wire Line
	15050 6050 13850 6050
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J3
U 1 1 62A85DA6
P 13175 9225
F 0 "J3" H 13225 9742 50  0000 C CNN
F 1 "CH376" H 13225 9651 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 13175 9225 50  0001 C CNN
F 3 "~" H 13175 9225 50  0001 C CNN
	1    13175 9225
	1    0    0    -1  
$EndComp
Text Label 13475 8925 0    50   ~ 0
IOWR
Text Label 13475 9025 0    50   ~ 0
IORD
Text Label 13475 9125 0    50   ~ 0
IO_00EX
Text Label 13475 9225 0    50   ~ 0
A2
Text Label 13475 9325 0    50   ~ 0
INT
Text Label 13475 9425 0    50   ~ 0
5+
Text Label 13475 9525 0    50   ~ 0
GND
Text Label 13475 9625 0    50   ~ 0
GND
Text Label 12975 8925 2    50   ~ 0
D7
Text Label 12975 9025 2    50   ~ 0
D6
Text Label 12975 9125 2    50   ~ 0
D5
Text Label 12975 9225 2    50   ~ 0
D4
Text Label 12975 9325 2    50   ~ 0
D3
Text Label 12975 9425 2    50   ~ 0
D2
Text Label 12975 9525 2    50   ~ 0
D1
Text Label 12975 9625 2    50   ~ 0
D0
Text Label 13525 10050 0    50   ~ 0
GND
$Comp
L pspice:CAP C14
U 1 1 62A973A0
P 13275 10050
F 0 "C14" V 12960 10050 50  0000 C CNN
F 1 "0.1uF" V 13051 10050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 13275 10050 50  0001 C CNN
F 3 "~" H 13275 10050 50  0001 C CNN
	1    13275 10050
	0    1    1    0   
$EndComp
Text Label 13025 10050 2    50   ~ 0
5+
Text Label 6650 3025 2    50   ~ 0
GND
Text Label 16075 6025 3    50   ~ 0
GND
Wire Wire Line
	14600 4050 14200 4050
Wire Wire Line
	14200 4050 14200 3925
Wire Wire Line
	14200 3925 13725 3925
Wire Wire Line
	14600 4050 14600 6700
Text Label 13600 7800 2    50   ~ 0
A2
Text Label 13850 5675 2    50   ~ 0
IO_00EX
Text Label 13625 12525 0    50   ~ 0
3V3
Text Label 13625 13025 0    50   ~ 0
3V3
Text Label 10175 2025 2    50   ~ 0
A17_
Text Label 10175 9600 2    50   ~ 0
D0_D7_DIR
Text Label 10175 9700 2    50   ~ 0
D0_D7_OUTPUT_E
Text Label 11175 9400 0    50   ~ 0
BUS_0
Text Label 11175 9300 0    50   ~ 0
BUS_1
Text Label 11175 9200 0    50   ~ 0
BUS_2
Text Label 11175 9100 0    50   ~ 0
BUS_3
Text Label 11175 9000 0    50   ~ 0
BUS_4
Text Label 11175 8900 0    50   ~ 0
BUS_5
Text Label 11175 8700 0    50   ~ 0
BUS_7
Text Label 11175 8800 0    50   ~ 0
BUS_6
$Comp
L 74xx:74LS245 U13
U 1 1 629D391F
P 10675 9200
F 0 "U13" H 10675 10181 50  0000 C CNN
F 1 "74HC245" H 10675 10090 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 10675 9200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 10675 9200 50  0001 C CNN
	1    10675 9200
	1    0    0    -1  
$EndComp
Text Label 10175 9400 2    50   ~ 0
D0
Text Label 10175 9300 2    50   ~ 0
D1
Text Label 10175 9200 2    50   ~ 0
D2
Text Label 10175 9100 2    50   ~ 0
D3
Text Label 10175 9000 2    50   ~ 0
D4
Text Label 10175 8900 2    50   ~ 0
D5
Text Label 10175 8800 2    50   ~ 0
D6
Text Label 10175 8700 2    50   ~ 0
D7
Text Label 7875 10900 0    50   ~ 0
D0
Text Label 7875 10800 0    50   ~ 0
D1
Text Label 7875 10700 0    50   ~ 0
D2
Text Label 7875 10600 0    50   ~ 0
D3
Text Label 7875 10500 0    50   ~ 0
D4
Text Label 7875 10400 0    50   ~ 0
D5
Text Label 7875 10300 0    50   ~ 0
D6
Text Label 7875 10200 0    50   ~ 0
D7
Text Label 10675 8400 2    50   ~ 0
3V3
Text Label 10450 8175 2    50   ~ 0
3V3
$Comp
L pspice:CAP C13
U 1 1 629D3907
P 10700 8175
F 0 "C13" V 10385 8175 50  0000 C CNN
F 1 "0.1uF" V 10476 8175 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10700 8175 50  0001 C CNN
F 3 "~" H 10700 8175 50  0001 C CNN
	1    10700 8175
	0    1    1    0   
$EndComp
Text Label 10950 8175 0    50   ~ 0
GND
$Comp
L 74xx:74LS245 U4
U 1 1 61063CD3
P 7375 10700
F 0 "U4" H 7375 11681 50  0000 C CNN
F 1 "74HC245" H 7375 11590 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 7375 10700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 7375 10700 50  0001 C CNN
	1    7375 10700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
