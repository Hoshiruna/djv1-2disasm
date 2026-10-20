
; In case one, skip room $33 and play the table low nibble; in case two, honor the hold byte and preserve the return-Z that tests the earlier room comparison.
PlayRoomCue:
    ld a, [wCaseId]
    cp $00
    jr nz, RoomCueCase2

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


; Respect the Case II hold byte before choosing a room cue.
RoomCueCase2:
jr_002_68a7:
    ld a, [wRoomCueHold]
    cp $00
    ret nz

    ld a, [wRoomId]
    cp $64
    jr c, RoomCueReadCase2Table

    ld a, $03
    call PlayAudio
    ret


; Read the full table byte while retaining flags from the room-$64 comparison.
RoomCueReadCase2Table:
jr_002_68ba:
    ld l, a
    ld h, $00
    ld bc, C2RoomCues
    add hl, bc
    ld a, [hl]
    ret z

    call PlayAudio
    ret
