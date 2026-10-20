
; Compare Case II cash with wTrainFare in bank three, then restore the previous bank.
CheckCashCall:
CheckWordCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call TestC2Cash
    call PopRomBank
    ret

; Copy wTrainFare to wArg0 before spending Case II cash.
SpendCashCost:
SpendWordCost:


    ld a, [wTrainFare]
    ld [wArg0], a
    jr SpendCashArg

; Set wArg0 to one before spending one dollar of Case II cash.
SpendCashOne:
SpendWordOne:

    ld a, $01
    ld [wArg0], a

; Spend wArg0 dollars in bank three and refresh lists only when the result is set.
SpendCashArg:
SpendWordArg:

jr_000_2fc1:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call SpendC2Cash

Jump_000_2fcb:
    call PopRomBank
    ld a, [wStateResult]
    and $01

Jump_000_2fd3:
    ret z

    call RefreshLists
    ret
