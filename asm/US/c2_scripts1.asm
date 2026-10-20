; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

INCLUDE "c2_type5_refs.asm"
INCLUDE "c2_type5_scripts.asm"

Bank8Pad:
jr_008_538c:
    ds $0004, $00
jr_008_5390:
    ds $00b9, $00
Jump_008_5449:
    ds $0004, $00
Call_008_544d:
    ds $01b2, $00
Call_008_55ff:
    ds $0600, $00
Jump_008_5bff:
    ds $044a, $00
Jump_008_6049:
    ds $0001, $00
Jump_008_604a:
    ds $0004, $00
Jump_008_604e:
    ds $01d7, $00
Call_008_6225:
    ds $1b59, $00
Jump_008_7d7e:
    ds $0282, $00

; End of bank 8.
