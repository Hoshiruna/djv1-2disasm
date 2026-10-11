
; For the odd passenger room, play animation $70 eight times at sprite position $20, zero.
PlayTrainOdd:
PlayC2Anim70:


Call_003_6858:
    ld c, $08

jr_003_685a:
    ld a, $20
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    push bc
    ld a, $70
    call PlayBankAnim
    pop bc
    dec c
    jr nz, jr_003_685a

    ret

; For the even passenger room, play animation $71 eight times at sprite position $40, zero.
PlayTrainEven:
PlayC2Anim71:


Call_003_686d:
    ld c, $08

jr_003_686f:
    ld a, $40
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    push bc
    ld a, $71
    call PlayBankAnim
    pop bc
    dec c
    jr nz, jr_003_686f

    ret
