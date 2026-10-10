; Ending scene pairs, text pointers and $5f-terminated text records.

CreditScenes:
    db $00, $28, $00
jr_003_7090:
    db $30, $01, $14
jr_003_7093:
    db $01, $0d, $01, $26, $01, $37, $01, $34, $01, $03, $01, $07, $00, $41, $00, $2f
    db $00, $0e, $00, $18, $00
jr_003_70a8:
    db $20, $00
jr_003_70aa:
    db $4d, $00, $50, $00, $5a, $00, $73, $00, $8a, $01, $41

CreditTextPtrs:
    dw CreditText00
    dw CreditText01
    dw CreditText02
    dw CreditText03
    dw CreditText04
    dw CreditText05
    dw CreditText06
    dw CreditText07
    dw CreditText08
    dw CreditText09
    dw CreditText10
    dw CreditText11
    dw CreditText12
    dw CreditText13
    dw CreditText14
    dw CreditText15
    dw CreditText16
    dw CreditText17
    dw CreditText18
    dw CreditText19
    dw CreditText20
    dw CreditText21
    dw CreditText22
    dw CreditText23
    dw CreditText24
    dw CreditText25
    dw CreditText26
    dw CreditText27
    dw CreditText28
    dw CreditText29
    dw CreditText30

CreditText00:
    db $52, $55, $50, $00, $51, $0c, $0b, $04, $00, $03, $1a, $0f, $11, $0e, $06, $11
    db $00, $0c, $0c, $04, $11, $53, $5f

CreditText01:
    db $52, $50, $0a, $51, $0e, $05, $20, $06, $20, $00
jr_003_7114:
    db $20, $0a, $20, $53
jr_003_7118:
    db $5f

CreditText02:
    db $52, $55, $50, $00, $51, $0c, $02
jr_003_7120:
    db $07, $08, $04, $05, $1a, $04, $0d, $06, $08, $0d, $04, $04, $11, $53, $5f

CreditText03:
    db $52, $50, $07, $51, $0e, $12, $20, $1a, $0c, $08, $02, $07, $08, $14, $11, $00
    db $53, $5f

CreditText04:
    db $52, $55, $50, $00, $51, $0c, $0b, $04, $00, $03, $1a, $00, $11, $13, $08, $12
jr_003_7151:
    db $13, $53, $5f

CreditText05:
    db $52, $50, $0a, $51, $0e, $0a, $20, $1a, $12, $14, $04, $03, $00, $53, $5f

CreditText06:
    db $52, $55, $50, $00, $51, $0c, $00, $11, $13, $08, $12, $13, $53, $5f

CreditText07:
    db $52, $50, $08, $51, $0e
jr_003_7176:
    db $0a, $20, $1a, $0c, $14, $11, $00, $0e, $0a, $00, $53, $5f

CreditText09:
    db $52, $50, $0b, $51, $0e, $0a, $08, $13, $00, $18, $00
jr_003_718d:
    db $0d, $53, $5f

CreditText10:
    db $52, $50, $07
jr_003_7193:
    db $51, $0e, $0a, $20, $1a, $18, $0e, $0d, $04, $0d, $00, $02, $00, $53, $5f

CreditText11:
    db $52, $55, $50, $00, $51, $0c
jr_003_71a8:
    db $12, $0f, $04, $02, $08, $00, $0b, $1a, $13, $07
jr_003_71b2:
    db $00, $0d, $0a, $12, $1a, $13, $0e, $53, $5f

CreditText12:
    db $52, $50, $0b, $51, $0e, $05, $20, $1a, $13, $0e, $0d, $0e, $53, $5f

CreditText13:
    db $52, $55, $50, $00, $51, $0c, $0b, $04, $00, $03, $1a, $12, $0e, $14, $0d, $03
    db $53, $5f

CreditText14:
    db $52, $50
jr_003_71dd:
    db $03, $51, $0e, $0a, $0e, $14, $09, $08, $1a, $0d, $08, $12, $07, $08, $0a, $00
    db $16, $00, $53, $5f

CreditText15:
    db $52, $55, $50, $00, $51, $0c, $12, $0e, $14, $0d, $03, $53, $5f

CreditText16:
    db $52, $50, $05, $51, $0e, $0c, $00, $12, $00, $0e, $0c, $08, $1a, $0c, $08, $14
    db $11, $00, $53, $5f

CreditText18:
    db $52, $50, $0c, $51, $0e, $07, $00, $12, $12, $08, $04, $53, $5f

CreditText19:
    db $52, $55, $50, $04, $51, $0e, $21, $1a, $12, $13, $00, $05, $05, $1a, $21, $53
    db $5f

CreditText08:
    db $52, $50, $04, $51, $0c, $03, $04, $09, $00, $15, $14, $1a, $08, $2d, $d4, $53
    db $5f

CreditText17:
    db $52, $50, $02, $51, $0e, $0e, $0b, $08, $15, $04, $11, $1a, $0c, $08, $18, $00
    db $12, $07, $08, $13, $00, $53, $5f

CreditText20:
    db $52, $50, $08, $51, $0e, $13, $00, $0c, $00, $18, $0e, $1a, $08, $13, $0e, $53
    db $5f

CreditText21:
    db $52, $50, $07, $51, $0e, $13, $0e, $03
jr_003_7271:
    db $03, $1a, $03, $18, $0c, $04, $0d, $13, $53, $5f

CreditText22:
    db $52, $50, $00, $51, $0b, $0b, $08, $02, $04, $0d, $12, $04, $03, $1a, $05, $11
    db $0e, $0c, $1d, $08, $0d, $05, $08, $0d, $08, $13, $04, $1a, $15, $04, $0d, $13
    db $14, $11, $04, $12, $25, $08, $0d, $02, $20, $53, $5f

CreditText23:
    db $52, $55, $50, $00, $51, $0c, $00, $12, $12, $0e, $02, $08, $00, $13, $04, $1a
    db $0f, $11, $0e, $03, $14, $02, $04, $11, $53, $5f

CreditText24:
    db $52, $50, $06, $51, $0e, $04, $14, $06, $04, $0d, $04, $1a, $04, $15, $00, $0d
    db $12, $53, $5f

CreditText25:
    db $52, $50, $06, $51, $0e, $0a, $00, $11, $0b, $1a, $11, $0e, $04, $0b, $0e, $05
    db $12, $53, $5f

CreditText26:
    db $52, $50, $08, $51, $0e, $03, $00, $15, $04, $1a, $0c, $00, $11, $12, $07, $53
    db $5f

CreditText27:
    db $52
jr_003_72f8:
    db $50, $01, $51, $0f, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb
    db $fc, $fd, $dd, $de, $df, $53, $5f

CreditText28:
    db $52, $50, $01, $51, $0f, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea
    db $eb, $ec, $ed, $ee, $ef, $53, $5f

CreditText29:
    db $52, $50, $00, $51, $0c, $0f, $11, $04, $12, $04, $0d, $13, $04, $03, $1a, $01
    db $18, $1a, $0a, $04, $0c, $02, $0e, $53, $5f

CreditText30:
    db $52, $55, $50, $05, $51, $0d, $13, $07, $04, $1a, $04, $0d, $03, $53, $5f
