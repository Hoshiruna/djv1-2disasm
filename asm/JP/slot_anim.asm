
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
