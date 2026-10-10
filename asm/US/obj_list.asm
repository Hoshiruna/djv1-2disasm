; Scan seven-byte room records and build the terminated X/Y/object list.
BuildObjList:


Call_000_0ee0:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_0eee

    ld a, $05
    ld de, $4000
    jr jr_000_0ef3

jr_000_0eee:
    ld a, $05
    ld de, Case2RoomObjects

jr_000_0ef3:
    call PushRomBank
    ld a, [wRoomId]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld a, [hl+]

Call_000_0eff:
    ld [wRoomObjPtr], a
    ld a, [hl]

Jump_000_0f03:
    ld [wRoomObjPtr+1], a
    ld hl, wObjList
    ld a, l
    ld [wObjListPtr], a
    ld a, h
    ld [wObjListPtr+1], a

Call_000_0f11:
Jump_000_0f11:
jr_000_0f11:
    ld a, [wRoomObjPtr]
    ld l, a
    ld a, [wRoomObjPtr+1]
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_000_0f2c

    push af
    ld a, [wObjListPtr]
    ld l, a
    ld a, [wObjListPtr+1]
    ld h, a
    pop af
    ld [hl], a
    jp PopRomBank


jr_000_0f2c:
    ld bc, $0004
    add hl, bc

Jump_000_0f30:
    ld a, [hl]
    bit 7, a
    jr nz, jr_000_0f3a

    call NextRoomObj
    jr jr_000_0f11

jr_000_0f3a:
    ld [wObjRule], a
    inc hl
    inc hl

Jump_000_0f3f:
    ld a, [hl]
    ld [wDrawObj], a
    push af
    ld a, $02
    call PushRomBank
    pop af
    call C1ObjRule
    call PopRomBank

Call_000_0f50:
Jump_000_0f50:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call AddRoomObj
    call PopRomBank

jr_000_0f5d:
    call NextRoomObj
    jr jr_000_0f11
; Unwind the rule call and restore the room bank, then advance the room record.
SkipRoomObj:

Jump_000_0f62:
    call PopRomBank
    pop af
    jr jr_000_0f5d
; Advance the room-object record pointer by seven bytes.
NextRoomObj:

Call_000_0f68:
    ld a, [wRoomObjPtr]
    ld l, a
    ld a, [wRoomObjPtr+1]
    ld h, a
    ld bc, $0007
    add hl, bc
    ld a, l
    ld [wRoomObjPtr], a
    ld a, h
    ld [wRoomObjPtr+1], a
    ret
