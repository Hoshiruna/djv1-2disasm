
; Clear text mode bit zero to select tile map $9800.
TextUseMap0:


Jump_000_1385:
    ld a, [wTextMode]
    and $fe
    ld [wTextMode], a
    ret

; Set text mode bit zero to select tile map $9c00.
TextUseMap1:


Jump_000_138e:
    ld a, [wTextMode]
    or $01
    ld [wTextMode], a
    ret
