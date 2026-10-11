
; Fill the room panel, draw Case II marks, and submit the map queue.
DrawC2Panel:


Call_000_23bd:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FillRoomPanel
    call PopRomBank
    push af
    ld a, $03
    call PushRomBank
    pop af
    call DrawC2Marks
    call PopRomBank
    call SubmitMapQueue
    ret
