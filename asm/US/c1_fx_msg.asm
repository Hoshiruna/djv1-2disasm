
; Select the effect message record with an eight-bit doubled index and dispatch its stream selector while saving the message pointer.
ShowC1FxMsg:

Call_002_7101:
    ld a, [wFxId]
    sla a
    ld c, a
    ld b, $00
    ld hl, C1FxMsgs+1
    add hl, bc
    ld a, [hl-]
    push hl
    rst RST_00

C1FxMsgCalls:
    dw C1FxMsg0, C1FxMsg1, C1FxMsg2

; Pop the saved message pointer and show its byte through message stream zero.
C1FxMsg0:
    pop hl
    ld a, [hl]
    call ShowMsg0
    ret

; Pop the saved message pointer and show its byte through message stream one.
C1FxMsg1:


    pop hl
    ld a, [hl]
    call ShowMsg1
    ret

; Pop the saved message pointer and show its byte through message stream two.
C1FxMsg2:


    pop hl
    ld a, [hl]
    call ShowMsg2
    ret
