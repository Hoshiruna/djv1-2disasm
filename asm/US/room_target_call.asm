
; Run the Case I hit test in the current bank-one context, or switch to bank three for Case II.
PickRoomTarget:


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_381b

    call C1PickTarget
    ret


jr_000_381b:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2PickTarget
    call PopRomBank
    ret
