; A = sprite ID in the shared pointer table at UiSpritePtrs.
DrawUiSprite:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, UiSpritePtrs
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
    jr nz, DrawCaseSpriteUseC2Defs

    ld bc, C1SpriteDefs
    jr DrawCaseSpriteResolve

; Use the Case II sprite definition table.
DrawCaseSpriteUseC2Defs:
jr_002_5f5f:
    ld bc, C2SpriteDefs

; Resolve the sprite ID and emit its parts.
DrawCaseSpriteResolve:
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
    jr nz, DrawObjFrameUseC2Defs

    ld bc, C1SpriteDefs
    jr DrawObjFrameResolve

; Use the Case II object sprite definition table.
DrawObjFrameUseC2Defs:
jr_002_5f7c:
    ld bc, C2SpriteDefs

; Resolve the object frame before writing shadow OAM.
DrawObjFrameResolve:
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

; Read the next part and check its Y clipping limits.
; Unlike generic EmitSprite, wSpriteClip adds the hardware-Y $54 threshold.
DrawObjFrameNextPart:
jr_002_5f9f:
    ldh [hSpriteLeft], a
    ld a, [hl+]
    add e
    ld [bc], a
    cp $a8
    jr nc, DrawObjFrameSkipY

    ld a, [wSpriteClip]
    cp $00
    jr z, DrawObjFrameWritePart

    ld a, [bc]
    cp $54
    jr nc, DrawObjFrameSkipY

; Check X and tile ID, then write a visible sprite part.
DrawObjFrameWritePart:
jr_002_5fb4:
    inc bc
    ld a, [hl+]
    add d
    ld [bc], a
    cp $b0
    jr nc, DrawObjFrameSkipX

    ld a, [hl]
    cp $ff
    jr z, DrawObjFrameSkipX

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

; Decrement the remaining sprite-part count.
DrawObjFrameAdvancePart:
jr_002_5fd0:
    ldh a, [hSpriteLeft]
    dec a
    jr nz, DrawObjFrameNextPart

    ret


; Skip X, tile, and attribute bytes after Y clipping.
DrawObjFrameSkipY:
jr_002_5fd6:
    inc hl
    inc hl
    inc hl
    jr DrawObjFrameAdvancePart

; Skip tile and attribute bytes after X or tile rejection.
DrawObjFrameSkipX:
jr_002_5fdb:
    inc hl
    inc hl
    dec bc
    jr DrawObjFrameAdvancePart
