
; Choose up to fifty chips within the byte balance limit, subtract five cash units per chip, and refresh the chip item/list on success.
BuyChips:


    ld a, $ff
    ld hl, wChips
    sub [hl]
    cp $32
    jr c, jr_003_4d98

    ld a, $32

jr_003_4d98:
    ld [wChipLimit], a
    call ScriptHoldText
    ld a, $85
    call ShowMsg0
    xor a
    ld [wChipCount], a
    ld a, $35
    call ShowMsg3
    call ChooseChipCount
    ld a, [wStateResult]
    and $01
    jr z, jr_003_4dba

    call ResumeTextUI
    ret


jr_003_4dba:
    call CalcChipCost
    call SpendC2Cash
    ld a, [wStateResult]
    and $01
    jr z, jr_003_4de9

    ld a, $37
    call ShowMsg3
    call ResumeTextUI
    ld a, [wChipCount]
    ld hl, wChips
    add [hl]
    ld [hl], a
    call RefreshLists
    ld a, $04
    call ReadItemFlag
    ret nz

    ld a, $04
    ld [wArg0], a
    call AddItemList
    ret


jr_003_4de9:
    ld a, $99
    call ShowMsg0
    call ResumeTextUI
    ret
