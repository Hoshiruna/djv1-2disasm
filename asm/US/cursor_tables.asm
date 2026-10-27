
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
    db $8c, $9c
    db $04, $9c
    db $04, $ac
    db $04, $b4
    db $04, $bc
    db $04, $c4
    db $04, $cc
    db $04, $d4
    db $04, $dc
    db $04, $dc
    db $64, $34
    db $38, $5a
    db $8c, $44

CursorLinks:
    db $02, $03, InputSelPrevPage, InputSelRoomFineStart
    db $05, $04, InputSelPrevPage, InputSelRoomFineStart
    db $04, $00, InputSelPrevPage, InputSelRoomFineStart
    db $00, $06, InputSelNextPage, $08
    db $01, $02, InputSelPrevPage, InputSelRoomFineStart
    db $07, $01, InputSelPrevPage, InputSelRoomFineStart
    db $03, $07, InputSelNextPage, $08
    db $06, $05, InputSelNextPage, $08
    db $ff, InputSelRoomFine, $03, InputSelRoomGrid
    db InputSelAux, InputSelRoomFine, InputSelRoomGrid, $ff
    db $ff, InputSelSelf, InputSelRoomGrid, $ff
    db CursorLinkNextPage, InputSelPrevPage, InputSelListFirst, $07
    db InputSelNextPage, CursorLinkPrevPage, InputSelListFirst, $00
    db CursorLinkNextPage, CursorLinkPrevPage, $0e, InputSelPrevPage
    db CursorLinkNextPage, CursorLinkPrevPage
jr_001_628b:
    db $0f, InputSelListFirst
    db CursorLinkNextPage, CursorLinkPrevPage, $10, $0e
    db CursorLinkNextPage, CursorLinkPrevPage, $11, $0f
    db CursorLinkNextPage, CursorLinkPrevPage, $12, $10
    db CursorLinkNextPage, CursorLinkPrevPage, $13, $11
    db CursorLinkNextPage, CursorLinkPrevPage, $ff
jr_001_62a0:
    db $12
    db CursorLinkNextPage, CursorLinkPrevPage, $ff
jr_001_62a4:
    db $12

ListLinks:
    db $ff, $ff, $ff
jr_001_62a8:
    db $ff
jr_001_62a9:
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff
jr_001_62b4:
    db $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff
jr_001_62bc:
    db $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $0e, $ff
    db $ff, $ff, $0f, InputSelListFirst
    db $ff, $ff, $10, $0e
    db $ff, $ff, $11, $0f
    db $ff, $ff, $12, $10
    db $ff, $ff, $13, $11
    db $ff, $ff, $ff, $12
    db $ff, $ff, $ff, $12

CursorScroll:
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $00, $00, $58, $58, $58, $58, $58
    db $58, $58, $58, $58, $58, $00, $00, $00
