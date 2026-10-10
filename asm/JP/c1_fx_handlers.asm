
; Play audio cue zero and call the original bank-two effect at $6183.
C1FxInit:
    xor a
    call PlayAudio
    call PlayC1Slots
    ret

; Play cue $0b, display the effect object and message with the original waits, then clear the object.
C1FxObj:


    ld a, $0b
    call PlayAudio
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    call ShowC1FxMsg
    ld a, $3c
    call WaitTicks
    call ClearC1FxObj
    ret

; Play cue zero, wait sixteen ticks, play cue $20, and wait ninety ticks.
C1FxCue20:


Jump_002_6fce:
    xor a
    call PlayAudio
    ld a, $10
    call WaitTicks
    ld a, $20
    call PlayAudio
    ld a, $5a
    call WaitTicks
    ret

; Play cue zero, wait sixteen ticks, play cue $1a, and wait ninety ticks.
C1FxCue1A:


Jump_002_6fe2:
    xor a
    call PlayAudio
    ld a, $10
    call WaitTicks
    ld a, $1a
    call PlayAudio
    ld a, $5a
    call WaitTicks
    ret

; Play cue zero, wait sixteen ticks, play cue $1f, and wait one hundred eighty ticks.
C1FxCue1F:


Jump_002_6ff6:
    xor a
    call PlayAudio
    ld a, $10
    call WaitTicks
    ld a, $1f
    call PlayAudio
    ld a, $b4
    call WaitTicks
    ret

; Display the effect object, then choose text from flags $78 and $b2; only the default text branch clears the object.
C1FxFlags:


    ld a, $0b
    call PlayAudio
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    ld a, $78
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_7048

    ld a, $b2
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_703d

    ld a, $0a
    call ShowText1
    call ClearC1FxObj
    ld a, $3c
    call WaitTicks
    ret


jr_002_703d:
    ld a, $32
    call ShowText2
    ld a, $3c
    call WaitTicks
    ret


jr_002_7048:
    ld a, $fc
    call ShowText2
    ld a, $3c
    call WaitTicks
    ret

; Retain the second effect-object/message sequence with cue $0b and its original waits.
C1FxObjAlt:


    ld a, $0b
    call PlayAudio
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    call ShowC1FxMsg
    ld a, $3c
    call WaitTicks
    call ClearC1FxObj

; Return immediately; this entry also ends the preceding object effect.
C1FxNone:
    ret

; Show the effect object and message, switch to scene $91, repeat the object, show text $dd, and call the original continuation.
C1FxFinal:


Call_002_706c:
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    call ShowC1FxMsg
    ld a, $3c
    call WaitTicks
    call ClearC1FxObj
    ld a, $91
    ld [wSceneId], a
    ld a, $06
    ld [wSceneFx], a
    call Call_000_0bab
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    ld a, $dd
    call ShowText2
    ld a, $78
    call WaitTicks
    call C1AfterFxCall
    ret
