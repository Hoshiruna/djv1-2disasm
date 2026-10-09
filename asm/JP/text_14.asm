; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

; Encoded text bank, with original label addresses retained.
    INCBIN "../../res/text/JP/banks/14.bin", $0, $66
jr_014_4066:
    INCBIN "../../res/text/JP/banks/14.bin", $66, $724
jr_014_478a:
    INCBIN "../../res/text/JP/banks/14.bin", $78a, $1f2
jr_014_497c:
    INCBIN "../../res/text/JP/banks/14.bin", $97c, $78c
jr_014_5108:
    INCBIN "../../res/text/JP/banks/14.bin", $1108, $fd5
Jump_014_60dd:
    INCBIN "../../res/text/JP/banks/14.bin", $20dd, $1e86
Call_014_7f63:
    INCBIN "../../res/text/JP/banks/14.bin", $3f63, $4c
Call_014_7faf:
    INCBIN "../../res/text/JP/banks/14.bin", $3faf, $37
Call_014_7fe6:
    INCBIN "../../res/text/JP/banks/14.bin", $3fe6, $3
Call_014_7fe9:
    INCBIN "../../res/text/JP/banks/14.bin", $3fe9, $17
