
; Run the Case I hit test in the current bank-one context, or switch to bank three for Case II.
PickRoomTarget:


    ld a, [wCaseId]
    cp $00
    jr nz, PickRoomTargetCase2

    call C1PickTarget
    ret


; Switch to bank three for the Case II room-target hit test.
PickRoomTargetCase2:
jr_000_381b:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2PickTarget
    call PopRomBank
    ret
