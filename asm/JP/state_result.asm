; Set result bit 0; retain the other result bits.
SetResult:


Call_000_1c9e:
Jump_000_1c9e:
    ld a, [wStateResult]
    set 0, a
    ld [wStateResult], a
    ret
; Clear result bit 0; retain the other result bits.
ClearResult:


Call_000_1ca7:
Jump_000_1ca7:
    ld a, [wStateResult]
    res 0, a
    ld [wStateResult], a
    ret
