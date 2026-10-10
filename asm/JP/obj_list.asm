; Scan seven-byte room records and build the terminated X/Y/object list.
BuildObjList:


Call_000_0ed5:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_0ee3

    ld a, $05
    ld de, $4000

Jump_000_0ee1:
    jr jr_000_0ee8

jr_000_0ee3:
    ld a, $05
    ld de, Case2RoomObjects

jr_000_0ee8:
    call PushRomBank
    ld a, [wRoomId]
    ld l, a

Call_000_0eef:
    ld h, $00
    add hl, hl
    add hl, de
    ld a, [hl+]

Jump_000_0ef4:
    ld [wRoomObjPtr], a

Jump_000_0ef7:
    ld a, [hl]
    ld [wRoomObjPtr+1], a
    ld hl, wObjList
    ld a, l

Call_000_0eff:
    ld [wObjListPtr], a
    ld a, h

Jump_000_0f03:
    ld [wObjListPtr+1], a

jr_000_0f06:
    ld a, [wRoomObjPtr]
    ld l, a
    ld a, [wRoomObjPtr+1]
    ld h, a
    ld a, [hl]

Jump_000_0f0f:
    cp $ff

Call_000_0f11:
Jump_000_0f11:
    jr nz, jr_000_0f21

    push af
    ld a, [wObjListPtr]
    ld l, a
    ld a, [wObjListPtr+1]
    ld h, a
    pop af
    ld [hl], a
    jp PopRomBank


jr_000_0f21:
    ld bc, $0004
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr nz, jr_000_0f2f

    call NextRoomObj
    jr jr_000_0f06

jr_000_0f2f:
    ld [wObjRule], a
    inc hl
    inc hl
    ld a, [hl]
    ld [wDrawObj], a
    push af
    ld a, $02
    call PushRomBank
    pop af

Jump_000_0f3f:
    call C1ObjRule
    call PopRomBank
    push af

Jump_000_0f46:
    ld a, $02
    call PushRomBank
    pop af
    call AddRoomObj
    call PopRomBank

jr_000_0f52:
    call NextRoomObj

Call_000_0f55:
    jr jr_000_0f06
; Unwind the rule call and restore the room bank, then advance the room record.
SkipRoomObj:

Jump_000_0f57:
    call PopRomBank
    pop af
    jr jr_000_0f52
; Advance the room-object record pointer by seven bytes.
NextRoomObj:

Call_000_0f5d:
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
