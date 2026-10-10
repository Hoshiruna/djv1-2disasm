
; Write seven object-$69 records from the coordinate table without rendering between records.
BuildC2FxObjs:


    xor a
    ld [wC2FxObjIndex], a

jr_003_5843:
    call WriteC2FxObj
    ld a, [wC2FxObjIndex]
    inc a
    ld [wC2FxObjIndex], a
    cp $07
    jr c, jr_003_5843

    ret

; Add seven object-$69 records in order, rendering each addition with two six-tick waits and audio $10.
AnimateC2FxObjs:


Call_003_5852:
    xor a
    ld [wC2FxObjIndex], a

jr_003_5856:
    call WriteC2FxObj
    call RenderObjsCall
    call SubmitOam
    ld a, $06
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $06
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, [wC2FxObjIndex]
    inc a
    ld [wC2FxObjIndex], a
    cp $07
    jr c, jr_003_5856

    ret

; Write the indexed coordinate pair, object $69 and terminator at $c600 plus three times the index.
WriteC2FxObj:


Call_003_587f:
    ld a, [wC2FxObjIndex]
    ld l, a
    add a
    add l
    ld e, $00
    ld d, $c6
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [wC2FxObjIndex]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C2FxObjPos
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld a, $69
    ld [de], a
    inc de
    ld a, $ff
    ld [de], a
    ret

C2FxObjPos:
    db $48, $20
    db $38, $24
    db $28, $28
    db $18, $2c
    db $40, $34
    db $30, $38
    db $20, $3c
