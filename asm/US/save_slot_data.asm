
SaveNumSet0:
    dw SaveSlotRect0
    dw SaveSlotRect1
    dw SaveSlotRect2

SaveSlotRect0:
    db $06, $01, $c5, $c8, $cb, $c4, $7f, $da

SaveSlotRect1:
    db $06, $01, $c5, $c8, $cb, $c4, $7f, $db

SaveSlotRect2:
    db $06, $01, $c5, $c8, $cb, $c4, $7f, $dc

SaveNumSet1:
    dw SaveSlotRect3
    dw SaveSlotRect4
    dw SaveSlotRect5

SaveSlotRect3:
    db $09, $01, $c5, $c8, $c2, $c7, $c8, $c4, $d1, $7f, $da

SaveSlotRect4:
    db $09, $01, $c5, $c8, $c2, $c7, $c8, $c4, $d1, $7f, $db

SaveSlotRect5:
    db $09, $01, $c5, $c8, $c2, $c7, $c8, $c4, $d1, $7f, $dc

SaveEmptyPtrs:
    dw SaveSlotRect6
    dw SaveSlotRect7
    dw SaveSlotRect8

SaveSlotRect6:
Call_002_79db:
    db $03, $01, $e3, $e4, $e5

SaveSlotRect7:
    db $05, $01, $e9, $ea, $eb, $ec, $ed

SaveSlotRect8:
    db $03, $01, $f0, $f1, $f2

SaveSlotRect9:
    db $06, $01, $a0, $a1, $a2, $a3, $a4, $a5

SaveSlotRect10:
    db $06, $01, $a0, $a1, $a2, $a3, $a4, $a6

SaveCaseDests:
    dw $996b
    dw $99ab
    dw $99eb

SaveSlotRect11:
    db $0b, $01, $c2, $c0, $d2, $c4, $ff, $c1, $ce, $ce, $ca, $ff, $da

SaveSlotRect12:
    db $0b, $01, $c2, $c0, $d2, $c4, $ff, $c1, $ce, $ce, $ca, $ff, $db
