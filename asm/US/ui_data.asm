; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]


INCLUDE "ui_map_refs.asm"
INCLUDE "ui_maps.asm"

INCLUDE "ui_gfx_refs.asm"
INCLUDE "ui_gfx.asm"
INCLUDE "mono_res.asm"

Bank9Pad:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00
jr_009_7ffa:
    db $00, $00
jr_009_7ffc:
    db $00, $00, $00, $00

; End of bank 9.
