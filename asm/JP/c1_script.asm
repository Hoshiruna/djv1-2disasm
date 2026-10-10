C1ScriptTypes:
    dw $4125
    dw $4a0a
    dw $4c83
    dw $4d62
    dw $653e
    dw $6feb

; Resolve first-slot type, value and action-code pointers, then enter the Case I script loop.
StartC1Script:
    ld a, [wItemType]
    add a
    ld c, a
    ld b, $00
    ld hl, C1ScriptTypes
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
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

; Read opcodes through wScriptPtr; on $ff run completion and restore one ROM bank.
LoopC1Script:

jr_006_4038:
    call ReadArg
    cp $ff
    jr nz, jr_006_4045

    call ClearTextUI
    jp PopRomBank


jr_006_4045:
    call DispatchC1Op
    jr jr_006_4038
