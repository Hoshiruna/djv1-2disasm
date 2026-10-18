
; Read the current passenger-room effect in bank three, then enter the shared effect selector.
TrainRoomEffect:
RoomEffect:


    push af

Call_000_2fab:
    ld a, $03
    call PushRomBank
    pop af
    call TrainRoomFx
    call PopRomBank
    jr EffectValue

; Reset object scrolling, read one effect index, and enter the case-specific effect path.
ScriptEffect:

    call ResetObjScroll
    call ReadArg

; Store effect index A and dispatch to the case-one or case-two effect bank.
EffectValue:

jr_000_2fbf:
    ld [wFxId], a
    ld a, [wCaseId]
    cp $00
    jr nz, EffectValueCaseII

    push af
    ld a, $02
    call PushRomBank
    pop af
    call PlayC1Effect

Jump_000_2fd3:
    call PopRomBank
    ret


; Dispatch the selected effect to the Case II bank.
EffectValueCaseII:
jr_000_2fd7:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call SaveC2Effect
    call PopRomBank
    ret

; Read an effect index and show the case-two effect without saving the prior scene again.
ScriptC2Effect:


    call ReadArg
    ld [wFxId], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call ShowC2Effect

Jump_000_2ff5:
    call PopRomBank
    ret

; In case one, reset scrolling, read an index, and run the end effect; in case two, restore the saved scene effect.
FinishEffect:


Jump_000_2ff9:
    ld a, [wCaseId]
    cp $00
    jr nz, FinishEffectCaseII

Jump_000_3000:
    call ResetObjScroll
    call ReadArg
    ld [wFxId], a
    push af
    ld a, $02
    call PushRomBank
    pop af
    call FinishC1Effect
    call PopRomBank
    ret


; Restore the saved Case II scene effect.
FinishEffectCaseII:
jr_000_3017:
    push af

Call_000_3018:
    ld a, $03
    call PushRomBank
    pop af

Call_000_301e:
    call RestoreC2Effect
    call PopRomBank
    ret
