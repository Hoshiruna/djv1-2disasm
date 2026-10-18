; A = object ID; return the sprite byte in its first animation pair.
PickObjFrame:


Call_002_60c7:
    push af
    ld a, [wCaseId]
    cp $00
    jr nz, ObjFrameCaseIIAnim

    ld bc, C1AnimPtrs
    jr ObjFrameReadAnim

; Select the Case II animation-pointer table.
ObjFrameCaseIIAnim:
jr_002_60d4:
    ld bc, C2AnimPtrs

; Read the selected object first animation frame.
ObjFrameReadAnim:
jr_002_60d7:
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    inc bc
    ld a, [bc]
    ret
