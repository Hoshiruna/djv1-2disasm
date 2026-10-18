
; Call the original normal-mode text start routine.
ShowTextMsg:


Call_000_10a9:
    call StartTextMsg
    ret

; Select text mode two and enter the regional text loop.
Mode2Text:


Call_000_10ad:
    call SetTextMode2
    jr ReadTextLoop

; Select text mode one, initialize the regional text buffer, and enter the loop.
StartTextMsg:

Call_000_10b2:
    call SetTextMode1
    call InitTextBuffer

; Read one-byte text codes and retain the next byte without consuming it.
; Preserve the original end and wait controls.
ReadTextLoop:

Call_000_10b8:
Jump_000_10b8:
jr_000_10b8:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wTextChar], a
    ld a, l
    ld [wTextPtr], a
    ld a, h
    ld [wTextPtr+1], a
    ld a, [hl]
    ld [wTextNext], a
    ld a, [wTextChar]
    cp $ff
    jr z, jr_000_10fb

    cp $0f
    jr z, WaitTextRelease

    cp $30
    jr c, jr_000_1137

    call DrawTextGlyph
    jr ReadTextLoop
