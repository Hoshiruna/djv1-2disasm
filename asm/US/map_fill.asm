
; Read a little-endian destination from HL, then enter QueueMapFill.
QueueFillMapSpec:



    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

; BC = destination; HL = width, height, tile, attribute. Preserve AF and DE.
QueueMapFill:

Call_000_0339:
    push af
    push de

Jump_000_033b:
    ld a, [hl+]

Jump_000_033c:
    ldh [hMapWidth], a
    ld a, [hl+]
    ldh [hMapHeight], a
    ld a, [hl+]

Call_000_0342:
    ld [wFillTile], a
    ld a, [hl+]
    ld [wFillAttr], a

; Locate the current map queue position for a fill row.
QueueMapFillBuffer:
jr_000_0349:
    ldh a, [hMapQueueLen]
    add $a0
    ld e, a
    ld a, $00
    adc $c0
    ld d, a

Call_000_0353:
; Queue the constant tile and attribute runs for one row.
QueueMapFillNextRow:
jr_000_0353:
    ldh a, [hMapWidth]
    ldh [hMapRunLeft], a
    call QueueFillTile
    ldh a, [hMapWidth]
    ldh [hMapRunLeft], a
    call QueueFillAttr
    ldh a, [hMapHeight]

Jump_000_0363:
    dec a
    ldh [hMapHeight], a
    cp $00
    jr z, QueueMapFillDone

    ldh a, [hMapQueueLen]
    cp MapQueueSubmitThreshold
    jr c, QueueMapFillNextRow

    call SubmitMapQueue
    jr QueueMapFillBuffer

; Submit a final full queue and restore registers.
QueueMapFillDone:
jr_000_0375:
    ldh a, [hMapQueueLen]
    cp MapQueueSubmitThreshold
    call nc, SubmitMapQueue
    pop de
    pop af
    ret

; Append a constant tile row at BC; preserve BC and leave HL unchanged.
QueueFillTile:


Call_000_037f:
    push bc
    ld a, b
    ld [de], a
    inc de

Jump_000_0383:
    ld a, c
    ld [de], a
    inc de
    ldh a, [hMapQueueLen]
    ld b, a
    ldh a, [hMapWidth]
    ld [de], a
    inc de
    add MapQueueEntryHeaderBytes
    add b
    ldh [hMapQueueLen], a
    ld a, [wFillTile]
    ld b, a

; Append one constant tile byte to the map queue.
QueueFillTileByte:
jr_000_0396:
    ld a, b
    ld [de], a
    inc de
    ldh a, [hMapRunLeft]
    dec a
    ldh [hMapRunLeft], a
    cp $00
    jr nz, QueueFillTileByte

    pop bc
    ret

; Append a constant attribute row at BC, then advance BC by $20.
QueueFillAttr:


Call_000_03a4:
    push bc
    ld a, b
    ld [de], a
    inc de

Call_000_03a8:
    ld a, c
    ld [de], a
    inc de
    ldh a, [hMapWidth]
    ld b, a
    or MapQueueAttrFlag
    ld [de], a
    inc de
    ldh a, [hMapQueueLen]
    add MapQueueEntryHeaderBytes
    add b
    ldh [hMapQueueLen], a
    ld a, [wFillAttr]
    ld b, a

; Append one constant attribute byte to the map queue.
QueueFillAttrByte:
jr_000_03bd:
    ld a, b
    ld [de], a
    inc de
    ldh a, [hMapRunLeft]
    dec a
    ldh [hMapRunLeft], a
    cp $00
    jr nz, QueueFillAttrByte

    pop bc
    ld a, $20

Jump_000_03cc:
    add c

Call_000_03cd:
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ret
