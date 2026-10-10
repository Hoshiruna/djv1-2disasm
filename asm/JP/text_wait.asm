
; Wait twenty frames, then up to thirty more while A or B is held; restore the saved press byte.
DelayTextInput:
    call SubmitMapQueue
    ld d, $14

jr_000_162f:
    call WaitFrame
    dec d
    jr nz, jr_000_162f

    ld a, [wJoyPress]
    push af
    ld d, $1e

jr_000_163b:
    push de
    call WaitFrame
    call PollJoy
    pop de
    dec d
    jr z, jr_000_1651

    ld a, [wJoyHeld]
    bit 0, a
    jr nz, jr_000_163b

    bit 1, a
    jr nz, jr_000_163b

jr_000_1651:
    pop af

Call_000_1652:
    ld [wJoyPress], a
    ret

; Update objects and wait animation until A is pressed, play the case cue, then wait for A release.
WaitTextConfirm:


Call_000_1656:
Jump_000_1656:
    call SubmitMapQueue

jr_000_1659:
    call StepTextWait
    call PollJoy

Call_000_165f:
    ld a, [wJoyPress]
    bit 0, a
    jr z, jr_000_1659

    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1671

    ld a, $31
    jr jr_000_1673

jr_000_1671:
    ld a, $18

Jump_000_1673:
jr_000_1673:
    call PlayAudio

jr_000_1676:
    call StepTextWait
    call PollJoy
    ld a, [wJoyHeld]
    bit 0, a
    jr nz, jr_000_1676

    xor a
    ld [wWaitFrame], a
    ld [wWaitTick], a

; Draw room objects and submit the OAM buffer.
RefreshObjOam:

Call_000_168a:
jr_000_168a:
    call DrawRoomObjs
    call SubmitOam
    ret

; Call the bank-three update and bank-two wait animation, then draw and submit room objects.
StepTextWait:


Call_000_1691:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2TextObj
    call PopRomBank
    push af
    ld a, $02
    call PushRomBank
    pop af
    call StepWaitAnim
    call PopRomBank
    jr jr_000_168a
