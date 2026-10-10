
; Draw the indexed list label from bank one, then restore the previous ROM bank.
ShowListText:

Call_000_10d0:
    ld a, $01
    call PushRomBank
    call DrawListText
    call PopRomBank
    ret

; Select the case-specific label pointer by wListMark and draw it in text mode two.
DrawListText:


Call_000_10dc:
    ld a, [wListMark]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_10fd

Jump_000_10f0:
    ld bc, C1ListTexts
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl+]

Jump_000_10fb:
    jr jr_000_1108

jr_000_10fd:
    ld bc, C2ListTexts
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl+]

jr_000_1108:
    ld [wTextPtr], a
    ld a, [hl]
    ld [wTextPtr+1], a
    call Mode2Text
    ret
