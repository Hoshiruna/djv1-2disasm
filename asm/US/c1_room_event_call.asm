
; Run the Case I room-event check in bank two and restore the previous ROM bank.
C1RoomEventCall:


    push af
    ld a, $02
    call PushRomBank
    pop af
    call TryC1RoomEvent
    call PopRomBank
    ret
