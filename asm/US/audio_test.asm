
; Load the test UI, display selection one through eighteen, and poll direction/A/B presses to change selection, play, or stop; the original loop has no exit input.
AudioTest:
    call RequestTimer
    call DisableLcd
    call Call_000_0a00
    ld a, $06
    call ReadUiMap
    ld a, $02
    call StageUiObj
    call StopTimer
    call RestoreLcd
    call BlankOam
    call FadeIn
    xor a
    ld [wTestIndex], a

jr_002_6409:
    ld c, $00
    ld a, [wTestIndex]
    inc a

jr_002_640f:
    cp $0a
    jr c, jr_002_6418

    sub $0a
    inc c
    jr jr_002_640f

jr_002_6418:
    ld [wTestDigit], a
    ld a, c
    ld [wTestTens], a
    ld hl, TestMapAddrs
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [wTestTens]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, TestDigitPtrs
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call QueueMapRect
    ld hl, TestMapAddrs+2
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [wTestDigit]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, TestDigitPtrs
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call QueueMapRect
    call SubmitMapQueue
    ld a, $10
    call WaitTicks

jr_002_6455:
    call PollJoy
    ld a, [wJoyPress]
    bit 6, a
    jr z, jr_002_646c

    ld a, [wTestIndex]
    cp $00
    jr z, jr_002_6455

    dec a
    ld [wTestIndex], a
    jr jr_002_6409

jr_002_646c:
    bit 7, a
    jr z, jr_002_647d

    ld a, [wTestIndex]
    cp $11
    jr z, jr_002_6455

    inc a
    ld [wTestIndex], a
    jr jr_002_6409

jr_002_647d:
    bit 0, a
    jr z, jr_002_649b

    ld a, [wTestIndex]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, TestAudioPairs
    add hl, de
    ld a, [hl+]
    ld [wCaseId], a
    ld a, [hl]

jr_002_6491:
    call PlayAudio
    ld a, $10
    call WaitTicks
    jr jr_002_6455

jr_002_649b:
    bit 1, a
    jr z, jr_002_6455

    xor a
    jr jr_002_6491

    ret
