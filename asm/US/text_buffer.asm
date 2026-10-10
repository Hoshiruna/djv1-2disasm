
; In window text mode, initialize the frame once, clear the regional buffer, and submit it.
ClearTextBuffer:


Call_000_1647:
    ld a, [wTextMode]
    and $02
    ret nz

    ld a, [wTextPageReady]
    cp $00

Call_000_1652:
    jr nz, jr_000_165c

    call InitTextFrame
    ld a, $ff
    ld [wTextPageReady], a

jr_000_165c:
    xor a
    ld [wTextCol], a
    ld [wTextRow], a
    ld hl, wTextBuf
    ld bc, $0090
    ld d, $7f

jr_000_166b:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_166b

    jr jr_000_1674

; Queue the text buffer at $9c21 and submit the map queue.
SubmitTextBuffer:

Call_000_1674:
jr_000_1674:
    ld bc, $9c21
    ld hl, wTextWidth
    call QueueTileRect
    call SubmitMapQueue
    ret

; Fill the text window top row and body with the original tile and attribute values.
InitTextFrame:


Call_000_1681:
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
