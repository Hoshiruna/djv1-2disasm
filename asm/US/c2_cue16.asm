
; Call the cue-$16 helper, then enter it again by fallthrough.
PlayCue16Twice:


Call_003_5cf9:
    call PlayCue16Wait48

; Play audio $16 and wait forty-eight ticks.
PlayCue16Wait48:

Call_003_5cfc:
    ld a, $16
    call PlayAudio
    ld a, $30
    call WaitTicks
    ret
