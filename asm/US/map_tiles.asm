
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
; Locate the queue write position for a tile rectangle.
QueueTileRectBuffer:
jr_000_01e0:
    ldh a, [hMapQueueLen]
    add $a0
    ld e, a
    ld a, $00
    adc $c0
    ld d, a

; Queue the next row of tile bytes.
QueueTileRectNextRow:
jr_000_01ea:
    ldh a, [hMapWidth]
    ldh [hMapRunLeft], a

Jump_000_01ee:
    call QueueTileRow
    ldh a, [hMapHeight]
    dec a
    ldh [hMapHeight], a
    cp $00
    jr z, QueueTileRectFinish

    ldh a, [hMapQueueLen]
    cp MapQueueSubmitThreshold

Jump_000_01fe:
    jr c, QueueTileRectNextRow

Call_000_0200:
Jump_000_0200:
    call SubmitMapQueue

Jump_000_0203:
    jr QueueTileRectBuffer

; Submit a final full queue before returning.
QueueTileRectFinish:
jr_000_0205:
    ldh a, [hMapQueueLen]

Call_000_0207:
    cp MapQueueSubmitThreshold

Call_000_0209:
    jr c, QueueTileRectDone

    call SubmitMapQueue

; Restore registers and return from tile rectangle queuing.
QueueTileRectDone:
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
    add MapQueueEntryHeaderBytes
    add b
    ldh [hMapQueueLen], a
    pop bc

; Append the next source tile byte to the queue.
QueueTileRowByte:
jr_000_0225:
    ld a, [hl+]
    ld [de], a
    inc de
    ldh a, [hMapRunLeft]

Jump_000_022a:
    dec a
    ldh [hMapRunLeft], a
    cp $00
    jr nz, QueueTileRowByte

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

; Locate the queue write position for a constant tile fill.
QueueFillRectBuffer:
jr_000_0246:
    ldh a, [hMapQueueLen]
    add $a0

Call_000_024a:
    ld e, a

Call_000_024b:
    ld a, $00
    adc $c0
    ld d, a

; Queue the next row of repeated tile bytes.
QueueFillRectNextRow:
jr_000_0250:
    ldh a, [hMapWidth]
    ldh [hMapRunLeft], a
    call QueueFillRow
    ldh a, [hMapHeight]
    dec a
    ldh [hMapHeight], a
    cp $00
    jr z, QueueFillRectFinish

    ldh a, [hMapQueueLen]
    cp MapQueueSubmitThreshold
    jr c, QueueFillRectNextRow

    call SubmitMapQueue
    jr QueueFillRectBuffer

; Submit a final full queue before returning.
QueueFillRectFinish:
jr_000_026b:
    ldh a, [hMapQueueLen]
    cp MapQueueSubmitThreshold
    jr c, QueueFillRectDone

    call SubmitMapQueue

; Restore registers and return from tile fill queuing.
QueueFillRectDone:
jr_000_0274:
    pop de

Call_000_0275:
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
    add MapQueueEntryHeaderBytes
    add b
    ldh [hMapQueueLen], a
    ld b, [hl]

; Append one copy of the fill tile to the queue.
QueueFillRowByte:
jr_000_028b:
    ld a, b
    ld [de], a
    inc de
    ldh a, [hMapRunLeft]
    dec a
    ldh [hMapRunLeft], a
    cp $00
    jr nz, QueueFillRowByte

    pop bc
    ld a, $20
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ret
