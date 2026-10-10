
; Copy $2d bytes of text references for the selected case; US additionally indexes the persisted text set.
InitTextRefs:
    push bc
    push de
    push hl
    ld a, [wTextCase]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, CaseTextRefs
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [wTextSet]
    add a

jr_002_7bbb:
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, wTextRefs
    ld d, $2d

jr_002_7bc7:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_002_7bc7

    pop hl
    pop de
    pop bc
    ret

; Case I and II records each expose 15 address/bank triples.
; The last two Case I triples are shared with the start of Case II.
CaseTextRefs:
    dw TextSetsC1
    dw TextSetsC2
TextSetsC1:
    dw TextRefsC1
    dw TextRefsC1
    dw TextRefsC1
    dw TextRefsC1
    dw TextRefsC1
TextSetsC2:
    dw TextRefsC2
    dw TextRefsC2
    dw TextRefsC2
    dw TextRefsC2
    dw TextRefsC2
TextRefsC1:
    dw $58ec
    db $11
    dw $4000
    db $0c
    dw $4080
    db $0c
    dw $4000
    db $0d
    dw $4080
    db $0d
    dw $4000
    db $0e
    dw $4080
    db $0e
    dw $4000
    db $0f
    dw $4000
jr_002_7c03:
    db $10
    dw $4000
    db $11
    dw $4080
    db $11
    dw $4000
    db $0d
    dw $4080
    db $0d
TextRefsC2:
    dw $54f0
    db $18
    db $00
jr_002_7c14:
    db $40
    db $12
    dw $4080
    db $12
    dw $4000
    db $13
    dw $4080
    db $13
    dw $4000
    db $14
    dw $4080
    db $14
    dw $4000
    db $15
    dw $4080
    db $15
    dw $4000
    db $16
    dw $4080
    db $16
    dw $4000
    db $17
    dw $4080
    db $17
    dw $4000
    db $18
    dw $4080
    db $18
