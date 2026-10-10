
; Select a case-one UI text pointer by A, set the text origin and height, and run the normal text loop.
ShowUiText:


Call_001_6eae:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C1ListTexts
    add hl, bc
    ld a, [hl+]
    ld [wTextPtr], a
    ld a, [hl]
    ld [wTextPtr+1], a
    xor a
    ld [wTextOriginX], a
    ld [wTextOriginY], a
    ld a, $10
    ld [wTextHeight], a
    call SetTextMode1
    call DrawRoomObjs
    call SubmitOam
    call ReadTextLoop
    ret
