; --- slot_anim.asm ---

; Update all three reels for twenty-nine iterations, submitting the map queue and waiting five ticks each time.
SpinSlots:


Call_002_622f:
    xor a
    ld [wSlotFrame], a

; Advance all three reels for the spin animation.
C1SlotsSpinLoop:
jr_002_6233:
    call StepSlot0
    call StepSlot1
    call StepSlot2
    call SubmitMapQueue
    ld a, $05
    call WaitTicks
    ld a, [wSlotFrame]
    inc a
    ld [wSlotFrame], a
    cp $1d
    jr nz, C1SlotsSpinLoop

    ret

; Fix the first reel for ten updates, then the second for ten, then the third; retain cue $13 and map submission order.
StopSlots:


Call_002_6250:
    ld a, $13
    call PlayAudio
    ld a, [wSlotResult]
    ld [wSlotShown], a
    xor a
    ld [wSlotFrame], a

; Keep reel zero fixed while the other two reels advance.
C1SlotsStopFirstLoop:
jr_002_625f:
    ld e, $00
    call DrawSlotReel
    call StepSlot1
    call StepSlot2
    call SubmitMapQueue
    ld a, $05
    call WaitTicks
    ld a, [wSlotFrame]
    inc a
    ld [wSlotFrame], a
    cp $0a
    jr nz, C1SlotsStopFirstLoop

    ld a, $13
    call PlayAudio
    ld a, [wSlotResult+1]
    ld [wSlotShown+1], a
    xor a
    ld [wSlotFrame], a

; Keep reels zero and one fixed while reel two advances.
C1SlotsStopSecondLoop:
jr_002_628c:
    ld e, $00
    call DrawSlotReel
    ld e, $01
    call DrawSlotReel
    call StepSlot2
    call SubmitMapQueue
    ld a, $05
    call WaitTicks
    ld a, [wSlotFrame]
    inc a
    ld [wSlotFrame], a
    cp $0a
    jr nz, C1SlotsStopSecondLoop

    ld a, $13
    call PlayAudio
    ld a, [wSlotResult+2]
    ld [wSlotShown+2], a
    ld e, $00
    call DrawSlotReel
    ld e, $01
    call DrawSlotReel
    ld e, $02
    call DrawSlotReel
    call SubmitMapQueue
    ld a, $05
    call WaitTicks
    ret

; --- slot_reels.asm ---

; Pick a low-three-bit random index different from reel zero, store it, and queue its rectangle.
StepSlot0:


Call_002_62cf:
jr_002_62cf:
    call NextRandom
    ldh a, [hRandByte]
    and $07
    ld hl, wSlotShown
    cp [hl]
    jr z, StepSlot0

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
    jr z, StepSlot1

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
    jr z, StepSlot2

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

; --- slot_tiles.asm ---

SlotMapAddrs:
    dw $9861, $9865, $9869

SlotReelPtrs:
    dw SlotTile0
    dw SlotTile1
    dw SlotTile2
    dw SlotTile3
    dw SlotTile4
    dw SlotTile5
    dw SlotTile6
    dw SlotTile7

SlotTile0:
    db $03, $03, $30, $31, $32, $0d, $0d, $0d, $33, $34, $35, $0d, $0d, $0d, $36, $37, $38, $0d, $0d, $0d

SlotTile1:
    db $03, $03, $39, $3a, $3b, $0d, $0d, $0d, $3c, $3d, $3e, $0d, $0d, $0d, $3f, $40, $41, $0d, $0d, $0d

SlotTile2:
    db $03, $03, $42, $43, $44, $0d, $0d, $0d, $45, $46, $47, $0d, $0d
jr_002_6373:
    db $0d, $48, $49, $4a, $0d, $0d, $0d

SlotTile3:
    db $03, $03, $4b, $4c, $4d, $0e, $0e, $0e, $4e, $4f, $50, $0e, $0e, $0e, $51, $52, $53, $0e, $0e, $0e

SlotTile4:
    db $03, $03, $54, $55, $56, $0e, $0e, $0e, $57, $58, $59, $0e, $0e, $0e, $5a, $5b, $5c, $0e, $0e, $0e

SlotTile5:
    db $03, $03, $5d, $5e, $5f, $0d, $0d, $0d, $60, $61, $62, $0d, $0d, $0d, $63, $64, $65, $0d, $0d, $0d

SlotTile6:
    db $03, $03, $66, $67, $68, $0e, $0e, $0e, $69, $6a, $6b, $0e, $0e, $0e, $6c, $6d, $6e, $0e, $0e, $0e

SlotTile7:
    db $03, $03, $6f, $70, $71, $0e, $0e, $0e, $72, $73, $74, $0e, $0e, $0e, $75, $76, $77, $0e, $0e, $0e

; --- slot_prizes.asm ---

SlotPrizes:
    db $1e, $16, $14, $12, $10, $0e, $0c, $0a
