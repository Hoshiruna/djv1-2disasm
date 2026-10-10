
; Store the effect ID from A, then enter SaveC2Effect.
BeginC2Fx:


Call_003_5f39:
Jump_003_5f39:
    ld [wFxId], a
    jp SaveC2Effect

; Store the effect ID from A, then enter ShowC2Effect without saving again.
SwitchC2Fx:


Call_003_5f3f:
Jump_003_5f3f:
    ld [wFxId], a
    jp ShowC2Effect

; Play audio cue nine, then begin effect six.
BeginC2Fx6:


Call_003_5f45:
    ld a, $09
    call PlayAudio
    ld a, $06
    jp BeginC2Fx
