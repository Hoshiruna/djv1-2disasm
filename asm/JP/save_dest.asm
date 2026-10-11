
SaveTextOffsets:
    db $06, $24, $06, $25, $24

; Select the regional destination table, then read the destination word at DE.
PickSaveDest:

Call_002_780f:
    ld hl, SaveNumPtrs
    call PickSaveSpec

; Read the destination word at HL plus DE into BC.
ReadSaveDest:

Call_002_7815:
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ret

; Queue the original fill specification for the save panel.
ClearSavePanel:


Call_002_781a:
    ld hl, SavePanelFill
    jp QueueFillSpec

; Add the language-selected byte offset to BC while preserving DE.
ShiftSaveDest:


Call_002_7820:
    push de
    ld d, $00
    ld a, [wTextSet]
    ld e, a
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, bc
    ld c, l
    ld b, h
    pop de
    ret
