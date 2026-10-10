
; Decrement the shared case-two count with eight-bit wrap and refresh the lists.
DecC2Count:


    ld a, [wC2Count0]
    dec a
    ld [wC2Count0], a
    call RefreshLists
    ret

; Set the result when the case-two count is nonzero; otherwise clear it.
TestC2Count:


    ld a, [wC2Count0]
    cp $00
    jr z, jr_000_2ca4

    call SetResult
    ret


jr_000_2ca4:
    call ClearResult
    ret
