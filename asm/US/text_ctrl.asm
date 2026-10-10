
; Dispatch regional text controls using the original comparisons or Japan word table.
DispatchTextCtrl:

Call_000_1135:
    cp $1b
    jp z, WaitTextPage

    cp $1c
    jr z, jr_000_1178

    cp $1d
    jp z, TextLineControl

    cp $3c
    jp z, DrawTextName

    cp $3d
    jp z, DrawTextName

    cp $3e
    jp z, DrawNameIndirect

    cp $3f
    jp z, DrawTextNum8

    cp $54
    jp z, DrawTextNum16

    cp $50
    jp z, SetTextX

    cp $51
    jp z, SetTextY

    cp $52
    jp z, TextUseMap0

    cp $53
    jp z, TextUseMap1

    cp $55
    jp z, SetTextFlag7

    jp DrawTextGlyph


jr_000_1178:
    ld a, [wTextMode]
    bit 1, a
    call z, WaitTextPage
    jp ResetTextPage

; Set text mode bit seven.
SetTextFlag7:


Jump_000_1183:
    ld a, [wTextMode]
    or $80
    ld [wTextMode], a
    ret
