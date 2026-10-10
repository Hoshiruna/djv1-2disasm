
; Resolve the Case I action; use its fallback when the code is $ff, otherwise enter bank 6.
RunC1Action:


Call_000_1a37:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call PickC1Action
    call PopRomBank
    ld a, [wActionCode]
    cp $ff
    jr nz, jr_000_1a59

    push af
    ld a, $02
    call PushRomBank
    pop af
    call FallbackC1
    call PopRomBank
    ret


jr_000_1a59:
    ld a, $06
    call PushRomBank
    jp StartC1Script

; Run the original completion helper, then restore the bank through a tail jump.
EndBankAction:


Jump_000_1a61:
    call ClearTextUI
    jp PopRomBank

; Internal continuation: restore one bank, pop the saved BC, run completion, then restore the outer bank.
EndNestedAction:


Jump_000_1a67:
    call PopRomBank
    pop bc
    call ClearTextUI
    jp PopRomBank

; Case I enters the bank 6 script loop; Case II selects the first operation type bank and uses the existing script pointer.
RunAltAction:


Call_000_1a71:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1a80

    ld a, $06
    call PushRomBank
    jp LoopC1Script


jr_000_1a80:
    ld a, [wItemType]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, C2ScriptTypes+2
    add hl, bc
    ld a, [hl-]
    call PushRomBank
    jp RunBankScript
