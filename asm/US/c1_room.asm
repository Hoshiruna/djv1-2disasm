

; Resolve the previous room to its three-byte state records.
ReadC1Prev:
Call_001_4341:
    ld a, [wPrevRoom]
    jr jr_001_4349

; Resolve the current room to its three-byte state records.
ReadC1Room:
Call_001_4346:
    ld a, [wRoomId]

jr_001_4349:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C1RoomRefs
    add hl, bc
    ld a, [hl+]
    ld [wRoomDataPtr], a
    ld a, [hl]
    ld [wRoomDataPtr+1], a
    ret

C1MarkTile:
    db $01, $01, $73

; Room IDs $00..$4d select three-byte records terminated by $ff.
C1RoomRefs:
    dw C1Room00
    dw C1Room01
    dw C1Room02
    dw C1Room03
    dw C1Room04
    dw C1Room05
    dw C1Room06
    dw C1Room07
    dw C1Room08
    dw C1Room09
    dw C1Room0A
    dw C1Room0B
    dw C1Room0C
    dw C1Room0D
    dw C1Room0E
    dw C1Room0F
    dw C1Room10
    dw C1Room11
    dw C1Room12
    dw C1Room13
    dw C1Room14
    dw C1Room15
    dw C1Room16
    dw C1Room17
    dw C1Room18
    dw C1Room19
    dw C1Room1A
    dw C1Room1B
    dw C1Room1C
    dw C1Room1D
    dw C1Room1E
    dw C1Room1F
    dw C1Room20
    dw C1Room21
    dw C1Room22
    dw C1Room23
    dw C1Room24
    dw C1Room25
    dw C1Room26
    dw C1Room27
    dw C1Room28
    dw C1Room29
jr_001_43b1:
    dw C1Room2A
    dw C1Room2B
    dw C1Room2C
    dw C1Room2D
    dw C1Room2E
    dw C1Room2F
    dw C1Room30
    dw C1Room31
    dw C1Room32
    dw C1Room33
    dw C1Room34
    dw C1Room35
    dw C1Room36
    dw C1Room37
    dw C1Room38
    dw C1Room39
    dw C1Room3A
    dw C1Room3B
    dw C1Room3C
    dw C1Room3D
    dw C1Room3E
    dw C1Room3F
    dw C1Room40
    dw C1Room41
    dw C1Room42
    dw C1Room43
    dw C1Room44
    dw C1Room45
    dw C1Room46
    dw C1Room47
    dw C1Room48
    dw C1Room49
    dw C1Room4A
    dw C1Room4B
    dw C1Room4C
    dw C1Room4D

C1Room00:
    db $21, $00, $02
    db $ff

C1Room01:
    db $31, $01, $00
    db $24, $00, $05
    db $ff

C1Room02:
    db $02, $02, $01
    db $40, $03, $02
    db $24, $01, $05
    db $ff

C1Room03:
    db $41, $02, $00
    db $03, $04, $02
    db $ff

C1Room04:
    db $88, $4b, $06
    db $24, $04, $05
    db $ff

C1Room05:
    db $00, $05, $02
    db $40, $06, $02
    db $03, $07, $04
    db $24, $03, $05
    db $ff

C1Room06:
    db $00, $88, $02
    db $24, $05, $05
    db $ff

C1Room07:
    db $42, $08, $00
    db $02, $09, $01
    db $24, $0a, $03
    db $ff

C1Room08:
    db $40, $09, $02
    db $24, $0b, $05
    db $ff

C1Room09:
    db $21, $0c, $02
    db $24, $0b, $05
    db $ff

C1Room0A:
    db $10, $0c, $02
    db $ff

C1Room0B:
    db $00, $0f, $02
    db $41, $10, $00
    db $ff

C1Room0C:
    db $20, $12, $02
    db $88, $4a, $06
    db $24, $14, $05
    db $ff

C1Room0D:
    db $02, $14, $01
    db $24, $15, $05
    db $ff

C1Room0E:
    db $20, $15, $02
jr_001_4467:
    db $24, $07, $03
    db $ff

C1Room0F:
    db $40, $10, $00
    db $24, $11, $03
    db $ff

C1Room10:
    db $42, $12, $00
    db $20, $11, $04
    db $24, $13, $03
jr_001_447b:
    db $ff

C1Room11:
    db $10, $06, $02
    db $24, $18, $03
    db $88, $47, $06
    db $32, $1b, $02
jr_001_4488:
    db $00, $16, $02
    db $04, $17, $01
    db $44, $19, $00
    db $12, $1a, $02
    db $ff

C1Room12:
    db $44, $17, $00
    db $04, $1c, $01
    db $ff

C1Room13:
    db $31, $1e, $02
    db $44, $1c, $00
    db $04, $1d, $01
    db $ff

C1Room14:
    db $22, $23, $02
    db $44, $1d, $00
    db $04, $1f, $01
    db $ff

C1Room15:
    db $22, $28, $02
    db $44, $1f
jr_001_44b5:
    db $00, $ff

C1Room16:
    db $33, $22, $03
    db $30, $16, $02
    db $00, $13, $04
    db $ff

C1Room17:
    db $20, $20, $02
    db $04, $19, $01
    db $44, $21, $00
    db $ff

C1Room18:
    db $ff

C1Room19:
    db $88, $0d, $06
    db $21, $2d, $02
jr_001_44d2:
    db $04, $a4, $02
    db $44, $a9, $02
    db $ff

C1Room1A:
    db $88, $0d, $06
    db $20, $31, $02
    db $04, $a5, $02
    db $44
jr_001_44e3:
    db $aa, $02, $ff

C1Room1B:
    db $88, $0d, $06
    db $21, $33, $02
    db $13, $a6, $02
    db $44, $ab, $02
    db $ff

C1Room1C:
    db $88, $0d, $06
    db $20, $39, $02
    db $04, $a7, $02
    db $04, $ac, $02
    db $ff

C1Room1D:
    db $20, $18, $04
    db $24, $41, $03
    db $ff

C1Room1E:
    db $ff

C1Room1F:
    db $44, $1d, $06
    db $04, $1d, $06
    db $ff

C1Room20:
    db $ff

C1Room21:
    db $20, $17, $06
    db $24, $19, $06
    db $ff

C1Room22:
    db $88, $47, $06
    db $42, $1a, $00
    db $ff

C1Room23:
    db $88, $48, $06
    db $42, $1b, $00
    db $ff

C1Room24:
    db $88, $4d, $06
    db $ff

C1Room25:
jr_001_4529:
    db $24, $1e, $05
    db $ff

C1Room26:
    db $43, $23, $00
    db $ff

C1Room27:
    db $43, $28, $00
jr_001_4534:
    db $ff

C1Room28:
    db $21, $2f, $02
    db $24, $2d, $05
    db $ff

C1Room29:
    db $22, $2f, $02
    db $ff

C1Room2A:
    db $24, $30, $05
    db $ff

C1Room2B:
    db $24, $31, $05
    db $ff

C1Room2C:
jr_001_4548:
    db $11, $35, $04
    db $41, $37, $02
    db $24, $33, $05
    db $ff

C1Room2D:
    db $20, $36, $02
    db $24, $37, $05
    db $ff

C1Room2E:
    db $24, $36, $05
    db $ff

C1Room2F:
    db $20, $38, $02
    db $24, $35, $03
    db $ff

C1Room30:
    db $88, $3a, $06
    db $24, $38, $05
    db $ff

C1Room31:
    db $24, $39, $05
    db $88
jr_001_456f:
    db $49, $02, $ff

C1Room32:
    db $88, $3b, $06
    db $31, $3c, $02
    db $11, $3d, $04
    db $24, $49, $05
    db $ff

C1Room33:
    db $ff

C1Room34:
    db $24, $3c, $05
    db $ff

C1Room35:
    db $30, $3e, $02
    db $01, $3f, $01
jr_001_458a:
    db $24, $3d, $03
    db $ff

C1Room36:
    db $01, $40, $01
    db $24, $3e, $05
    db $ff

C1Room37:
    db $41, $40
jr_001_4597:
    db $00, $24, $3f
    db $05, $ff

C1Room38:
    db $22, $45, $02
    db $ff

C1Room39:
    db $20, $42, $04
    db $02, $43, $01
    db $42, $44, $00
    db $24, $46, $03
    db $ff

C1Room3A:
    db $20, $0a, $04
    db $44, $44, $00
    db $04, $45, $01
    db $ff

C1Room3B:
    db $00, $41
jr_001_45b9:
    db $04, $22, $43
    db $02, $ff

C1Room3C:
    db $20, $46, $04
    db $ff

C1Room3D:
    db $20, $22
jr_001_45c4:
    db $04, $24, $42
    db $03, $ff

C1Room3E:
    db $ff

C1Room3F:
    db $10, $0e, $02
    db $ff

C1Room40:
    db $10, $0f, $02
    db $ff

C1Room41:
    db $22, $30, $02
    db $ff

C1Room42:
    db $43
jr_001_45d7:
    db $24, $00, $ff

C1Room43:
    db $43, $29, $00
    db $ff

C1Room44:
    db $43, $25, $00
    db $ff

C1Room45:
    db $43, $2a
jr_001_45e4:
    db $00, $ff

C1Room46:
jr_001_45e6:
    db $43, $26, $00
    db $ff

C1Room47:
    db $43, $2b, $00
    db $ff

C1Room48:
    db $43, $27, $00
    db $ff

C1Room49:
    db $43, $2c, $00
    db $ff

C1Room4A:
    db $ff

C1Room4B:
    db $ff

C1Room4C:
    db $ff

C1Room4D:
    db $ff
