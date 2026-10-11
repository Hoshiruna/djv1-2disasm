
; In room $02, close the bedroom door on timer step two, play cue $12, and clear state bit one.
StepC2BedDoor:
StepC2Room02:

Call_003_5f19:
    ld a, [wRoomId]
    cp $02
    ret nz

    ld a, [wC2BedTick]
    inc a
    ld [wC2BedTick], a
    cp $02
    ret nz

    ld a, $12
    call PlayAudio
    ld a, $03
    call ShowMsg1
    ld a, $01
    call ClearStateBit
    ret
