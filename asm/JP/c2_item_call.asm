
; Call the bank-three selected list-item conversion and restore the previous ROM bank.
CheckC2ListItem:


Call_000_325d:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call MapC2ListItem
    call PopRomBank
    ret
