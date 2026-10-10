
; Submit maps, draw objects, and poll until A is released.
WaitTextRelease:

Jump_000_10e4:
jr_000_10e4:
    call SubmitMapQueue

jr_000_10e7:
    call SubmitMapQueue
    call DrawRoomObjs
    call SubmitOam

Jump_000_10f0:
    call PollJoy
    ld a, [wJoyHeld]
    bit 0, a
    jr nz, jr_000_10e7

    ret


Jump_000_10fb:
jr_000_10fb:
    ld a, [wTextMode]
    bit 1, a
    call z, WaitTextPage
