
; Load blackjack card tiles into VRAM bank one, then select VRAM bank zero.
LoadCardGfx:

    ld a, $01

Call_000_09c3:
    ldh [rVBK], a
    ld a, UiGfxIdBlackjackCardsLow
    call ReadUiGfx
    ld a, UiGfxIdBlackjackCardsHigh
    call ReadUiGfx
    ld a, $00
    ldh [rVBK], a
    ret
