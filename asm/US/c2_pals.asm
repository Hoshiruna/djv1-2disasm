; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

INCLUDE "c2_bg_pals.asm"
INCLUDE "c2_obj_pals.asm"

BankBPad:
    ds $18d0, $00

; End of bank B.
