
; Decode a packed byte into the selected list item type/value; type $03 keeps the raw value.
DecodeListItem:

Call_005_59a7:
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListValue
    add hl, bc
    ld [hl], a
    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    srl a
    ld l, a
    ld h, $00
    ld a, [wCaseId]
    cp $00
    jr nz, jr_005_59d8

    ld bc, C1ListTypes
    jr jr_005_59db

jr_005_59d8:
    ld bc, C2ListTypes

jr_005_59db:
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListType
    add hl, bc
    ld [hl], a
    cp $03
    jr z, jr_005_5a08

    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $1f
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListValue
    add hl, bc
    ld [hl], a

jr_005_5a08:
    ret

C1ListTypes:
    db $03, $03, $03, $04, $01, $02
C2ListTypes:
    db $03, $03, $03, $03, $04, $01, $02, $06

; Resolve change type/value to a terminated list and filter it into the scratch buffer.
ReadChangeList:
    ld a, [wChangeType]
    ld l, a
    ld h, $00
    ld a, [wCaseId]
    cp $00
    jr nz, jr_005_5a2c

    ld bc, C1ListKinds
    ld de, C1ChangeRefs
    jr jr_005_5a32

jr_005_5a2c:
    ld bc, C2ListKinds
    ld de, C2ChangeRefs

jr_005_5a32:
    add hl, bc
    ld a, [hl]
    ld [wListKind], a
    bit 7, a
    ret nz

    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [wChangeValue]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $ff
    ld [wListScratch], a
    ld [wListScratch+1], a
    ld [wListScratch+2], a
    ld [wListScratch+3], a
    ld [wListScratch+4], a
    ld [wListScratch+5], a
    ld bc, wListScratch

jr_005_5a64:
    ld a, [hl+]
    cp $ff
    ret z

    push bc
    push hl
    call FilterListItem
    pop hl
    pop bc
    ld [bc], a
    inc bc
    jr jr_005_5a64

C1ListKinds:
    db $ff, $00, $ff, $ff, $01, $ff
C2ListKinds:
    db $ff, $00, $02, $ff, $01, $ff

; Return the raw item byte, or $ff when its state excludes it; list kind $02 bypasses filtering.
FilterListItem:

    ld [wListRaw], a

    ld a, [wListKind]
    cp $02
    jr z, jr_005_5af8

    ld a, [wListRaw]
    call DecodeListItem
    ld bc, wListType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $04
    jr z, jr_005_5acb

    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ReadItemFlag
    ld a, [wStateResult]
    push af
    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ReadItemState
    pop af
    ld d, a
    ld a, [wStateResult]
    or d
    and $01
    jr z, jr_005_5af8

    ld a, $ff
    ret

jr_005_5acb:
    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ReadProp4Bit0
    ld a, [wStateResult]
    push af
    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ReadProp4Bit1
    pop af
    ld d, a
    ld a, [wStateResult]
    or d
    and $01
    jr z, jr_005_5af8

    ld a, $ff
    ret

jr_005_5af8:
    ld a, [wListRaw]
    ret
