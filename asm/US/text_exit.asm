
; Submit maps, draw objects, and poll until A is released.
WaitTextRelease:


jr_000_118c:
    call SubmitMapQueue

jr_000_118f:
    call SubmitMapQueue
    call DrawRoomObjs
    call SubmitOam
    call PollJoy
    ld a, [wJoyHeld]
    bit 0, a
    jr nz, jr_000_118f

    ret


jr_000_11a3:
    ld a, [wTextMode]
    bit 1, a
    call z, WaitTextPage
