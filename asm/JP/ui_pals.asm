; UI palette indices and 64-byte CGB palette records.

UiPalRefs:
    dw UiPal0
    dw UiPal1
    dw UiPalCommonObjects
    dw UiPal3
    dw UiPal4
    dw UiPal5
    dw UiPalCase1ClosingObjects
    dw UiPal7

UiPal0:
    db $00, $00, $31, $11, $5d, $3e, $ff, $67, $40, $6c, $03, $59, $7c, $3a, $ff, $47
    db $00, $00, $00, $3c, $40, $6c, $ff, $03, $00, $00, $00, $3c, $5d, $3e, $ff, $67
    db $00, $00, $31, $11, $5d, $3e, $ce, $00, $00, $00, $ce, $00, $5d, $3e, $00, $3c
    db $60, $35, $00, $00, $d8, $01, $df, $03, $00, $00, $a0, $36, $f3, $7f, $e0, $5f

UiPal1:
    db $00, $00, $31, $11, $5d, $3e, $ff, $67, $40, $6c, $03, $59, $7c, $3a, $ff, $47
    db $00, $00, $00, $3c, $40, $6c, $ff, $03, $00, $00, $00, $3c, $5d, $3e, $ff, $67
    db $00, $00, $31, $11, $5d, $3e, $ce, $00, $00, $00, $ce, $00, $5d, $3e, $00, $3c
    db $60, $35, $00, $00, $d8, $01, $df, $03, $00, $00, $a0, $36, $f3, $7f, $e0, $5f

; OBJ palette used by the title, save UI and audio test.
UiPalCommonObjects:
UiPal2:
PalTitleObj:
    INCBIN "../../res/ui/title/title_objects.pal", $0, $40

UiPal3:
    db $f3, $09, $45, $00, $68, $00, $cb, $04, $f3, $09, $00, $00, $4c, $00, $94, $00
    db $f3, $09, $42, $24, $6b, $2d, $73, $4e, $f3, $09, $00, $00, $b4, $00, $3f, $02
    db $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f
    db $e0, $7f, $eb, $0c, $70, $1d, $35, $36, $e0, $7f, $00, $00, $1f, $00, $bf, $01

UiPal4:
    db $f3, $09, $45, $00, $68, $00, $cb, $04, $f3, $09, $00, $00, $4c, $00, $94, $00
    db $f3, $09, $42, $24, $6b, $2d, $73, $4e, $f3, $09, $00, $00, $b4, $00, $3f, $02
    db $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f
    db $e0, $7f, $eb, $0c, $70, $1d, $35, $36, $e0, $7f, $00, $00, $1f, $00, $bf, $01

UiPal5:
    db $f3, $09, $45, $00, $68, $00, $cb, $04, $f3, $09, $00, $00, $4c, $00, $94, $00
    db $f3, $09, $42, $24, $6b, $2d, $73, $4e, $f3, $09, $00, $00, $b4, $00, $3f, $02
    db $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f
    db $e0, $7f, $eb, $0c, $70, $1d, $35, $36, $e0, $7f, $00, $00, $1f, $00, $bf, $01

; OBJ palette staged by the Case I closing UI.
UiPalCase1ClosingObjects:
UiPal6:
    db $f3, $09, $45, $00, $68, $00, $cb, $04, $f3, $09, $00, $00, $4c, $00, $94, $00
    db $f3, $09, $42, $24, $6b, $2d, $73, $4e, $f3, $09, $00, $00, $b4, $00, $3f, $02
    db $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f
    db $e0, $7f, $eb, $0c, $70, $1d, $35, $36, $e0, $7f, $00, $00, $1f, $00, $bf, $01

UiPal7:
    db $f3, $09, $45, $00, $68, $00, $cb, $04, $f3, $09, $00, $00, $4c, $00, $94, $00
    db $f3, $09, $42, $24, $6b, $2d, $73, $4e, $f3, $09, $00, $00, $b4, $00, $3f, $02
    db $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f, $e0, $7f
    db $e0, $7f, $eb, $0c, $70, $1d, $35, $36, $e0, $7f, $00, $00, $1f, $00, $bf, $01

UiMapPalRefs:
    dw UiMapPalCopyrightNotice
    dw UiMapPalTitle
    dw UiMapPalSaveSelection
    dw UiMapPalGameHud
    dw UiMapPalDeveloperLogo
    dw UiMapPalBlackjack
    dw UiMapPalBlankTextPanel

; BG palette selected by UI map index 0.
UiMapPalCopyrightNotice:
UiMapPal0:
    db $50, $76, $ff, $7f, $61, $48, $25, $75, $1f, $00, $ff, $7f, $61, $48, $04, $75
    db $ff, $39, $ff, $7f, $1d, $00, $ff, $00, $ff, $39, $ff, $7f, $1d, $00, $25, $75
    db $1f, $00, $ff, $7f, $1f, $00, $00, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00
    db $1f, $00, $1f, $00, $1f, $00, $1f, $00, $2f, $7e, $1f, $42, $1f, $21, $e3, $78

; BG palette selected by UI map index 1.
UiMapPalTitle:
UiMapPal1:
PalTitleBg:
    INCBIN "../../res/ui/title/title.pal", $0, $40

; BG palette selected by UI map index 2.
UiMapPalSaveSelection:
UiMapPal2:
    db $00, $00, $31, $11, $5d, $3e, $ff, $67, $40, $6c, $03, $59, $7c, $3a, $ff, $47
    db $00, $00, $00, $3c, $40, $6c, $ff, $03, $00, $00, $00, $3c, $5d, $3e, $ff, $67
    db $00, $00, $31, $11, $5d, $3e, $ce, $00, $00, $00, $ce, $00, $5d, $3e, $00, $3c
    db $60, $35, $00, $00, $d8, $01, $df, $03, $00, $00, $a0, $36, $f3, $7f, $e0, $5f

; BG palette selected by UI map index 3.
UiMapPalGameHud:
UiMapPal3:
Resource_JP_00a_42de:
    INCBIN "../../res/ui/hud/JP/hud.pal", $0, $2e
jr_00a_430c:
    INCBIN "../../res/ui/hud/JP/hud.pal", $2e, $5
jr_00a_4311:
    INCBIN "../../res/ui/hud/JP/hud.pal", $33, $d

; BG palette selected by UI map index 4.
UiMapPalDeveloperLogo:
UiMapPal4:
    db $50, $76, $ff, $7f, $61, $48, $25, $75, $1f, $00, $ff, $7f, $61, $48, $04, $75
    db $ff, $39, $ff, $7f, $1d, $00, $ff, $00, $ff, $39, $ff, $7f, $1d
jr_00a_433b:
    db $00, $25, $75, $1f, $00, $ff, $7f, $1f, $00, $00, $00, $1f, $00, $1f, $00, $1f
    db $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $2f, $7e, $1f, $42, $1f
    db $21, $e3, $78

; Blackjack background palette selected by UI map index five; differs from scene-row $43 palettes.
UiMapPalBlackjack:
UiMapPal5:
    db $00, $00, $31, $46, $f7, $5e, $00, $16, $00, $00, $ef, $3d, $00, $16, $ff, $7f
    db $00, $00, $00, $00, $00, $16, $ff, $7f, $00, $00, $1c, $00, $00, $16, $ff, $7f
    db $00, $00, $ff, $7f, $00, $16, $ff, $7f, $00, $00, $31, $00, $00, $16, $ff, $03
    db $ff, $7f, $31, $46, $f7, $5e, $00, $16, $00, $00, $02, $7e, $1e, $00, $5f, $03

; BG palette selected by UI map index 6.
UiMapPalBlankTextPanel:
UiMapPal6:
    db $7f, $03, $1f, $00, $00, $7c, $00, $00, $7f, $03, $1f, $00, $00, $7c, $00, $00
    db $7f, $03, $1f, $00, $00, $7c, $00, $00, $7f, $03, $1f, $00, $00, $7c, $00, $00
    db $7f, $03, $1f, $00, $00, $7c, $00, $00, $7f, $03, $1f, $00, $00, $7c, $00, $00
    db $7f, $03, $1f, $00, $00, $7c, $00, $00, $7f, $03, $1f, $00, $00, $7c, $00, $00
