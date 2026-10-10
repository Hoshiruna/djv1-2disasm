
; Consume video request bit 4, initialize timer registers, and switch IE from VBlank to timer.
StartTimer:


Call_001_4197:
    res 4, a
    ldh [hVideoFlags], a
    ld a, $80
    ldh [rTMA], a
    xor a
    ldh [rTAC], a
    ldh [rTIMA], a
    ld a, $04
    ldh [rTAC], a
    ldh a, [rIE]
    or $04
    and $fe
    ldh [rIE], a
    ret
