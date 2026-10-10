
; With flag $84 set in rooms $46 through $4a, increment counter five and run the exit sequence when it is at least $31.
StepC2Flag84Timer:


Call_003_5cb3:
    ld a, $84
    call ReadObjFlag
    ret z

    ld a, [wRoomId]
    cp $46
    ret c

    cp $4b
    ret nc

    ld a, [wC2Counters+5]
    inc a
    ld [wC2Counters+5], a
    cp $31
    ret c

    call ResetObjScroll
    call BeginC2Fx6
    ld a, $78
    call WaitTicks
    ld a, $9f
    call ShowMsg2
    call ResumeTextUI
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    ld a, [wC2EventBits]
    or $04
    ld [wC2EventBits], a
    jp PlayExitEffect
