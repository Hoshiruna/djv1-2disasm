
; Read the Case I action code for wOpClass and wSelAction.
PickC1Action:
    ld a, [wOpClass]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C1ActionRows
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

C1ActionRows:
    dw C1Act00
    dw C1Act01
    dw C1Act02
    dw C1Act03
    dw C1Act04
    dw C1Act05

C1Act00:
    db $00, $ff, $03, $ff, $ff, $ff, $02, $01, $ff, $ff, $ff

C1Act01:
    db $00, $01, $03, $ff, $ff, $02, $ff, $ff, $ff, $ff, $ff

C1Act02:
    db $00, $01, $03, $ff, $ff, $02, $ff, $ff, $ff, $ff, $ff

C1Act03:
    db $00, $ff, $03, $02, $01, $ff, $ff, $ff, $ff, $ff, $ff

C1Act04:
    db $00, $01, $05, $04, $03, $02, $ff, $ff, $ff, $ff, $ff

C1Act05:
    db $00, $01, $ff, $ff, $ff, $02, $ff, $ff, $03, $ff, $ff
