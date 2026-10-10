
; Read an argument and set the result when it equals the case-one held-item byte.
TestHeldArg:


    call ClearResult
    call ReadArg
    ld hl, wC1HeldItem
    cp [hl]
    jr nz, jr_000_2b7d

    call SetResult

jr_000_2b7d:
    ret

; When the held-item byte is zero, copy the first-slot item ID into it and set the result.
HoldItem:


    call ClearResult
    ld a, [wC1HeldItem]
    cp $00
    jr nz, jr_000_2b91

Jump_000_2b88:
    ld a, [wItemId]
    ld [wC1HeldItem], a
    call SetResult

jr_000_2b91:
    ret

; Clear a nonzero held-item byte and set the result; a zero byte leaves the result clear.
ClearHeldItem:


    call ClearResult
    ld a, [wC1HeldItem]
    cp $00
    jr z, jr_000_2ba3

    xor a
    ld [wC1HeldItem], a
    call SetResult

jr_000_2ba3:
    ret

; For a nonzero held item, write first-slot type three and its ID, prepare and append the selected slot, then clear the held byte.
ReturnHeldItem:


    call ClearResult
    ld a, [wC1HeldItem]
    cp $00
    ret z

    ld a, $01
    ld [wSkipListWait], a
    ld a, $03
    ld [wItemType], a
    ld a, [wC1HeldItem]
    ld [wItemId], a
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PackListItem
    call PopRomBank
    call ClearItemState
    call AddSelList
    xor a
    ld [wSkipListWait], a
    ld a, [wFoundRow]
    ld [wListRow], a
    xor a
    ld [wC1HeldItem], a
    call SetResult
    ret
