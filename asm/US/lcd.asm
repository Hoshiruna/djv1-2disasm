
; Mask VBlank IRQ, wait for LY=$91, clear LCDC bit 7, then restore IE.
DisableLcd:


Call_000_0420:
    ldh a, [rIE]
    ld [wIrqSave], a
    res 0, a
    ldh [rIE], a

jr_000_0429:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_0429

Call_000_042f:
    ldh a, [rLCDC]

Call_000_0431:
    and $7f
    ldh [rLCDC], a

Jump_000_0435:
    ld a, [wIrqSave]
    ldh [rIE], a
    ret

; Set LCDC window-enable bit 5; preserve HL.
ShowWindow:


Call_000_043b:
    push hl

Jump_000_043c:
    ld hl, rLCDC
    set 5, [hl]
    pop hl
    ret

; Clear LCDC window-enable bit 5; preserve HL.
HideWindow:


Call_000_0443:
    push hl
    ld hl, rLCDC

Call_000_0447:
    res 5, [hl]

Call_000_0449:
    pop hl
    ret

; Request palettes and write the saved hLcdc value to LCDC.
RestoreLcd:


Call_000_044b:
    ldh a, [hVideoFlags]
    or $01
    ldh [hVideoFlags], a
    ldh a, [hLcdc]
    ldh [rLCDC], a
    ret
