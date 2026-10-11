
; Load UI graphics six and seven into VRAM bank one, then select VRAM bank zero.
LoadCardGfx:

    ld a, $01

Call_000_09c3:
    ldh [rVBK], a
    ld a, $06
    call ReadUiGfx
    ld a, $07
    call ReadUiGfx
    ld a, $00
    ldh [rVBK], a
    ret
