; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

INCLUDE "mono.asm"

INCLUDE "ui_map_refs.asm"
INCLUDE "ui_maps.asm"

INCLUDE "ui_gfx_refs.asm"
INCLUDE "ui_gfx.asm"
INCLUDE "mono_res.asm"

Bank9Pad:
    ds $0097, $00
Call_009_7ac5:
    ds $013c, $00
Jump_009_7c01:
    ds $0082, $00
Jump_009_7c83:
    ds $01ba, $00
Jump_009_7e3d:
    ds $00d5, $00
Call_009_7f12:
    ds $00ee, $00

; End of bank 9.
