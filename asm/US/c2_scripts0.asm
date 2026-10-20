; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

INCLUDE "c2_type0_refs.asm"
INCLUDE "c2_type0_scripts.asm"
INCLUDE "c2_type1_refs.asm"
INCLUDE "c2_type1_scripts.asm"
INCLUDE "c2_type2_refs.asm"
INCLUDE "c2_type2_scripts.asm"
INCLUDE "c2_type3_refs.asm"
INCLUDE "c2_type3_scripts.asm"
INCLUDE "c2_type4_refs.asm"
INCLUDE "c2_type4_scripts.asm"

Bank7Pad:
    ds $0e77, $00
Jump_007_7d6e:
    ds $00c1, $00
Jump_007_7e2f:
    ds $0133, $00
Jump_007_7f62:
    ds $009e, $00

; End of bank 7.
