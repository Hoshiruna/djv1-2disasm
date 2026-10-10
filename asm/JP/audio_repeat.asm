
; Initialize E to $18 and repeat cue $10 with six-tick waits until E reaches zero.
RepeatCue10:


Call_000_31cc:
    ld e, $18

jr_000_31ce:
    ld a, $10
    call PlayAudio
    ld a, $06
    call WaitTicks
    dec e
    jr nz, jr_000_31ce

    ret
