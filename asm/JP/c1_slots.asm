
; Choose three reel results, run the spin and stop effects, then add a nonzero prize through the original count path or show the failure message.
PlayC1Slots:

Call_002_6183:
    ld a, $11
    call PlayAudio
    ld a, $3c
    call WaitTicks
    call BlankOam
    call PickSlotResult
    ld a, $12
    call PlayAudio
    call SpinSlots
    call StopSlots
    ld a, [wSlotPrize]
    cp $00
    jr z, jr_002_61c8

    ld [wTextName1], a
    ld [wArg0], a
    ld a, $14
    call PlayAudio
    ld a, $78
    call WaitTicks
    ld a, $15
    call PlayAudio
    ld a, $02
    call WaitTicks
    call AddCountFind
    ld a, $18
    call ShowMsg2
    ret


jr_002_61c8:
    ld a, $16
    call PlayAudio
    ld a, $75
    call ShowMsg2
    ret

; At zero count choose matching reels; at count $46 or above choose nonmatching reels; between them use the original low-three-bit random branch.
PickSlotResult:


Call_002_61d3:
    ld a, [wC1ListCount]
    cp $00
    jr z, jr_002_61e9

    cp $46
    jr nc, jr_002_6206

    call NextRandom
    ldh a, [hRandByte]
    and $07
    cp $06
    jr c, jr_002_6206

jr_002_61e9:
    call NextRandom
    ldh a, [hRandByte]
    and $07
    ld c, a
    ld b, $00
    ld hl, SlotPrizes
    add hl, bc
    ld a, [hl]
    ld [wSlotPrize], a
    ld a, c
    ld [wSlotResult], a
    ld [wSlotResult+1], a
    ld [wSlotResult+2], a
    ret


jr_002_6206:
    xor a
    ld [wSlotPrize], a

jr_002_620a:
    ld bc, $0000

jr_002_620d:
    call NextRandom
    ldh a, [hRandByte]
    and $07
    ld hl, wSlotResult
    add hl, bc
    ld [hl], a
    inc c
    ld a, $03
    cp c
    jr nz, jr_002_620d

    ld a, [wSlotResult+1]
    ld hl, wSlotResult
    cp [hl]
    jr nz, jr_002_622e

    ld a, [wSlotResult+2]
    cp [hl]
    jr z, jr_002_620a

jr_002_622e:
    ret
