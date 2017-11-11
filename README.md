<meta charset="utf-8">
<!README, marlin Mark I - Marlon 3D Printer, Readme file>

                            **Marlon - Mark I**
                              **3D Printer**
                              Márcio Pessoa
                                2017-09-16

**w1m1** is an acronim to: Watch Winder with One slot - Mark I.

![Figure [T-Slot_2020-6]: T-Slot 2020-6](Documents/representation.png width="45%" border="0")
Schematic representation of the 3D printing technique known as Fused Filament Fabrication; a filament 

a) of plastic material is fed through a heated moving head 

b) that melts and extrudes it depositing it, layer after layer, in the desired shape 

c) A moving platform 

e) lowers after each layer is deposited. For this kind of technology additional vertical support structures 

d) are needed to sustain overhanging parts

# Mechanics

## Frame
![Figure [T-Slot_2020-6]: T-Slot 2020-6](Documents/T-Slot_2020-6.png width="45%" border="0")
T-Slot 2020-6, Fusce congue, orci sit amet dictum blandit, quam nibh sagittis neque, eget viverra metus nulla a nunc.
[#Frame] são muito legais.
External dimensions:
- Width: 337
- Height: 445
- Depth: 287

### Hinges
![Figure [s-l1600]: T-Slot 2020-6](Documents/s-l1600.jpg width="45%" border="0")
Hinges, Fusce congue, orci sit amet dictum blandit, quam nibh sagittis neque, eget viverra metus nulla a nunc.

## CoreXY
![Figure [CoreXY]: CoreXY](Documents/CoreXY.png width="40%" border="0")
The [CoreXY][CoreXY] is a open source two-axis linear motion implementation developed at MIT Media Lab.

Overall, it delivers the same benefit of the H-bot, a light moving platform, by keeping both motors fixed to the frame. Furthermore, by crossing the belt, the unwanted torque vectors of H-bot model are eliminated.

### SC8LUU
![Figure [SC8LUU]: SC8LUU](Documents/SC8LUU.jpg width="45%" border="0")
SC8LUU, Fusce congue, orci sit amet dictum blandit, quam nibh sagittis neque, eget viverra metus nulla a nunc.

## Elevator (z axis)

### LMH8UU
![Figure [LMH8UU]: LMH8UU](Documents/LMH8UU.jpg width="45%" border="0")
LMH8UU, Fusce congue, orci sit amet dictum blandit, quam nibh sagittis neque, eget viverra metus nulla a nunc.

# Electronics

## Power
Power cord specification[^powercord].

- N: neutro (black)
- F: fase (white)
- T: ground (green)

### Power connector
******************
*       T        *
*    +------+    *
*   /   ▉▉   \   *
*  +          +  *
*  | ▉▉    ▉▉ |  *
*  +----------+  *
*    F      N    *
******************
[Figure [IEC60320C13]: IEC 60320 C13]

[#Power_connector]
    - Padrão IEC-320

### Power cable
Olhando o plug macho da tomada com os pinos voltados para sua face:

****************
*       T      *
*     +---+    *
*    /  o  \   *
*   /       \  *
*  | []   [] | *
*  +---------+ *
*    N     F   *
****************
[Figure [NEMA5-15]: [NEMA 5-15](Documents/5917_drawing.pdf)]

[#Power_cable]
    - Padrão IEC-320

*********************
*  .-------------.  *
* |  o    o    o  | *
*  '-------------'  *
*    ?    T    ?    *
*********************
[Figure [NBR14136]: [NBR 14136](Documents/1433_drawing.pdf)]

### Power button
![Figure [CoreXY]: CoreXY](Documents/0M743E_20131224081002290.jpg width="45%" border="0")
Fusce congue, orci sit amet dictum blandit, quam nibh sagittis neque, eget viverra metus nulla a nunc.

### Power supply
ATX Power with PS_ON

## Arduino
[#Arduino_Mega_2560] são muito legais.

### Diagram
*******************************************************************************
*                              .-----.                                        *
* .----[PWR]-------------------| USB |--.                                     *
* |                            '-----'  |                                     *
* |           GND/RST2  [ ] [ ]         |                                     *
* |         MOSI2/SCK2  [ ] [ ]  SCL[ ] |   D0                                *
* |            5V/MISO2 [ ] [ ]  SDA[ ] |   D1                                *
* |                             AREF[ ] |                                     *
* |                              GND[ ] |                                     *
* | [ ]NC                     SCK/13[ ]~|   B7                                *
* | [ ]v.ref                 MISO/12[ ]~|   B6                                *
* | [ ]RST                   MOSI/11[ ]~|   B5                                *
* | [ ]3V3      +----------+      10[ ]~|   B4                                *
* | [ ]5v       | ARDUINO  |       9[ ]~|   H6                                *
* | [ ]GND      |   MEGA   |       8[ ]~|   H5                                *
* | [ ]GND      +----------+            |                                     *
* | [ ]Vin                         7[ ]~|   H4                                *
* |                                6[ ]~|   H3                                *
* | [ ]A0                          5[ ]~|   E3                                *
* | [ ]A1                          4[ ]~|   G5                                *
* | [ ]A2                     INT5/3[ ]~|   E5                                *
* | [ ]A3                     INT4/2[ ]~|   E4                                *
* | [ ]A4                       TX>1[ ]~|   E1                                *
* | [ ]A5                       RX<0[ ]~|   E0                                *
* | [ ]A6                               |                                     *
* | [ ]A7                     TX3/14[ ] |   J1                                *
* |                           RX3/15[ ] |   J0                                *
* | [ ]A8                     TX2/16[ ] |   H1                                *
* | [ ]A9                     RX2/17[ ] |   H0                                *
* | [ ]A10               TX1/INT3/18[ ] |   D3                                *
* | [ ]A11               RX1/INT2/19[ ] |   D2                                *
* | [ ]A12           I2C-SDA/INT1/20[ ] |   D1                                *
* | [ ]A13           I2C-SCL/INT0/21[ ] |   D0                                *
* | [ ]A14                              |                                     *
* | [ ]A15                              |   PORTS                             *
* |                RST SCK MISO         |    22=A0  23=A1                     *
* |         ICSP   [ ] [ ] [ ]          |    24=A2  25=A3                     *
* |                [ ] [ ] [ ]          |    26=A4  27=A5                     *
* |                GND MOSI 5V          |    28=A6  29=A7                     *
* | G                                   |    30=C7  31=C6                     *
* | N 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 5 |    32=C5  33=C4                     *
* | D 2 0 8 6 4 2 0 8 6 4 2 0 8 6 4 2 V |    34=C3  35=C2                     *
* |         ~ ~                         |    36=C1  37=C0                     *
* | @ # # # # # # # # # # # # # # # # @ |    38=D7  39=G2                     *
* | @ # # # # # # # # # # # # # # # # @ |    40=G1  41=G0                     *
* |           ~                         |    42=L7  43=L6                     *
* | G 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 5 |    44=L5  45=L4                     *
* | N 3 1 9 7 5 3 1 9 7 5 3 1 9 7 5 3 V |    46=L3  47=L2                     *
* | D                                   |    48=L1  49=L0    SPI:             *
* |                                     |    50=B3  51=B2     50=MISO 51=MOSI *
* |     2560                            |    52=B1  53=B0     52=SCK  53=SS   *
* '--.                         .--------'                                     *
*     \_______________________/                                               *
*                                                                             *
*******************************************************************************
[Figure [pins]: Arduino Mega 2560 [^busyducks]]

### Pin designation
 id | pin |   type    | direction |               description                
----|-----|-----------|-----------|--------------------------------------------
  0 |   0 | -         | -         | -                                        
  1 |   1 | -         | -         | -                                        
  2 |   2 | -         | -         | X_MAX_PIN                                
  3 |   3 | -         | -         | X_MIN_PIN                                
  4 |   4 | -         | -         | -                                        
  5 |   5 | -         | -         | -                                        
  6 |   6 | -         | -         | -                                        
  7 |   7 | -         | -         | -                                        
  8 |   8 | -         | -         | HEATER_1_PIN                             
  9 |   9 | -         | -         | FAN_PIN                                  
 10 |  10 | -         | -         | HEATER_0_PIN                             
 11 |  11 | -         | -         | -                                        
 12 |  12 | -         | -         | PS_ON_PIN                                
 13 |  13 | -         | -         | LED_PIN                                  
 14 |  14 | -         | -         | Y_MIN_PIN                                
 15 |  15 | -         | -         | Y_MAX_PIN                                
 16 |  16 | -         | -         | -                                        
 17 |  17 | -         | -         | -                                        
 18 |  18 | -         | -         | Z_MIN_PIN                                
 19 |   4 | -         | -         | Z_MAX_PIN                                
 20 |  20 | -         | -         | -                                        
 21 |  21 | -         | -         | -                                        
 22 |  22 | -         | -         | -                                        
 23 |  23 | -         | -         | -                                        
 24 |  24 | -         | -         | E_ENABLE_PIN                             
 25 |  25 | -         | -         | -                                        
 26 |  26 | -         | -         | E_STEP_PIN                               
 27 |  27 | -         | -         | -                                        
 28 |  28 | -         | -         | E_DIR_PIN                                
 29 |  29 | -         | -         | -                                        
 30 |  30 | -         | -         | -                                        
 31 |  31 | -         | -         | -                                        
 32 |  32 | -         | -         | -                                        
 33 |  33 | -         | -         | -                                        
 34 |  34 | -         | -         | -                                        
 35 |  35 | -         | -         | -                                        
 36 |  36 | -         | -         | -                                        
 37 |  37 | -         | -         | -                                        
 38 |  38 | -         | -         | X_ENABLE_PIN                             
 39 |  39 | -         | -         | -                                        
 40 |  40 | -         | -         | -                                        
 41 |  41 | -         | -         | -                                        
 42 |  42 | -         | -         | -                                        
 43 |  43 | -         | -         | -                                        
 44 |  44 | -         | -         | -                                        
 45 |  45 | -         | -         | -                                        
 46 |  46 | -         | -         | Z_STEP_PIN                               
 47 |  47 | -         | -         | -                                        
 48 |  48 | -         | -         | Z_DIR_PIN                                
 49 |  49 | -         | -         | -                                        
 50 |  50 | -         | -         | -                                        
 51 |  51 | -         | -         | -                                        
 52 |  52 | -         | -         | -                                        
 53 |  53 | -         | -         | SDSS                                     
 54 |   0 | -         | -         | X_STEP_PIN                               
 55 |   1 | -         | -         | X_DIR_PIN                                
 56 |   2 | -         | -         | Y_ENABLE_PIN                             
 57 |   3 | -         | -         | -                                        
 58 |   4 | -         | -         | -                                        
 59 |   5 | -         | -         | -                                        
 60 |   6 | -         | -         | Y_STEP_PIN                               
 61 |   7 | -         | -         | Y_DIR_PIN                                
 62 |   8 | -         | -         | Z_ENABLE_PIN                             
 63 |   9 | -         | -         | -                                        
 64 |  10 | -         | -         | -                                        
 65 |  11 | -         | -         | -                                        
 66 |  12 | -         | -         | -                                        
 67 |  13 | -         | -         | TEMP_0_PIN                               
 68 |  14 | -         | -         | TEMP_1_PIN                               
 69 |  15 | -         | -         | -                                        

### RAMPS
[#RAMPS_Shield] Version 1.4.

### Stepper drivers
[#Stepper_drivers] modelo A4988.

[#Stepper_drivers_heat_sink]

[#LCD]

[#LCD_cable]

## Stepper motor
[^steppermotor]

## Display

### Display Cable

## Hot bed

## Other components

### End stop sensor
Olhando o plug macho da tomada com os pinos voltados para sua face:

![Figure [TCST2103]: [TCST2103](Documents/TCST2103.pdf)](Documents/TCST2103.png width="50%" border="0")

# Software

## Marlin
> "Marlin is an open source firmware for the RepRap family of replicating rapid prototypers — popularly known as “3D printers.” It was derived from Sprinter and grbl, and became a standalone open source project on August 12, 2011 with its Github release. Marlin is licensed under the GPLv3 and is free for all applications.
>
> From the start Marlin was built by and for RepRap enthusiasts to be a straightforward, reliable, and adaptable printer driver that “just works.” As a testament to its quality, Marlin is used by several respected commercial 3D printers. Ultimaker, Printrbot, AlephObjects (Lulzbot), and Prusa Research are just a few of the vendors who ship a variant of Marlin.
>
> One key to Marlin’s popularity is that it runs on inexpensive 8-bit Atmel AVR micro-controllers. These chips are at the center of the popular open source Arduino/Genuino platform. The reference platform for Marlin is an Arduino Mega2560 with RAMPS 1.4.
>
> As a community product, Marlin aims to be adaptable to as many boards and configurations as possible. We want it to be configurable, customizable, extensible, and economical for hobbyists and vendors alike. A Marlin build can be very small, for use on a headless printer with only modest hardware. Features are enabled as-needed to adapt Marlin to added components."
>
> As a community product, Marlin aims to be adaptable to as many boards and configurations as possible. We want it to be configurable, customizable, extensible, and economical for hobbyists and vendors alike. A Marlin build can be very small, for use on a headless printer with only modest hardware. Features are enabled as-needed to adapt Marlin to added components."
>
>                                           -- From: [Marlin][Marlin] web page.

### G-code
[G-code][Marlin_G-code]

### Calibration

# Bill of material

[#Frame]: (mechanical)
: Detailed specifications in the Frame section, purchase information:
  - Quantity: 1
  - Unit: each
  - Bought: 2017-08-19
  - Delivered: 2017-10-11
  - ID: 252822719913
  - Charge: **USD 168.069308** = USD 99.00 (price) + USD 18.8 (shipping) + USD 7.51564 (6.38% IOF) + BRL 123.11 (60% import duty) + BRL 12.00 (Correios fee)

[#Arduino_Mega_2560]: (electronic)
: Detailed specifications in the Arduino section, purchase information:
  - Quantity: 1
  - Unit: each
  - ID: 252297680208
  - Bought: 2016-02-28
  - Delivered: 2016-mm-dd
  - Charge: **USD 0.0**

[#RAMPS_Shield]: (electronic)
: Detailed specifications in the RAMPS section, purchase information:
  - Quantity: 1
  - Unit: each
  - ID: 252297680208
  - Bought: 2016-02-28
  - Delivered: 2016-mm-dd
  - Charge: **USD 28.98**

[#Stepper_drivers]: (electronic)
: Detailed specifications in the Stepper drivers section, purchase information:
  - Quantity: 5
  - Unit: each
  - ID: 252297680208
  - Bought: 2016-02-28
  - Delivered: 2016-mm-dd
  - Charge: **USD 0.0**

[#Stepper_drivers_heat_sink]: (electronic)
: Detailed specifications in the Stepper drivers heat sink section, purchase information:
  - Quantity: 5
  - Unit: each
  - ID: 252297680208
  - Bought: 2016-02-28
  - Delivered: 2016-mm-dd
  - Charge: **USD 0.0**

[#Display]: (electronic)
: Detailed specifications in the Display section, purchase information:
  - Quantity: 1
  - Unit: each
  - ID: 272150628431
  - Bought: 2016-03-08
  - Delivered: 2016-mm-dd
  - Charge: **USD 9.22 (GBP 7.40)**

[#Display_cable]: (electronic)
: Detailed specifications in the Display cable section, purchase information:
  - Quantity: 2
  - Unit: each
  - ID: 272150628431
  - Bought: 2016-03-08
  - Delivered: 2016-mm-dd
  - Charge: **USD 0.00**

[#Power_connector]: (electronic)
: Detailed specifications in the Power connector section, purchase information:
  - Quantity: 1
  - Unit: each
  - ID: 172193375231
  - Bought: 2016-10-09
  - Delivered: 2016-mm-dd
  - Charge: **USD 1.99**

[#Power_cable]: (electronic)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 1
  - Unit: each
  - ID: -
  - Bought: -
  - Delivered: -
  - Charge: **USD 1.99**

[#USB cable]: (electronic)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 1
  - Unit: each
  - ID: 252297680208
  - Bought: 2016-02-28
  - Delivered: 2016-mm-dd
  - Charge: **USD 0.00**

[#Display knob]: (mechanical)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 1
  - Unit: each
  - ID: 221939971151
  - Bought: 2016-04-24
  - Delivered: 2016-mm-dd
  - Charge: **USD 1.29**

[#Power switch]: (mechanical)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 1
  - Unit: each
  - ID: 221989151099
  - Bought: 2016-02-25
  - Delivered: 2016-mm-dd
  - Charge: **USD 2.48** (GBP 1.99)

[#624ZZ bearing]: (mechanical)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 1
  - Unit: each
  - ID: 262072694082
  - Bought: Fri, Feb 26, 2016 at 5:46 PM
  - Delivered: 2016-mm-dd
  - Charge: **USD 1.29**

[#Pcs Aluminum Brace Corner Joint Right Angle Bracket Joint L Shape 20x20mm New]: (mechanical)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 10
  - Unit: each
  - ID: 131977551173
  - Bought: Fri, Nov 4, 2016 at 11:37 AM
  - Delivered: 2016-mm-dd
  - Charge: **USD 2.489145** (AUD $3.18)

[#Optical Endstop]: (electronic)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 7
  - Unit: each
  - ID: 381842310412
  - Bought: Thu, Dec 22, 2016 at 12:09 AM
  - Delivered: 2017-05-18
  - Charge: **USD 5.61623125** (AUD $6.15 / 6 * 7 = USD 4.8139125 / 6 * 7)

[#Aluminium T-slot 2020 single retainer]: (mechanical)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 16
  - Unit: each
  - ID: 
  - Bought: 
  - Delivered: 
  - Charge: **USD 0.00**

[#SC8LUU]: (mechanical)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 4
  - Unit: each
  - ID: 272351135444
  - Bought: Sat, Oct 14, 2017 at 9:06 PM
  - Delivered: 
  - Charge: **USD 20.50** (10.25 * 2)

[#LMH8UU]: (mechanical)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 4
  - Unit: each
  - ID: 112098366186
  - Bought: Sat, Oct 14, 2017 at 8:53 PM
  - Delivered: 
  - Charge: **USD 5.579973** (GBP 4.20)

[#M5 T-Nut Round Roll fot T-slot 2020 Nickel Plated]: (mechanical)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 50
  - Unit: each
  - ID: 112377337972
  - Bought: Sat, Oct 14, 2017 at 2:21 PM
  - Delivered: 
  - Charge: **USD 8.54**

[#M4 T-Nut Round Roll fot T-slot 2020 Nickel Plated]: (mechanical)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 20
  - Unit: each
  - ID: 112377337972
  - Bought: Sat, Oct 14, 2017 at 2:21 PM
  - Delivered: 
  - Charge: **USD 5.22**

[#20 x M4 T-Nut Round Roll fot T-slot 2020 Nickel Plated]: (mechanical)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 20
  - Unit: each
  - ID: 112377337972
  - Bought: Sat, Oct 14, 2017 at 2:21 PM
  - Delivered: 
  - Charge: **USD 5.22**

[#SHF8]: (mechanical)
: Detailed specifications in the SHF8 section, purchase information:
  - Quantity: 12
  - Unit: each
  - ID: 222702698960
  - Bought: Sun, Nov 5, 2017 at 1:43 PM
  - Delivered: 
  - Charge: **USD 17.76**

[#GT2 Timing Pulley 20T, 5mm Bore, for 6mm belt]: (mechanical)
: Detailed specifications in the SHF8 section, purchase information:
  - Quantity: 2
  - Unit: each
  - ID: 292316604447
  - Bought: Wed, Nov 8, 2017 at 3:14 PM
  - Delivered: 
  - Charge: **USD 1.00**

[#PSU]: (mechanical)
: Detailed specifications in the Power supply section, purchase information:
  - Quantity: 1
  - Unit: each
  - ID: 
  - Bought: 
  - Delivered: 
  - Charge: **USD 0.00**

[#Time]: (intangible)
: Detailed specifications in the Power cable section, purchase information:
  - Quantity: 33
  - Unit: hours
  - ID: -
  - Bought: -
  - Delivered: -
  - Charge: **USD 0.00**

## Amount
Total cost: $287.23

---

[^powercord]: Power cord detailed technical specifications: https://www.stayonline.com/5-15-c13-10-amp-power-cords.aspx

[^busyducks]: Diagram by: http://busyducks.com/ascii-art-arduinos

[^steppermotor]: Reference to choose stepper motor: 
http://reprap.org/wiki/NEMA_17_Stepper_motor

[CoreXY]: http://corexy.com/
[RAMPS]: http://reprap.org/wiki/RAMPS
[Marlin]: http://marlinfw.org/
[Marlin_G-code]: http://marlinfw.org/meta/gcode/

<!-- Markdeep: --><style class="fallback">body{white-space:pre;font-family:monospace}</style><script src="markdeep.min.js"></script><script src="http://casual-effects.com/markdeep/latest/markdeep.min.js"></script>
