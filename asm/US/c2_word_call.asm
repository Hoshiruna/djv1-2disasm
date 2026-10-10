
; Call the case-two word comparison against the stored byte cost and restore the previous ROM bank.
CheckWordCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call TestC2Word
    call PopRomBank
    ret

; Copy the stored byte cost to argument zero and enter the shared word subtraction wrapper.
SpendWordCost:


    ld a, [wC2Cost]
    ld [wArg0], a
    jr jr_000_2fc1

; Write argument zero as one and enter the shared word subtraction wrapper.
SpendWordOne:

    ld a, $01
    ld [wArg0], a

; Call byte-cost word subtraction in bank three and refresh lists only when the result is set.
SpendWordArg:

jr_000_2fc1:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call SpendC2Word

Jump_000_2fcb:
    call PopRomBank
    ld a, [wStateResult]
    and $01

Jump_000_2fd3:
    ret z

    call RefreshLists
    ret
