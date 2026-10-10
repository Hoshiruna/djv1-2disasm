
; Call FlushChanges in bank two with the original A, then restore the previous ROM bank.
FlushChangesCall:


Call_000_393c:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call FlushChanges
    call PopRomBank
    ret
