
; Clear readiness; set it only when the ending and cigar-ring flags are set, the desk has all three proof items, and neither conflicting item.
TestEscapePlan:
TestC2Final:

Call_003_57fd:
    xor a
    ld [wC2EscapeReady], a
    ld a, C2EndFlag
    call ReadObjFlag
    cp $00
    ret z

    ld a, C2RingFlag
    call ReadObjFlag
    ret z

    call TestDeskClean
    ld a, [wStateResult]
    and $01
    ret z

    call TestDeskProof
    ld a, [wStateResult]
    and $01
    ret z

    ld a, $01
    ld [wC2EscapeReady], a
    ret

; In Case II, after at least four consecutive entries into room IDs $62 or higher, test readiness and play the ending when ready.
CheckDesertEnd:
CheckC2Final:


    ld a, [wCaseId]
    cp $00
    ret z

    ld a, [wC2EscapeSteps]
    cp EscapeMinSteps
    ret c

    call TestEscapePlan
    ld a, [wC2EscapeReady]
    cp $01
    ret nz

    jp WinCase2
