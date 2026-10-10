
; Set each state bit in C2StartBits until the $ff terminator.
InitC2Bits:


Call_003_412a:
    ld hl, C2StartBits

jr_003_412d:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    call SetStateBit
    pop hl
    jr jr_003_412d

; Case II initial state-bit IDs, terminated by $ff.
C2StartBits:
    db $05, $07, $11, $12, $13, $16, $17, $18, $1a, $1b, $1c, $1d, $1e, $1f, $20, $2d
    db $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $46, $48, $49, $4a, $4b
    db $50, $51, $55
jr_003_415b:
    db $56, $60, $6a, $6b, $6e, $6f, $70, $71, $72, $78, $79, $7a, $7b, $54, $59, $23
    db $26, $29, $2c, $3c, $3f, $42, $45, $77, $ff

; Set initial object visibility and restore the caller scratch bytes at $ffa0/$ffa1.
InitC2Visible:

Call_003_4174:
    push af

jr_003_4175:
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl

jr_003_417d:
    ld hl, Case2InitialObjectFlags

jr_003_4180:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_418c

    push hl
    call SetObjVisible
    pop hl
    jr jr_003_4180

jr_003_418c:
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    ret


Case2InitialObjectFlags:
    INCBIN "../../res/scene/case2/common/initial-visibility.bin", $0, $4
jr_003_419a:
    INCBIN "../../res/scene/case2/common/initial-visibility.bin", $4, $39
jr_003_41d3:
    INCBIN "../../res/scene/case2/common/initial-visibility.bin", $3d, $12
jr_003_41e5:
    INCBIN "../../res/scene/case2/common/initial-visibility.bin", $4f, $9
