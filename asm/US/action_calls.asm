
; Call CheckC1Rooms in bank 2 and restore the previous ROM bank.
CheckRooms:


    push af
    ld a, $02
    call PushRomBank
    pop af
    call CheckC1Rooms
    call PopRomBank
    ret

; Read one script argument from bank 6 and restore the previous ROM bank.
ReadC1Arg:


Call_000_3786:
    ld a, $06
    call PushRomBank
    call ReadArg
    call PopRomBank
    ret

; Call InitSelAction in bank 2 and restore the previous ROM bank.
InitAction:


Call_000_3792:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call InitSelAction
    call PopRomBank
    ret
