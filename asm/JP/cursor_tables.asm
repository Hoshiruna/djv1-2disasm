
CursorPos:
    db $10, $80
    db $48, $80
    db $20, $80
    db $90, $80
    db $30, $80
    db $58, $80
    db $80, $80
    db $70, $80
    db $90, $60
    db $80, $18
    db $98, $18
    db $6c, $9c
    db $04, $9c
    db $04, $b4
    db $04, $c4
    db $04, $d4
    db $04, $e4
    db $54, $b4
    db $54, $c4
    db $54, $d4
    db $54, $e4
    db $64, $34
    db $38, $5a
    db $8c, $44

CursorLinks:
    db $02, $03, $0c, $16
    db $05, $04, $0b, $16
    db $04, $00, $0c, $16
    db $00, $06, $0b, $08
    db $01, $02, $0c, $16
    db $07, $01, $0b, $16
    db $03, $07, $0b, $08
    db $06, $05, $0b, $08
    db $ff, $15, $03, $17
    db $0a, $15, $17, $ff
    db $ff, $09, $17, $ff
    db $18, $0c, $11, $07
    db $0b, $19, $0d, $00
    db $11, $19, $0e, $0c
    db $12, $19
jr_001_6312:
    db $0f, $0d
    db $13, $19, $10, $0e
    db $14, $19, $ff, $0f
    db $18, $0d, $12, $0b
    db $18, $0e, $13, $11
    db $18, $0f, $14, $12
    db $18, $10, $ff
jr_001_632b:
    db $13

ListLinks:
    db $ff, $ff, $ff, $ff
jr_001_6330:
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff
jr_001_633a:
    db $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $11, $ff, $0e, $ff
    db $12, $ff, $0f, $0d
    db $13, $ff, $10, $0e
    db $14, $ff, $ff, $0f
    db $ff, $0d, $12, $ff
    db $ff, $0e, $13, $11
    db $ff, $0f, $14, $12
    db $ff, $10, $ff, $13

CursorScroll:
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $00, $00, $60, $60, $60, $60, $60
    db $60, $60, $60, $60, $60, $00, $00, $00
