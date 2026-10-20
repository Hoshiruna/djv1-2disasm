
; Write all seven ending marks without rendering between records.
BuildWarMarks:
BuildC2FxObjs:


    xor a
    ld [wWarMarkIndex], a

; Append the next ending mark until all seven are written.
C2WarMarkBuildNext:
jr_003_5843:
    call WriteWarMark
    ld a, [wWarMarkIndex]
    inc a
    ld [wWarMarkIndex], a
    cp WarMarkCount
    jr c, C2WarMarkBuildNext

    ret

; Append seven ending marks; render each addition with the original two six-tick waits and audio cues.
AnimateWarMarks:
AnimateC2FxObjs:


Call_003_5852:
    xor a
    ld [wWarMarkIndex], a

; Render the next ending mark with its waits and audio cues.
C2WarMarkAnimateNext:
jr_003_5856:
    call WriteWarMark
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
    ld a, [wWarMarkIndex]
    inc a
    ld [wWarMarkIndex], a
    cp WarMarkCount
    jr c, C2WarMarkAnimateNext

    ret

; Write one coordinate pair and object WarMarkId at wObjList plus three times the index, followed by $ff.
; The seven-record builders leave their final terminator at $c615.
WriteWarMark:
WriteC2FxObj:


Call_003_587f:
    ld a, [wWarMarkIndex]
    ld l, a
    add a
    add l
    ld e, $00
    ld d, ObjListPage
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [wWarMarkIndex]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, WarMarkPos
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld a, WarMarkId
    ld [de], a
    inc de
    ld a, $ff
    ld [de], a
    ret

; Seven X/Y coordinate pairs.
; At zero scroll, text clipping rejects the last mark's bottom two parts.
WarMarkPos:
C2FxObjPos:
    db $48, $20
    db $38, $24
    db $28, $28
    db $18, $2c
    db $40, $34
    db $30, $38
    db $20, $3c
