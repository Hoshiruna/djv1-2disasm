
C2ScriptTypes:
    dw C2Type0Refs ; type 0
    db $07
    dw C2Type1Refs ; type 1
    db $07
    ; C2Type2Refs: split pointer retains the original interior label.
    db LOW(C2Type2Refs) ; type 2
Call_000_3b03:
    db HIGH(C2Type2Refs)
    db $07
    dw C2Type3Refs ; type 3
    db $07
jr_000_3b08:
    dw C2Type4Refs ; type 4
    db $07
    dw C2Type5Refs ; type 5
    db $08
