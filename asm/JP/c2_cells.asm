
; Consume a battery when available, refresh lists, and set the result; at zero, clear the result.
UseC2Cell:
UseC2Count2:


    ld a, [wC2Cells]
    cp $00
    jr z, jr_000_318e

    dec a
    ld [wC2Cells], a
    call RefreshLists
    call SetResult
    ret


jr_000_318e:
    call ClearResult
    ret
