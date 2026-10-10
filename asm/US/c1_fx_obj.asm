
; Select the effect object and its case-one position, build one terminated object record, draw it, and submit OAM.
DrawC1FxObj:


Call_002_70a2:
    ld a, [wFxId]
    ld c, a
    ld b, $00
    ld hl, C1FxObjs
    add hl, bc
    ld a, [hl]
    ld [$c5c3], a
    ld [wObjList+2], a
    ld a, [$c5c3]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $72c4
    add hl, bc
    ld a, [hl+]
    ld [wObjList], a
    ld a, [hl]
    ld [wObjList+1], a
    ld a, $ff
    ld [wObjList+3], a
    call DrawRoomObjs
    call SubmitOam
    ret

; Read and discard the effect object ID, set the object list start to $ff, and redraw it.
ClearC1FxObj:


Call_002_70d2:
    ld a, [wFxId]
    ld c, a
    ld b, $00
    ld hl, C1FxObjs
    add hl, bc
    ld a, [hl]
    ld a, $ff
    ld [wObjList], a
    call DrawRoomObjs
    ret

C1FxObjs:
    db $ff, $0b, $0d, $0e, $0f, $11, $ff, $ff, $ff, $10, $0c, $12, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $11, $11, $11
