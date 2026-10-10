
; Read the Case II action code for wOpClass and wSelAction.
PickC2Action:


    ld a, [wOpClass]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C2ActionRows
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [wSelAction]
    ld l, a
    ld h, $00
    add hl, bc
    ld a, [hl]
    ld [wActionCode], a
    ret

C2ActionRows:
    dw C2Act00
    dw C2Act01
    dw C2Act02
    dw C2Act03
    dw C2Act04
    dw C2Act05
    dw C2Act06

C2Act00:
    db $00, $ff, $01, $ff, $ff, $ff, $02, $03, $ff, $ff, $ff

C2Act01:
    db $00, $01, $02, $ff, $ff, $03, $ff, $ff, $ff, $ff, $ff

C2Act02:
    db $00, $01, $02, $ff, $ff, $03, $ff, $ff, $ff, $ff, $ff

C2Act03:
    db $00, $ff, $01, $02, $03, $ff, $ff, $ff, $ff, $ff, $ff

C2Act04:
    db $00, $01, $02, $03, $04, $05, $ff, $ff, $ff, $ff, $ff

C2Act05:
    db $00, $01, $ff, $ff, $ff, $02, $ff, $ff, $03, $ff, $ff

C2Act06:
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $ff
