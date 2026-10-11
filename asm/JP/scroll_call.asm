; Call the bank 1 scroll reset while restoring the previous ROM bank.
ResetObjScroll:


Call_000_39c8:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ResetScroll
    call PopRomBank
    ret
