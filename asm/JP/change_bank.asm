
; Call ApplyChange in bank 3 and restore the previous ROM bank.
ApplyChangeBank:


Call_000_3160:
    push af
    ld a, $03
    call PushRomBank

Jump_000_3166:
    pop af
    call ApplyChange
    call PopRomBank
    ret

; Call UndoC2Change in bank 3 and restore the previous ROM bank.
UndoChangeBank:


Call_000_316e:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call UndoC2Change
    call PopRomBank
    ret
