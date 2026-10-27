
; Save the active list and packed selection, set the first group pointer, and dispatch the put mode.
BeginC2Put:


    ld a, [wChangeMode]
    ld [wPutList], a
    ld a, [wListPacked]
    ld [wPutValue], a
    ld a, $3b
    ld [wPutPtr], a
    ld a, $c5
    ld [wPutPtr+1], a
    ld a, [wPutMode]
    rst RST_00

C2PutCalls:
    dw PutC2Washer, PutC2Trash1, PutC2Trash2, PutC2Desk, CheckC2Put

; Advance the little-endian group pointer by eight with carry.
NextPutGroup:

Call_003_50d4:
    ld a, $08
    ld hl, wPutPtr
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret

; Advance three times to the desk record, then use the shared placement scan.
PutC2Desk:
PutC2Group3:
    call NextPutGroup

; Advance twice to the second trash-can record, then use the shared placement scan.
PutC2Trash2:
PutC2Group2:
    call NextPutGroup

; Advance to the first trash-can record, then use the shared six-slot placement scan.
PutC2Trash1:
PutC2Group1:
    call NextPutGroup

; Use the washer record, scan its six item slots, confirm placement, and refresh the pending list.
PutC2Washer:
PutC2Group0:
    ld de, $0001

; Scan the selected group item slots.
C2PutFindOpenSlot:
jr_003_50ec:
    ld a, [wPutPtr]
    ld l, a
    ld a, [wPutPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, C2PutStoreInGroup

    inc e
    ld a, $07
    cp e
    jr nz, C2PutFindOpenSlot

    ld a, $f2
    call ShowMsg1 ; Message Text15Message72: すでに いっぱいで これいじょうは / はいらない。[END]
    ret


; Confirm placement and write the packed item to the open slot.
C2PutStoreInGroup:
jr_003_5106:
    ld a, e
    ld [wPutPos], a
    call CheckC2Put
    cp $00
    ret z

    ld a, [wPutPos]
    ld e, a
    ld d, $00
    ld a, [wPutPtr]
    ld l, a
    ld a, [wPutPtr+1]
    ld h, a
    add hl, de
    ld a, [wPutValue]
    ld [hl], a
    ld a, [wPendingLast]
    cp $ff
    call nz, RefreshC2Put
    ret
