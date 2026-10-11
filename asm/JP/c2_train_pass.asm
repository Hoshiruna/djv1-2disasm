
; Read the clearance flag for either passenger room; return without reading a flag when no room matches.
ReadTrainPass:
TestC2SchedRoom:

Call_003_68cf:
    ld de, $0000

jr_003_68d2:
    ld a, [wRoomId]
    ld hl, TrainCarA
    add hl, de
    cp [hl]
    jr z, jr_003_68ea

    ld hl, TrainCarB
    add hl, de
    cp [hl]
    jr z, jr_003_68ea

    inc e
    ld a, TrainCount
    cp e
    jr nz, jr_003_68d2

    ret


jr_003_68ea:
    ld hl, TrainPassFlags
    add hl, de
    ld a, [hl]
    call ReadObjFlag
    ret
