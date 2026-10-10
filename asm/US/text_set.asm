
; Enable RAM, read or initialize the saved text set, then disable RAM; preserve HL/BC/DE.
LoadTextSet:

Call_001_677f:
    push hl
    push bc
    push de
    call EnableRam
    call ReadTextSet
    call DisableRam
    pop de
    pop bc
    pop hl
    ret

; Enable RAM, write the text set and signature, then disable RAM; preserve HL/BC/DE.
StoreTextSet:


Call_001_678f:
    push hl
    push bc
    push de
    call EnableRam
    call WriteTextSet
    call DisableRam
    pop de
    pop bc
    pop hl
    ret

; Accept the eight-byte signature and text-set index below 5, otherwise reset the saved text set.
ReadTextSet:


Call_001_679f:
    ld hl, TextSetTag
    ld bc, $a000
    ld d, $08

jr_001_67a7:
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [hl+]
    cp e
    jr nz, jr_001_67c4

    dec d
    jr nz, jr_001_67a7

    ld a, [bc]
    cp $05
    jr nc, jr_001_67c4

    ld [wTextSet], a
    ret

; Write eight signature bytes followed by the current text set byte.
WriteTextSet:


Call_001_67ba:
    ld d, $08
    call WriteTextTag
    ld a, [wTextSet]
    ld [bc], a
    ret

; Write the nine-byte signature/default record and clear the current text set.
ResetTextSet:


jr_001_67c4:
    ld d, $09
    call WriteTextTag
    xor a
    ld [wTextSet], a
    ret

; Copy D bytes from TextSetTag to $a000; leave BC at the following byte.
WriteTextTag:


Call_001_67ce:
    ld hl, TextSetTag
    ld bc, $a000

jr_001_67d4:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_001_67d4

    ret

TextSetTag:
    db "XXXXYZYZ", $00
