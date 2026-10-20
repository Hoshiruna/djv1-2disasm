
; Copy $2d bytes of text references for the selected case; US additionally indexes the persisted text set.
InitTextRefs:
    ld a, [wTextCase]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, CaseTextRefs
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, wTextRefs
    ld d, $2d

; Copy the next of forty-five text-reference bytes into WRAM.
InitTextRefsNextByte:
jr_002_7b8e:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, InitTextRefsNextByte

    ret

; Case I and II records each expose 15 address/bank triples.
; The last two Case I triples are shared with the start of Case II.
CaseTextRefs:
    dw TextRefsC1
    dw TextRefsC2
TextRefsC1:
    dw C1ObjectNames
    db $10
    dw Text0CMsgs0
    db $0c
    dw Text0CMsgs1
    db $0c
    dw Text0DMsgs0
    db $0d
    dw Text0DMsgs1
    db $0d
    dw Text0EMsgs0
    db $0e
    dw Text0EMsgs1
    db $0e
    dw Text0FMsgs0
    db $0f
    dw Text0FMsgs1
jr_002_7bb3:
    db $0f
    dw Text10Msgs0
    db $10
    dw Text10Msgs1
    db $10
    dw Text0DMsgs0
    db $0d
    dw Text0DMsgs1
    db $0d
TextRefsC2:
    dw C2ObjectNames
    db $18
    db LOW(Text12Msgs0)
jr_002_7bc4:
    db HIGH(Text12Msgs0)
    db $12
    dw Text12Msgs1
    db $12
    dw Text13Msgs0
    db $13
    dw Text13Msgs1
    db $13
    dw Text14Msgs0
    db $14
    dw Text14Msgs1
    db $14
    dw Text15Msgs0
    db $15
    dw Text15Msgs1
    db $15
    dw Text16Msgs0
    db $16
    dw Text16Msgs1
    db $16
    dw Text17Msgs0
    db $17
    dw Text17Msgs1
    db $17
    dw Text18Msgs0
    db $18
    db LOW(Text18Msgs1)
jr_002_7beb:
    db HIGH(Text18Msgs1)
    db $18
