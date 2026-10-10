
; Keep the regional action-4 list limit; resolve the action code, then use the fallback or start its script.
RunC2Action:


Call_000_3a79:
    ld a, [wCaseId]
    cp $00
    jr z, jr_000_3a94

    ld a, [wSelAction]
    cp $04
    jr nz, jr_000_3a94

    ld a, [wListMax]
    cp $0b
    jr c, jr_000_3a94

    ld a, $93
    call ShowMsg1
    ret


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
    jr nz, jr_000_3ab6

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
    jr nz, jr_000_3af7

    call Call_000_1119
    jp PopRomBank


jr_000_3af7:
    call DispatchC2Op
    jr jr_000_3aea
