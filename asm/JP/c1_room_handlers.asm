
; Require item flag $07 or $54, a nonzero coin count, and clear object flag $93; draw the target room and show message $e0 on random mask $03 zero.
C1RoomEvt1E:
    ld a, $07
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_6688

    ld a, $54
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    ret z

jr_002_6688:
    call ClearResult
    ld a, [wC1Coins]
    cp $00
    ret z

    ld a, $93
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_66a1

    call ClearResult
    ret


jr_002_66a1:
    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $03
    ret nz

    ld a, [wArg3]
    call DrawRoomAt
    ld a, $e0
    call ShowMsg1
    call SetResult
    ret

; With object flag $92 clear and random bit zero set, draw the target room and show stream-two message $e5.
C1RoomEvt20:


    ld a, $92
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_66cb

    call ClearResult
    ret


jr_002_66cb:
    call NextRandom
    ldh a, [hRandByte]
    and $01
    jr nz, jr_002_66d8

    call ClearResult
    ret


jr_002_66d8:
    ld a, [wArg3]
    call DrawRoomAt
    ld a, $e5
    call ShowMsg2
    call SetResult
    ret

; Count visits when property-four bit zero is set for object $02 or $07; from count three, test random bit zero before message $33.
C1RoomEvt24:


    ld a, $02
    call ReadProp4Bit0
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_66fe

    ld a, $07
    call ReadProp4Bit0
    ld a, [wStateResult]
    and $01
    ret z

jr_002_66fe:
    ld a, [wRoomEvtCount]
    inc a
    ld [wRoomEvtCount], a
    call ClearResult
    ld a, [wRoomEvtCount]
    cp $03
    ret c

    call NextRandom
    ldh a, [hRandByte]
    and $01
    ret z

    ld a, [wArg3]
    call DrawRoomAt
    ld a, $33
    call ShowMsg1
    call SetResult
    ret

; On random bit zero clear, set object flag $a8 and show stream-two message $db or $de according to flag $91.
C1RoomEvt1F:


    call NextRandom
    ldh a, [hRandByte]
    and $01
    jr z, jr_002_6732

    call ClearResult
    ret


jr_002_6732:
    ld a, $a8
    call SetObjFlag
    ld a, [wArg3]
    call DrawRoomAt
    ld a, $91
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_6752

    ld a, $db
    call ShowMsg2
    call SetResult
    ret


jr_002_6752:
    ld a, $de
    call ShowMsg2
    call SetResult
    ret

; Require flags $05 and $2a clear, then show message $eb when random mask $18 is zero.
C1RoomEvt4A:


    ld a, $05
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_676b

    call ClearResult
    ret


jr_002_676b:
    ld a, $2a
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_677b

    call ClearResult
    ret


jr_002_677b:
    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $18
    jr z, jr_002_6788

    ret


jr_002_6788:
    ld a, [wArg3]
    call DrawRoomAt
    ld a, $eb
    call ShowMsg1
    call SetResult
    ret

; Require flags $06 and $2a clear and flag $05 set, then show message $f1 when random mask $18 is zero.
C1RoomEvt4D:


    ld a, $06
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_67a7

    call ClearResult
    ret


jr_002_67a7:
    ld a, $2a
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_67b7

    call ClearResult
    ret


jr_002_67b7:
    ld a, $05
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_67c7

    call ClearResult
    ret


jr_002_67c7:
    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $18
    jr z, jr_002_67d4

    ret


jr_002_67d4:
    ld a, [wArg3]
    call DrawRoomAt
    ld a, $f1
    call ShowMsg1
    call SetResult
    ret

; Require flags $07 and $2a clear and flag $06 set, then show message $f4 when random mask $18 is zero.
C1RoomEvt4B:


    ld a, $07
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_67f3

    call ClearResult
    ret


jr_002_67f3:
    ld a, $2a
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_6803

    call ClearResult
    ret


jr_002_6803:
    ld a, $06
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_6813

    call ClearResult
    ret


jr_002_6813:
    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $18
    ret nz

    ld a, [wArg3]
    call DrawRoomAt
    ld a, $f4
    call ShowMsg1
    call SetResult
    ret

; Require flag $2a clear, flag $07 set, and item flag $07 or $54 set; show message $f6 when random mask $1c is zero.
C1RoomEvt4C:


    ld a, $2a
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_683d

    call ClearResult
    ret


jr_002_683d:
    ld a, $07
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_684d

    call ClearResult
    ret


jr_002_684d:
    ld a, $07
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_6869

    ld a, $54
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_6869

    call ClearResult
    ret


jr_002_6869:
    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $1c
    ret nz

    ld a, [wArg3]
    call DrawRoomAt
    ld a, $f6
    call ShowMsg1
    call SetResult
    ret
