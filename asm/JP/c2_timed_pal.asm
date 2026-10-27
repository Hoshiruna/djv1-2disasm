
; For one of seven rooms, store its timed palette and clear the result; for other rooms, set the result.
FindC2TimedPal:


Call_003_58e9:
    ld bc, C2TimedRooms

; Start searching the seven timed-palette rooms.
C2TimedPalStartSearch:
jr_003_58ec:
    ld a, [wRoomId]
    ld e, a
    ld hl, $0000

; Compare the current room with the next timed-palette entry.
C2TimedPalNextRoom:
jr_003_58f3:
    ld a, [bc]
    cp e
    jr z, C2TimedPalFound

    inc bc
    inc l
    ld a, $07
    cp l
    jr nz, C2TimedPalNextRoom

    jp SetResult


; Store the palette for the matching timed room.
C2TimedPalFound:
jr_003_5901:
    call ClearResult
    ld bc, C2TimedPals
    add hl, bc
    ld a, [hl]
    ld [wC2TimedPal], a
    ret

C2TimedRooms:
    db RoomJoeOffice, RoomJoeRearHallway, RoomJoeBar, RoomJoeCellar, RoomJoeChamber, RoomJoeCasino, RoomJoeUpstairsHallway

C2TimedPals:
    db $47, $4a, $43, $44, $45, $46, $48
