; Copy the selected item type/value into the last pending record; preserve the scratch index.
WriteChange:

Call_000_3147:
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

Jump_000_3173:
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
    ret

; Read the current pending record into the change type/value scratch bytes.
ReadChange:

Call_000_3190:
    ld a, [wPendingCur]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, wPendingOps

Jump_000_319a:
    add hl, bc
    ld a, [hl+]
    ld [wChangeType], a
    ld a, [hl]
    ld [wChangeValue], a
    ret
