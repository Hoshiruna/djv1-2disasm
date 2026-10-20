
; Read the current passenger-room effect in bank three, then enter the shared effect selector.
TrainRoomEffect:
RoomEffect:


    push af
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

jr_000_2e6f:
    ld [wFxId], a
    ld a, [wCaseId]
    cp $00
    jr nz, EffectValueCaseII

    push af
    ld a, $02
    call PushRomBank
    pop af
    call PlayC1Effect
    call PopRomBank
    ret


; Dispatch the selected effect to the Case II bank.
EffectValueCaseII:
jr_000_2e87:
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
    call PopRomBank
    ret

; Case I reads one end-effect index; Case II reads no operand and restores the saved effect.
FinishEffect:


    ld a, [wCaseId]
    cp $00
    jr nz, FinishEffectCaseII

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
jr_000_2ec7:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call RestoreC2Effect
    call PopRomBank
    ret
