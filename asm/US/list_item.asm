
; A = packed byte; store it in the selected slot at wListPacked, then decode it in bank 5.
SetListItem:

Call_000_36c5:
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListPacked
    add hl, bc
    ld [hl], a
    push af
    ld a, $05
    call PushRomBank
    pop af
    call DecodeListItem
    call PopRomBank
    ret

; A = packed byte; decode the selected type/value in bank 5 without writing wListPacked.
DecodeList:

Call_000_36e0:
    push af
    ld a, $05
    call PushRomBank
    pop af
    call DecodeListItem
    call PopRomBank
    ret
