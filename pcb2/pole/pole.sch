EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:lmx93
LIBS:swd_tc
LIBS:stm32f0xxkxux
LIBS:pole-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
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
$Comp
L LMx93 IC1
U 1 1 56F1CC5E
P 3650 5700
F 0 "IC1" H 3350 6200 50  0000 L CNN
F 1 "LMx93" H 3350 5200 50  0000 L CNN
F 2 "SOIC-8" H 3350 5100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393.pdf" H 3350 5000 50  0001 L CNN
F 4 "2342314" H 3350 4900 50  0001 L CNN "Farnell"
	1    3650 5700
	1    0    0    -1  
$EndComp
$Comp
L SWD_TC P4
U 1 1 56F1CCE2
P 7100 2350
F 0 "P4" H 6800 2550 50  0000 L CNN
F 1 "SWD_TC" H 6800 2150 50  0000 L CNN
F 2 "agg:TC2030-NL" H 6800 2050 50  0001 L CNN
F 3 "" H 6700 2450 50  0001 C CNN
	1    7100 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 56F1CD31
P 2150 3750
F 0 "P1" H 2150 3900 50  0000 C CNN
F 1 "POWER_IN" V 2250 3750 50  0000 C CNN
F 2 "thegrid:minipow_edge" H 2150 3750 50  0001 C CNN
F 3 "" H 2150 3750 50  0000 C CNN
	1    2150 3750
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 56F1CD9E
P 3050 3550
F 0 "P2" H 3050 3700 50  0000 C CNN
F 1 "BUS_IN" V 3150 3500 50  0000 C CNN
F 2 "agg:S02B-PASK-2" H 3050 3550 50  0001 C CNN
F 3 "" H 3050 3550 50  0000 C CNN
	1    3050 3550
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04 P5
U 1 1 56F1CDBF
P 9800 4150
F 0 "P5" H 9800 4400 50  0000 C CNN
F 1 "LEDs" V 9900 4150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 9800 4150 50  0001 C CNN
F 3 "" H 9800 4150 50  0000 C CNN
	1    9800 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 56F1CE8F
P 2550 3900
F 0 "#PWR01" H 2550 3650 50  0001 C CNN
F 1 "GND" H 2550 3750 50  0000 C CNN
F 2 "" H 2550 3900 50  0000 C CNN
F 3 "" H 2550 3900 50  0000 C CNN
	1    2550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3800 2550 3800
Wire Wire Line
	2550 3800 2550 3900
$Comp
L +12V #PWR02
U 1 1 56F1CF45
P 2550 3600
F 0 "#PWR02" H 2550 3450 50  0001 C CNN
F 1 "+12V" H 2550 3740 50  0000 C CNN
F 2 "" H 2550 3600 50  0000 C CNN
F 3 "" H 2550 3600 50  0000 C CNN
	1    2550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3700 2550 3700
Wire Wire Line
	2550 3700 2550 3600
$Comp
L PWR_FLAG #FLG03
U 1 1 56F1CF7B
P 2400 3700
F 0 "#FLG03" H 2400 3795 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 3880 50  0001 C CNN
F 2 "" H 2400 3700 50  0000 C CNN
F 3 "" H 2400 3700 50  0000 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
Connection ~ 2400 3700
Connection ~ 2400 3800
$Comp
L PWR_FLAG #FLG04
U 1 1 56F1CFB0
P 2400 3800
F 0 "#FLG04" H 2400 3895 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 3980 50  0001 C CNN
F 2 "" H 2400 3800 50  0000 C CNN
F 3 "" H 2400 3800 50  0000 C CNN
	1    2400 3800
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 56F1D07F
P 3050 3850
F 0 "P3" H 3050 4000 50  0000 C CNN
F 1 "BUS_OUT" V 3150 3900 50  0000 C CNN
F 2 "agg:S02B-PASK-2" H 3050 3850 50  0001 C CNN
F 3 "" H 3050 3850 50  0000 C CNN
	1    3050 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 3600 3550 3600
Wire Wire Line
	3350 3600 3350 3900
Wire Wire Line
	3350 3900 3250 3900
Wire Wire Line
	3250 3500 3550 3500
Wire Wire Line
	3450 3500 3450 3800
Wire Wire Line
	3450 3800 3250 3800
Connection ~ 3350 3600
Connection ~ 3450 3500
Text Label 3550 3600 0    60   ~ 0
BUS_A
Text Label 3550 3500 0    60   ~ 0
BUS_B
Text Label 3250 5600 2    60   ~ 0
BUS_A
Text Label 3250 5700 2    60   ~ 0
BUS_B
$Comp
L GND #PWR05
U 1 1 56F1D45F
P 3150 6050
F 0 "#PWR05" H 3150 5800 50  0001 C CNN
F 1 "GND" H 3150 5900 50  0000 C CNN
F 2 "" H 3150 6050 50  0000 C CNN
F 3 "" H 3150 6050 50  0000 C CNN
	1    3150 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6000 3150 6000
Wire Wire Line
	3150 5900 3150 6050
Wire Wire Line
	3250 5900 3150 5900
Connection ~ 3150 6000
Text Label 4250 5300 0    60   ~ 0
BUS
$Comp
L +3V3 #PWR06
U 1 1 56F1D52A
P 3150 5200
F 0 "#PWR06" H 3150 5050 50  0001 C CNN
F 1 "+3V3" H 3150 5340 50  0000 C CNN
F 2 "" H 3150 5200 50  0000 C CNN
F 3 "" H 3150 5200 50  0000 C CNN
	1    3150 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56F1D54C
P 3150 5400
F 0 "#PWR07" H 3150 5150 50  0001 C CNN
F 1 "GND" H 3150 5250 50  0001 C CNN
F 2 "" H 3150 5400 50  0000 C CNN
F 3 "" H 3150 5400 50  0000 C CNN
	1    3150 5400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 56F1D5B2
P 3150 5300
F 0 "C1" H 3160 5370 50  0000 L CNN
F 1 "100n" H 3200 5200 50  0000 L CNN
F 2 "agg:0603" H 3150 5300 50  0001 C CNN
F 3 "" H 3150 5300 50  0000 C CNN
	1    3150 5300
	-1   0    0    1   
$EndComp
Connection ~ 3150 5200
Wire Wire Line
	3150 5200 3250 5200
Wire Wire Line
	3250 5200 3250 5300
Connection ~ 3150 5400
Wire Wire Line
	3150 5400 3250 5400
NoConn ~ 4050 5500
Text Label 7500 2250 0    60   ~ 0
SWDIO
Text Label 7500 2350 0    60   ~ 0
SWDCLK
NoConn ~ 7500 2450
$Comp
L GND #PWR08
U 1 1 56F1D83D
P 6700 2450
F 0 "#PWR08" H 6700 2200 50  0001 C CNN
F 1 "GND" H 6700 2300 50  0000 C CNN
F 2 "" H 6700 2450 50  0000 C CNN
F 3 "" H 6700 2450 50  0000 C CNN
	1    6700 2450
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR09
U 1 1 56F1D861
P 6700 2250
F 0 "#PWR09" H 6700 2100 50  0001 C CNN
F 1 "+3V3" H 6700 2390 50  0000 C CNN
F 2 "" H 6700 2250 50  0000 C CNN
F 3 "" H 6700 2250 50  0000 C CNN
	1    6700 2250
	1    0    0    -1  
$EndComp
Text Label 6700 2350 2    60   ~ 0
NRST
$Comp
L C_Small C3
U 1 1 56F1D9E7
P 3550 2400
F 0 "C3" H 3560 2470 50  0000 L CNN
F 1 "100n" H 3560 2320 50  0000 L CNN
F 2 "agg:0603" H 3550 2400 50  0001 C CNN
F 3 "" H 3550 2400 50  0000 C CNN
	1    3550 2400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 56F1DA30
P 3400 2400
F 0 "C2" H 3410 2470 50  0000 L CNN
F 1 "4u7" H 3410 2320 50  0000 L CNN
F 2 "agg:0603" H 3400 2400 50  0001 C CNN
F 3 "" H 3400 2400 50  0000 C CNN
	1    3400 2400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 56F1DB0A
P 4350 2600
F 0 "C4" H 4360 2670 50  0000 L CNN
F 1 "10n" H 4360 2520 50  0000 L CNN
F 2 "agg:0603" H 4350 2600 50  0001 C CNN
F 3 "" H 4350 2600 50  0000 C CNN
	1    4350 2600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR010
U 1 1 56F1E092
P 9600 4000
F 0 "#PWR010" H 9600 3850 50  0001 C CNN
F 1 "+12V" H 9600 4140 50  0000 C CNN
F 2 "" H 9600 4000 50  0000 C CNN
F 3 "" H 9600 4000 50  0000 C CNN
	1    9600 4000
	1    0    0    -1  
$EndComp
Text Label 9600 4100 2    60   ~ 0
DRIVE_R
Text Label 9600 4200 2    60   ~ 0
DRIVE_G
Text Label 9600 4300 2    60   ~ 0
DRIVE_B
Text Label 7900 3250 0    60   ~ 0
DRIVE_R
$Comp
L GND #PWR011
U 1 1 56F1E226
P 7900 3650
F 0 "#PWR011" H 7900 3400 50  0001 C CNN
F 1 "GND" H 7900 3500 50  0000 C CNN
F 2 "" H 7900 3650 50  0000 C CNN
F 3 "" H 7900 3650 50  0000 C CNN
	1    7900 3650
	1    0    0    -1  
$EndComp
Text Label 7600 3450 2    60   ~ 0
LED_R
Text Label 7900 4000 0    60   ~ 0
DRIVE_G
$Comp
L GND #PWR012
U 1 1 56F1E522
P 7900 4400
F 0 "#PWR012" H 7900 4150 50  0001 C CNN
F 1 "GND" H 7900 4250 50  0000 C CNN
F 2 "" H 7900 4400 50  0000 C CNN
F 3 "" H 7900 4400 50  0000 C CNN
	1    7900 4400
	1    0    0    -1  
$EndComp
Text Label 7600 4200 2    60   ~ 0
LED_G
Text Label 7900 4750 0    60   ~ 0
DRIVE_B
$Comp
L GND #PWR013
U 1 1 56F1E671
P 7900 5150
F 0 "#PWR013" H 7900 4900 50  0001 C CNN
F 1 "GND" H 7900 5000 50  0000 C CNN
F 2 "" H 7900 5150 50  0000 C CNN
F 3 "" H 7900 5150 50  0000 C CNN
	1    7900 5150
	1    0    0    -1  
$EndComp
Text Label 7600 4950 2    60   ~ 0
LED_B
Text Label 5500 2600 0    60   ~ 0
BUS
Text Label 5500 3100 0    60   ~ 0
LED_R
Text Label 5500 3200 0    60   ~ 0
LED_G
Text Label 5500 3300 0    60   ~ 0
LED_B
Text Label 5500 2700 0    60   ~ 0
PIEZO
Text Label 9250 5600 2    60   ~ 0
PIEZO
$Comp
L GND #PWR014
U 1 1 56F594BA
P 9550 5800
F 0 "#PWR014" H 9550 5550 50  0001 C CNN
F 1 "GND" H 9550 5650 50  0000 C CNN
F 2 "" H 9550 5800 50  0000 C CNN
F 3 "" H 9550 5800 50  0000 C CNN
	1    9550 5800
	1    0    0    -1  
$EndComp
$Comp
L SPEAKER SP1
U 1 1 56F594FE
P 9850 5300
F 0 "SP1" H 9750 5550 50  0000 C CNN
F 1 "SPEAKER" H 9750 5650 50  0000 C CNN
F 2 "thegrid:piezo" H 9850 5300 50  0001 C CNN
F 3 "1823866" H 9850 5300 50  0001 C CNN
	1    9850 5300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR015
U 1 1 56F59754
P 9550 5200
F 0 "#PWR015" H 9550 5050 50  0001 C CNN
F 1 "+12V" H 9550 5340 50  0000 C CNN
F 2 "" H 9550 5200 50  0000 C CNN
F 3 "" H 9550 5200 50  0000 C CNN
	1    9550 5200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56F5991E
P 4100 5150
F 0 "R1" V 4180 5150 50  0000 C CNN
F 1 "10k" V 4100 5150 50  0000 C CNN
F 2 "agg:0603" V 4030 5150 50  0001 C CNN
F 3 "" H 4100 5150 50  0000 C CNN
	1    4100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5300 4250 5300
Connection ~ 4100 5300
$Comp
L +3V3 #PWR016
U 1 1 56F59A49
P 4100 5000
F 0 "#PWR016" H 4100 4850 50  0001 C CNN
F 1 "+3V3" H 4100 5140 50  0000 C CNN
F 2 "" H 4100 5000 50  0000 C CNN
F 3 "" H 4100 5000 50  0000 C CNN
	1    4100 5000
	1    0    0    -1  
$EndComp
$Comp
L LD1117S33TR U1
U 1 1 56F59E11
P 5700 5400
F 0 "U1" H 5700 5650 50  0000 C CNN
F 1 "LD1117S33TR" H 5700 5600 50  0000 C CNN
F 2 "thegrid:TO-252-3" H 5700 5500 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/93498.pdf" H 5700 5400 50  0001 C CNN
	1    5700 5400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR017
U 1 1 56F59EBA
P 5200 5350
F 0 "#PWR017" H 5200 5200 50  0001 C CNN
F 1 "+12V" H 5200 5490 50  0000 C CNN
F 2 "" H 5200 5350 50  0000 C CNN
F 3 "" H 5200 5350 50  0000 C CNN
	1    5200 5350
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 56F59EF4
P 5200 5500
F 0 "C6" H 5225 5600 50  0000 L CNN
F 1 "100n" H 5225 5400 50  0000 L CNN
F 2 "agg:0603" H 5238 5350 50  0001 C CNN
F 3 "" H 5200 5500 50  0000 C CNN
	1    5200 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 56F59F39
P 5200 5650
F 0 "#PWR018" H 5200 5400 50  0001 C CNN
F 1 "GND" H 5200 5500 50  0000 C CNN
F 2 "" H 5200 5650 50  0000 C CNN
F 3 "" H 5200 5650 50  0000 C CNN
	1    5200 5650
	1    0    0    -1  
$EndComp
Connection ~ 5200 5350
Wire Wire Line
	5200 5350 5300 5350
$Comp
L +3V3 #PWR019
U 1 1 56F59FB2
P 6200 5350
F 0 "#PWR019" H 6200 5200 50  0001 C CNN
F 1 "+3V3" H 6200 5490 50  0000 C CNN
F 2 "" H 6200 5350 50  0000 C CNN
F 3 "" H 6200 5350 50  0000 C CNN
	1    6200 5350
	1    0    0    -1  
$EndComp
Connection ~ 6200 5350
Wire Wire Line
	6200 5350 6100 5350
$Comp
L C C7
U 1 1 56F5A02D
P 6200 5500
F 0 "C7" H 6225 5600 50  0000 L CNN
F 1 "10u" H 6225 5400 50  0000 L CNN
F 2 "agg:0603" H 6238 5350 50  0001 C CNN
F 3 "" H 6200 5500 50  0000 C CNN
	1    6200 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 56F5A070
P 6200 5650
F 0 "#PWR020" H 6200 5400 50  0001 C CNN
F 1 "GND" H 6200 5500 50  0000 C CNN
F 2 "" H 6200 5650 50  0000 C CNN
F 3 "" H 6200 5650 50  0000 C CNN
	1    6200 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 56F5A0AE
P 5700 5650
F 0 "#PWR021" H 5700 5400 50  0001 C CNN
F 1 "GND" H 5700 5500 50  0000 C CNN
F 2 "" H 5700 5650 50  0000 C CNN
F 3 "" H 5700 5650 50  0000 C CNN
	1    5700 5650
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q1
U 1 1 56F7F4AA
P 7800 3450
F 0 "Q1" H 8100 3500 50  0000 R CNN
F 1 "MTM232270LBF" H 8550 3400 50  0000 R CNN
F 2 "agg:SOT-323" H 8000 3550 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1916063.pdf" H 7800 3450 50  0001 C CNN
	1    7800 3450
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q2
U 1 1 56F7FD6F
P 7800 4200
F 0 "Q2" H 8100 4250 50  0000 R CNN
F 1 "MTM232270LBF" H 8550 4150 50  0000 R CNN
F 2 "agg:SOT-323" H 8000 4300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1916063.pdf" H 7800 4200 50  0001 C CNN
	1    7800 4200
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q3
U 1 1 56F7FDD0
P 7800 4950
F 0 "Q3" H 8100 5000 50  0000 R CNN
F 1 "MTM232270LBF" H 8550 4900 50  0000 R CNN
F 2 "agg:SOT-323" H 8000 5050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1916063.pdf" H 7800 4950 50  0001 C CNN
	1    7800 4950
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q4
U 1 1 56F7FE4E
P 9450 5600
F 0 "Q4" H 9750 5650 50  0000 R CNN
F 1 "MTM232270LBF" H 10200 5550 50  0000 R CNN
F 2 "agg:SOT-323" H 9650 5700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1916063.pdf" H 9450 5600 50  0001 C CNN
	1    9450 5600
	1    0    0    -1  
$EndComp
Text Label 4500 3000 2    60   ~ 0
NRST
Text Label 5500 3600 0    60   ~ 0
SWDIO
Text Label 5500 3700 0    60   ~ 0
SWDCLK
$Comp
L GND #PWR022
U 1 1 56F830C0
P 4600 2850
F 0 "#PWR022" H 4600 2600 50  0001 C CNN
F 1 "GND" H 4600 2700 50  0001 C CNN
F 2 "" H 4600 2850 50  0000 C CNN
F 3 "" H 4600 2850 50  0000 C CNN
	1    4600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2850 4700 2850
Wire Wire Line
	4700 2850 4700 2900
Wire Wire Line
	4500 3000 4700 3000
$Comp
L GND #PWR023
U 1 1 56F83572
P 4700 2700
F 0 "#PWR023" H 4700 2450 50  0001 C CNN
F 1 "GND" H 4700 2550 50  0001 C CNN
F 2 "" H 4700 2700 50  0000 C CNN
F 3 "" H 4700 2700 50  0000 C CNN
	1    4700 2700
	1    0    0    -1  
$EndComp
$Comp
L STM32F0xxKxUx IC2
U 1 1 56F830E4
P 5100 3300
F 0 "IC2" H 4800 4400 50  0000 L CNN
F 1 "STM32F0xxKxUx" H 4800 2200 50  0000 L CNN
F 2 "agg:QFN-32-EP-ST" H 4800 2100 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00039193.pdf" H 4800 2000 50  0001 L CNN
F 4 "2393639" H 4800 1900 50  0001 L CNN "Farnell"
	1    5100 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 56F83C48
P 4200 2600
F 0 "C8" H 4210 2670 50  0000 L CNN
F 1 "1u" H 4210 2520 50  0000 L CNN
F 2 "agg:0603" H 4200 2600 50  0001 C CNN
F 3 "" H 4200 2600 50  0000 C CNN
	1    4200 2600
	1    0    0    -1  
$EndComp
Connection ~ 4350 2500
$Comp
L GND #PWR024
U 1 1 56F83E21
P 4200 2700
F 0 "#PWR024" H 4200 2450 50  0001 C CNN
F 1 "GND" H 4200 2550 50  0000 C CNN
F 2 "" H 4200 2700 50  0000 C CNN
F 3 "" H 4200 2700 50  0000 C CNN
	1    4200 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 56F83E61
P 4350 2700
F 0 "#PWR025" H 4350 2450 50  0001 C CNN
F 1 "GND" H 4350 2550 50  0000 C CNN
F 2 "" H 4350 2700 50  0000 C CNN
F 3 "" H 4350 2700 50  0000 C CNN
	1    4350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2500 4700 2500
Wire Wire Line
	3850 2400 4700 2400
$Comp
L C_Small C5
U 1 1 56F842FC
P 3850 2500
F 0 "C5" H 3860 2570 50  0000 L CNN
F 1 "100n" H 3860 2420 50  0000 L CNN
F 2 "agg:0603" H 3850 2500 50  0001 C CNN
F 3 "" H 3850 2500 50  0000 C CNN
	1    3850 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 56F84435
P 3850 2600
F 0 "#PWR026" H 3850 2350 50  0001 C CNN
F 1 "GND" H 3850 2450 50  0000 C CNN
F 2 "" H 3850 2600 50  0000 C CNN
F 3 "" H 3850 2600 50  0000 C CNN
	1    3850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2300 4700 2300
Connection ~ 3550 2300
$Comp
L GND #PWR027
U 1 1 56F84C3D
P 3400 2500
F 0 "#PWR027" H 3400 2250 50  0001 C CNN
F 1 "GND" H 3400 2350 50  0000 C CNN
F 2 "" H 3400 2500 50  0000 C CNN
F 3 "" H 3400 2500 50  0000 C CNN
	1    3400 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 56F84C7F
P 3550 2500
F 0 "#PWR028" H 3550 2250 50  0001 C CNN
F 1 "GND" H 3550 2350 50  0000 C CNN
F 2 "" H 3550 2500 50  0000 C CNN
F 3 "" H 3550 2500 50  0000 C CNN
	1    3550 2500
	1    0    0    -1  
$EndComp
$EndSCHEMATC