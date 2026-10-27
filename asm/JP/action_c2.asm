
; Keep the regional take-action list limit; resolve the action code, then use the fallback or start its script.
RunC2Action:


Call_000_3a79:
    ld a, [wCaseId]
    cp $00
    jr z, C2ActionLookup

    ld a, [wSelAction]
    cp SelActionTake
    jr nz, C2ActionLookup

    ld a, [wListMax]
    cp $0b
    jr c, C2ActionLookup

    ld a, $93
    call ShowMsg1
    ret


; Resolve the Case II action code after the regional capacity gate.
C2ActionLookup:
jr_000_3a94:
    push af
    ld a, $03
    call PushRomBank

Jump_000_3a9a:
    pop af
    call PickC2Action
    call PopRomBank
    ld a, [wActionCode]
    cp $ff
    jr nz, StartC2Script

    push af
    ld a, $03
    call PushRomBank
    pop af
    call FallbackC2
    call PopRomBank
    ret

; Select the first operation type bank, resolve value and action-code pointers, then enter the script loop.
StartC2Script:


Call_000_3ab6:
jr_000_3ab6:
    ld a, [wItemType]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, C2ScriptTypes+2
    add hl, bc
    ld a, [hl-]
    push hl
    call PushRomBank
    pop hl
    ld b, [hl]
    dec hl
    ld c, [hl]
    ld a, [wItemId]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [wActionCode]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, c
    ld [wScriptPtr], a
    ld a, b
    ld [wScriptPtr+1], a

; Read opcodes through wScriptPtr until $ff; dispatch each opcode, then run completion and restore one bank.
RunBankScript:

Jump_000_3aea:
jr_000_3aea:
    call ReadArg
    cp $ff
    jr nz, C2ActionDispatchOpcode

; End the action directly through mode-dependent UI cleanup, then restore its bank.
EndC2ScriptAction:
    call ClearTextUI
    jp PopRomBank


; Dispatch a nonterminal Case II opcode and continue the script loop.
C2ActionDispatchOpcode:
jr_000_3af7:
    call DispatchC2Op
    jr RunBankScript
