; Set result bit 0; retain the other result bits.
SetResult:


Call_000_1b4e:
Jump_000_1b4e:
    ld a, [wStateResult]
    set 0, a
    ld [wStateResult], a
    ret
; Clear result bit 0; retain the other result bits.
ClearResult:


Call_000_1b57:
Jump_000_1b57:
    ld a, [wStateResult]
    res 0, a
    ld [wStateResult], a
    ret
