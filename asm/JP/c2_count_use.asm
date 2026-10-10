
; Decrement a nonzero case-two category-two count, refresh lists, and set the result; at zero, clear the result.
UseC2Count2:


    ld a, [wC2Count2]
    cp $00
    jr z, jr_000_318e

    dec a
    ld [wC2Count2], a
    call RefreshLists
    call SetResult
    ret


jr_000_318e:
    call ClearResult
    ret
