
; Call the bank-two room audio selector with the original A and restore the previous ROM bank.
RoomCueCall:


Call_000_3837:
Jump_000_3837:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call PlayRoomCue
    call PopRomBank
    ret
