
; Clear the ready byte, then set it to one only when flags $34 and $3e and both group tests succeed.
TestC2Final:

Call_003_57fd:
    xor a
    ld [wC2FinalReady], a
    ld a, $34
    call ReadObjFlag
    cp $00
    ret z

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

    ld a, $01
    ld [wC2FinalReady], a
    ret

; For case two and byte $c5e4 at least four, recompute readiness and branch to $577b if it equals one.
CheckC2Final:


    ld a, [wCaseId]
    cp $00
    ret z

    ld a, [$c5e4]
    cp $04
    ret c

    call TestC2Final
    ld a, [wC2FinalReady]
    cp $01
    ret nz

    jp PlayC2Final
