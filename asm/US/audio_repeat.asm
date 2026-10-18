
; Initialize E to $18 and repeat cue $10 with six-tick waits until E reaches zero.
RepeatCue10:


Call_000_307c:
    ld e, $18

; Play cue ten and wait six ticks for each remaining iteration.
RepeatCue10Loop:
jr_000_307e:
    ld a, $10
    call PlayAudio
    ld a, $06

Jump_000_3085:
    call WaitTicks
    dec e
    jr nz, RepeatCue10Loop

    ret
