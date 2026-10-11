
; At sprite position $31, zero, step AnimWarLoop and draw room objects.
DrawWarText:
DrawTextWaitObj:


Call_003_58d8:
    ld a, $31
    ldh [hSpriteX], a

jr_003_58dc:
    ld a, $00
    ldh [hSpriteY], a
    ld a, AnimWarLoop
    call StepBankAnim
    call DrawRoomObjs
    ret
