
; Reset object scrolling, call the bank-three pick effect, and restore the previous ROM bank.
PlayPickEffect:


    call ResetObjScroll
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PlayC2PickFx
    call PopRomBank
    ret
