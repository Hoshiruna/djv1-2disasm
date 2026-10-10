
; Return BC with the eight-bit current room minus $1b, and a zero high byte.
C2RoomIndex:


Call_003_4d4d:
    ld a, [wRoomId]
    sub $1b
    ld c, a
    ld b, $00
    ret

; Read the current room state-bit ID.
C2RoomState:


    call C2RoomIndex
    ld hl, C2StateIds
    add hl, bc
    ld a, [hl]
    ret

; Read the current room code passed to the scene helper through $c8e9.
C2RoomCode:


    call C2RoomIndex
    ld hl, C2RoomCodes
    add hl, bc
    ld a, [hl]
    ret

; Read the destination room ID used by the fixed-bank room transition.
C2RoomNext:


    call C2RoomIndex
    ld hl, C2NextRooms
    add hl, bc
    ld a, [hl]
    ret

; Read the first additional state-bit ID for the current room.
C2RoomStateA:


    call C2RoomIndex
    ld hl, C2StateIdsA
    add hl, bc
    ld a, [hl]
    ret

; Read the second additional state-bit ID for the current room.
C2RoomStateB:


    call C2RoomIndex
    ld hl, C2StateIdsB
    add hl, bc
    ld a, [hl]
    ret

; Read the object flag ID used by the current-room flag commands.
C2RoomFlag:


    call C2RoomIndex
    ld hl, C2FlagIds
    add hl, bc
    ld a, [hl]
    ret
