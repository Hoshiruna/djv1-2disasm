
; In case two, clear text hold and state bit two, then process each set bit of the saved event bitmap.
ClearC2Events:


Call_002_7892:
    ld a, [wCaseId]
    cp $00
    ret z

    call ClearTextHold
    ld a, [wStateResult]
    and $fb
    ld [wStateResult], a
    ld de, $0000
    ld a, [wC2EventBits]
    ld c, $08

jr_002_78ab:
    srl a
    jr nc, jr_002_78b8

    push de
    push bc
    push af
    call ClearC2Event
    pop af
    pop bc
    pop de

jr_002_78b8:
    inc de
    dec c
    jr nz, jr_002_78ab

    ret

; For E other than seven, read its counter offset and clear that counter; for seven, enter the special room/flag cleanup.
ClearC2Event:


Call_002_78bd:
    ld a, $07
    cp e
    jr z, jr_002_78dc

    ld hl, C2EventCounters
    add hl, de
    ld a, [hl]
    ld c, a
    ld b, $00
    ld hl, wC2Counters
    add hl, bc
    xor a
    ld [hl], a

; Clear the event bitmap bit selected by DE through the fixed-bank clear-mask table.
ClearC2EventBit:

Call_002_78d0:
    ld a, [wC2EventBits]
    ld hl, ClearMasks
    add hl, de
    and [hl]
    ld [wC2EventBits], a
    ret

; Clear event bit seven and object flags $4e/$a8, then set room $3a.
ClearC2Event7:


jr_002_78dc:
    call ClearC2EventBit
    ld a, $4e
    call ClearObjFlag
    ld a, $a8
    call ClearObjFlag
    ld a, $3a
    ld [wRoomId], a
    ret
