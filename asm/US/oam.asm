; HL = count-prefixed sprite parts; append at the current OAM entry count.
EmitSprite:


Jump_000_04b3:
    push bc
    push de

Jump_000_04b5:
    ldh a, [hOamCount]
    cp $28
    jr z, EmitSpriteDone

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

; Process the next count-prefixed sprite part.
; Rejected parts can touch pending Y/X bytes without increasing hOamCount.
EmitSpriteNextPart:
jr_000_04d4:
    ldh [hSpriteLeft], a
    ld a, [hl+]
    add e
    ld [bc], a
    cp $a8
    jr nc, EmitSpriteSkipVertical

    inc bc
    ld a, [hl+]
    add d

Jump_000_04e0:
    ld [bc], a
    cp $b0
    jr nc, EmitSpriteSkipCurrent

    ld a, [hl]
    cp $ff
    jr z, EmitSpriteSkipCurrent

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
    jr z, EmitSpriteDone

; Advance the sprite-part counter after drawing or skipping.
EmitSpriteAdvancePart:
jr_000_04fa:
    ldh a, [hSpriteLeft]
    dec a
    jr nz, EmitSpriteNextPart

Call_000_04ff:
; Restore registers and return from sprite emission.
EmitSpriteDone:
jr_000_04ff:
    pop de

Call_000_0500:
    pop bc

Call_000_0501:
    ret


; Skip the remainder of a part outside the vertical display range.
EmitSpriteSkipVertical:
jr_000_0502:
    inc hl
    inc hl
    inc hl

Jump_000_0505:
    jr EmitSpriteAdvancePart

Jump_000_0507:
; Skip the current part after a horizontal or tile check.
EmitSpriteSkipCurrent:
jr_000_0507:
    inc hl
    inc hl
    dec bc
    jr EmitSpriteAdvancePart
