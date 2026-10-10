
; A = property index; read bit 2 of wProp4 into result bit 0; preserve the scratch index.
ReadProp4:

    ld [wBitId], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wBitId]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    call ClearResult
    ld bc, wProp4
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    jr z, jr_000_34de

    call SetResult

jr_000_34de:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
; A = property index; set bit 2 in wProp4 and preserve the scratch index.
SetProp4:

Call_000_34e8:
    ld [wArg0], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wArg0]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld bc, wProp4

Jump_000_34ff:
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $04
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp4
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
; A = property index; clear bit 2 in wProp4 and preserve the scratch index.
ClearProp4:

Call_000_3520:
    ld [wArg0], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wArg0]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld bc, wProp4
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fb
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp4
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; A = property index; read bit 1 of wProp4 into result bit 0; preserve the scratch index.
ReadProp4Bit1:

Call_000_3558:
    ld [wBitId], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wBitId]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    call ClearResult
    ld bc, wProp4
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $02
    jr z, jr_000_3581

    call SetResult

jr_000_3581:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

    call ReadArg

; A = property index; set bit 1 of wProp4 and preserve the scratch index.
SetProp4Bit1:

Call_000_358e:
    ld [wBitId], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wBitId]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld bc, wProp4
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $02
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp4
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; A = property index; clear bit 1 of wProp4 and preserve the scratch index.
ClearProp4Bit1:

    ld [wBitId], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wBitId]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld bc, wProp4
    ldh a, [hChangePos]

Call_000_35df:
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fd
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp4
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a

Jump_000_35f9:
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; A = property index; read bit 0 of wProp4 into result bit 0; preserve the scratch index.
ReadProp4Bit0:

Call_000_35fe:
    ld [wBitId], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wBitId]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    call ClearResult
    ld bc, wProp4
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $01
    jr z, jr_000_3627

    call SetResult

jr_000_3627:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; A = property index; set bit 0 of wProp4 and preserve the scratch index.
SetProp4Bit0:

    ld [wBitId], a
    push af

Jump_000_3635:
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wBitId]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld bc, wProp4
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $01
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp4
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; A = property index; clear bit 0 of wProp4 and preserve the scratch index.
ClearProp4Bit0:

Call_000_3669:
    ld [wBitId], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wBitId]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld bc, wProp4
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fe
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp4
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
