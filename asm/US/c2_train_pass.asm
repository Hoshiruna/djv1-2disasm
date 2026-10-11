
; Read the clearance flag for either passenger room; return without reading a flag when no room matches.
ReadTrainPass:
TestC2SchedRoom:

Call_003_68ca:
    ld de, $0000

jr_003_68cd:
    ld a, [wRoomId]
    ld hl, TrainCarA
    add hl, de
    cp [hl]
    jr z, jr_003_68e5

    ld hl, TrainCarB
    add hl, de
    cp [hl]
    jr z, jr_003_68e5

    inc e
    ld a, TrainCount
    cp e
    jr nz, jr_003_68cd

    ret


jr_003_68e5:
    ld hl, TrainPassFlags
    add hl, de
    ld a, [hl]
    call ReadObjFlag
    ret
