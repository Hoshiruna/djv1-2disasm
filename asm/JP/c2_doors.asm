
; Match one of twelve room/state pairs; if its state is set, advance the door timer and clear that state on step three.
StepC2Doors:
StepC2StateTimer:


Call_003_5ec1:
    ld hl, C2TimerRooms
    ld a, [wRoomId]
    ld e, a
    ld c, $0c

; Compare the next masked room ID in the twelve-entry timer table.
C2DoorFindRoom:
jr_003_5eca:
    ld a, [hl+]
    and $7f
    cp e
    jr z, C2DoorMatchedRoom

    dec c
    jr nz, C2DoorFindRoom

    ret


; Read the matching state bit and advance the door timer when it is set.
C2DoorMatchedRoom:
jr_003_5ed4:
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
    call ShowMsg1 ; Message Text14Message66: エレべータの ドアが しまった。[END]
    ret


; Clear the matched state bit for a room entry marked with bit seven.
C2DoorClearBit:
jr_003_5efd:
    ld bc, $000c
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    ret

; Room low seven bits select the paired state ID; bit seven selects ClearStateBit.
C2TimerRooms:
    db RoomVegasHall1, RoomVegasLift1, RoomVegasLobby + $80, RoomVegasHall2, RoomVegasLift2, RoomVegasHall3, RoomVegasLift3, RoomVegasHamper + $80, RoomVegasHall4, RoomVegasLift4, RoomVegasVentiniOffice + $80, RoomVegasMaloneOffice + $80
C2TimerStates:
    db C2StateLift1DoorOpen, C2StateLift1DoorOpen, C2StateLift1DoorOpen, C2StateLift2DoorOpen
    db C2StateLift2DoorOpen, C2StateLift3DoorOpen, C2StateLift3DoorOpen, C2StateLift3DoorOpen
    db C2StateLift4DoorOpen, C2StateLift4DoorOpen, C2StateLift4DoorOpen, C2StateLift4DoorOpen
