
; At sprite position $31, zero, play bank animation $67 once and $68 eight times.
PlayC2FinalAnim:

Call_003_58b6:
    ld a, $31
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    ld a, $67
    call PlayBankAnim
    ld c, $08

jr_003_58c5:
    ld a, $31
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    push bc
    ld a, $68
    call PlayBankAnim
    pop bc
    dec c
    jr nz, jr_003_58c5

    ret
