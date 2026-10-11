
; Show the original regional prompt rows, submit them, and wait thirty ticks.
ShowBJPause:


Call_029_6a34:
    xor a
    ld [wTextX], a
    ld a, $0d
    ld [wTextY], a
    ld a, $20
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue
    ld a, $1e
    call WaitTicks
    ret
