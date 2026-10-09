
; HL = width, height, interleaved tile/attribute rows; BC = VRAM destination.
QueueMapRect:
Call_000_02a5:
    push af
    push de
    ld a, [hl+]
    ldh [hMapWidth], a
    ld a, [hl+]

Call_000_02ab:
    ldh [hMapHeight], a

jr_000_02ad:
    ldh a, [hMapQueueLen]
    add $a0
    ld e, a
    ld a, $00
    adc $c0
    ld d, a

jr_000_02b7:
    ldh a, [hMapWidth]

Jump_000_02b9:
    ldh [hMapRunLeft], a
    call Call_000_02df
    ldh a, [hMapHeight]

Call_000_02c0:
    sub $01

Jump_000_02c2:
    ldh [hMapHeight], a
    cp $00
    jr z, jr_000_02d3

    ldh a, [hMapQueueLen]
    cp $80
    jr c, jr_000_02b7

    call SubmitMapQueue
    jr jr_000_02ad

jr_000_02d3:
    ldh a, [hMapQueueLen]
    cp $80
    jr c, jr_000_02dc

Jump_000_02d9:
    call SubmitMapQueue

jr_000_02dc:
    pop de
    pop af

Jump_000_02de:
    ret


Call_000_02df:
    call Call_000_02fe
    call Call_000_0305
    call Call_000_0327
    ldh a, [hMapWidth]
    ldh [hMapRunLeft], a
    call Call_000_02fe
    call Call_000_0314
    call Call_000_0327
    ld a, $20
    add c
    ld c, a
    ld a, $00
    adc b

Call_000_02fc:
Jump_000_02fc:
    ld b, a

Jump_000_02fd:
    ret


Call_000_02fe:
    ld a, b

Call_000_02ff:
Jump_000_02ff:
    ld [de], a

Call_000_0300:
    inc de

Jump_000_0301:
    ld a, c
    ld [de], a

Jump_000_0303:
    inc de
    ret


Call_000_0305:
    push bc
    ldh a, [hMapQueueLen]
    ld b, a
    ldh a, [hMapWidth]
    ld [de], a
    inc de
    add $03
    add b

Call_000_0310:
    ldh [hMapQueueLen], a
    pop bc
    ret


Call_000_0314:
    push bc
    ldh a, [hMapQueueLen]
    ld b, a
    ldh a, [hMapWidth]
    set 6, a
    ld [de], a
    ldh a, [hMapWidth]

Call_000_031f:
    inc de

Jump_000_0320:
    add $03
    add b
    ldh [hMapQueueLen], a
    pop bc
    ret


Call_000_0327:
jr_000_0327:
    ld a, [hl+]
    ld [de], a
    inc de
    ldh a, [hMapRunLeft]
    sub $01
    ldh [hMapRunLeft], a

Jump_000_0330:
    cp $00
    jr nz, jr_000_0327

    ret
