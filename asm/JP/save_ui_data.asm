
SavePanelFill:
    db $65, $99, $0c, $06, $7f

SavePromptFill:
    db $a5, $99, $0c, $03, $7f

SaveUiPtrs0:
    dw SaveUiText00
    dw SaveUiText01
    dw SaveUiText02

SaveUiText00:
    db $a6, $99, $08, $01, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4

SaveUiText01:
    db $a6, $99, $09, $01, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4, $d1

SaveUiText02:
    db $a6, $99, $0a, $01, $c5, $ce, $d1, $d3, $d2, $c4, $d3, $d9, $c4, $cd

SaveUiPtrs1:
    dw SaveUiText10
    dw SaveUiText11
    dw SaveUiText12

SaveUiText10:
    db $c6, $99, $04, $01, $c4, $d7, $c8, $d3

SaveUiText11:
    db $c6, $99, $06, $01, $d2, $ce, $d1, $d3, $c8, $c4

SaveUiText12:
    db $c6, $99, $04, $01, $c4, $cd, $c3, $c4

SaveUiPtrs2:
    dw SaveUiText20
    dw SaveUiText21
    dw SaveUiText22

SaveUiText20:
    db $e6, $99, $08, $01, $cd, $c4, $d6, $7f, $c6, $c0, $cc, $c4

SaveUiText21:
    db $e6, $99, $0b, $01, $cd, $ce, $d4, $d5, $c4, $c0, $d4, $7f, $c9, $c4, $d4

SaveUiText22:
    db $e6, $99, $0b, $01, $cd, $c4, $d4, $c4, $d2, $7f, $d2, $cf, $c8, $c4, $cb

SaveUiPtrs3:
    dw SaveUiText30
    dw SaveUiText31
    dw SaveUiText32

SaveUiText30:
    db $a9, $99, $03, $02, $d8, $c4, $d2, $cd, $ce, $7f

SaveUiText31:
    db $a9, $99, $03, $02, $ce, $d4, $c8, $cd, $ce, $cd

SaveUiText32:
    db $a9, $99, $04, $02, $c9, $c0, $7f, $7f, $cd, $c4, $c8, $cd

SaveUiPtrs4:
    dw SaveUiText40
    dw SaveUiText41
    dw SaveUiText42

SaveUiText40:
Call_002_7ace:
    db $a9, $99, $03, $02, $d8, $c4, $d2, $cd, $ce, $7f

SaveUiText41:
    db $a9, $99, $03, $02, $ce, $d4, $c8, $cd, $ce, $cd

SaveUiText42:
    db $a9, $99, $04, $02, $c9, $c0, $7f, $7f, $cd, $c4, $c8, $cd

SaveUiPtrs5:
    dw SaveUiText50
    dw SaveUiText51
    dw SaveUiText52

SaveUiText50:
Call_002_7af4:
    db $67, $99, $06, $01, $d2, $c0, $d5, $c4, $7f, $e6

SaveUiText51:
    db $67, $99, $07, $01, $c6, $c0, $d1, $c3, $c4, $7f, $e6

SaveUiText52:
    db $67, $99, $0b, $01, $d2, $cf, $c4, $c8, $c2, $c7, $c4, $d1, $cd, $7f, $e6

SaveUiPtrs6:
    dw SaveUiText60
    dw SaveUiText61
    dw SaveUiText62

SaveUiText60:
    db $87, $99, $08, $03, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $c4, $cd, $c3, $7f, $7f, $7f, $7f, $7f

SaveUiText61:
    db $87, $99, $09, $03, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4, $d1, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $c5, $c8, $cd, $7f, $7f, $7f, $7f, $7f, $7f

SaveUiText62:
    db $87, $99, $0a, $03, $c5, $ce, $d1, $d3, $d2, $c4, $d3, $d9, $c4, $cd, $7f, $7f
    db $7f, $7f
jr_002_7b6b:
    db $7f, $7f, $7f, $7f, $7f, $7f, $c4, $cd, $c3, $c4, $7f, $7f, $7f, $7f, $7f, $7f
