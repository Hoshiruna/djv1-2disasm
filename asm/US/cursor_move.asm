
; Move one candidate axis by two pixels from the current cursor; left/up stop at zero, right/down keep byte wrap.
StepCursorFine:


Call_001_5f91:
    ld a, [wJoyHeld]
    bit 4, a
    jr nz, jr_001_5fb8

    bit 5, a
    jr nz, jr_001_5fbf

    bit 7, a
    jr nz, jr_001_5fb1

    bit 6, a
    ret z

    ld a, [wCursorY]
    cp $00
    ret z

    dec a
    jr z, jr_001_5fad

    dec a

jr_001_5fad:
    ld [wInputY], a
    ret


jr_001_5fb1:
    ld a, [wCursorY]
    inc a
    inc a
    jr jr_001_5fad

jr_001_5fb8:
    ld a, [wCursorX]
    inc a
    inc a
    jr jr_001_5fc9

jr_001_5fbf:
    ld a, [wCursorX]
    cp $00
    ret z

    dec a
    jr z, jr_001_5fc9

    dec a

jr_001_5fc9:
    ld [wInputX], a
    ret

; Move one candidate axis by eight pixels; only the right path rejects a result >= $a0.
StepCursorGrid:


Call_001_5fcd:
    ld a, [wJoyHeld]
    bit 4, a
    jr nz, jr_001_5fe1

    bit 5, a
    jr nz, jr_001_5fed

    bit 7, a
    jr nz, jr_001_5fff

    bit 6, a
    jr nz, jr_001_5ff6

    ret


jr_001_5fe1:
    ld a, [wCursorX]
    add $08
    cp $a0
    ret nc

    ld [wInputX], a
    ret


jr_001_5fed:
    ld a, [wCursorX]
    sub $08
    ld [wInputX], a
    ret


jr_001_5ff6:
    ld a, [wCursorY]
    sub $08
    ld [wInputY], a
    ret


jr_001_5fff:
    ld a, [wCursorY]
    add $08
    ld [wInputY], a
    ret

; Update scroll for the current selection, then fall through to DrawCursorRaw.
DrawCursor:


Call_001_6008:
    call ScrollCursor

; Draw sprite $80 at cursor X minus 5 and cursor Y minus the current sprite scroll.
DrawCursorRaw:

Call_001_600b:
    ld a, [wCursorX]
    sub $05
    ldh [hSpriteX], a
    push bc
    ld a, [wSpriteScrollY]
    ld b, a
    ld a, [wCursorY]
    sub b
    ldh [hSpriteY], a
    pop bc
    ld a, $80
    jp DrawSprite

; Copy the candidate X/Y coordinates to the current cursor position.
CommitCursor:


Call_001_6023:
    ld a, [wInputX]
    ld [wCursorX], a
    ld a, [wInputY]
    ld [wCursorY], a
    ret

; Use direction links for normal selections or coordinate checks for special selections; keep the original page shortcuts.
MoveCursor:


Jump_001_6030:
    ld a, [wInputSel]
    cp $17
    jr z, jr_001_6073

    cp $15
    jr nc, jr_001_60a2

    ld a, [wJoyHeld]
    swap a
    and $0f
    ld e, a
    ld d, $00
    ld hl, CursorDirs
    add hl, de
    ld a, [hl]
    cp $04
    ret z

    ld [wCursorDir], a
    ld e, a
    ld a, [wInputSel]
    add a
    add a
    or e
    ld e, a
    ld d, $00
    ld hl, CursorLinks
    add hl, de
    ld a, [hl]
    cp $18
    jp z, $4bb8

    cp $19
    jp z, Jump_001_4bbc

    cp $ff
    ret z

    ld [wInputSel], a
    call SnapCursor
    ret


jr_001_6073:
    call StepCursorGrid
    ld a, [wInputX]
    cp $78
    jr c, jr_001_609a

    ld a, [wInputY]
    cp $30
    jr c, jr_001_608b

    cp $58
    ret c

    ld a, $08
    jr jr_001_609c

jr_001_608b:
    ld a, [wInputX]
    cp $90
    jr c, jr_001_6096

    ld a, $0a
    jr jr_001_609c

jr_001_6096:
    ld a, $09
    jr jr_001_609c

jr_001_609a:
    ld a, $15

jr_001_609c:
    ld [wInputSel], a
    jp SnapCursor


jr_001_60a2:
    call StepCursorFine
    ld a, [wInputX]
    cp $70
    jr nc, jr_001_60d8

    ld a, [wInputY]
    cp $70
    ret c

    ld a, [wInputX]
    srl a
    srl a
    srl a
    ld e, a
    ld d, $00
    ld hl, CursorHitX
    add hl, de
    ld a, [hl]
    ld [wInputSel], a
    jp SnapCursor

CursorHitX:
    db $00, $00, $00, $02, $02, $04, $04, $01, $01, $01, $05, $05, $05, $07, $07

jr_001_60d8:
    ld a, [wInputY]
    srl a
    srl a
    srl a
    ld e, a
    ld d, $00
    ld hl, CursorHitY
    add hl, de
    ld a, [hl]
    ld [wInputSel], a
    call SnapCursor
    ret

CursorHitY:
    db $09, $09, $09, $09, $09, $17, $17, $17, $17, $17, $17, $08, $08, $08, $08, $08

; Copy the selected coordinate pair to the candidate position.
SnapCursor:

    ld a, [wInputSel]

    add a
    ld e, a
    ld d, $00
    ld hl, CursorPos
    add hl, de
    ld a, [hl+]
    ld [wInputX], a
    ld a, [hl]
    ld [wInputY], a
    ret

CursorDirs:
    db $04, $00, $01, $04, $03, $04, $04, $04, $02, $04, $04, $04, $04, $04, $04, $04
