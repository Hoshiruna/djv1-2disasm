
; Remove flagged items seven and $54, set their states, clear the Case I coin count, refresh value zero, and draw room $16.
ClearC1Cash:
ClearC1Count:


Call_000_303f:
Jump_000_303f:
    ld a, $07
    call ReadItemFlag
    ld a, [wStateResult]

Jump_000_3047:
    and $01
    jr z, C1ClearCashSecondBill

Jump_000_304b:
    ld a, $07
    call DropListValue

Call_000_3050:
    ld a, $07
    call ClearItemFlag
    ld a, $07
    call SetItemState

; Check and remove the second twenty-dollar bill instance.
C1ClearCashSecondBill:
jr_000_305a:
    ld a, $54
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    jr z, C1ClearCashCoins

    ld a, $54
    call DropListValue
    ld a, $54
    call ClearItemFlag
    ld a, $54
    call SetItemState

; Clear the coin count after checking both bill instances.
C1ClearCashCoins:
jr_000_3075:
    call ResumeTextUI
    xor a
    ld [wC1Coins], a
    ld [wArg0], a

Jump_000_307f:
    ld [wFindListValue], a
    call FindListValue

Jump_000_3085:
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    ld a, C1RoomIdJoeAlley
    call DrawRoomAt
    ret
