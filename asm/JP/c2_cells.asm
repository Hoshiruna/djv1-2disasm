
; Consume a battery when available, refresh lists, and set the result; at zero, clear the result.
UseC2Cell:
UseC2Count2:


    ld a, [wC2Cells]
    cp $00
    jr z, C2CellEmpty

    dec a
    ld [wC2Cells], a
    call RefreshLists
    call SetResult
    ret


; Clear the result when no Case II battery remains.
C2CellEmpty:
jr_000_318e:
    call ClearResult
    ret
