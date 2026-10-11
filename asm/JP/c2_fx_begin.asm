
; Store the effect ID from A, then enter SaveC2Effect.
BeginC2Fx:


Call_003_5f3e:
Jump_003_5f3e:
    ld [wFxId], a
    jp SaveC2Effect

; Store the effect ID from A, then enter ShowC2Effect without saving again.
SwitchC2Fx:


Call_003_5f44:
Jump_003_5f44:
    ld [wFxId], a
    jp ShowC2Effect

; Play audio nine, then begin the Moose and Spike effect.
BeginGoonsFx:
BeginC2Fx6:


Call_003_5f4a:
    ld a, $09
    call PlayAudio
    ld a, FxGoons
    jp BeginC2Fx
