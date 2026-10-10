
; Read a little-endian destination from HL, then queue the tile rectangle.
QueueTileSpec:


Call_000_01d4:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

; BC = destination; HL = width, height, row-major tiles. Preserve AF and DE.
QueueTileRect:

Call_000_01d8:
Jump_000_01d8:
    push af
    push de
    ld a, [hl+]
    ldh [hMapWidth], a
    ld a, [hl+]
    ldh [hMapHeight], a

Jump_000_01e0:
jr_000_01e0:
    ldh a, [hMapQueueLen]
    add $a0
    ld e, a
    ld a, $00
    adc $c0
    ld d, a

jr_000_01ea:
    ldh a, [hMapWidth]
    ldh [hMapRunLeft], a

Jump_000_01ee:
    call QueueTileRow
    ldh a, [hMapHeight]
    dec a
    ldh [hMapHeight], a
    cp $00
    jr z, jr_000_0205

    ldh a, [hMapQueueLen]
    cp $80

Jump_000_01fe:
    jr c, jr_000_01ea

Call_000_0200:
Jump_000_0200:
    call SubmitMapQueue

Jump_000_0203:
    jr jr_000_01e0

jr_000_0205:
    ldh a, [hMapQueueLen]

Call_000_0207:
    cp $80

Call_000_0209:
    jr c, jr_000_020e

    call SubmitMapQueue

jr_000_020e:
    pop de
    pop af
    ret

; Append destination high/low, width, and one tile row; advance BC by $20.
QueueTileRow:


Call_000_0211:
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de

Call_000_0217:
    push bc
    ldh a, [hMapQueueLen]
    ld b, a
    ldh a, [hMapWidth]
    ld [de], a
    inc de
    add $03
    add b
    ldh [hMapQueueLen], a
    pop bc

jr_000_0225:
    ld a, [hl+]
    ld [de], a
    inc de
    ldh a, [hMapRunLeft]

Jump_000_022a:
    dec a
    ldh [hMapRunLeft], a
    cp $00
    jr nz, jr_000_0225

    ld a, $20
    add c
    ld c, a

Jump_000_0235:
    ld a, $00
    adc b
    ld b, a
    ret

; Read a little-endian destination from HL, then queue the constant tile fill.
QueueFillSpec:


Call_000_023a:
Jump_000_023a:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

; BC = destination; HL = width, height, one fill tile. Preserve AF and DE.
QueueFillRect:

Call_000_023e:
    push af

Jump_000_023f:
    push de

Jump_000_0240:
    ld a, [hl+]
    ldh [hMapWidth], a
    ld a, [hl+]
    ldh [hMapHeight], a

jr_000_0246:
    ldh a, [hMapQueueLen]
    add $a0

Call_000_024a:
    ld e, a

Call_000_024b:
    ld a, $00
    adc $c0
    ld d, a

jr_000_0250:
    ldh a, [hMapWidth]
    ldh [hMapRunLeft], a
    call QueueFillRow
    ldh a, [hMapHeight]
    dec a
    ldh [hMapHeight], a
    cp $00
    jr z, jr_000_026b

    ldh a, [hMapQueueLen]
    cp $80
    jr c, jr_000_0250

    call SubmitMapQueue
    jr jr_000_0246

jr_000_026b:
    ldh a, [hMapQueueLen]
    cp $80
    jr c, jr_000_0274

    call SubmitMapQueue

Jump_000_0274:
jr_000_0274:
    pop de
    pop af

Jump_000_0276:
    ret

; Append destination high/low, width, and repeated [HL]; advance BC by $20.
QueueFillRow:


Call_000_0277:
    ld a, b

Jump_000_0278:
    ld [de], a
    inc de

Jump_000_027a:
    ld a, c
    ld [de], a
    inc de
    push bc
    ldh a, [hMapQueueLen]
    ld b, a

Jump_000_0281:
    ldh a, [hMapWidth]
    ld [de], a
    inc de

Call_000_0285:
    add $03
    add b
    ldh [hMapQueueLen], a
    ld b, [hl]

jr_000_028b:
    ld a, b
    ld [de], a
    inc de
    ldh a, [hMapRunLeft]
    dec a
    ldh [hMapRunLeft], a
    cp $00
    jr nz, jr_000_028b

    pop bc
    ld a, $20
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ret
