
; Save the HRAM work index, draw Case II room marks, then restore the index.
DrawC2Marks:

Call_003_453b:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    call DoC2Marks

jr_003_4547:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; Read current four-byte room records; skip $55 records and queue eligible marks until $ff.
DoC2Marks:


Call_003_4551:
    call ReadC2Room

jr_003_4554:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    cp $55
    jr z, jr_003_4582

    call HideC2Mark
    ld a, [wStateResult]
    and $01
    jr nz, jr_003_4582

    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl]
    and $7f
    call C2MarkPos
    ld hl, C2MarkTile
    call QueueTileRect

jr_003_4582:
    ld a, [wRoomDataPtr]
    ld c, a
    ld a, [wRoomDataPtr+1]
    ld b, a
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, c
    ld [wRoomDataPtr], a
    ld a, b
    ld [wRoomDataPtr+1], a
    jr jr_003_4554

; For conditional records, map the second byte to an object flag; result bit 0 means hidden.
HideC2Mark:

Call_003_4598:
    call ClearResult
    xor a
    ldh [hChangePos], a
    ldh [hChangePos+1], a
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl]
    bit 7, a
    ret z

Call_003_45ac:
    ldh a, [hChangePos]
    inc a
    ldh [hChangePos], a
    ld l, a
    ld h, $00
    ld a, [wRoomDataPtr]
    ld c, a
    ld a, [wRoomDataPtr+1]
    ld b, a
    add hl, bc
    ld a, [hl]
    ld [$c855], a
    ld e, a
    ld d, a
    ld a, $00
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

jr_003_45cc:
    ld bc, C2MarkTests
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c5c3], a
    cp e
    jr nz, jr_003_45f6

    ld bc, C2MarkTests+1
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jp z, SetResult

    jp ClearResult


jr_003_45f6:
    ldh a, [hChangePos]
    inc a
    inc a
    ldh [hChangePos], a
    jr jr_003_45cc

C2MarkTests:
    db $0d, $1d
    db $21, $1e
    db $22, $1e
    db $24, $1f
    db $25, $1f
    db $27, $20
    db $28, $20
    db $2a, $21
    db $2b, $21
    db $3a, $22
    db $3b, $22
    db $3d, $23
    db $3e, $23
    db $40, $24
    db $41, $24
    db $43, $25
    db $44, $25
    db $61, $9d
    db $6d, $9e

; Return BC=$98cf plus row*32 and column decoded from A; preserve HL.
C2MarkPos:

Call_003_4624:
    push hl
    push af
    and $07
    swap a
    ld l, a
    ld h, $00
    add hl, hl
    pop af
    swap a
    and $07

jr_003_4633:
    or l
    ld l, a
    ld bc, $98cf
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret
