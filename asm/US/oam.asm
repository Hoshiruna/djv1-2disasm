; HL = count-prefixed sprite parts; append at the current OAM entry count.
EmitSprite:


Jump_000_04b3:
    push bc
    push de

Jump_000_04b5:
    ldh a, [hOamCount]
    cp $28
    jr z, jr_000_04ff

    ldh a, [hOamCount]
    sla a
    sla a
    add $00

Jump_000_04c3:
    ld c, a

Call_000_04c4:
    ld a, $00
    adc $c0
    ld b, a
    ldh a, [hSpriteY]
    add $10
    ld e, a

Call_000_04ce:
    ldh a, [hSpriteX]
    add $08
    ld d, a
    ld a, [hl+]

jr_000_04d4:
    ldh [hSpriteLeft], a
    ld a, [hl+]
    add e
    ld [bc], a
    cp $a8
    jr nc, jr_000_0502

    inc bc
    ld a, [hl+]
    add d

Jump_000_04e0:
    ld [bc], a
    cp $b0
    jr nc, jr_000_0507

    ld a, [hl]
    cp $ff
    jr z, jr_000_0507

    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ldh a, [hOamCount]
    inc a
    ldh [hOamCount], a
    cp $28
    jr z, jr_000_04ff

jr_000_04fa:
    ldh a, [hSpriteLeft]
    dec a
    jr nz, jr_000_04d4

Call_000_04ff:
jr_000_04ff:
    pop de

Call_000_0500:
    pop bc

Call_000_0501:
    ret


jr_000_0502:
    inc hl
    inc hl
    inc hl

Jump_000_0505:
    jr jr_000_04fa

Jump_000_0507:
jr_000_0507:
    inc hl
    inc hl
    dec bc
    jr jr_000_04fa
