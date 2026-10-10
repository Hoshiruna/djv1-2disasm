
; Select the Case II fallback reply for wOpClass and wSelAction; return when its selector is $ff.
FallbackC2:
    ld a, [wOpClass]
    add a
    ld c, a
    ld b, $00
    ld hl, C2ReplyRows
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, [wSelAction]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    inc hl
    ld a, [hl-]
    cp $ff
    ret z

    push hl
    rst RST_00

C2ReplyCalls:
    dw C2Reply0
    dw C2Reply1
    dw C2Reply2

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 0.
C2Reply0:
    pop hl
    ld a, [hl]
    call ShowMsg0
    ret

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 1.
C2Reply1:


    pop hl
    ld a, [hl]
    call ShowMsg1
    ret

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 2.
C2Reply2:


    pop hl
    ld a, [hl]
    call ShowMsg2
    ret

C2ReplyRows:
    dw C2Rep00
    dw C2Rep01
    dw C2Rep02
    dw C2Rep03
    dw C2Rep04
    dw C2Rep05
    dw C2Rep06

C2Rep00:
    db $ff, $ff
    db $d3, $00
    db $ff, $ff
    db $e5, $00
    db $e1, $00
    db $2d, $00
    db $ff, $ff
    db $ff, $ff
    db $2d, $00
    db $13, $00
    db $ff, $ff

C2Rep01:
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $e5, $00
    db $e1, $00
    db $ff, $ff
    db $2c, $00
    db $e3, $00
    db $2d, $00
    db $13, $00
    db $ff, $ff

C2Rep02:
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $e5, $00
    db $e1, $00
    db $ff, $ff
    db $2c, $00
    db $e3, $00
    db $2d, $00
    db $13, $00
    db $ff, $ff

C2Rep03:
    db $ff, $ff
    db $d3, $00
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $2d, $00
    db $2c, $00
    db $e3, $00
    db $2d, $00
    db $14, $00
    db $ff, $ff

C2Rep04:
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $2c, $00
    db $e3, $00
    db $2d, $00
    db $13, $00
    db $ff, $ff

C2Rep05:
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $e5, $00
    db $e1, $00
    db $ff, $ff
    db $2c, $00
    db $e3, $00
    db $ff, $ff
    db $13, $00
    db $ff, $ff

C2Rep06:
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
    db $ff, $ff
