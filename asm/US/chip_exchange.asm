; --- chip_buy.asm ---

; Choose up to fifty chips within the byte balance limit, subtract five cash units per chip, and refresh the chip item/list on success.
BuyChips:


    ld a, $ff
    ld hl, wChips
    sub [hl]
    cp $32
    jr c, ChipBuySetLimit

    ld a, $32

; Set the capped number of chips available for this purchase.
ChipBuySetLimit:
jr_003_4d98:
    ld [wChipLimit], a
    call ScriptHoldText
    ld a, $85
    call ShowMsg0 ; Message Text13Message05: THE WOMAN MUMBLES / SOMETHING.[END]
    xor a
    ld [wChipCount], a
    ld a, $35
    call ShowMsg3 ; Message Text18Message35: "A CHIP IS $5. / HOW MANY CHIPS / WOULD YOU LIKE, / SIR?" /    CHIPS:[NUM8_WRAM:C3C5]...
    call ChooseChipCount
    ld a, [wStateResult]
    and $01
    jr z, ChipBuyAttemptPurchase

    call ResumeTextUI
    ret


; Calculate the selected cost and attempt to spend cash.
ChipBuyAttemptPurchase:
jr_003_4dba:
    call CalcChipCost
    call SpendC2Cash
    ld a, [wStateResult]
    and $01
    jr z, ChipBuyInsufficientCash

    ld a, $37
    call ShowMsg3 ; Message Text18Message37: "THAT WILL BE A / TOTAL OF [NUM8_WRAM:A7C8] / DOLLARS.[PAGE] / THANK YOU VERY / MUCH ...
    call ResumeTextUI
    ld a, [wChipCount]
    ld hl, wChips
    add [hl]
    ld [hl], a
    call RefreshLists
    ld a, C2ListItemChips
    call ReadItemFlag
    ret nz

    ld a, C2ListItemChips
    ld [wArg0], a
    call AddItemList
    ret


; Show the failed-purchase message and restore the text interface.
ChipBuyInsufficientCash:
jr_003_4de9:
    ld a, $99
    call ShowMsg0 ; Message Text13Message19: "THAT'S NOT / ENOUGH, PAL."[END]
    call ResumeTextUI
    ret

; --- chip_pick.asm ---

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

; --- chip_sell.asm ---

; Choose up to fifty available chips, subtract them, add five cash units per chip, and refresh lists.
SellChips:

    ld a, $32
    ld [wChipCount], a
    ld a, [wChips]
    cp $32
    jr nc, ChipSellChooseCount

    ld [wChipCount], a

; Set the sale limit and request a chip quantity.
ChipSellChooseCount:
jr_003_4e63:
    ld a, [wChipCount]
    ld [wChipLimit], a
    ld a, $36
    call ShowMsg3 ; Message Text18Message36: "HOW MANY DO YOU / WANT TO CASH IN, / SIR?" /  /    CHIPS:[NUM8_WRAM:C3C5] /  / USE L...
    call ChooseChipCount
    ld a, [wStateResult]
    and $01
    ret nz

    call CalcChipCost
    ld a, $37
    call ShowMsg3 ; Message Text18Message37: "THAT WILL BE A / TOTAL OF [NUM8_WRAM:A7C8] / DOLLARS.[PAGE] / THANK YOU VERY / MUCH ...
    ld a, [wChips]
    ld hl, wChipCount
    sub [hl]
    ld [wChips], a
    ld a, [wArg0]
    call AddC2Cash
    call RefreshLists
    ret

; --- chip_cost.asm ---

; Multiply the chosen byte quantity by five and store it in argument zero.
CalcChipCost:


Call_003_4e93:
    ld a, [wChipCount]
    add a
    add a
    ld hl, wChipCount
    add [hl]
    ld [wArg0], a
    ret
