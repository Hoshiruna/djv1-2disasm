
; In case one, skip room $33 and play the table low nibble; in case two, honor the hold byte and preserve the return-Z that tests the earlier room comparison.
PlayRoomCue:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_68a7

    ld a, [wRoomId]
    cp $33
    ret z

    ld c, a
    ld b, $00
    ld hl, C1RoomCues
    add hl, bc
    ld a, [hl]
    and $0f
    call PlayAudio
    ret


jr_002_68a7:
    ld a, [wRoomCueHold]
    cp $00
    ret nz

    ld a, [wRoomId]
    cp $64
    jr c, jr_002_68ba

    ld a, $03
    call PlayAudio
    ret


jr_002_68ba:
    ld l, a
    ld h, $00
    ld bc, C2RoomCues
    add hl, bc
    ld a, [hl]
    ret z

    call PlayAudio
    ret
