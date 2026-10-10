
; Set video request bit 4 and wait for VBlank to start the timer interrupt.
RequestTimer:


Call_000_0722:
    ld hl, hVideoFlags
    set 4, [hl]
    jp WaitFrame

; Enable VBlank, disable the timer interrupt and timer, and return the saved TIMA byte.
StopTimer:


Call_000_072a:
    ldh a, [rIE]
    or $01
    and $fb
    ldh [rIE], a
    ldh a, [rTIMA]

Call_000_0734:
    push af
    xor a
    ldh [rTAC], a
    pop af
    ret
