; A = sprite ID in the shared pointer table at $400a.
DrawUiSprite:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $400a
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    jp EmitSprite
; A = sprite ID; resolve the case-specific definition and emit its parts.
DrawCaseSprite:


    ld l, a
    ld h, $00
    add hl, hl
    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_5f5f

    ld bc, $401b
    jr jr_002_5f62

jr_002_5f5f:
    ld bc, Case2SpriteDefinitions

jr_002_5f62:
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp EmitSprite
; A = object ID; emit its first frame, with the optional Y clipping limit.
DrawObjFrame:


    call PickObjFrame
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_5f7c

    ld bc, $401b
    jr jr_002_5f7f

jr_002_5f7c:
    ld bc, Case2SpriteDefinitions

jr_002_5f7f:
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [hOamCount]
    cp $28
    ret z

    ldh a, [hOamCount]
    add a
    add a
    add $00
    ld c, a
    ld a, $00
    adc $c0
    ld b, a
    ldh a, [hSpriteY]
    add $10
    ld e, a
    ldh a, [hSpriteX]
    add $08
    ld d, a
    ld a, [hl+]

jr_002_5f9f:
    ldh [hSpriteLeft], a
    ld a, [hl+]
    add e
    ld [bc], a
    cp $a8
    jr nc, jr_002_5fd6

    ld a, [wSpriteClip]
    cp $00
    jr z, jr_002_5fb4

    ld a, [bc]
    cp $54
    jr nc, jr_002_5fd6

jr_002_5fb4:
    inc bc
    ld a, [hl+]
    add d
    ld [bc], a
    cp $b0
    jr nc, jr_002_5fdb

    ld a, [hl]
    cp $ff
    jr z, jr_002_5fdb

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
    ret z

jr_002_5fd0:
    ldh a, [hSpriteLeft]
    dec a
    jr nz, jr_002_5f9f

    ret


jr_002_5fd6:
    inc hl
    inc hl
    inc hl
    jr jr_002_5fd0

jr_002_5fdb:
    inc hl
    inc hl
    dec bc
    jr jr_002_5fd0
