
; Decrement Case II quarters with byte wrap and refresh lists.
DecC2Quarter:
DecC2Count:


    ld a, [wC2Quarters]
    dec a
    ld [wC2Quarters], a
    call RefreshLists
    ret

; Set the result when Case II quarters are nonzero; otherwise clear it.
TestC2Quarters:
TestC2Count:


    ld a, [wC2Quarters]
    cp $00
    jr z, jr_000_2ca4

    call SetResult
    ret


jr_000_2ca4:
    call ClearResult
    ret
