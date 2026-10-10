
; In window text mode, initialize the frame once, clear the regional buffer, and submit it.
ClearTextBuffer:


Call_000_15d2:
    ld a, [wTextMode]
    and $02
    ret nz

    ld a, [wTextPageReady]
    cp $00
    jr nz, jr_000_15e7

    call InitTextFrame
    ld a, $ff
    ld [wTextPageReady], a

jr_000_15e7:
    xor a
    ld [wTextCol], a
    ld [wTextRow], a
    ld hl, wTextBuf
    ld bc, $0120
    ld d, $7f

jr_000_15f6:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_15f6

    jr jr_000_15ff

; Queue the text buffer at $9c21 and submit the map queue.
SubmitTextBuffer:

Call_000_15ff:
jr_000_15ff:
    ld bc, $9c21
    ld hl, wTextWidth
    call QueueTileRect

Jump_000_1608:
    call SubmitMapQueue
    ret

; Fill the text window top row and body with the original tile and attribute values.
InitTextFrame:


Call_000_160c:
    ld hl, TextTopFill
    ld bc, $9c00
    call QueueMapFill
    ld hl, TextBodyFill
    ld bc, $9c20
    call QueueMapFill
    call SubmitMapQueue
    ret

; Width, height, tile, attribute for the window top row and body.
TextTopFill:
    db $14, $01, $77, $07
TextBodyFill:
    db $14, $09, $7f, $07
