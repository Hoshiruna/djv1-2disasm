; Apply pending type/value pairs and fill the ten-byte pending area with $ff.
FlushChanges:

    ld a, [wCaseId]
    cp $00
    jr nz, ChangeFlushInitIndex

    ld a, $18
    call ClearObjPresent
    ld a, $19
    call ClearObjPresent

; Initialize the pending-change pair offset.
ChangeFlushInitIndex:
jr_002_6582:
    ld d, a
    ld a, $00
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

; Read the next pending change pair.
ChangeFlushNextPair:
jr_002_658c:
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld bc, wPendingOps
    add hl, bc
    ld a, [wCaseId]
    cp $00
    jr nz, ChangeFlushCaseII

    ld a, [hl]
    cp $ff
    jr z, ChangeFlushClearBuffer

    call ApplyC1Change
    ldh a, [hChangePos]
    inc a
    inc a
    ldh [hChangePos], a
    cp PendingFlushEndOffset
    jr c, ChangeFlushNextPair

; After the fourth Case I pair, HL is the handler return value, not a fifth pair.
; A non-$ff read calls UndoC2Change (which returns for Case I), then advances offset 8 to 10.
ChangeFlushCaseII:
jr_002_65af:
    ld a, [hl]
    cp $ff
    jr z, ChangeFlushClearBuffer

    call UndoChangeBank
    ldh a, [hChangePos]
    inc a
    inc a
    ldh [hChangePos], a
    cp PendingFlushEndOffset
    jr c, ChangeFlushNextPair

; Clear both indices and four pairs (ten bytes); startup clears twelve bytes.
ChangeFlushClearBuffer:
jr_002_65c1:
    ld c, PendingFlushClearBytes
    ld hl, wPending
    ld a, $ff

; Write the next $ff byte to the pending-change buffer.
ChangeFlushClearNext:
jr_002_65c8:
    ld [hl+], a
    dec c
    jr nz, ChangeFlushClearNext

    ret

; A = pending type; dispatch its Case I cleanup handler.
ApplyC1Change:

Call_002_65cd:
    rst RST_00

C1ChangeOps:
    dw SkipC1Change, UndoChange1, UndoChange2, SkipC1Change, UndoChange4, SkipC1Change

; Clear value property bit 2 and state bits $48/$4a/$4b.
UndoChange1:
    ld bc, wPendingArgs
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ClearProp1
    ld a, $48
    call ClearStateBit
    ld a, $4a
    call ClearStateBit
    ld a, $4b
    call ClearStateBit

; Return without cleanup for pending change types zero, three, and five.
SkipC1Change:
    ret

; Clear the third object flag at pending value + $20.
UndoChange2:

    ld bc, wPendingArgs
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    add $20
    call ClearObjFlag
    ret

; Clear bit 2 in the selected item property byte.
UndoChange4:

    ld bc, wPendingArgs
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ClearProp4
    ret
