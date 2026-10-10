
; Save the HRAM work index, draw Case I room marks, then restore the index.
DrawC1Marks:


Call_001_4219:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    call DoC1Marks
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; Read current three-byte room records; queue eligible marks until the first byte is $ff.
DoC1Marks:


Call_001_422f:
    call ReadC1Room

jr_001_4232:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    bit 7, a
    jr nz, jr_001_425e

    call HideC1Mark
    ld a, [wStateResult]
    and $01
    jr nz, jr_001_425e

    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl]
    call C1MarkPos
    ld hl, C1MarkTile
    call QueueTileRect

jr_001_425e:
    ld a, [wRoomDataPtr]
    ld c, a
    ld a, [wRoomDataPtr+1]
    ld b, a
    inc bc
    inc bc
    inc bc
    ld a, c
    ld [wRoomDataPtr], a
    ld a, b
    ld [wRoomDataPtr+1], a
    jr jr_001_4232

; Test a record condition at HL; result bit 0 means the mark is hidden.
HideC1Mark:

Call_001_4273:
    call ClearResult
    ld a, [hl+]
    bit 7, a
    ret z

Call_001_427a:
    and $7f
    ld [$c855], a
    ld e, a
    ld d, a
    ld a, $00
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

jr_001_428a:
    ld bc, C1MarkTests
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c5c3], a
    cp e
    jr nz, jr_001_42b9

    ld d, a
    ldh a, [hChangePos]
    cp $04
    ld a, d
    jr nc, jr_001_42b4

    ld a, [$c5c3]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jp z, SetResult

    jp ClearResult


jr_001_42b4:
    ld a, e
    call HideC1MarkBB
    ret


jr_001_42b9:
    ldh a, [hChangePos]
    inc a
    inc a
    ldh [hChangePos], a
    jr jr_001_428a

C1MarkTests:
    db $08, $6f
    db $0d, $bb
    db $24, $ff
    db $29, $ff
    db $25, $ff
    db $2a, $ff
    db $26, $ff
    db $2b, $ff
    db $27, $ff
    db $2c, $ff

; Use object flag $bb for IDs $24..$27/$29..$2c; clear result for other IDs.
HideC1MarkId:

Call_001_42d5:
    cp $24
    jr z, jr_001_42f5

    cp $25
    jr z, jr_001_42f5

    cp $26
    jr z, jr_001_42f5

    cp $27
    jr z, jr_001_42f5

    cp $29
    jr z, jr_001_42f5

    cp $2a
    jr z, jr_001_42f5

    cp $2b
    jr z, jr_001_42f5

    cp $2c
    jr nz, jr_001_4319

; Use input bit 3 to choose whether object flag $bb hides the mark.
HideC1MarkBB:

Call_001_42f5:
jr_001_42f5:
    and $08
    jr nz, jr_001_4309

    ld a, $bb
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_001_4319

    call SetResult
    ret


jr_001_4309:
    ld a, $bb
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_001_4319

    call SetResult
    ret


jr_001_4319:
    call ClearResult
    ret

; Return BC=$98cf plus row*32 and column decoded from A; preserve HL.
C1MarkPos:


Call_001_431d:
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
    or l
    ld l, a
    ld bc, $98cf
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret
