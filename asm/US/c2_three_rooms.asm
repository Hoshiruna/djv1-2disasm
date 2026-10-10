
; With flag $84 clear in rooms $46/$47/$48, increment counter four; from nine onward retain the flag-$82 and room/state branches.
StepC2ThreeRooms:


Call_003_5d07:
    ld a, $84
    call ReadObjFlag
    ret nz

    ld a, [wRoomId]
    cp $46
    jr z, jr_003_5d1b

    cp $47
    jr z, jr_003_5d1b

    cp $48
    ret nz

jr_003_5d1b:
    ld a, [wC2Counters+4]
    inc a
    ld [wC2Counters+4], a
    cp $09
    ret c

    ld a, $82
    call ReadObjFlag
    jr nz, jr_003_5d69

    call ResetObjScroll
    call PlayCue16Twice
    ld a, $c1
    call ShowMsg2
    call BeginC2Fx6
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $c2
    call ShowMsg2
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    ld a, $11
    call SwitchC2Fx
    ld a, $c4
    call ShowMsg2
    call SetC2Event1
    jp PlayExitEffect


jr_003_5d69:
    ld a, [wRoomId]
    cp $46
    jr z, jr_003_5dc0

    call ResetObjScroll
    call PlayCue16Twice
    call ScriptHoldText
    ld a, $c1
    call ShowMsg2
    ld a, $c5
    call ShowMsg2
    call ResumeTextUI
    call BeginC2Fx6
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $cb
    call ShowMsg2
    ld a, $cc
    call ShowMsg2
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    ld a, $11
    call SwitchC2Fx
    ld a, $b0
    call ShowMsg2
    call ResumeTextUI
    call SetC2Event1
    jp PlayExitEffect


jr_003_5dc0:
    ld a, $15
    call ReadStateBit
    jr nz, jr_003_5e0c

    call ResetObjScroll
    call PlayCue16Twice
    call ScriptHoldText
    ld a, $c1
    call ShowMsg2
    ld a, $b6
    call ShowMsg2
    ld a, $b7
    call ShowMsg2
    call ResumeTextUI
    call BeginC2Fx6
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $f2
    call ShowMsg2
    ld a, $cc
    call ShowMsg2
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    jp PlayExitEffect


jr_003_5e0c:
    call ResetObjScroll
    call PlayCue16Twice
    call ScriptHoldText
    ld a, $c1
    call ShowMsg2
    ld a, $09
    call PlayAudio
    ld a, $b6
    call ShowMsg2
    ld a, $a1
    call ShowMsg2
    call ResumeTextUI
    ld a, $84
    call SetObjFlag
    jp RoomCueCall

; Set bit one in the case-two event bitmap.
SetC2Event1:


Call_003_5e34:
    ld a, [wC2EventBits]
    or $02
    ld [wC2EventBits], a
    ret
