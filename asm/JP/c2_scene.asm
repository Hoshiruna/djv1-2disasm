
Call_003_41ee:
; Update room state and select its visual scene; special scenes retain their current ID.
PickC2Scene:
    call BuildC2Scene
    ld a, [$c8e8]
    cp $ff
    jr nz, jr_003_420f

    ld a, [wSceneId]
    cp $17
    jr z, jr_003_4203

    cp $19
    jr nz, jr_003_420f

jr_003_4203:
    call Call_003_68cf
    jr nz, jr_003_420f

    ld a, $a8
    call Call_000_275d
    jr jr_003_4235

jr_003_420f:
    ld a, [wRoomId]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $4315
    add hl, de
    ld a, [hl+]
    ld [wRoomDataPtr], a
    ld a, [hl]
    ld [wRoomDataPtr+1], a
    ld a, [wSceneVariant]
    ld e, a
    ld d, $00
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    ld [wSceneId], a

jr_003_4235:
    ret


; Build the scene-list offset and map patch list from room state records.
BuildC2Scene:
Call_003_4236:
    call ReadC2Room
    ld b, $09
    ld a, $fe
    ld hl, wPatchList

jr_003_4240:
    ld [hl+], a
    dec b
    jr nz, jr_003_4240

    xor a
    ld [wSceneVariant], a
    ld bc, $0000

Jump_003_424b:
jr_003_424b:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    call GroupC2Patch
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    ld [wPatchId], a
    cp $fe
    ret z

    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    ld a, [hl]
    push bc
    call ReadStateBit
    pop bc
    ld a, [wStateResult]
    and $01
    jr z, jr_003_4294

    ld a, [wPatchId]
    inc a
    ld [wPatchId], a
    ld a, [wSceneVariant]
    ld hl, $19a9
    add hl, bc
    add [hl]
    ld [wSceneVariant], a

jr_003_4294:
    ld a, [wPatchId]
    ld hl, wPatchList
    add hl, bc
    ld [hl], a
    call NextC2State
    inc c
    jr jr_003_424b

    ret


; Combine adjacent records sharing a patch base; grouped records bypass the single-bit path.
GroupC2Patch:
Call_003_42a3:
    push hl
    push de
    push bc
    xor a
    ld [wPatchBits], a
    ld de, $0000

jr_003_42ad:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    ld a, [hl]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr z, jr_003_42cc

    ld a, [wPatchBits]
    ld hl, $19a9
    add hl, de
    add [hl]
    ld [wPatchBits], a

jr_003_42cc:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp $ff
    jr z, jr_003_42f1

    ld a, [hl+]
    cp $fe
    jr z, jr_003_42f1

    ld [wPatchBase], a
    inc hl
    inc hl
    inc hl
    cp [hl]
    jr nz, jr_003_42f1

    inc e
    call NextC2State
    jr jr_003_42ad

jr_003_42f1:
    ld a, e
    cp $00
    jr nz, jr_003_42fd

    ld [wPatchBits], a
    pop bc
    pop de
    pop hl
    ret


jr_003_42fd:
    call NextC2State
    ld a, [wPatchBase]
    ld c, a
    ld a, [wPatchBits]
    add c
    ld hl, wPatchList
    pop bc
    add hl, bc
    ld [hl], a
    inc c
    pop de
    pop hl
    ; Discard this call's return address and resume the outer record loop.
    pop af
    jp Jump_003_424b
