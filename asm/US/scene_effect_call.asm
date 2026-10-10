
; Read the case-two room effect code through bank three and enter the shared effect selector.
RoomEffect:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomCode
    call PopRomBank
    jr jr_000_2e6f

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
    jr nz, jr_000_2e87

    push af
    ld a, $02
    call PushRomBank
    pop af
    call PlayC1Effect
    call PopRomBank
    ret


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

; In case one, reset scrolling, read an index, and run the end effect; in case two, restore the saved scene effect.
FinishEffect:


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2ec7

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


jr_000_2ec7:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call RestoreC2Effect
    call PopRomBank
    ret
