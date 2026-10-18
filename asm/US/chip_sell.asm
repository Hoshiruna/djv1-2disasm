
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
    call ShowMsg3
    call ChooseChipCount
    ld a, [wStateResult]
    and $01
    ret nz

    call CalcChipCost
    ld a, $37
    call ShowMsg3
    ld a, [wChips]
    ld hl, wChipCount
    sub [hl]
    ld [wChips], a
    ld a, [wArg0]
    call AddC2Cash
    call RefreshLists
    ret
