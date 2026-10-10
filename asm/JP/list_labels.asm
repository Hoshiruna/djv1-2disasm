
; Regional text byte streams, including their original control bytes and terminators.
C1Lbl00:
    db $12, $b6, $c8, $ff
C1Lbl01:
    db $12, $b6, $c8, $7f, $04, $3a, $c5, $ef, $92, $7f, $ff
C1Lbl02:
    db $12, $b6, $c8, $7f, $04, $5f, $c5, $ef, $92, $7f, $ff
C1Lbl03:
    db $12, $b6, $c8, $7f, $04, $63, $c5, $ba, $7f, $ff
C1Lbl04:
    db $12, $b6, $c8, $7f, $04, $5c, $c5, $ba, $7f, $ff
C1Lbl05:
    db $12, $b6, $c8, $7f, $04, $64, $c5, $ba, $7f, $ff
C1Lbl08:
    db $12, $b6, $c8, $7f, $04, $5d, $c5, $ba, $7f, $ff
C1Lbl09:
    db $12, $b6, $c8, $7f, $04, $60, $c5, $ba, $7f, $ff
C1Lbl0a:
    db $12, $b6, $c8, $7f, $04, $5e, $c5, $ba, $7f, $ff
C1Lbl06:
    db $14, $bc, $b6, $3a, $a5, $a5, $a5, $1a, $1e, $fd, $7f, $82, $1c, $a1, $0d, $0d
    db $9e, $92, $1c, $8c, $98, $16, $7f, $91, $e0, $f8, $b0, $0d, $9c, $ea, $92, $9c
    db $e3, $92, $f9, $a1, $15, $0f
C1Lbl07:
    db $14, $e4, $e2, $1e, $fd, $e9, $7f, $36, $c1, $ac, $dd, $e4, $92, $93, $7f, $95
    db $e4, $16, $0d, $9f, $93, $e1, $8e, $93, $e9, $7f, $9c, $1d, $99, $9b, $b0, $0d
    db $eb, $97, $9b, $92, $e0, $a5, $a5, $a5, $15, $0f
C1Lbl0b:
    db $14, $e2, $62, $92, $e3, $7f, $97, $f8, $9b, $98, $f6, $93, $e5, $0d, $9b, $99
    db $6b, $1a, $94, $e6, $7f, $e2, $e2, $ef, $fa, $e0, $a5, $a5, $a5, $15, $0f
C1Lbl0c:
    db $14, $a5, $a5, $a5, $f4, $16, $e3, $7f, $e5, $e6, $1a, $e4, $f3, $0d, $e5, $96
    db $8f, $e0, $96, $e9, $f6, $93, $e6, $7f, $91, $e0, $f8, $ea, $0d, $9c, $1d, $99
    db $9b, $b0, $7f, $e4
jr_001_7006:
    db $f8, $f3, $64, $9c, $e0, $a5, $a5, $a5, $15, $0f
C1Lbl0d:
    db $14, $e6, $e6, $fd, $18, $f0, $e9, $7f, $c1, $dd, $5b, $d7, $e6, $f6, $8f, $e3
    db $0d, $91, $f9, $95, $e4, $9a, $16, $7f, $b8, $d9, $cf, $e9, $7f, $c4, $d7, $dd
    db $b8, $ed, $0d, $95, $9c, $9a, $f2, $f7, $fa, $e0, $7f, $9a, $e4, $e5, $64, $0d
    db $60, $fa, $f3, $7f, $97, $62, $92, $e3, $ea, $92, $e5, $92, $a5, $a5, $a5, $15
    db $0f
C1Lbl0e:
C1Lbl0f:
C2Lbl00:
    db $12, $b6, $c8, $ff
C2Lbl01:
    db $12, $b6, $c8, $ff
C2Lbl02:
    db $05, $8a, $c5, $12, $b6, $c8, $ff
C2Lbl03:
    db $12, $b6, $c8, $04, $3a, $c5, $ef, $92, $ff
C2Lbl04:
    db $12, $b6, $c8, $04, $90, $c5, $ba, $ff
C2Lbl05:
    db $12, $b6, $c8, $04, $8d, $c5, $ba, $ff
C2Lbl06:
    db $12, $b6, $c8, $04, $8c, $c5, $ef, $92, $7f, $ff
C2Lbl07:
    db $15, $06, $01, $07, $02, $00, $ea, $06, $06, $00, $eb, $06, $0e, $00, $ec, $14
    db $ff
C2Lbl08:
    db $15, $06, $02, $12, $5e, $c8, $06, $01, $04, $5d, $c8, $06, $0b, $12, $5f, $c8
    db $14, $ff
C2Lbl09:
    db $04, $75, $c8, $7f, $ff
C2Lbl0a:
    db $15, $06, $0b, $07, $08, $04, $c3, $c5, $7f, $ef, $92, $7f, $14, $ff
C2Lbl0b:
C2Lbl0c:
    db $92, $98, $f7, $7f, $96, $99, $ef, $9d, $96, $8b, $ff
C2Lbl0d:
    db $7f, $96, $99, $e0, $a1, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $ff
C2Lbl0e:
    db $f3, $93, $81, $ef, $92, $7f, $eb, $97, $ef, $9d, $96, $8b, $7f, $ea, $92, $a5
    db $92, $92, $94, $ff
C2Lbl0f:
    db $f3, $93, $81, $96, $92, $7f, $9d, $f9, $96, $92, $8b, $7f, $7f, $ea, $92, $a5
    db $92, $92, $94, $ff
C2Lbl10:
    db $ef, $e0, $7f, $97, $e3, $98, $fa, $f6, $e5, $a1, $ff
C2Lbl11:
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $ff
C2Lbl12:
    db $4c, $d7, $af, $b8, $3c, $ac, $af, $b8, $8a, $ff
C2Lbl13:
    db $4c, $d7, $af, $b8, $3c, $ac, $af, $b8, $8a, $ff
C2Lbl14:
    db $b5, $a4, $4a, $a4, $a5, $a5, $a5, $ff
C2Lbl15:
    db $b5, $a4, $4a, $a4, $a5, $a5, $a5, $ff
C2Lbl16:
    db $eb, $97, $fc, $99, $7f, $63, $9d, $e8, $a5, $a5, $a5, $ff
C2Lbl17:
    db $43, $a8, $a4, $d7, $a4, $16, $7f, $96, $e1, $ef, $9c, $e0, $a1, $ff
C2Lbl18:
    db $91, $e5, $e0, $e9, $7f, $96, $e1, $63, $9d, $a1, $ff
C2Lbl19:
    db $b6, $a4, $44, $16, $7f, $e9, $9a, $f8, $9d, $98, $e5, $92, $e9, $63, $ff
C2Lbl1a:
    db $bc, $ac, $af, $cc, $d9, $9c, $ef, $9d, $a1, $ff
C2Lbl1b:
    db $c1, $af, $5c, $e9, $7f, $e5, $92, $f4, $e2, $ea, $7f, $96, $94, $fd, $e5, $8a
    db $ff
C2Lbl1c:
    db $43, $a8, $a4, $d7, $a4, $ff
C2Lbl1d:
    db $91, $e5, $e0, $ff
C2Lbl1e:
    db $e9, $9a, $f8, $ef, $92, $9d, $93, $ff
C2Lbl1f:
    db $04, $8c, $c5, $ef, $92, $7f, $ff
C2Lbl20:
    db $ff
C2Lbl21:
    db $c1, $af, $5c, $ff
