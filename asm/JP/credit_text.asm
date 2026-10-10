
; Wait 180 ticks between ending text and scene changes.
CreditWait180:


Call_003_7003:
    ld a, $b4
    call WaitTicks
    ret

; Wait forty ticks before ending text.
CreditWait40:


Call_003_7009:
    ld a, $28
    call WaitTicks
    ret

; Wait twenty ticks between ending text entries.
CreditWait20:


Call_003_700f:
    ld a, $14
    call WaitTicks
    ret

; Select the indexed text pointer, reset text coordinates, render room objects, read the text and clear mode bit seven.
DrawCreditText:


Call_003_7015:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, CreditTextPtrs
    add hl, bc
    ld a, [hl+]
    ld [wTextPtr], a
    ld a, [hl]
    ld [wTextPtr+1], a
    xor a
    ld [wTextOriginX], a
    ld [wTextOriginY], a
    ld [wTextCol], a
    ld [wTextRow], a
    ld a, $12
    ld [wTextHeight], a
    ld a, $41
    ld [wTextMode], a
    call DrawRoomObjs
    call SubmitOam
    call ReadAsciiText
    ld a, [wTextMode]
    and $7f
    ld [wTextMode], a
    ret
