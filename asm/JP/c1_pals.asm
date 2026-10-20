; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

INCLUDE "ui_pals.asm"
INCLUDE "c1_bg_pals.asm"
INCLUDE "c1_obj_pals.asm"

BankAPad:
    ds $0fca, $00

; End of bank A.
