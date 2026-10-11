
; Show the original regional prompt rows, submit them, and wait thirty ticks.
ShowBJPause:


Call_029_6a36:
    ld a, $11
    ld [wListMark], a
    ld a, $00
    ld [wTextX], a
    ld a, $0d
    ld [wTextY], a
    call ShowListText
    call SubmitMapQueue
    ld a, $00
    ld [wTextX], a
    ld a, $0f
    ld [wTextY], a
    call ShowListText
    call SubmitMapQueue
    ld a, $00
    ld [wTextX], a
    ld a, $11
    ld [wTextY], a
    call ShowListText
    call SubmitMapQueue
    ld a, $1e
    call WaitTicks
    ret
