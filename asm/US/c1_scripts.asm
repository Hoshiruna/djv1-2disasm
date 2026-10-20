; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

INCLUDE "c1_script.asm"
INCLUDE "c1_ops.asm"
INCLUDE "c1_type0_refs.asm"
INCLUDE "c1_type0_scripts.asm"
INCLUDE "c1_type1_refs.asm"
INCLUDE "c1_type1_scripts.asm"
INCLUDE "c1_type2_refs.asm"
INCLUDE "c1_type2_scripts.asm"
INCLUDE "c1_type3_refs.asm"
INCLUDE "c1_type3_scripts.asm"
INCLUDE "c1_type4_refs.asm"
INCLUDE "c1_type4_scripts.asm"
INCLUDE "c1_type5_refs.asm"
INCLUDE "c1_type5_scripts.asm"

Bank6Pad:
    ds $0028, $00
jr_006_7da6:
    ds $0005, $00
jr_006_7dab:
    ds $0255, $00

; End of bank 6.
