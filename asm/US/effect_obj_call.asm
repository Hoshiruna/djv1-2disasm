
; Call the bank-two single-object list draw and restore the previous ROM bank.
DrawEffectObj:


Call_000_3802:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call BuildEffectObj
    call PopRomBank
    ret
