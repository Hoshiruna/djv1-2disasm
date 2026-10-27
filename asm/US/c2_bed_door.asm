
; In the first-floor hallway, close the bedroom door on timer step two, play cue $12, and clear state bit one.
StepC2BedDoor:
StepC2Room02:

Call_003_5f19:
    ld a, [wRoomId]
    cp RoomVegasHall1
    ret nz

    ld a, [wC2BedTick]
    inc a
    ld [wC2BedTick], a
    cp $02
    ret nz

    ld a, $12
    call PlayAudio
    ld a, $03
    call ShowMsg1 ; Message Text14Message03: A DRAFT FROM / SOMEWHERE SHUTS / THE BEDROOM DOOR / WITH A SLAM.[END]
    ld a, C2StateVegasBedroomDoorOpen
    call ClearStateBit
    ret
