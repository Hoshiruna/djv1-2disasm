
; Preserve BC/DE; play the passenger-room animation and apply fade steps one through four.
BeginTrainRide:
BeginC2SchedAnim:


Call_003_66f6:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, TrainRideBeginEven

    call PlayTrainOdd
    call FadeTrainOddIn
    jr TrainRideBeginRestore

; Play the even-room passenger animation and fade in.
TrainRideBeginEven:
jr_003_6707:
    call PlayTrainEven
    call FadeTrainEvenIn

; Restore saved registers after the ride-start animation.
TrainRideBeginRestore:
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
    jr z, TrainRideEndEven

    call FadeTrainOddOut
    jr TrainRideEndRestore

; Fade out the even-room passenger palettes.
TrainRideEndEven:
jr_003_671e:
    call FadeTrainEvenOut

; Restore saved registers after the ride-end fade.
TrainRideEndRestore:
jr_003_6721:
    pop bc
    pop de
    ret
