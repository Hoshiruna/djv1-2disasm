; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

; Encoded text bank, with original label addresses retained.
    INCBIN "../../res/text/JP/banks/0c.bin", $0, $108
jr_00c_4108:
    INCBIN "../../res/text/JP/banks/0c.bin", $108, $3fc
jr_00c_4504:
    INCBIN "../../res/text/JP/banks/0c.bin", $504, $7d3
Call_00c_4cd7:
    INCBIN "../../res/text/JP/banks/0c.bin", $cd7, $39a
jr_00c_5071:
    INCBIN "../../res/text/JP/banks/0c.bin", $1071, $1068
Call_00c_60d9:
    INCBIN "../../res/text/JP/banks/0c.bin", $20d9, $1f0c
Call_00c_7fe5:
    INCBIN "../../res/text/JP/banks/0c.bin", $3fe5, $1
Call_00c_7fe6:
    INCBIN "../../res/text/JP/banks/0c.bin", $3fe6, $1a
