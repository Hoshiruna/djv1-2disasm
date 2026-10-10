
; Set sprite position to $31, $00, step case-two animation $68, and draw room objects.
DrawTextWaitObj:


Call_003_58d8:
    ld a, $31
    ldh [hSpriteX], a

jr_003_58dc:
    ld a, $00
    ldh [hSpriteY], a
    ld a, $68
    call StepBankAnim
    call DrawRoomObjs
    ret
