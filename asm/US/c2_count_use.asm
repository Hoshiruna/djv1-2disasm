
; Decrement a nonzero case-two category-two count, refresh lists, and set the result; at zero, clear the result.
UseC2Count2:


    ld a, [wC2Count2]
    cp $00

Jump_000_3031:
    jr z, jr_000_303e

    dec a
    ld [wC2Count2], a
    call RefreshLists
    call SetResult

Jump_000_303d:
    ret


jr_000_303e:
    call ClearResult
    ret
