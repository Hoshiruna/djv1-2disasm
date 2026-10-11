; 130 pointers select 77 shared duration/sprite sequences.
; Keep the original $00 or $ff/$ff/$00 termination bytes.

C1AnimPtrs:
    dw C1Anim00
    dw C1Anim01
    dw C1Anim02
    dw C1Anim03
    dw C1Anim04
    dw C1Anim05
    dw C1Anim06
    dw C1Anim07
    dw C1Anim08
    dw C1Anim09
    dw C1Anim0A
    dw C1Anim0B
    dw C1Anim0C
    dw C1Anim0D
    dw C1Anim0E
    dw C1Anim0F
    dw C1Anim10
    dw C1Anim11
    dw C1Anim12
    dw C1Anim13
    dw C1Anim14
    dw C1Anim15
    dw C1Anim16
    dw C1Anim17
    dw C1Anim18
    dw C1Anim19
    dw C1Anim1A
    dw C1Anim1B
    dw C1Anim1C
    dw C1Anim1D
    dw C1Anim1E
    dw C1Anim1F
    dw C1Anim20
    dw C1Anim21
    dw C1Anim22
    dw C1Anim23
    dw C1Anim24
    dw C1Anim25
    dw C1Anim26
    dw C1Anim27
    dw C1Anim28
    dw C1Anim29
    dw C1Anim2A
    dw C1Anim2B
    dw C1Anim2C
    dw C1Anim2D
    dw C1Anim2E
    dw C1Anim2F
    dw C1Anim30
    dw C1Anim31
    dw C1Anim32
    dw C1Anim33
    dw C1Anim34
    dw C1Anim35
    dw C1Anim36
jr_002_4947:
    dw C1Anim37
    dw C1Anim38
    dw C1Anim39
    dw C1Anim3A
    dw C1Anim3B
    dw C1Anim3C
    dw C1Anim3D
    dw C1Anim3E
    dw C1Anim3F
    dw C1Anim40
    dw C1Anim41
    dw C1Anim42
    dw C1Anim43
    dw C1Anim44
    dw C1Anim45
    dw C1Anim46
    dw C1Anim47
    dw C1Anim48
    dw C1Anim49
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    ; Pointer to C1Anim00; split bytes retain the interior label.
    db $dd
jr_002_49ac:
    db $49
    dw C1Anim6A
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim00
    dw C1Anim80
    dw C1WaitAnim

C1Anim00:
    db $fe, $00, $ff, $ff, $00

C1Anim01:
    db $fe, $01, $ff, $ff, $00

C1Anim02:
    db $fe, $02, $ff, $ff, $00

C1Anim03:
    db $fe, $03, $00

C1Anim04:
    db $fe, $04, $ff, $ff, $00

C1Anim05:
    db $fe, $05, $ff, $ff, $00

C1Anim06:
    db $fe, $06, $ff, $ff, $00

C1Anim07:
    db $fe, $07, $ff, $ff, $00

C1Anim08:
    db $fe, $08, $ff, $ff, $00

C1Anim09:
    db $fe, $0a, $ff, $ff, $00

C1Anim0A:
    db $fe, $0b, $ff, $ff, $00

C1Anim0B:
    db $fe, $0c, $ff, $ff, $00

C1Anim0C:
    db $fe, $0d, $ff, $ff, $00

C1Anim0D:
    db $fe, $0e, $ff, $ff, $00

C1Anim0E:
    db $fe, $0f, $ff, $ff, $00

C1Anim0F:
    db $fe, $10, $ff, $ff, $00

C1Anim10:
    db $fe, $11, $ff, $ff, $00

C1Anim11:
    db $fe, $12, $ff, $ff, $00

C1Anim12:
    db $fe, $13, $ff, $ff, $00

C1Anim13:
    db $fe, $14, $ff, $ff, $00

C1Anim14:
    db $fe, $15, $ff, $ff, $00

C1Anim15:
    db $fe, $16, $ff, $ff, $00

C1Anim16:
    db $fe, $17, $ff, $ff, $00

C1Anim17:
    db $fe, $09, $ff, $ff, $00

C1Anim18:
    db $fe, $18, $ff, $ff, $00

C1Anim19:
    db $fe, $19, $ff, $ff, $00

C1Anim1A:
    db $fe, $1a, $ff, $ff, $00

C1Anim1B:
    db $fe, $1b, $ff, $ff, $00

C1Anim1C:
    db $fe, $1b, $ff, $ff, $00

C1Anim1D:
    db $fe, $1b, $ff, $ff, $00

C1Anim1E:
    db $fe, $1c, $ff, $ff, $00

C1Anim1F:
    db $fe, $1d, $ff, $ff, $00

C1Anim20:
    db $fe, $1e, $ff, $ff, $00

C1Anim21:
    db $fe, $1e, $ff, $ff, $00

C1Anim22:
    db $fe, $1e, $ff, $ff, $00

C1Anim23:
    db $fe, $1e, $ff, $ff, $00

C1Anim24:
    db $fe, $1e, $ff, $ff, $00

C1Anim25:
    db $fe, $1e, $ff, $ff, $00

C1Anim26:
    db $fe, $1f, $ff, $ff, $00

C1Anim27:
    db $fe, $1f, $ff, $ff, $00

C1Anim28:
    db $fe, $1f, $ff, $ff, $00

C1Anim29:
    db $fe, $1f, $ff, $ff, $00

C1Anim2A:
    db $fe, $1f, $ff, $ff, $00

C1Anim2B:
    db $fe, $1f, $ff, $ff, $00

C1Anim2C:
    db $fe, $20, $ff, $ff, $00

C1Anim2D:
    db $fe, $21, $ff, $ff, $00

C1Anim2E:
    db $fe, $22, $ff, $ff, $00

C1Anim2F:
    db $fe, $23, $ff, $ff, $00

C1Anim30:
    db $fe, $24, $ff, $ff, $00

C1Anim31:
    db $fe, $25, $ff, $ff, $00

C1Anim32:
    db $fe, $26, $ff, $ff, $00

C1Anim33:
    db $fe, $27, $ff, $ff, $00

C1Anim34:
    db $fe, $28, $ff, $ff, $00

C1Anim35:
    db $fe, $29, $ff, $ff, $00

C1Anim36:
    db $fe, $2a, $ff, $ff, $00

C1Anim37:
    db $fe, $2b, $ff, $ff, $00

C1Anim38:
    db $fe, $2c, $ff, $ff, $00

C1Anim39:
jr_002_4af8:
    db $fe, $2d, $00

C1Anim3A:
    db $fe, $2f, $ff, $ff, $00

C1Anim3B:
    db $fe, $2e, $ff, $ff, $00

C1Anim3C:
    db $fe, $30, $ff, $ff, $00

C1Anim3D:
    db $fe, $31, $ff, $ff, $00

C1Anim3E:
    db $fe, $32, $ff, $ff, $00

C1Anim3F:
    db $fe, $33, $ff, $ff, $00

C1Anim40:
    db $fe, $34, $ff, $ff, $00

C1Anim41:
    db $fe, $35, $ff, $ff, $00

C1Anim42:
    db $fe, $36, $ff, $ff, $00

C1Anim43:
    db $fe, $37, $ff, $ff, $00

C1Anim44:
    db $fe, $38, $ff, $ff, $00

C1Anim45:
    db $fe, $39, $ff, $ff, $00

C1Anim46:
    db $fe, $3a, $ff, $ff, $00

C1Anim47:
    db $fe, $3b, $ff, $ff, $00

C1Anim48:
    db $fe, $3c, $ff, $ff, $00

C1Anim49:
    db $fe, $09, $ff, $ff, $00

C1Anim6A:
    db $06, $43, $06, $43, $06, $44, $06, $45, $06, $46, $06, $47, $06, $48, $06, $49
    db $06, $4a, $06, $4b, $00

C1Anim80:
    db $fe, $80, $ff, $ff, $00

C1WaitAnim:
    db $04, $84, $05, $81, $06, $82, $24, $83, $03, $81, $02, $84, $20, $85, $ff, $ff
    db $00
