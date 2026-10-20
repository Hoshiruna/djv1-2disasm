
; Zero the first seven background palettes, request their transfer, and wait one frame.
ClearScenePals:


Call_000_0e5d:
    ld hl, wBgPal
    ld d, $38
    xor a

; Clear the next byte of the first seven background palettes.
ClearScenePalNextByte:
jr_000_0e63:
    ld [hl+], a
    dec d
    jr nz, ClearScenePalNextByte

    call RequestPals
    call WaitFrame
    ret
