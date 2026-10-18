
; Load the test UI, display selection one through eighteen, and poll direction/A/B presses to change selection, play, or stop; the original loop has no exit input.
AudioTest:
    call RequestTimer
    call DisableLcd
    call LoadAuxGfx
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

; Convert the current test index to one-based decimal digits.
AudioTestDrawSelection:
jr_002_6409:
    ld c, $00
    ld a, [wTestIndex]
    inc a

; Subtract ten until the displayed digit is below ten.
AudioTestDivideByTen:
jr_002_640f:
    cp $0a
    jr c, AudioTestQueueDigits

    sub $0a
    inc c
    jr AudioTestDivideByTen

; Queue both decimal digit tiles and wait before polling.
AudioTestQueueDigits:
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

; Poll for direction, play, or stop input.
AudioTestPollInput:
jr_002_6455:
    call PollJoy
    ld a, [wJoyPress]
    bit 6, a
    jr z, AudioTestMoveDown

    ld a, [wTestIndex]
    cp $00
    jr z, AudioTestPollInput

    dec a
    ld [wTestIndex], a
    jr AudioTestDrawSelection

; Increase the test index unless it is already at the last entry.
AudioTestMoveDown:
jr_002_646c:
    bit 7, a
    jr z, AudioTestCheckPlay

    ld a, [wTestIndex]
    cp $11
    jr z, AudioTestPollInput

    inc a
    ld [wTestIndex], a
    jr AudioTestDrawSelection

; Check the play button and read the selected audio pair.
AudioTestCheckPlay:
jr_002_647d:
    bit 0, a
    jr z, AudioTestCheckStop

    ld a, [wTestIndex]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, TestAudioPairs
    add hl, de
    ld a, [hl+]
    ld [wCaseId], a
    ld a, [hl]

; Send the selected or zero audio request and resume polling.
AudioTestPlayRequest:
jr_002_6491:
    call PlayAudio
    ld a, $10
    call WaitTicks
    jr AudioTestPollInput

; Check the stop button and send request zero when pressed.
AudioTestCheckStop:
jr_002_649b:
    bit 1, a
    jr z, AudioTestPollInput

    xor a
    jr AudioTestPlayRequest

    ret
