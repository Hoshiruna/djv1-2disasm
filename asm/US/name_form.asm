
; Return form zero to four from the first byte of the selected name record; preserve HL and DE.
PickNameForm:


    push hl
    push de
    ld c, $00
    cp $9e
    jr nc, NameFormReturn

    ld a, [wTextRefs+2]
    call PushRomBank
    ld a, [wTextName0]

Call_000_108d:
    ld l, a
    ld h, $00
    add hl, hl

Jump_000_1091:
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [wTextRefs]
    ld e, a
    ld a, [wTextRefs+1]
    ld d, a
    add hl, de
    ld a, [hl]
    call PopRomBank
    cp $1f
    jr z, NameFormReturn

    cp $0c
    jr z, NameFormReturn

    inc c
    cp $05
    jr z, NameFormReturn

    inc c
    cp $0d
    jr z, NameFormReturn

    inc c
    cp $42
    jr z, NameFormReturn

    inc c
    cp $47
    jr z, NameFormReturn

    ld c, $00

; Return the selected name-form value in A and restore DE and HL.
NameFormReturn:
jr_000_10bf:
    pop de
    pop hl
    ld a, c
    ret
