; Match previous-room records for the scene effect; use $06 if none match.
PickC2Fx:
    call ReadC2Prev
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a

; Scan previous-room four-byte records for the selected object, ignoring its high marker bit.
ScanC2FxRows:

jr_003_4c7b:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl+]
    cp $ff
    jr z, DefaultC2RoomFx

    ld a, [hl+]
    and $7f
    cp d
    jr z, SetC2RoomFx

    call NextC2State
    jr ScanC2FxRows

; Store the matching room record effect byte in scene effect state.
SetC2RoomFx:

jr_003_4c93:
    ld a, [hl]
    ld [wSceneFx], a
    ret

; Select scene effect six when the previous room has no matching object record.
DefaultC2RoomFx:


jr_003_4c98:
    ld a, $06
    ld [wSceneFx], a
    ret


; Advance the room record pointer by four bytes.
NextC2State:
Call_003_4c9e:
    push hl
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, l
    ld [wRoomDataPtr], a
    ld a, h
    ld [wRoomDataPtr+1], a
    pop hl
    ret
