
; Scan list groups from group two while preserving the shared scratch index.
FindListValue:

Call_000_3480:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    call ScanListValue

Call_000_348c:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af

Call_000_3495:
    ret

; Find the target in groups two onward; store its group and row and set the result on a match.
ScanListValue:


Call_000_3496:
    ld a, $02
    ld [wFoundGroup], a
    xor a
    ld [wFoundRow], a
    ld d, a
    ld a, $10
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

jr_000_34a9:
    ld bc, wListBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [wFindListValue]
    cp d
    jr z, jr_000_34e4

    ld a, [wFoundRow]
    inc a
    ld [wFoundRow], a
    cp $08
    jr nz, jr_000_34d1

    xor a
    ld [wFoundRow], a
    ld a, [wFoundGroup]

Call_000_34cd:
    inc a
    ld [wFoundGroup], a

jr_000_34d1:
    ld d, a
    ldh a, [hChangePos]
    inc a
    ldh [hChangePos], a
    ld a, d
    ld d, a
    ldh a, [hChangePos]
    cp $58
    ld a, d
    jr c, jr_000_34a9

    call ClearResult
    ret


jr_000_34e4:
    call SetResult
    ret
