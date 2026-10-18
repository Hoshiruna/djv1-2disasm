
; Wait twenty frames, then up to thirty more while A or B is held; restore the saved press byte.
DelayTextInput:
    call SubmitMapQueue
    ld d, $14

; Wait for the first twenty frames of text-input delay.
TextDelayInitialFrame:
jr_000_162f:
    call WaitFrame
    dec d
    jr nz, TextDelayInitialFrame

    ld a, [wJoyPress]
    push af
    ld d, $1e

; Wait while A or B remains held, up to thirty frames.
TextDelayHeldButtons:
jr_000_163b:
    push de
    call WaitFrame
    call PollJoy
    pop de
    dec d
    jr z, TextDelayRestorePress

    ld a, [wJoyHeld]
    bit 0, a
    jr nz, TextDelayHeldButtons

    bit 1, a
    jr nz, TextDelayHeldButtons

; Restore the saved button-press byte.
TextDelayRestorePress:
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

; Update the room and wait for an A press.
TextConfirmPollPress:
jr_000_1659:
    call StepTextWait
    call PollJoy

Call_000_165f:
    ld a, [wJoyPress]
    bit 0, a
    jr z, TextConfirmPollPress

    ld a, [wCaseId]
    cp $00
    jr nz, TextConfirmCaseIICue

    ld a, $31
    jr TextConfirmPlayCue

; Select the Case II confirmation cue.
TextConfirmCaseIICue:
jr_000_1671:
    ld a, $18

Jump_000_1673:
; Play the selected confirmation cue.
TextConfirmPlayCue:
jr_000_1673:
    call PlayAudio

; Wait for the A button to be released.
TextConfirmPollRelease:
jr_000_1676:
    call StepTextWait
    call PollJoy
    ld a, [wJoyHeld]
    bit 0, a
    jr nz, TextConfirmPollRelease

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
    call StepC2WarText
    call PopRomBank
    push af
    ld a, $02
    call PushRomBank
    pop af
    call StepWaitAnim
    call PopRomBank
    jr RefreshObjOam
