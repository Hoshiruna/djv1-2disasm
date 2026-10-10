
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
    dw PutC2Group0, PutC2Group1, PutC2Group2, PutC2Group3, CheckC2Put

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

; Advance to group three through three helper calls, then enter the shared free-slot scan.
PutC2Group3:
    call NextPutGroup
; Advance the initial group pointer twice, then enter the shared free-slot scan.
PutC2Group2:
    call NextPutGroup

; Advance the initial group pointer once, then enter the shared free-slot scan.
PutC2Group1:
    call NextPutGroup

; Scan group offsets one through six for $ff, confirm placement, store the saved packed value, and retain the pending-operation refresh.
PutC2Group0:
    ld de, $0001

jr_003_50ec:
    ld a, [wPutPtr]
    ld l, a
    ld a, [wPutPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_003_5106

    inc e
    ld a, $07
    cp e
    jr nz, jr_003_50ec

    ld a, $f2
    call ShowMsg1
    ret


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
