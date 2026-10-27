
; Encode the selected operation, then save the scratch result in its packed field even if encoding returned early.
PackListItem:
    call EncodeList
    ld a, [wListCode]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListPacked
    add hl, bc
    ld [hl], a
    ret

; Map operation type to a packed prefix and OR the unmasked value; a $ff prefix leaves the scratch result unchanged.
EncodeList:


Call_001_6325:
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld a, [wCaseId]
    cp $00
    jr nz, EncodeListCase2Types

    ld bc, C1PackTypes
    jr EncodeListReadPrefix

; Select the Case II operation-type to packed-prefix table.
EncodeListCase2Types:
jr_001_633f:
    ld bc, C2PackTypes

; Read the selected type prefix and retain the original unmasked value OR.
EncodeListReadPrefix:
jr_001_6342:
    add hl, bc
    ld a, [hl]
    cp ListUnencodablePrefix
    jr z, EncodeListReturn

    add a
    add a
    add a
    add a
    add a
    push af
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    or b
    ld [wListCode], a

; Return after encoding or leave wListCode unchanged for prefix $ff.
EncodeListReturn:
jr_001_635f:
    ret

C1PackTypes:
    db ListUnencodablePrefix, $04, $05, $00
    db $03, ListUnencodablePrefix

C2PackTypes:
    db ListUnencodablePrefix, $05, $06, $00
    db $04, ListUnencodablePrefix, $07
