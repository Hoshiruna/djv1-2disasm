
; For the DE record offset, scan time/name pairs and retain the original byte start/end arithmetic; write the four-byte record only within the selected time window.
SelectC2SchedRec:


Call_003_6356:
jr_003_6356:
    ld a, [wC2SchedPtr]
    ld c, a
    ld a, [wC2SchedPtr+1]
    ld b, a
    ld a, [bc]
    cp $ff
    ret z

    push af
    sub $04
    ld [wC2SchedStart], a
    pop af
    add $0c
    ld [wC2SchedEnd], a
    jr nc, jr_003_6375

    ld a, [wC2Counters]
    jr jr_003_6388

jr_003_6375:
    ld a, [wC2Counters]
    ld hl, wC2SchedEnd
    cp [hl]
    jr nc, jr_003_63ba

    ld a, [wC2SchedStart]
    sub $fc
    jr c, jr_003_6388

    ld [wC2SchedStart], a

jr_003_6388:
    ld a, [wC2Counters]
    ld hl, wC2SchedStart
    sub [hl]
    ret c

    ld hl, wC2Schedule+3
    add hl, de
    ld [hl-], a
    ld c, a
    ld b, $00
    push hl
    ld hl, $688c
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl-], a
    ld a, [wC2SchedPtr]
    ld c, a
    ld a, [wC2SchedPtr+1]
    ld b, a
    inc bc
    ld a, [bc]
    ld [hl-], a
    ld a, [wC2SchedIndex]
    ld c, a
    ld b, $00
    push hl
    ld hl, $68f3
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl], a
    ret


jr_003_63ba:
    ld a, [wC2SchedPtr]
    add $02
    ld [wC2SchedPtr], a
    ld a, [wC2SchedPtr+1]
    adc $00
    ld [wC2SchedPtr+1], a
    jr jr_003_6356
