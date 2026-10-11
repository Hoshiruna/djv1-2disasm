
; Show the three-choice purchase menu, dispatch the selection, and preserve cancellation and repeat-purchase handling.
RunC2Shop:
    call ScriptHoldText
    ld a, $9c
    call ShowMsg0

; Show and dispatch the shop menu, including repeat purchases.
C2ShopMenu:

Jump_003_53d8:
    ld a, $38
    call ShowMsg3
    xor a
    ld [wC2MenuMode], a
    ld [wC2MenuPick], a
    ld a, $02
    ld [wC2MenuMax], a
    call DrawC2Menu
    call ChooseC2Menu
    ld a, [wStateResult]
    and $01
    jp nz, ClearTextHold

    ld a, [wC2MenuPick]
    rst RST_00

C2ShopCalls:
    dw BuyC2Cells
    dw BuyC2Bullets
    dw ClearTextHold

; Below 100 batteries, spend 50 dollars and add three; retain item registration and shared messages.
BuyC2Cells:
BuyC2Count2:
    ld a, [wC2Cells]
    cp $64
    jr nc, jr_003_5463

    ld a, $32
    ld [wArg0], a
    call SpendC2Cash
    ld a, [wStateResult]
    and $01
    jr z, jr_003_545b

    ld a, [wC2Cells]
    add $03
    ld [wC2Cells], a
    call RefreshLists
    ld a, $03
    call ReadItemFlag
    jr nz, jr_003_5431

    ld a, $03
    ld [wArg0], a
    call AddItemList

jr_003_5431:
    ld a, $39
    call ShowMsg3
    ld a, $01
    ld [wC2MenuMode], a
    ld [wC2MenuMax], a
    xor a
    ld [wC2MenuPick], a
    call DrawC2Menu
    call ChooseC2Menu
    ld a, [wStateResult]
    and $01
    jp nz, ClearTextHold

    ld a, [wC2MenuPick]
    cp $00
    jp nz, ClearTextHold

    jp C2ShopMenu


jr_003_545b:
    ld a, $9b
    call ShowMsg0
    jp ClearTextHold


jr_003_5463:
    ld a, $4f
    call ShowMsg0
    jp ClearTextHold

; Below 120 bullets, spend 100 dollars and add six; retain item registration and shared messages.
BuyC2Bullets:
BuyC2Count1:


    ld a, [wC2Bullets]
    cp $78
    jr nc, jr_003_5463

    ld a, $64
    ld [wArg0], a
    call SpendC2Cash
    ld a, [wStateResult]
    and $01
    jr z, jr_003_545b

    ld a, [wC2Bullets]
    add $06
    ld [wC2Bullets], a
    call RefreshLists
    ld a, $02
    call ReadItemFlag
    jr nz, jr_003_5431

    ld a, $02
    ld [wArg0], a
    call AddItemList
    jr jr_003_5431
