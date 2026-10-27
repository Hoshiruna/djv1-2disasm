
; Select the operation list source; any nonzero slot low byte adds sixteen before copying.
CopySlotList:


Call_000_32f4:
    ld bc, wOpList
    ld a, c
    ld [wWorkSrc], a
    ld a, b
    ld [wWorkSrc+1], a

Call_000_32ff:
Jump_000_32ff:
    ldh a, [hItemSlot]
    cp $00
    jr z, CopyWorkList

    ld a, [wWorkSrc]
    ld c, a
    ld a, [wWorkSrc+1]
    ld b, a
    ld hl, OpSlotAlternate
    add hl, bc
    ld a, l
    ld [wWorkSrc], a
    ld a, h
    ld [wWorkSrc+1], a

; Compact six source bytes, skipping $ff; leave the destination tail untouched.
; Preserve both scratch words. Callers clear the regional work list first.
CopyWorkList:

Call_000_3319:
jr_000_3319:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a

Call_000_3320:
    pop af
    push hl
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    ld d, a
    ld a, $00
    ldh [hItemSlot], a
    ld a, $00
    ldh [hItemSlot+1], a
    ld a, d
    ld d, a
    ld a, $00
    ldh [hChangePos], a
    ld a, $00

Call_000_333c:
    ldh [hChangePos+1], a
    ld a, d

; Read the next of six source bytes from the selected work-list source.
CopyWorkListScan:
jr_000_333f:
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, [wWorkSrc]
    ld c, a
    ld a, [wWorkSrc+1]
    ld b, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, CopyWorkListAdvance

    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wWorkList+1
    add hl, bc
    ld [hl], a
    ld d, a
    ldh a, [hItemSlot]
    inc a
    ldh [hItemSlot], a
    ld a, d

; Advance the source offset and continue until six bytes have been checked.
CopyWorkListAdvance:
jr_000_3367:
    ld d, a
    ldh a, [hChangePos]

Call_000_336a:
    inc a
    ldh [hChangePos], a
    ld a, d
    ld d, a
    ldh a, [hChangePos]
    cp WorkListInputBytes
    ld a, d
    jr c, CopyWorkListScan

    pop hl
    push af
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
