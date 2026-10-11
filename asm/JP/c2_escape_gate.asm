
; Require the cigar-ring flag and both desk tests before the ending; the train caller separately checks the ending flag.
GateTrainEnd:
GateC2Final:


Jump_003_5758:
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

    jr WinCase2

; Set the saved Case II ending event mask.
MarkC2End:
SetC2Event5:

Call_003_5772:
    ld a, [wC2EventBits]
    or EvtEnd
    ld [wC2EventBits], a
    ret
