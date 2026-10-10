
; Save the message code and select a family 0 pointer/bank record with bits 7 and 6.
ShowText0:


Call_000_0f72:
    push af
    bit 7, a
    jr nz, jr_000_0f97

    bit 6, a
    jr nz, jr_000_0f89

    ld a, [wTextCfg0]
    ld c, a
    ld a, [wTextCfg0+1]
    ld b, a
    ld a, [wTextCfg0+2]
    jp ShowTextPtr


jr_000_0f89:
    ld a, [wTextCfg0+3]
    ld c, a
    ld a, [wTextCfg0+4]
    ld b, a
    ld a, [wTextCfg0+5]
    jp ShowTextPtr


jr_000_0f97:
    bit 6, a
    jr nz, jr_000_0fa9

    ld a, [wTextCfg0+6]
    ld c, a
    ld a, [wTextCfg0+7]
    ld b, a
    ld a, [wTextCfg0+8]
    jp ShowTextPtr


jr_000_0fa9:
    ld a, [wTextCfg0+9]
    ld c, a
    ld a, [wTextCfg0+10]
    ld b, a
    ld a, [wTextCfg0+11]
    jp ShowTextPtr

; Save the message code and select a family 1 pointer/bank record with bits 7 and 6.
ShowText1:


Call_000_0fb7:
    push af
    bit 7, a
    jr nz, jr_000_0fdb

    bit 6, a
    jr nz, jr_000_0fce

    ld a, [wTextCfg1]

Call_000_0fc3:
    ld c, a
    ld a, [wTextCfg1+1]
    ld b, a
    ld a, [wTextCfg1+2]
    jp ShowTextPtr


jr_000_0fce:
    ld a, [wTextCfg1+3]
    ld c, a
    ld a, [wTextCfg1+4]
    ld b, a
    ld a, [wTextCfg1+5]
    jr jr_000_1057

jr_000_0fdb:
    bit 6, a
    jr nz, jr_000_0fec

    ld a, [wTextCfg1+6]
    ld c, a
    ld a, [wTextCfg1+7]
    ld b, a
    ld a, [wTextCfg1+8]
    jr jr_000_1057

jr_000_0fec:
    ld a, [wTextCfg1+9]
    ld c, a

Jump_000_0ff0:
    ld a, [wTextCfg1+10]
    ld b, a
    ld a, [wTextCfg1+11]
    jr jr_000_1057

; Save the message code and select a family 2 pointer/bank record with bits 7 and 6.
ShowText2:

Call_000_0ff9:
    push af
    bit 7, a
    jr nz, jr_000_101c

    bit 6, a

Jump_000_1000:
    jr nz, jr_000_100f

    ld a, [wTextCfg2]
    ld c, a
    ld a, [wTextCfg2+1]
    ld b, a
    ld a, [wTextCfg2+2]
    jr jr_000_1057

jr_000_100f:
    ld a, [wTextCfg2+3]
    ld c, a
    ld a, [wTextCfg2+4]
    ld b, a
    ld a, [wTextCfg2+5]
    jr jr_000_1057

jr_000_101c:
    bit 6, a
    jr nz, jr_000_102d

    ld a, [wTextCfg2+6]

Jump_000_1023:
    ld c, a
    ld a, [wTextCfg2+7]
    ld b, a
    ld a, [wTextCfg2+8]
    jr jr_000_1057

jr_000_102d:
    ld a, [wTextCfg2+9]
    ld c, a
    ld a, [wTextCfg2+10]
    ld b, a
    ld a, [wTextCfg2+11]
    jr jr_000_1057

; Save the message code and select a family 3 pointer/bank record with bit 6.
ShowText3:

Call_000_103a:
    push af
    bit 6, a
    jr nz, jr_000_104c

    ld a, [wTextCfg3]
    ld c, a

Jump_000_1043:
    ld a, [wTextCfg3+1]
    ld b, a
    ld a, [wTextCfg3+2]
    jr jr_000_1057

jr_000_104c:
    ld a, [wTextCfg3+3]
    ld c, a

Jump_000_1050:
    ld a, [wTextCfg3+4]
    ld b, a

Call_000_1054:
    ld a, [wTextCfg3+5]

; Internal continuation: switch bank, pop the saved code, resolve its low-six-bit pointer, display, then restore bank.
ShowTextPtr:

Call_000_1057:
Jump_000_1057:
jr_000_1057:
    call PushRomBank
    pop af
    and $3f
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld [wTextPtr], a
    ld a, [hl]
    ld [wTextPtr+1], a
    call ShowTextMsg
    call PopRomBank
    ret
