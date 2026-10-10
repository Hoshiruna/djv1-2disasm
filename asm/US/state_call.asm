
; Call SaveSnapshot in bank 1, then restore the previous ROM bank.
SaveState:


Call_000_375c:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call SaveSnapshot
    call PopRomBank
    ret

; Call LoadSnapshot in bank 1, then restore the previous ROM bank.
RestoreState:


Call_000_376a:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call LoadSnapshot
    call PopRomBank
    ret
