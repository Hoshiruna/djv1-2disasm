
; Save operation slots, read the first item type and ID, prepare the item, then select slot zero.
ScriptFirstItem:


    push af
    ld a, $01
    call PushRomBank

Jump_000_21f6:
    pop af
    call WriteOpSlots
    call PopRomBank
    call ReadArgs2

Jump_000_2200:
    ld a, [wArg0]
    ld [wItemType], a
    ld a, [wArg1]
    ld [wItemId], a
    push af
    ld a, $01

Call_000_220f:
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    xor a
    ldh [hItemSlot], a
    ret

; Save operation slots, read the alternate item type and ID, prepare the item, and restore the slot index.
ScriptAltItem:


    ldh a, [hItemSlot]
    push af
    push af
    ld a, $01

Call_000_2223:
    call PushRomBank

Jump_000_2226:
    pop af
    call WriteOpSlots
    call PopRomBank
    call ReadArgs2
    ld a, [wArg0]
    ld [wAltSlot], a
    ld a, [wArg1]
    ld [wAltSlot+1], a
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    pop af
    ldh [hItemSlot], a
    ret
