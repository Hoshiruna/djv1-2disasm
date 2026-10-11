
; Call DrawC1Marks in bank 1 and restore the previous ROM bank.
RefreshC1Marks:


    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawC1Marks
    call PopRomBank
    ret

; Call the list UI redraw in bank 1, then restore the previous ROM bank.
RefreshLists:


Call_000_3923:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawListUI
    call PopRomBank
    ret
