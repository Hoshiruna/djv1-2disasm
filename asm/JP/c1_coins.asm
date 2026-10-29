
; Read one argument before adding Case I coins.
AddC1CoinsArg:
AddListCountArg:


    call ReadArg

; Add wArg0 to Case I coins with byte wrap, then clear wListName.
; This writes coin-name scratch only; packed and decoded selection fields are retained.
AddC1Coins:
AddListCount:

Call_000_2a09:
    ld a, [wC1Coins]
    ld e, a
    ld a, [wArg0]
    add e
    ld [wC1Coins], a
    xor a
    ld [wListName], a
    ret

; Consume a coin when available, refresh its list group while preserving the packed selection, and set the result.
UseC1Coin:
UseListCount:


    call ClearResult
    ld a, [wC1Coins]
    cp $00
    jr z, C1UseCoinEmpty

    dec a
    ld [wC1Coins], a
    xor a
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]

Jump_000_2a31:
    ld [wOpByte], a
    ld a, [wListPacked]
    push af
    call RefreshListMode
    pop af
    ld [wListPacked], a
    call SetResult
    ret


; Show the empty-coin reply when no coin can be consumed.
; ClearResult precedes the message; this return has no post-message result reset.
C1UseCoinEmpty:
jr_000_2a43:
    ld a, $72
    call ShowMsg2 ; Message Text10Message72: コインが ない・・・。[END]
    ret

; Read a cost, subtract it when available, and retain the room-specific success and insufficient-count flags.
; Successful payment reads yellow debt only in room $27; all other room bytes select blue debt.
SpendC1Coins:
SpendListCount:


    call ReadArg
    ld a, [wC1Coins]
    ld hl, wArg0
    sub [hl]
    jr c, C1SpendCoinsInsufficient

    ld [wC1Coins], a
    ld a, [wRoomId]
    cp C1RoomIdYellowCabPeoria
    jr z, C1SpendCheckYellowDebt

    ld a, C1BlueCabDebt
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1SpendRefreshCoins

    jr C1SpendMarkFarePaid

; Check the yellow-cab debt flag after deducting the cost in room $27.
C1SpendCheckYellowDebt:
jr_000_2a6d:
    ld a, C1YellowCabDebt
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1SpendRefreshCoins

; Set the fare-paid flag only when the selected cab has no previous debt.
C1SpendMarkFarePaid:
jr_000_2a79:
    ld a, C1CabFarePaid
    call SetObjFlag

; Refresh the coin list entry and return success after payment.
C1SpendRefreshCoins:
jr_000_2a7e:
    xor a
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode
    call SetResult
    ret


; Handle insufficient coins according to the current cab room.
C1SpendCoinsInsufficient:
jr_000_2a92:
    ld a, [wRoomId]
    cp C1RoomIdBlueCabPeoria
    jr z, C1SpendBlueDebt

    cp C1RoomIdYellowCabPeoria
    jr z, C1SpendYellowDebt

    call ClearResult
    ret


; Set blue-cab debt when its requested cost exceeds the coin count.
C1SpendBlueDebt:
jr_000_2aa1:
    ld a, C1BlueCabDebt
    call SetObjFlag
    call ClearResult
    ret


; Set yellow-cab debt when its requested cost exceeds the coin count.
C1SpendYellowDebt:
jr_000_2aaa:
    ld a, C1YellowCabDebt
    call SetObjFlag
    call ClearResult
    ret
