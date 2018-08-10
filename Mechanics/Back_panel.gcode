; Escriba Mark I - Light CNC, G-code program file
;
; Project: Marlon Mark I - 3D Printer
; Description: This program is used to laser cut Marlon Mark I Back pannel.
; 
; Author: Márcio Pessoa <marcio.pessoa@sciemon.com>
; Contributors: none
; 
; Change log:
; 2018-08-08
;        * First version
;
; Header
$I  ; View build info
$G  ; View G-code parser state
$$  ; View current settings
?  ; View current status

G90  ; Set absolute distance mode
G21  ; Set all units in millimeters

G00 X37.087644 Y39.416870
M3 S2500   ; Turn laser on

G01 X88.412356 Y39.416870 Z-0.125000 F400.000000
G02 X89.829769 Y38.829758 Z-0.125000 I-0.000000 J-2.004523
G02 X90.416878 Y37.412350 Z-0.125000 I-1.417410 J-1.417408
G01 X90.416878 Y12.587630 Z-0.125000
G02 X89.829769 Y11.170222 Z-0.125000 I-2.004519 J0.000000
G02 X88.412356 Y10.583110 Z-0.125000 I-1.417413 J1.417411
G01 X37.087644 Y10.583110 Z-0.125000
G02 X35.670231 Y11.170222 Z-0.125000 I0.000000 J2.004523
G02 X35.083122 Y12.587630 Z-0.125000 I1.417410 J1.417408
G01 X35.083122 Y37.412350 Z-0.125000
G02 X35.670231 Y38.829758 Z-0.125000 I2.004519 J0.000000
G02 X37.087644 Y39.416870 Z-0.125000 I1.417413 J-1.417411
G01 X37.087644 Y39.416870 Z-0.125000

M05  ; Laser off

; Footer
G28  ; Go to home position
M2  ; Program end
