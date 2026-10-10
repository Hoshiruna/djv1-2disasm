
; Draw the indexed list label from bank one, then restore the previous ROM bank.
ShowListText:

Call_000_107a:
    ld a, $01
    call PushRomBank
    call DrawListText
    call PopRomBank
    ret

; Select the case-specific label pointer by wListMark and draw it in text mode two.
DrawListText:


Call_000_1086:
    ld a, [wListMark]
    ld l, a
    ld h, $00
    add hl, hl

Call_000_108d:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1099

    ld bc, C1ListTexts
    jr jr_000_109c

jr_000_1099:
    ld bc, C2ListTexts

jr_000_109c:
    add hl, bc
    ld a, [hl+]
    ld [wTextPtr], a
    ld a, [hl]
    ld [wTextPtr+1], a
    call Mode2Text
    ret
