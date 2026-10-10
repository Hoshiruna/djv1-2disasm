
; Wait twenty frames, then up to thirty more while A or B is held; restore the saved press byte.
DelayTextInput:
    call SubmitMapQueue
    ld d, $14

jr_000_16a4:
    call WaitFrame
    dec d
    jr nz, jr_000_16a4

    ld a, [wJoyPress]
    push af
    ld d, $1e

jr_000_16b0:
    push de
    call WaitFrame
    call PollJoy
    pop de
    dec d
    jr z, jr_000_16c6

    ld a, [wJoyHeld]
    bit 0, a
    jr nz, jr_000_16b0

    bit 1, a
    jr nz, jr_000_16b0

jr_000_16c6:
    pop af
    ld [wJoyPress], a
    ret

; Update objects and wait animation until A is pressed, play the case cue, then wait for A release.
WaitTextConfirm:


Call_000_16cb:
    call SubmitMapQueue

jr_000_16ce:
    call StepTextWait
    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jr z, jr_000_16ce

    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_16e6

    ld a, $31
    jr jr_000_16e8

jr_000_16e6:
    ld a, $18

jr_000_16e8:
    call PlayAudio

jr_000_16eb:
    call StepTextWait
    call PollJoy
    ld a, [wJoyHeld]
    bit 0, a
    jr nz, jr_000_16eb

    xor a
    ld [wWaitFrame], a
    ld [wWaitTick], a

; Draw room objects and submit the OAM buffer.
RefreshObjOam:

Call_000_16ff:
jr_000_16ff:
    call DrawRoomObjs
    call SubmitOam
    ret

; Call the bank-three update and bank-two wait animation, then draw and submit room objects.
StepTextWait:


Call_000_1706:
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

Call_000_1720:
    jr jr_000_16ff
