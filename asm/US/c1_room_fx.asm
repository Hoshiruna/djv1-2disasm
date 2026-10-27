; Match the selected item against previous-room records and select its scene effect.
PickC1Fx:

    call ReadC1Prev
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a

; Scan previous-room triples for the selected object ID, ignoring its high marker bit.
ScanC1FxRows:

jr_001_6500:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl+]
    cp C1RoomRecordEnd
    ret z

    ld a, [hl+]
    and $7f
    cp d
    jr z, SetC1RoomFx

    call NextC1State
    jr ScanC1FxRows

; Store the matching room record effect byte in the scene effect state.
SetC1RoomFx:

jr_001_6517:
    ld a, [hl]
    ld [wSceneFx], a
    ret


; Advance the room record pointer by three bytes.
NextC1State:
Call_001_651c:
    push hl
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    inc hl
    inc hl
    ld a, l
    ld [wRoomDataPtr], a
    ld a, h
    ld [wRoomDataPtr+1], a
    pop hl
    ret
