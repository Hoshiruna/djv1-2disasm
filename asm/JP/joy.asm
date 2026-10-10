
; Read directions/buttons, store held and newly pressed bits, and test the reset chord.
ReadJoy:

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ld a, [wJoyHeld]
    xor c
    and c
    ld [wJoyPress], a
    ld a, c
    ld [wJoyHeld], a
    and $0f
    cp $0f
    jp z, SoftReset

    ld a, $30
    ldh [rP1], a
    ret
