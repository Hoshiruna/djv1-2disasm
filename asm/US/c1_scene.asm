

; Update room state, then select wSceneId from the room scene list and wSceneVariant.
PickC1Scene:
    call BuildC1Scene
    ld a, [wRoomId]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $65aa
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
    ret


; Build the scene-list offset from the room records and state bits.
BuildC1Scene:
Call_001_655c:
    call ReadC1Room
    xor a
    ld [wSceneVariant], a
    ld d, a
    ld a, [wRoomId]
    ld e, a
    ld hl, $6731
    add hl, de
    ld a, [hl]
    srl a
    ld [$c867], a
    cp $00
    ret z

    ld bc, $0000

jr_001_6578:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    ld a, [hl]
    and $7f
    push bc
    call ReadStateBit
    pop bc
    ld a, [wStateResult]
    and $01
    jr z, jr_001_659d

    ld a, [wSceneVariant]
    ld d, a
    ld hl, $1859
    add hl, bc
    ld a, [hl]
    or d
    ld [wSceneVariant], a

jr_001_659d:
    call NextC1State
    inc c
    ld a, [$c867]
    ld l, a
    ld a, c
    cp l
    jr c, jr_001_6578

    ret
