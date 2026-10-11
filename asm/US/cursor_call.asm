
; Preserve HL, BC, and DE while calling the bank-1 cursor with the original A.
DrawRoomCursor:
    push hl
    push bc
    push de
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawCursor
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret
