

jr_000_1137:
    call DispatchTextCtrl
    jp ReadTextLoop

; Dispatch regional text controls using the original comparisons or Japan word table.
DispatchTextCtrl:


Call_000_113d:
    ld a, [$c660]
    cp $20
    ret nc

    rst RST_00

; Control bytes $00..$1f index this table.
JpTextControls:
    dw DrawTextName
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw FinishText
    dw DrawTextNum8
    dw DrawTextNum16
    dw SetTextX
    dw SetTextY
    dw FinishText
    dw FinishText
    dw TextLineControl
    dw WaitTextPage
    dw ResetTextPage
    dw TextNewline
    dw FinishText
    dw FinishText
    dw FinishText
    dw FinishText
    dw DrawNameIndirect
    dw FinishText
    dw TextUseMap0
    dw TextUseMap1
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
Jump_000_1182:
    dw DrawTextGlyph
