
; Select the case data bank, read the room item, and pack its list value.
BuildRoomItem:


Jump_000_189e:
    ld a, [wCaseId]
    ld l, a
    ld h, $00

Jump_000_18a4:
    ld bc, RoomItemBanks
    add hl, bc
    ld a, [hl]
    call PushRomBank
    call ReadRoomItem
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PackListItem
    call PopRomBank

Jump_000_18bf:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call InitSelAction
    call PopRomBank
    ret

; Read the current room data pointer and scan its seven-byte entries.
ReadRoomItem:


Call_000_18cd:
    ld a, [wCaseId]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, RoomItemRefs
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [wRoomId]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc

Call_000_18e3:
    ld a, [hl+]
    ld [wRoomObjPtr], a

Call_000_18e7:
    ld a, [hl]
    ld [$c8ae], a

; Find a visible entry with its rule enabled, or write the original end marker.
ScanRoomItems:

Jump_000_18eb:
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d
    ld a, [wRoomObjPtr]
    ld c, a
    ld a, [$c8ae]
    ld b, a
    ldh a, [$ff9e]

Call_000_18ff:
Jump_000_18ff:
    ld l, a

Jump_000_1900:
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_000_193f

    ld a, $00
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemType
    add hl, bc
    ld [hl], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_192f

    ld a, $6f
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ret


jr_000_192f:
    ld a, $a7
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a

Call_000_193e:
    ret


jr_000_193f:
    ld hl, wRoomObjPtr
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld [$c5c4], a
    ld a, [hl+]
    ld [$c5c5], a
    ld a, [hl]
    ld [$c5c6], a
    ld [$c5c2], a
    push af
    ld a, $01
    call PushRomBank
    pop af
    call CheckListVisible
    call PopRomBank
    ld a, [wStateResult]
    and $01
    jr z, jr_000_1993

    call ReadCursorBox
    ld a, [wStateResult]
    bit 7, a
    jr z, jr_000_1993

    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1988

    ld a, $01
    call PushRomBank
    call BuildC1Item
    jp PopRomBank


jr_000_1988:
    ld a, $03
    call PushRomBank
    call BuildC2Item
    jp PopRomBank


jr_000_1993:
    call NextRoomObj
    jp ScanRoomItems

; Restore the filter bank and saved BC, advance one entry, and resume scanning.
SkipRoomItem:


Jump_000_1999:
    call PopRomBank
    pop bc
    call NextRoomObj
    jp ScanRoomItems

; Case data bank and pointer-table addresses.
RoomItemBanks:
    db $05, $05
RoomItemRefs:
    dw C1EntryRefs, C2EntryRefs

; BitMasks retains its existing constant definition.
    db $01, $02, $04, $08, $10, $20, $40, $80
