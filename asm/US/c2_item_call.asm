
; Call the bank-three selected list-item conversion and restore the previous ROM bank.
CheckC2ListItem:


Call_000_310d:
    push af
    ld a, $03

Call_000_3110:
    call PushRomBank
    pop af
    call MapC2ListItem
    call PopRomBank
    ret
