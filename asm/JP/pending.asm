; Double the last index in A; replace only the scratch low byte and inherit its high byte.
; Store selected type before reading selected ID; restore both scratch bytes on return.
WriteChange:

Call_000_3297:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wPendingLast]
    add a
    ldh [hChangePos], a
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wPendingOps
    add hl, bc
    ld [hl], a
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hChangePos]
    ld l, a

Jump_000_32cd:
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wPendingArgs
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af

Jump_000_32df:
    ret

; Zero-extend the current index and double HL before reading the type/value pair.
ReadChange:

Call_000_32e0:
    ld a, [wPendingCur]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, wPendingOps
    add hl, bc
    ld a, [hl+]
    ld [wChangeType], a
    ld a, [hl]
    ld [wChangeValue], a
    ret
