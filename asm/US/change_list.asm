
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
    jr nz, ListDecodeCase2Types

    ld bc, C1ListTypes
    jr ListDecodeStoreType

; Use the Case II packed-item type table.
ListDecodeCase2Types:
jr_005_59d8:
    ld bc, C2ListTypes

; Read and store the decoded list-item type.
ListDecodeStoreType:
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
    cp ListDecodedRawItemType
    jr z, ListDecodeReturn

    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and ListPackedValueMask
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListValue
    add hl, bc
    ld [hl], a

; Return after optionally masking a non-item value to five bits.
ListDecodeReturn:
jr_005_5a08:
    ret

C1ListTypes:
    db ListDecodedRawItemType, ListDecodedRawItemType, ListDecodedRawItemType, $04
    db $01, $02
C2ListTypes:
    db ListDecodedRawItemType, ListDecodedRawItemType, ListDecodedRawItemType, ListDecodedRawItemType
    db $04, $01, $02, $06

; Resolve the pointer before clearing scratch; offsets 4/5 also hold change type/value.
; A kind with bit 7 set returns before the clear.
ReadChangeList:
    ld a, [wChangeType]
    ld l, a
    ld h, $00
    ld a, [wCaseId]
    cp $00
    jr nz, ReadChangeCase2Kinds

    ld bc, C1ChangeKindByType
    ld de, C1ChangeListsByKind
    jr ReadChangeResolve

; Use the Case II list-kind and change-reference tables.
ReadChangeCase2Kinds:
jr_005_5a2c:
    ld bc, C2ChangeKindByType
    ld de, C2ChangeListsByKind

; Resolve a change record to its terminated item list.
ReadChangeResolve:
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

; Write one byte per source entry until $ff; this loop has no six-byte bound.
ReadChangeFilterLoop:
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
    jr ReadChangeFilterLoop

; Case I change type to list-kind index; bit 7 returns before scratch clear.
C1ChangeKindByType:
C1ListKinds:
    db ChangeListKindUnavailable, ChangeListKindProp1, ChangeListKindUnavailable
    db ChangeListKindUnavailable, ChangeListKindProp4, ChangeListKindUnavailable
; Case II change type to list-kind index; kind two bypasses item filtering.
C2ChangeKindByType:
C2ListKinds:
    db ChangeListKindUnavailable, ChangeListKindProp1, ChangeListKindGroup
    db ChangeListKindUnavailable, ChangeListKindProp4, ChangeListKindUnavailable

; Kind 2 returns raw bytes. Other kinds keep a byte only when both predicates clear.
; A holds their combined test; wStateResult retains the second reader result.
FilterListItem:

    ld [wListRaw], a

    ld a, [wListKind]
    cp ChangeListKindGroup
    jr z, FilterListKeepRaw

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
    jr z, FilterListProperty

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
    jr z, FilterListKeepRaw

    ld a, $ff
    ret

; Test both property-four bits before accepting a property entry.
FilterListProperty:
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
    jr z, FilterListKeepRaw

    ld a, $ff
    ret

; Return the original packed item byte when the filter allows it.
FilterListKeepRaw:
jr_005_5af8:
    ld a, [wListRaw]
    ret
