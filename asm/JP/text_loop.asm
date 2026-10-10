
; Call the original normal-mode text start routine.
ShowTextMsg:


Call_000_10a9:
    call StartTextMsg
    ret

; Select text mode two and enter the regional text loop.
Mode2Text:


Call_000_10ad:
    call SetTextMode2
    jr jr_000_10b8

; Select text mode one, initialize the regional text buffer, and enter the loop.
StartTextMsg:

Call_000_10b2:
    call SetTextMode1
    call InitTextBuffer

; Read and handle regional text codes, preserving the original end and wait controls.
ReadTextLoop:

Call_000_10b8:
Jump_000_10b8:
jr_000_10b8:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld [$c660], a
    ld a, l
    ld [wTextPtr], a
    ld a, h
    ld [wTextPtr+1], a
    ld a, [hl]
    ld [$c661], a
    ld a, [$c660]
    cp $ff
    jr z, jr_000_10fb

    cp $0f
    jr z, jr_000_10e4

    cp $30
    jr c, jr_000_1137

    call DrawTextGlyph
    jr jr_000_10b8
