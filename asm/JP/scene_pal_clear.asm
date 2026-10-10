
; Zero the first seven background palettes, request their transfer, and wait one frame.
ClearScenePals:


Call_000_0e52:
    ld hl, wBgPal
    ld d, $38
    xor a

jr_000_0e58:
    ld [hl+], a
    dec d
    jr nz, jr_000_0e58

    call RequestPals
    call WaitFrame
    ret
