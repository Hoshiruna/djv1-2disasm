; Apply the selected Case II map patches; $fe ends the list and $f0-$ff are not patch IDs.
ApplyC2Patches:
    ld a, [wCaseId]
    cp $00
    ret z

    ld a, [wSceneId]
    cp $14
    ret z

    cp $1a
    ret z

    cp $19
    ret z

    ld a, [$c5c9]
    bit 7, a
    ret nz

    ld de, wPatchList

jr_029_66a6:
    xor a
    ld [wPatchBits], a
    ld a, [de]
    cp $fe
    ret z

    cp $f0
    jr c, jr_029_66b5

    inc de
    jr jr_029_66a6

jr_029_66b5:
    call CopyC2Patch
    inc de
    jr jr_029_66a6

; A = patch ID; copy tile and attribute rows into the staged 14x14 map.
CopyC2Patch:
Call_029_66bb:
    push de
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, C2PatchCoords
    add hl, bc
    ld a, [hl+]
    ld l, [hl]
    ld h, $00
    add hl, hl
    ld bc, PatchRowOffsets
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, wSceneMap
    add hl, bc
    add l
    ld [wPatchDst], a
    ld a, $00
    adc h
    add hl, bc
    ld [wPatchDst+1], a
    pop hl
    ld de, C2PatchRefs
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [hl+]
    ld [wPatchWidth], a
    ld a, [hl+]
    ld [wPatchHeight], a
    ld a, [wPatchDst]
    ld c, a
    ld a, [wPatchDst+1]
    ld b, a

; Each source row stores width tile IDs followed by width attributes.
jr_029_66f9:
    ld a, [wPatchWidth]
    ld e, a

jr_029_66fd:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_029_66fd

    ld a, [wPatchDst]
    add $0e
    ld [wPatchDst], a
    ld c, a
    ld a, [wPatchDst+1]
    adc $00
    ld [wPatchDst+1], a
    ld b, a
    ld a, [wPatchWidth]
    ld e, a

jr_029_6719:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_029_6719

    ld a, [wPatchDst]
    add $0e
    ld [wPatchDst], a
    ld c, a
    ld a, [wPatchDst+1]
    adc $00
    ld [wPatchDst+1], a
    ld b, a
    ld a, [wPatchHeight]
    dec a
    ld [wPatchHeight], a
    jr nz, jr_029_66f9

    pop de
    ret
; Destination row offsets: row * 28 bytes.
PatchRowOffsets:
    db $00, $00, $1c, $00, $38, $00
jr_029_6742:
    db $54, $00, $70, $00, $8c, $00, $a8, $00, $c4, $00, $e0, $00, $fc, $00, $18, $01
    db $34
jr_029_6753:
    db $01, $50, $01, $6c, $01
; X/Y tile coordinates for patch IDs $00 through $89.
C2PatchCoords:
    db $05, $02, $05, $02, $0d, $00, $0d, $00, $05, $01, $05, $01, $01, $00, $01, $00
    db $0d, $01, $0d, $01, $06, $02, $06, $02, $09, $01, $09, $01, $02, $02, $02, $02
    db $02, $00, $02, $00, $0b, $00, $0b, $00, $03, $01, $03, $01, $03, $01, $03, $01
    db $0d, $01, $0d, $01, $0d, $01, $0d, $01, $00, $01, $00, $01, $01, $01, $01, $01
    db $06, $00, $06, $00, $06, $00, $06, $00, $05, $04, $05, $04, $05, $04, $05, $04
    db $05, $04, $05, $04, $05, $04, $05, $04, $06, $00, $06, $00, $0c, $04, $0c, $04
    db $05, $04, $05, $04, $00, $03, $00, $03, $09, $00, $09, $00, $09, $00, $09, $00
    db $04, $00, $04, $00, $09, $00, $09, $00, $09, $00, $09, $00, $03, $03, $03, $03
    db $07, $03, $07, $03, $01, $03, $01, $03, $0b, $01, $0b, $01, $01, $01, $01, $01
    db $0c, $02, $0c, $02, $04, $01, $04, $01, $00, $00, $00, $00, $0c, $05, $0c, $05
    db $00, $04, $00, $04, $0b, $00, $0b, $00, $0b, $01, $0b, $01, $04, $03, $04, $03
    db $00, $01, $00, $01, $00, $01, $00, $01, $04, $04, $04, $04, $04, $04, $04, $04
    db $0a, $02, $0a, $02, $08, $08, $08, $08, $00, $04, $00, $04, $05, $04, $05, $04
    db $00, $00, $00, $00, $06, $03, $06, $03, $00, $02, $00, $02, $0c, $02, $0c, $02
    db $0c, $02, $0c, $02, $04, $08, $04, $08, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $01, $04, $01, $0b, $01, $0b, $01, $0b, $01, $0b, $01, $00, $00, $00, $00
    db $08, $01, $08, $01, $08, $01, $08, $01, $00, $03, $00, $03, $0c, $03, $0c, $03
    db $03, $03, $03, $03
