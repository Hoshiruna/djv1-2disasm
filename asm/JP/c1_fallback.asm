
; Try the three Case I special rules before selecting a fallback reply.
FallbackC1:
    call CheckC1Rooms
    ld a, [wStateResult]
    and $01
    ret nz

    call CheckC1Op12
    ld a, [wStateResult]
    and $01
    ret nz

    call CheckC1Op3f
    ld a, [wStateResult]
    and $01
    ret nz

    ld a, [wOpClass]
    add a
    ld c, a
    ld b, $00
    ld hl, C1ReplyRows
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
    jr nz, jr_002_6d0e

    ret


jr_002_6d0e:
    push hl
    rst RST_00

C1ReplyCalls:
    dw C1Reply0
    dw C1Reply1
    dw C1Reply2

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 0.
C1Reply0:
    pop hl
    ld a, [hl]
    call ShowMsg0
    ret

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 1.
C1Reply1:


    pop hl
    ld a, [hl]
    call ShowMsg1
    ret

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 2.
C1Reply2:


    pop hl
    ld a, [hl]
    call ShowMsg2
    ret
