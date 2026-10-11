
; Call ApplyChange in bank 3 and restore the previous ROM bank.
ApplyChangeBank:


Call_000_3010:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call ApplyChange
    call PopRomBank
    ret

; Call UndoC2Change in bank 3 and restore the previous ROM bank.
UndoChangeBank:


Call_000_301e:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call UndoC2Change
    call PopRomBank
    ret
