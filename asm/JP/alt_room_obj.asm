
; Accept alternate type two, or scan the case-one room table for the first-slot type/ID and cursor hit.
CheckAltRoomObj:


    ld a, [wAltSlot]
    cp $02
    jr nz, jr_000_293b

    call SetResult
    ret


jr_000_293b:
    ld a, $05
    call PushRomBank
    ld a, [wRoomId]
    ld l, a

Call_000_2944:
    ld h, $00
    add hl, hl
    ld bc, C1EntryRefs
    add hl, bc

Jump_000_294b:
    ld a, [hl+]
    ld [wRoomObjPtr], a
    ld a, [hl]
    ld [wRoomObjPtr+1], a

; Scan the current alternate-object record for the selected item and cursor hit.
ScanAltRoom:

Jump_000_2953:
    ld a, [wRoomObjPtr]

Jump_000_2956:
    ld l, a

Call_000_2957:
    ld a, [wRoomObjPtr+1]
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, FailAltRoom

    ld bc, $0004
    add hl, bc
    ld a, [hl+]
    and $7f
    ld c, a
    ld a, [wItemType]
    cp c
    jr nz, jr_000_29a2

    ld a, [hl-]

Call_000_2970:
    ld c, a
    ld a, [wItemId]

Call_000_2974:
    cp c
    jr nz, jr_000_29a2

    call ReadCursorBox
    ld a, [wStateResult]
    and $80
    jr z, jr_000_29a2

    ld a, [hl+]

Jump_000_2982:
    and $7f
    ld [wAltSlot], a
    ld a, [hl+]
    ld [wAltSlot+1], a
    ld a, [hl]
    ld [wHitObj], a
    call PopRomBank
    call SetResult
    ret

; On scan exhaustion, clear object flag $80, restore the bank, and clear the result.
FailAltRoom:


Jump_000_2996:
    ld a, C1AltTargetBypass
    call ClearObjFlag
    call PopRomBank
    call ClearResult
    ret


jr_000_29a2:
    call NextRoomObj
    jp ScanAltRoom
