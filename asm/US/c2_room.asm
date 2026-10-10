

; Resolve the previous room to its four-byte state records.
ReadC2Prev:
Call_003_463d:
    ld a, [wPrevRoom]
    jr jr_003_4645

; Resolve the current room to its four-byte state records.
ReadC2Room:
Call_003_4642:
    ld a, [wRoomId]

jr_003_4645:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C2RoomRefs
    add hl, bc
    ld a, [hl+]
    ld [wRoomDataPtr], a
    ld a, [hl]
    ld [wRoomDataPtr+1], a
    ret

C2MarkTile:
    db $01, $01, $73

; IDs $00..$a0 select shared four-byte records terminated by $ff.
C2RoomRefs:
    dw C2Room00
    dw C2Room01
    dw C2Room02
    dw C2Room03
    dw C2Room04
    dw C2Room05
    dw C2RoomNone
    dw C2Room07
    dw C2Room08
    dw C2Room09
    dw C2Room0A
    dw C2Room0B
    dw C2Room0C
    dw C2Room0D
    dw C2Room0E
    dw C2Room0F
    dw C2Room10
    dw C2Room11
    dw C2Room12
    dw C2Room13
    dw C2Room14
    dw C2Room15
    dw C2Room16
    dw C2Room17
    dw C2Room18
    dw C2Room19
    dw C2Room1A
    dw C2Room1B
    dw C2Room1C
    dw C2Room1D
    dw C2Room1E
    dw C2Room1F
    dw C2Room20
    dw C2Room21
    dw C2Room22
    dw C2Room23
    dw C2Room24
    dw C2Room25
    dw C2Room26
    dw C2Room27
    dw C2Room28
    dw C2Room29
    dw C2Room2A
    dw C2Room2B
    dw C2Room2C
    dw C2Room2D
    dw C2Room2E
    dw C2Room2F
    dw C2Room30
    dw C2Room31
    dw C2Room32
jr_003_46bf:
    dw C2Room33
    dw C2Room34
    dw C2Room35
    dw C2Room36
    dw C2Room37
    dw C2Room38
    dw C2Room39
    dw C2Room3A
    dw C2Room3B
    dw C2Room3C
    dw C2Room3D
    dw C2Room3E
    dw C2Room3F
    dw C2Room40
    dw C2Room41
    dw C2Room42
    db $69
jr_003_46e0:
    db $4b
    dw C2Room44
    dw C2Room45
    dw C2Room46
    dw C2Room47
    dw C2Room48
    dw C2Room49
    dw C2Room4A
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
jr_003_4701:
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2Room5E
    dw C2Room5F
    dw C2Room60
    dw C2Room61
    dw C2Room62
    dw C2Room63
    dw C2RoomNone
    dw C2RoomNone
    dw C2Room66
    dw C2Room67
    dw C2Room67
    dw C2Room67
    dw C2Room67
    dw C2Room67
    dw C2Room67
    dw C2Room6D
    dw C2Room6E
    dw C2Room6F
    dw C2Room70
    dw C2Room70
    dw C2Room6F
    dw C2Room6F
    dw C2Room70
    dw C2Room75
    dw C2Room6E
    dw C2Room70
    dw C2Room75
    dw C2Room6E
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room75
    dw C2Room6E
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room75
    dw C2Room6E
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room75
    dw C2Room6E
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room70
    dw C2Room75
    dw C2Room99
    dw C2Room6F
    dw C2Room6F
    dw C2Room6F
    dw C2Room6F
    dw C2Room6F
    dw C2Room6F
    dw C2RoomA0

C2Room00:
    db $20, $00
jr_003_479d:
    db $02, $00, $ff

C2Room01:
    db $55, $77, $02, $02
    db $24, $00, $05, $fe
    db $03, $01, $01, $fe
    db $ff

C2Room02:
    db $20, $02, $02, $04
jr_003_47b1:
    db $02, $04, $01, $06
    db $42, $03, $00, $fe
    db $24, $01, $05, $fe
    db $ff

C2Room03:
    db $40, $02, $02, $08
    db $03, $05, $01, $fe
    db $24, $06, $05, $fe
    db $55, $9d, $02, $fe
    db $ff

C2Room04:
    db $42, $05, $00, $fe
    db $02, $07, $01, $fe
    db $ff

C2Room05:
    db $55, $73, $02, $0a
    db $42, $07, $00, $fe
    db $ff

C2Room07:
    db $42, $04, $00, $0c
    db $ff

C2Room08:
    db $42, $09, $00, $0c
    db $ff

C2Room09:
    db $42, $0c, $00, $0c
    db $ff

C2Room0A:
    db $42, $0e, $00, $0c
    db $ff

C2Room0B:
    db $42, $03, $00, $fe
    db $24, $09, $05, $fe
    db $02, $0a, $01, $fe
    db $20, $0b, $02, $fe
    db $ff

C2Room0C:
    db $91, $0d, $03, $0e
    db $42, $03, $00, $fe
    db $02, $0a, $01, $fe
    db $20, $0b, $02, $fe
    db $24, $0c, $05, $fe
    db $ff

C2Room0D:
    db $20, $0d, $04, $68
    db $ff

C2Room0E:
    db $01, $0f, $01, $10
    db $41, $10, $00, $12
    db $24, $0e, $05, $fe
    db $ff

C2Room0F:
    db $55, $96, $02, $14
    db $55, $97, $02, $14
    db $55, $98, $02, $18
    db $55, $99, $02, $18
    db $55, $9a, $02, $1c
    db $24, $0f, $05, $fe
    db $ff

C2Room10:
    db $55, $9b, $02, $20
    db $55, $9c, $02, $20
    db $01, $10
jr_003_4850:
    db $01, $1e, $ff

C2Room11:
    db $20, $06, $02, $24
    db $55, $9d, $02, $24
jr_003_485b:
    db $24, $11, $05, $fe
    db $02, $12, $01, $fe
    db $42, $13, $00, $fe
    db $ff

C2Room12:
    db $ff

C2Room13:
    db $00, $14, $03, $6c
    db $31, $15, $02, $6e
    db $55, $ae, $00, $6e
    db $55, $ad, $00, $6a
    db $42, $16, $00, $fe
    db $02, $17, $01, $fe
    db $24, $18, $05, $fe
    db $ff

C2Room14:
    db $21, $19, $02
jr_003_4889:
    db $28, $55, $9e, $02
    db $28, $02
jr_003_488f:
    db $13, $01, $fe, $42
jr_003_4893:
    db $1a, $00, $fe, $24
    db $1b, $05, $fe, $ff

C2Room15:
    db $24, $19, $05, $fe
    db $43
jr_003_48a0:
    db $1c, $00, $fe, $01
    db $1d, $01, $fe, $10
    db $1e, $02, $fe, $30
    db $1f, $02, $fe, $41
    db $20, $00
jr_003_48b2:
    db $fe, $55, $9e, $02
    db $fe, $ff

C2Room16:
    db $02, $1c, $01, $fe
    db $ff

C2Room17:
    db $81, $21, $02, $88
    db $55, $7c, $02, $f0
    db $c1, $22, $02, $fe
    db $24, $1d, $05, $fe
    db $20, $23, $02, $fe
    db $ff

C2Room18:
    db $81, $24, $02, $88
    db $55, $7d, $02, $f0
    db $c1, $25, $02, $fe
    db $24, $1e, $05, $fe
    db $20, $26, $02, $fe
    db $ff

C2Room19:
    db $81, $27, $02, $88
    db $55, $7e, $02, $f0
    db $c1, $28, $02, $fe
    db $24
jr_003_48f4:
    db $1f, $05, $fe, $20
    db $29, $02, $fe, $ff

C2Room1A:
    db $81, $2a, $02, $88
    db $55, $7f, $02, $f0
    db $c1, $2b, $02, $fe
    db $24, $20, $05, $fe
    db $20, $2c, $02, $fe
    db $ff

C2Room1B:
    db $55, $85, $02, $f0
    db $44, $21, $00, $fe
    db $20, $2d, $02, $fe
    db $ff

C2Room1C:
    db $40, $22, $00, $2c
    db $55, $86, $02, $f0
    db $24, $2d, $05, $fe
    db $ff

C2Room1D:
    db $55, $87, $02, $f0
    db $44, $24, $00, $fe
    db $20, $2e, $02, $fe
    db $ff

C2Room1E:
    db $40, $25, $00, $2c
    db $55, $88, $02, $f0
    db $24, $2e, $05, $fe
    db $ff

C2Room1F:
    db $55, $89, $02
jr_003_4948:
    db $f0, $44, $27, $00
    db $fe, $20, $2f, $02
    db $fe, $ff

C2Room20:
    db $40, $28, $00
jr_003_4955:
    db $2c, $55, $8a, $02
    db $f0, $24, $2f, $05
    db $fe, $ff

C2Room21:
    db $55, $8b, $02, $f0
    db $44, $2a, $00, $fe
    db $20, $30, $02, $fe
    db $ff

C2Room22:
jr_003_496c:
    db $40, $2b, $00, $2c
    db $55, $8c, $02, $f0
    db $24, $30, $05, $fe
    db $ff

C2Room23:
    db $55, $8d, $02
jr_003_497c:
    db $f0, $44, $3a, $00
    db $fe, $20, $31, $02
    db $fe, $ff

C2Room24:
    db $40, $3b, $00, $2c
    db $55, $8e, $02, $f0
    db $24, $31, $05, $fe
    db $ff

C2Room25:
    db $55, $8f, $02, $f0
    db $44, $3d, $00, $fe
    db $20, $32, $02, $fe
    db $ff

C2Room26:
    db $40, $3e, $00, $2c
    db $55, $90, $02, $f0
    db $24, $32, $05, $fe
    db $ff

C2Room27:
    db $55, $91, $02, $f0
    db $44, $40, $00, $fe
    db $20, $33, $02, $fe
    db $ff

C2Room28:
    db $40, $41, $00, $2c
    db $55, $92, $02, $f0
    db $24, $33, $05, $fe
    db $ff

C2Room29:
    db $55, $93, $02, $f0
    db $44, $43, $00, $fe
    db $20, $34, $02, $fe
    db $ff

C2Room2A:
    db $40, $44, $00, $2c
    db $55, $94, $02, $f0
    db $24, $34, $05, $fe
    db $ff

C2Room2B:
    db $55, $a0, $00, $2e
    db $55, $78, $02, $fe
    db $01, $35, $01, $fe
    db $10, $36, $02, $fe
    db $30, $37, $02, $fe
    db $41, $38, $00
jr_003_49f8:
    db $fe, $24, $39, $05
    db $fe, $ff

C2Room2C:
    db $81, $3a, $02, $88
    db $55, $80, $02, $f0
    db $c1, $3b, $02, $fe
    db $24, $35, $05, $fe
    db $20, $3c, $02, $fe
    db $ff

C2Room2D:
    db $81, $3d, $02, $88
    db $55, $81, $02, $f0
    db $c1, $3e, $02, $fe
    db $24, $36, $05, $fe
    db $20, $3f, $02, $fe
    db $ff

C2Room2E:
    db $81, $40, $02, $88
    db $55, $82, $02, $f0
    db $c1, $41, $02, $fe
    db $24, $37, $05, $fe
    db $20, $42, $02, $fe
    db $ff

C2Room2F:
    db $81, $43, $02, $88
    db $55, $83, $02, $f0
    db $c1, $44, $02, $fe
    db $24, $38, $05, $fe
    db $20, $45, $02, $fe
    db $ff

C2Room30:
    db $55, $b2, $00, $84
    db $55, $b3, $00, $86
    db $21, $39, $02, $30
    db $33, $46, $02, $fe
    db $ff

C2Room31:
    db $55, $a1, $00, $32
    db $02, $46, $01, $fe
    db $42, $47, $00, $fe
    db $ff

C2Room32:
    db $41, $4c, $00, $34
    db $55, $a2, $00, $34
    db $03, $48, $01, $fe
    db $ff

C2Room33:
    db $20, $4d, $02, $38
    db $24, $4c, $05, $fe
    db $41, $4e, $00, $fe
    db $01, $4f, $01, $fe
    db $ff

C2Room34:
    db $20, $4d, $02, $3a
jr_003_4a92:
    db $55, $a3, $00, $3a
    db $ff

C2Room35:
    db $55, $a4, $00, $3e
    db $55, $a5, $00, $40
    db $33, $4a, $02, $fe
    db $44, $50, $00
jr_003_4aa6:
    db $fe, $00, $51, $02
    db $fe, $24, $52, $03
    db $fe, $11, $53, $02
    db $fe, $04, $54, $00
    db $fe, $ff

C2Room36:
    db $20, $51, $02, $fe
    db $01, $55, $04, $fe
    db $04, $56, $05, $fe
    db $23, $57, $03, $fe
    db $55, $84, $02, $fe
    db $ff

C2Room37:
    db $24, $55, $03, $fe
    db $42, $58, $00, $fe
    db $20, $59, $04, $fe
    db $ff

C2Room38:
    db $55, $75, $00
jr_003_4add:
    db $42, $20, $58, $02
    db $fe, $24, $74, $00
    db $fe, $02, $5a, $05
    db $fe, $ff

C2Room39:
    db $31, $5b, $02, $54
    db $24, $56, $05, $fe
    db $ff

C2Room3A:
    db $30, $5c, $02, $44
    db $44, $5b, $05, $fe
    db $02, $5d, $00, $fe
    db $24, $5e, $05, $fe
    db $ff

C2Room3B:
    db $00, $5f, $02, $46
    db $55, $a4
jr_003_4b0b:
    db $00, $48, $55, $a5
    db $00, $4a, $40, $53
    db $02, $fe, $24, $5c
    db $05, $fe, $03, $60
    db $04, $fe, $ff

C2Room3C:
    db $80, $61, $02, $4c
    db $24, $5f, $05, $fe
    db $ff

C2Room3D:
    db $42, $61, $00, $4e
    db $02, $62, $01, $50
    db $24, $52, $03, $fe
    db $ff

C2Room3E:
    db $40, $62, $02, $52
jr_003_4b38:
    db $24, $63, $05, $fe
    db $ff

C2Room3F:
    db $24, $60, $03, $fe
    db $20, $64, $02, $fe
    db $ff

C2Room40:
    db $20, $65, $02, $56
    db $04, $50, $01, $fe
    db $ff

C2Room41:
    db $41, $49, $00
jr_003_4b52:
    db $fe, $03, $66, $02
    db $fe, $01, $67, $00
    db $fe, $ff

C2Room42:
    db $55, $ac, $00, $58
    db $55, $a7, $00, $58
    db $24, $66, $05, $fe
    db $ff

C2Room43:
    db $20, $68, $02, $5c
    db $55, $a8, $00, $5c
    db $24, $4b, $05, $fe
    db $ff

C2Room44:
    db $30, $69, $02, $60
    db $55, $a9, $00, $62
    db $24, $68, $05, $fe
    db $ff

C2Room45:
    db $55, $aa, $02, $64
    db $55, $ab, $02, $66
    db $24, $69, $05, $fe
    db $ff

C2Room46:
    db $20, $6b, $04, $68
    db $ff

C2Room47:
    db $55, $95, $02, $72
    db $01, $14, $04, $fe
    db $43, $6a, $04, $fe
    db $22, $6b, $03, $fe
    db $ff

C2Room48:
    db $03, $15, $01, $74
    db $55, $ae, $00
jr_003_4bad:
    db $74, $55, $ad, $00
    db $78, $41, $6c, $02
    db $7a, $55, $af, $00
    db $7a, $20, $6a, $02
    db $fe, $ff

C2Room49:
    db $a1, $6d, $02, $7e
    db $55, $b0, $00, $80
    db $55, $b1, $00, $80
    db $04, $6c, $05, $fe
    db $ff

C2Room4A:
    db $24, $6d, $05
jr_003_4bd3:
    db $fe, $ff

C2Room5E:
    db $55, $a1, $00, $32
    db $42, $47, $00, $fe
    db $02, $48, $01, $fe
    db $ff

C2Room5F:
    db $55, $a1, $00, $32
    db $42, $47, $00, $fe
    db $02, $49, $01, $fe
    db $ff

C2Room60:
    db $55, $a1, $00, $32
    db $42, $47, $00, $fe
    db $02, $4a, $01, $fe
    db $ff

C2Room61:
    db $55
jr_003_4bfd:
    db $a1, $00, $32, $42
    db $47, $00, $fe, $02
    db $4b, $01, $fe, $ff

C2Room62:
    db $02, $16, $01, $fe
    db $42, $6e, $00, $fe
    db $20, $6f, $02, $fe
    db $24, $70, $05, $fe
    db $ff

C2Room63:
    db $42, $12, $00, $fe
    db $02, $6e, $01, $fe
    db $20, $71, $02, $fe
    db $24, $72, $05, $fe
    db $ff

C2Room70:
    db $42, $78, $00, $fe

C2Room75:
    db $24, $7a, $05, $fe

C2RoomA0:
    db $02, $79, $01, $fe
    db $20, $7b, $02, $fe
    db $ff

C2Room6E:
    db $24, $7a, $05, $fe

C2Room99:
    db $42, $78, $00, $fe
    db $20, $7b, $02, $fe
    db $ff

C2Room67:
    db $42, $78, $00, $fe

C2Room6D:
    db $24, $7a, $05, $fe
    db $02, $79, $01, $fe
    db $ff

C2Room6F:
    db $42, $78, $00, $fe
    db $02, $79, $01, $fe
    db $20, $7b, $02, $fe
    db $ff

C2Room66:
    db $42, $78, $00, $fe
    db $24, $7a, $05, $fe

C2RoomNone:
    db $ff
