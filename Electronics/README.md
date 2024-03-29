# Marlon Mark I - 3D Printer

[Main page]

## Electronics

### Power
Technical specifications:
https://www.stayonline.com/5-15-c13-10-amp-power-cords.aspx

- N: neutro (black)
- F: fase (white)
- T: ground (green)

#### Power connector

             T        
          +------+    
         /   ▉▉   \   
        +          +  
        | ▉▉    ▉▉ |  
        +----------+  
          F      N    

Technical specifications:
- Standard: IEC 60320
- Coupler: C13

#### Power supply
Technical specifications:
- Model: PMC-12V150W1BA
- Technology: Switching power supply
- Input:
  - Voltage: 100 ~ 240 VAC
  - Amperage: 2 A
  - Frequency: 50 ~ 60 Hz
  - Power: 150 W
- Output 1: 
  - Voltage: 12 VDC
  - Amperage: 12.6 A

### Arduino
Technical specifications:
- Model: [Arduino Mega 2560]

#### Diagram
                                 .-----.                                        
    .----[PWR]-------------------| USB |--.                                     
    |                            '-----'  |                                     
    |           GND/RST2  [ ] [ ]         |                                     
    |         MOSI2/SCK2  [ ] [ ]  SCL[ ] |   D0                                
    |            5V/MISO2 [ ] [ ]  SDA[ ] |   D1                                
    |                             AREF[ ] |                                     
    |                              GND[ ] |                                     
    | [ ]NC                     SCK/13[ ]~|   B7                                
    | [ ]v.ref                 MISO/12[ ]~|   B6                                
    | [ ]RST                   MOSI/11[ ]~|   B5                                
    | [ ]3V3      +----------+      10[ ]~|   B4                                
    | [ ]5v       | ARDUINO  |       9[ ]~|   H6                                
    | [ ]GND      |   MEGA   |       8[ ]~|   H5                                
    | [ ]GND      +----------+            |                                     
    | [ ]Vin                         7[ ]~|   H4                                
    |                                6[ ]~|   H3                                
    | [ ]A0                          5[ ]~|   E3                                
    | [ ]A1                          4[ ]~|   G5                                
    | [ ]A2                     INT5/3[ ]~|   E5                                
    | [ ]A3                     INT4/2[ ]~|   E4                                
    | [ ]A4                       TX>1[ ]~|   E1                                
    | [ ]A5                       RX<0[ ]~|   E0                                
    | [ ]A6                               |                                     
    | [ ]A7                     TX3/14[ ] |   J1                                
    |                           RX3/15[ ] |   J0                                
    | [ ]A8                     TX2/16[ ] |   H1                                
    | [ ]A9                     RX2/17[ ] |   H0                                
    | [ ]A10               TX1/INT3/18[ ] |   D3                                
    | [ ]A11               RX1/INT2/19[ ] |   D2                                
    | [ ]A12           I2C-SDA/INT1/20[ ] |   D1                                
    | [ ]A13           I2C-SCL/INT0/21[ ] |   D0                                
    | [ ]A14                              |                                     
    | [ ]A15                              |   PORTS                             
    |                RST SCK MISO         |    22=A0  23=A1                     
    |         ICSP   [ ] [ ] [ ]          |    24=A2  25=A3                     
    |                [ ] [ ] [ ]          |    26=A4  27=A5                     
    |                GND MOSI 5V          |    28=A6  29=A7                     
    | G                                   |    30=C7  31=C6                     
    | N 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 5 |    32=C5  33=C4                     
    | D 2 0 8 6 4 2 0 8 6 4 2 0 8 6 4 2 V |    34=C3  35=C2                     
    |         ~ ~                         |    36=C1  37=C0                     
    | @ # # # # # # # # # # # # # # # # @ |    38=D7  39=G2                     
    | @ # # # # # # # # # # # # # # # # @ |    40=G1  41=G0                     
    |           ~                         |    42=L7  43=L6                     
    | G 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 5 |    44=L5  45=L4                     
    | N 3 1 9 7 5 3 1 9 7 5 3 1 9 7 5 3 V |    46=L3  47=L2                     
    | D                                   |    48=L1  49=L0    SPI:             
    |                                     |    50=B3  51=B2     50=MISO 51=MOSI
    |     2560                            |    52=B1  53=B0     52=SCK  53=SS   
    '--.                         .--------'                                     
        \_______________________/                                               

Diagram by: http://busyducks.com/ascii-art-arduinos

#### Pin designation
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
![RAMPS 1.4](Pictures/Arduinomega1-4connectors.png)

> RepRap Arduino Mega Pololu Shield, or RAMPS for short. It is designed to fit the entire electronics needed for a RepRap in one small package for low cost. RAMPS interfaces an Arduino Mega with the powerful Arduino MEGA platform and has plenty room for expansion. The modular design includes plug in stepper drivers and extruder control electronics on an Arduino MEGA shield for easy service, part replacement, upgrade-ability and expansion. Additionally, a number of Arduino expansion boards can be added to the system as long as the main RAMPS board is kept to the top of the stack.
>
> -- From: [RAMPS]

Technical specifications:
- Version: 1.4
- License: GPL

### Display
Technical specifications:
- Model: [Full Graphic Smart Controller]
- Resolution: 128 x 64 pixels
- Technology: LCD
- License: GPL
- Author: RepRapDiscount.com

### Stepper drivers
Technical specifications:
- Model: A4988

Each driver has and heat sink to 

RAMPS has 3 jumpers to configure each axes resolution.
That can be set to configure the motor microstepping.

#### Resolution configuration

##### Pololu A4988
 M0   | M1   | M2   | Microstep resolution
------|------|------|-----------------------
 Low  | Low  | Low  | Full step
 High | Low  | Low  | Half step
 Low  | High | Low  | Quarter step
 High | High | Low  | Eighth step
 High | High | High | Sixteenth step

##### Pololu DRV8825
 M0   | M1   | M2   | Microstep resolution
------|------|------|-----------------------
 Low  | Low  | Low  | Full step
 High | Low  | Low  | Half step
 Low  | High | Low  | 1/4 step
 High | High | Low  | 1/8 step
 Low  | Low  | High | 1/16 step
 High | Low  | High | 1/32 step
 Low  | High | High | 1/32 step
 High | High | High | 1/32 step

### Stepper motor
Technical specifications:
- Model: 42BYGHM809
- Holding Torque: 48 N·cm
- Rated voltage: 3.06 V
- Shaft: Ø 5 mm no flat
- Step angle: 0.9 degree
- Motor length: 48 mm
- Rated current: 1.7 A/phase
- Inductance: 2.8 mH
- Frame Size: NEMA17
- Step Angle:                    0.9 degree
- Wires: 4
- Weight: 0.34 kg
- Length: 48 mm
- Motor shaft : 5mm
- Front shaft length: 20mm

<!---
- Voltage: 2.8V
- Resistance: 1.65Ohm/phase
- Inductance: 4.0mH/phase
- Holding torque: 4200g.cm 60oz-in
- Rotor inertia: 68g-cm2
- Detent torque: 0.22g-cm
--->

Stepper motor [reference](http://reprap.org/wiki/NEMA_17_Stepper_motor).

### Hot bed

### Endstop sensor
![TCST2103](Pictures/TCST2103.png)

Technical specifications:
- Type: Optical
- Model: [TCST2103](../Documents/TCST2103.pdf)

### Fans
Technical specifications:
- Type: Brushless
- Feature: Noiseless
- Size: 50 x 50 x 10 mm
- Voltage: 12 VDC
- Amperage: 0.12 A

[Main page]

---

[Main page]: ../README.md
[RAMPS]: http://reprap.org/wiki/RAMPS
[Arduino Mega 2560]: https://store.arduino.cc/usa/arduino-mega-2560-rev3
[Full Graphic Smart Controller]: https://reprap.org/wiki/RepRapDiscount_Full_Graphic_Smart_Controller
