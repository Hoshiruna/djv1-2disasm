
; Pick a low-three-bit random index different from reel zero, store it, and queue its rectangle.
StepSlot0:


Call_002_62cf:
jr_002_62cf:
    call NextRandom
    ldh a, [hRandByte]
    and $07
    ld hl, wSlotShown
    cp [hl]
    jr z, jr_002_62cf

    ld [hl], a
    ld e, $00
    call DrawSlotReel
    ret

; Pick a low-three-bit random index different from reel one, store it, and queue its rectangle.
StepSlot1:


Call_002_62e3:
jr_002_62e3:
    call NextRandom
    ldh a, [hRandByte]
    and $07
    ld hl, wSlotShown+1
    cp [hl]
    jr z, jr_002_62e3

    ld [hl], a
    ld e, $01
    call DrawSlotReel
    ret

; Pick a low-three-bit random index different from reel two, store it, and queue its rectangle.
StepSlot2:


Call_002_62f7:
jr_002_62f7:
    call NextRandom
    ldh a, [hRandByte]
    and $07
    ld hl, wSlotShown+2
    cp [hl]
    jr z, jr_002_62f7

    ld [hl], a
    ld e, $02
    call DrawSlotReel
    ret

; Use reel index E to select its shown symbol, map address, and three-by-three tile rectangle, then queue it.
DrawSlotReel:


Call_002_630b:
    ld d, $00
    ld hl, wSlotShown
    add hl, de
    ld a, [hl]
    sla e
    ld hl, SlotMapAddrs
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    add a
    ld e, a
    ld hl, SlotReelPtrs
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call QueueMapRect
    ret
