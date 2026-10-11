
; Preserve BC/DE; play the passenger-room animation and apply fade steps one through four.
BeginTrainRide:
BeginC2SchedAnim:


Call_003_66fb:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, jr_003_670c

    call PlayTrainOdd
    call FadeTrainOddIn
    jr jr_003_6712

jr_003_670c:
    call PlayTrainEven
    call FadeTrainEvenIn

jr_003_6712:
    pop bc
    pop de
    ret

; Preserve BC/DE; restore passenger-room palettes using fade steps three through zero.
EndTrainRide:
EndC2SchedAnim:


Call_003_6715:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, jr_003_6723

    call FadeTrainOddOut
    jr jr_003_6726

jr_003_6723:
    call FadeTrainEvenOut

jr_003_6726:
    pop bc
    pop de
    ret
