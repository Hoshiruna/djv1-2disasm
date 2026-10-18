
; Match one of twelve room/state pairs; if its state is set, advance the door timer and clear that state on step three.
StepC2Doors:
StepC2StateTimer:


Call_003_5ebc:
    ld hl, C2TimerRooms
    ld a, [wRoomId]
    ld e, a
    ld c, $0c

; Compare the next masked room ID in the twelve-entry timer table.
C2DoorFindRoom:
jr_003_5ec5:
    ld a, [hl+]
    and $7f
    cp e
    jr z, C2DoorMatchedRoom

    dec c
    jr nz, C2DoorFindRoom

    ret


; Read the matching state bit and advance the door timer when it is set.
C2DoorMatchedRoom:
jr_003_5ecf:
    ld bc, $000b
    add hl, bc
    ld a, [hl]
    call ReadStateBit
    ret z

    ld a, [wC2DoorTick]
    inc a
    ld [wC2DoorTick], a
    cp $03
    ret nz

    ld bc, $fff4
    add hl, bc
    bit 7, [hl]
    jr nz, C2DoorClearBit

    ld bc, $000c
    add hl, bc
    ld a, [hl]
    call ClearStateView
    ld a, $66
    call ShowMsg1
    ret


; Clear the matched state bit for a room entry marked with bit seven.
C2DoorClearBit:
jr_003_5ef8:
    ld bc, $000c
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    ret

; Room low seven bits select the paired state ID; bit seven selects ClearStateBit.
C2TimerRooms:
    db $02, RoomVegasLift1, $83, $0b, RoomVegasLift2, $0c, RoomVegasLift3, $8d, $0e, RoomVegasLift4, $8f, $90
C2TimerStates:
    db $04, $04, $04, $09, $09, $0c, $0c, $0c, $0e, $0e, $0e, $0e
