
; Scan list groups from group two while preserving the shared scratch index.
FindListValue:

Call_000_3334:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af

Call_000_333c:
    push hl
    call ScanListValue
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; Find the target in groups two onward; store its group and row and set the result on a match.
ScanListValue:


Call_000_334a:
    ld a, $02
    ld [wFoundGroup], a
    xor a

Jump_000_3350:
    ld [wFoundRow], a
    ld d, a
    ld a, $0e
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

jr_000_335d:
    ld bc, wListBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a

Call_000_3369:
    ld a, [wFindListValue]
    cp d
    jr z, jr_000_3398

    ld a, [wFoundRow]
    inc a
    ld [wFoundRow], a
    cp $07
    jr nz, jr_000_3385

    xor a
    ld [wFoundRow], a
    ld a, [wFoundGroup]
    inc a
    ld [wFoundGroup], a

jr_000_3385:
    ld d, a
    ldh a, [hChangePos]
    inc a
    ldh [hChangePos], a
    ld a, d
    ld d, a
    ldh a, [hChangePos]
    cp $54
    ld a, d
    jr c, jr_000_335d

    call ClearResult
    ret


jr_000_3398:
    call SetResult
    ret
