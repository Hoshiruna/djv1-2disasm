
; Show the three-choice purchase menu, dispatch the selection, and preserve cancellation and repeat-purchase handling.
RunC2Shop:
    call ScriptHoldText
    ld a, $9c
    call ShowMsg0 ; Message Text13Message1C: おとこは ヒソヒソと いった。[PAGE] / 「おれは ブラックマーケットの /  ばいにんだ。 /  いっとくが うりものの ねだんは /  やすくないぜ・・・![P...

; Show and dispatch the shop menu, including repeat purchases.
C2ShopMenu:

Jump_003_53d8:
    ld a, $38
    call ShowMsg3 ; Message Text18Message38: 「なにが ほしいんだい?」 /          でんち /          ピストルのたま /          いらない[WAIT_END]
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
    cp ShopCellStop
    jr nc, ShopStockStop

    ld a, ShopCellPrice
    ld [wArg0], a
    call SpendC2Cash
    ld a, [wStateResult]
    and $01
    jr z, ShopCashShort

    ld a, [wC2Cells]
    add ShopCellQty
    ld [wC2Cells], a
    call RefreshLists
    ld a, C2ListItemCells
    call ReadItemFlag
    jr nz, ShopBoughtReply

    ld a, C2ListItemCells
    ld [wArg0], a
    call AddItemList

; Show the purchase thanks and original buy-again choice.
ShopBoughtReply:

jr_003_5431:
    ld a, $39
    call ShowMsg3 ; Message Text18Message39: 「まいどあり! /  ほかに なにか ほしいかい?」 /          は い /          いいえ[WAIT_END]
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

; Show the insufficient cash reply and clear the text hold.
ShopCashShort:


jr_003_545b:
    ld a, $9b
    call ShowMsg0 ; Message Text13Message1B: 「かねが たりねえぜ・・・。」[END]
    jp ClearTextHold

; Show the original stop-buying reply at the pre-purchase stock threshold.
ShopStockStop:


jr_003_5463:
    ld a, $4f
    call ShowMsg0 ; Message Text12Message4F: おとこは かおを しかめながら / おれに いった。[PAGE] / 「おまえさん やめときな・・・。 /  これいじょうは かねの /  むだづかいさ!」[END]
    jp ClearTextHold

; Below 120 bullets, spend 100 dollars and add six; retain item registration and shared messages.
BuyC2Bullets:
BuyC2Count1:


    ld a, [wC2Bullets]
    cp ShopBulletStop
    jr nc, ShopStockStop

    ld a, ShopBulletPrice
    ld [wArg0], a
    call SpendC2Cash
    ld a, [wStateResult]
    and $01
    jr z, ShopCashShort

    ld a, [wC2Bullets]
    add ShopBulletQty
    ld [wC2Bullets], a
    call RefreshLists
    ld a, C2ListItemBullets
    call ReadItemFlag
    jr nz, ShopBoughtReply

    ld a, C2ListItemBullets
    ld [wArg0], a
    call AddItemList
    jr ShopBoughtReply
