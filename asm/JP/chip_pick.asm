
; Poll quantity controls, confirm with a clear result or cancel with a set result, preserving the original lower-bound checks.
ChooseChipCount:


Call_003_4df2:
    call WaitFrame

; Poll the quantity controls and clear the pending result.
ChipCountPollInput:
jr_003_4df5:
    call ClearResult
    call PollJoy
    ld a, [wJoyPress]
    and $01
    jr z, ChipCountCheckCancel

    ld a, $19
    call PlayAudio
    ret


; Check whether the player cancelled quantity selection.
ChipCountCheckCancel:
jr_003_4e08:
    ld a, [wJoyPress]
    and $02
    jr z, ChipCountCheckDirection

    ld a, $2f
    call PlayAudio
    call SetResult
    ret


; Inspect held direction buttons to change the count.
ChipCountCheckDirection:
jr_003_4e18:
    ld a, [wJoyHeld]
    and $90
    jr nz, ChipCountIncrease

    ld a, [wJoyHeld]
    and $60
    jr nz, ChipCountDecrease

    jr ChipCountPollInput

; Increase the count if it is below the current limit.
ChipCountIncrease:
jr_003_4e28:
    ld a, [wChipCount]
    ld hl, wChipLimit
    cp [hl]
    jr z, ChipCountPollInput

    inc a
    ld [wChipCount], a

; Display quantity list text ten, submit it, wait eight ticks, and resume quantity input.
ShowChipCount:

jr_003_4e35:
    ld a, $0a
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue
    ld a, $08
    call WaitTicks
    jr ChipCountPollInput

; Decrease the count if it is at least one.
ChipCountDecrease:
jr_003_4e47:
    ld a, [wChipCount]
    cp $01
    jr c, ChipCountPollInput

    dec a
    ld [wChipCount], a
    jr ShowChipCount
