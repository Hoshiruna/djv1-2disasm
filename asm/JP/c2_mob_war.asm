
; At sprite position $31, zero, play mob-war animation $67 once and $68 eight times.
PlayMobWar:
PlayC2FinalAnim:

Call_003_58b6:
    ld a, $31
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    ld a, AnimWarStart
    call PlayBankAnim
    ld c, $08

; Play the next repeated mob-war animation frame.
MobWarNextFrame:
jr_003_58c5:
    ld a, $31
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    push bc
    ld a, AnimWarLoop
    call PlayBankAnim
    pop bc
    dec c
    jr nz, MobWarNextFrame

    ret
