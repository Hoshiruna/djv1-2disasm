
; Save the message code and select a family 0 pointer/bank record with bits 7 and 6.
ShowText0:


Call_000_0f7d:
    push af
    bit 7, a
    jr nz, ShowText0HighGroup

    bit 6, a
    jr nz, ShowText0Record1

    ld a, [wTextCfg0]
    ld c, a
    ld a, [wTextCfg0+1]
    ld b, a

Call_000_0f8e:
    ld a, [wTextCfg0+2]
    jp ShowTextPtr


; Load the second pointer and bank record for text family zero.
ShowText0Record1:
jr_000_0f94:
    ld a, [wTextCfg0+3]
    ld c, a
    ld a, [wTextCfg0+4]
    ld b, a
    ld a, [wTextCfg0+5]
    jp ShowTextPtr


; Choose between the third and fourth records for text family zero.
ShowText0HighGroup:
jr_000_0fa2:
    bit 6, a
    jr nz, ShowText0Record3

    ld a, [wTextCfg0+6]
    ld c, a
    ld a, [wTextCfg0+7]
    ld b, a
    ld a, [wTextCfg0+8]
    jp ShowTextPtr


; Load the fourth pointer and bank record for text family zero.
ShowText0Record3:
jr_000_0fb4:
    ld a, [wTextCfg0+9]
    ld c, a
    ld a, [wTextCfg0+10]
    ld b, a
    ld a, [wTextCfg0+11]
    jp ShowTextPtr

; Save the message code and select a family 1 pointer/bank record with bits 7 and 6.
ShowText1:


Call_000_0fc2:
    push af

Call_000_0fc3:
    bit 7, a

Call_000_0fc5:
    jr nz, ShowText1HighGroup

    bit 6, a
    jr nz, ShowText1Record1

    ld a, [wTextCfg1]
    ld c, a
    ld a, [wTextCfg1+1]
    ld b, a
    ld a, [wTextCfg1+2]
    jp ShowTextPtr


; Load the second pointer and bank record for text family one.
ShowText1Record1:
jr_000_0fd9:
    ld a, [wTextCfg1+3]
    ld c, a
    ld a, [wTextCfg1+4]
    ld b, a
    ld a, [wTextCfg1+5]
    jr ShowTextPtr

; Choose between the third and fourth records for text family one.
ShowText1HighGroup:
jr_000_0fe6:
    bit 6, a
    jr nz, ShowText1Record3

    ld a, [wTextCfg1+6]
    ld c, a
    ld a, [wTextCfg1+7]
    ld b, a
    ld a, [wTextCfg1+8]
    jr ShowTextPtr

; Load the fourth pointer and bank record for text family one.
ShowText1Record3:
jr_000_0ff7:
    ld a, [wTextCfg1+9]
    ld c, a
    ld a, [wTextCfg1+10]
    ld b, a

Call_000_0fff:
Jump_000_0fff:
    ld a, [wTextCfg1+11]
    jr ShowTextPtr

; Save the message code and select a family 2 pointer/bank record with bits 7 and 6.
ShowText2:

Call_000_1004:
    push af
    bit 7, a
    jr nz, ShowText2HighGroup

    bit 6, a
    jr nz, ShowText2Record1

    ld a, [wTextCfg2]

Jump_000_1010:
    ld c, a
    ld a, [wTextCfg2+1]
    ld b, a
    ld a, [wTextCfg2+2]
    jr ShowTextPtr

; Load the second pointer and bank record for text family two.
ShowText2Record1:
jr_000_101a:
    ld a, [wTextCfg2+3]
    ld c, a
    ld a, [wTextCfg2+4]

Call_000_1021:
    ld b, a
    ld a, [wTextCfg2+5]

Jump_000_1025:
    jr ShowTextPtr

; Choose between the third and fourth records for text family two.
ShowText2HighGroup:
jr_000_1027:
    bit 6, a
    jr nz, ShowText2Record3

    ld a, [wTextCfg2+6]
    ld c, a
    ld a, [wTextCfg2+7]
    ld b, a

Call_000_1033:
Jump_000_1033:
    ld a, [wTextCfg2+8]
    jr ShowTextPtr

; Load the fourth pointer and bank record for text family two.
ShowText2Record3:
jr_000_1038:
    ld a, [wTextCfg2+9]
    ld c, a
    ld a, [wTextCfg2+10]
    ld b, a

Call_000_1040:
    ld a, [wTextCfg2+11]

Jump_000_1043:
    jr ShowTextPtr

; Save the message code and select a family 3 pointer/bank record with bit 6.
ShowText3:

Call_000_1045:
    push af
    bit 6, a

Call_000_1048:
    jr nz, ShowText3Record1

    ld a, [wTextCfg3]

Jump_000_104d:
    ld c, a
    ld a, [wTextCfg3+1]
    ld b, a
    ld a, [wTextCfg3+2]
    jr ShowTextPtr

Call_000_1057:
; Load the second pointer and bank record for text family three.
ShowText3Record1:
jr_000_1057:
    ld a, [wTextCfg3+3]
    ld c, a
    ld a, [wTextCfg3+4]
    ld b, a
    ld a, [wTextCfg3+5]

; Internal continuation: switch bank, pop the saved code, resolve its low-six-bit pointer, display, then restore bank.
ShowTextPtr:

Jump_000_1062:
jr_000_1062:
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

Jump_000_1075:
    call ShowTextMsg
    call PopRomBank
    ret
