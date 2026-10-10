
; If flag $3e and both group tests succeed, branch to the sequence at $577b; otherwise return.
GateC2Final:


Jump_003_5758:
    ld a, $3e
    call ReadObjFlag
    ret z

    call TestC2Absent
    ld a, [wStateResult]
    and $01
    ret z

    call TestC2Required
    ld a, [wStateResult]
    and $01
    ret z

    jr jr_003_577b

; Set bit five of the case-two event bitmap.
SetC2Event5:

Call_003_5772:
    ld a, [wC2EventBits]
    or $20
    ld [wC2EventBits], a
    ret
