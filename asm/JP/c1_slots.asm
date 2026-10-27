
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
    jr z, C1SlotsNoPrize

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
    call AddCoinFind
    ld a, $18
    call ShowMsg2 ; Message Text10Message18: ・・・カチャ カチャ カチャ・・・ / チーン!!![PAGE] / やったぜ!!! / ジャックポットだ! / おおあたりだ!!![PAGE] / ぜんぶで [NUM8...
    ret


; Play the no-prize cue and show the failure reply.
C1SlotsNoPrize:
jr_002_61c8:
    ld a, $16
    call PlayAudio
    ld a, $75
    call ShowMsg2 ; Message Text10Message74: ちっ だめか! / どうも ついてないようだ。[END]
    ret

; At zero coins choose matching reels; at $46 coins or above choose nonmatching reels; between them use the original low-three-bit random branch.
PickSlotResult:


Call_002_61d3:
    ld a, [wC1Coins]
    cp $00
    jr z, C1SlotsChooseMatch

    cp $46
    jr nc, C1SlotsChooseMismatch

    call NextRandom
    ldh a, [hRandByte]
    and $07
    cp $06
    jr c, C1SlotsChooseMismatch

; Use one random reel value for all three results and read its prize.
C1SlotsChooseMatch:
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


; Clear the prize before choosing three nonmatching reel results.
C1SlotsChooseMismatch:
jr_002_6206:
    xor a
    ld [wSlotPrize], a

; Restart the three-result selection if all reel values match.
C1SlotsRetryMismatch:
jr_002_620a:
    ld bc, $0000

; Choose and store each of the three random reel values.
C1SlotsReelPickLoop:
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
    jr nz, C1SlotsReelPickLoop

    ld a, [wSlotResult+1]
    ld hl, wSlotResult
    cp [hl]
    jr nz, C1SlotsResultReady

    ld a, [wSlotResult+2]
    cp [hl]
    jr z, C1SlotsRetryMismatch

; Return with the selected reel results.
C1SlotsResultReady:
jr_002_622e:
    ret
