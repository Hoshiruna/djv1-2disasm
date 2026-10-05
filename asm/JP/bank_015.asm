; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

; Encoded text bank, with original label addresses retained.
    INCBIN "../../res/JP/text/banks/15.bin", $0, $56
jr_015_4056:
    INCBIN "../../res/JP/text/banks/15.bin", $56, $4a
jr_015_40a0:
    INCBIN "../../res/JP/text/banks/15.bin", $a0, $5f
jr_015_40ff:
    INCBIN "../../res/JP/text/banks/15.bin", $ff, $120
jr_015_421f:
    INCBIN "../../res/JP/text/banks/15.bin", $21f, $33f
jr_015_455e:
    INCBIN "../../res/JP/text/banks/15.bin", $55e, $a4a
jr_015_4fa8:
    INCBIN "../../res/JP/text/banks/15.bin", $fa8, $164
jr_015_510c:
    INCBIN "../../res/JP/text/banks/15.bin", $110c, $b4
jr_015_51c0:
    INCBIN "../../res/JP/text/banks/15.bin", $11c0, $f1
jr_015_52b1:
    INCBIN "../../res/JP/text/banks/15.bin", $12b1, $27
jr_015_52d8:
    INCBIN "../../res/JP/text/banks/15.bin", $12d8, $2c8b
Call_015_7f63:
    INCBIN "../../res/JP/text/banks/15.bin", $3f63, $4c
Jump_015_7faf:
    INCBIN "../../res/JP/text/banks/15.bin", $3faf, $1
Call_015_7fb0:
    INCBIN "../../res/JP/text/banks/15.bin", $3fb0, $43
Call_015_7ff3:
    INCBIN "../../res/JP/text/banks/15.bin", $3ff3, $d
