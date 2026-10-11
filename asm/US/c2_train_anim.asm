
; Preserve BC/DE; play the passenger-room animation and apply fade steps one through four.
BeginTrainRide:
BeginC2SchedAnim:


Call_003_66f6:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, jr_003_6707

    call PlayTrainOdd
    call FadeTrainOddIn
    jr jr_003_670d

jr_003_6707:
    call PlayTrainEven
    call FadeTrainEvenIn

jr_003_670d:
    pop bc
    pop de
    ret

; Preserve BC/DE; restore passenger-room palettes using fade steps three through zero.
EndTrainRide:
EndC2SchedAnim:


Call_003_6710:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, jr_003_671e

    call FadeTrainOddOut
    jr jr_003_6721

jr_003_671e:
    call FadeTrainEvenOut

jr_003_6721:
    pop bc
    pop de
    ret
