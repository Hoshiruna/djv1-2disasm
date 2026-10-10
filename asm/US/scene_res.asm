
; Look up the scene BG/object pair and load changed resources.
ReadSceneGfx:
    ld a, [wCaseId]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, CaseGfxRefs
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [wSceneId]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ldh [hBgGfx], a
    ld a, [hl]
    ldh [hObjGfx], a
    call LoadSceneGfx
    ret

; Request the scene BG and object ID $7f; retain a valid object cache.
ReadSceneBg:
    ld a, [wCaseId]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, CaseGfxRefs
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [wSceneId]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ldh [hBgGfx], a
    ld a, $7f
    ldh [hObjGfx], a
    call LoadSceneGfx
    ret
CaseGfxRefs:
    dw Case1GfxPairs, Case2GfxPairs
; Per scene: BG ID, object ID. BG also loads ID+1.
Case1GfxPairs:
    db $02, $c1, $02, $c1, $04, $c2, $06, $c2, $08, $00, $08, $00, $08, $00, $08, $00
    db $0a, $c2, $0a, $c2, $0c, $c2, $0c, $c2, $0e, $00, $0e, $00, $10, $c2, $10, $c2
    db $10, $c2, $10, $c2, $12, $ca, $12, $ca, $14, $00, $14, $00, $14, $00, $14, $00
    db $16, $00, $16, $00, $18, $00
jr_001_46e9:
    db $18, $00
jr_001_46eb:
    db $1a, $00, $1a, $00, $1a, $00, $1a, $00, $1c, $c1, $1c, $c1, $1c, $c1, $1c, $c1
    db $1e, $00, $1e, $00, $20, $00
jr_001_4701:
    db $20, $00
jr_001_4703:
    db $22, $00, $22, $00, $22, $00, $22, $00, $24
jr_001_470c:
    db $00, $24
jr_001_470e:
    db $00, $26, $00, $26, $00, $28, $00
jr_001_4715:
    db $2a, $00, $28, $00
jr_001_4719:
    db $28, $00
jr_001_471b:
    db $28, $00
jr_001_471d:
    db $2a, $00, $2a, $00, $2a, $00, $28, $00
jr_001_4725:
    db $28, $00
jr_001_4727:
    db $28, $00
jr_001_4729:
    db $2a, $00, $2a, $00, $2a, $00, $28, $00
jr_001_4731:
    db $2a, $00, $2c, $c3, $2e, $00, $2e, $00, $30, $00
jr_001_473b:
    db $32, $c3, $34, $c3, $36, $c3, $38, $c9, $38, $c9, $3a, $c3, $3c, $c6, $3e, $00
    db $40, $c3, $42, $00, $44, $00, $46, $00, $48, $00, $4a, $00, $4a, $00, $4c, $ca
    db $4e, $00, $50, $00, $52, $c3, $54, $00, $56, $c3, $56, $c3, $56, $c3, $56, $c3
    db $58, $00, $58, $00, $58, $00, $58, $00, $5a, $00, $5a, $00, $5c, $00, $5c, $00
    db $5c, $00, $5e, $c9, $60
jr_001_4780:
    db $00, $60, $00, $62, $00, $62, $00, $64, $c3, $66, $00, $66
jr_001_478c:
    db $00, $68, $00, $68, $00, $a2, $00, $6a, $00, $6a, $00, $6c, $c6, $6e, $c4, $6e
    db $c4
jr_001_479d:
    db $70, $c5, $70, $c5, $72, $00, $74, $00
jr_001_47a5:
    db $76, $00, $78, $00, $7a, $00, $7a, $00, $7c, $c5
jr_001_47af:
    db $7e, $00, $7e, $00, $7e, $00, $7e, $00, $80, $c5, $80, $c5, $82, $c5, $82, $c5
    db $84, $00, $86, $00, $86, $00, $84, $00, $88, $00, $8a, $00, $8a, $00, $8c, $00
    db $8e, $00, $90, $c7, $92, $00, $94, $00, $96, $00, $98, $00, $9a, $00, $9c, $00
    db $9e, $00, $a0, $00, $90, $c8
; Per scene: BG ID, object ID. BG also loads ID+1.
Case2GfxPairs:
    db $02, $81, $04, $82, $06, $82, $08, $82, $0a, $7f, $0c, $82, $0e, $7f, $10, $82
    db $12, $82, $12, $82, $16, $83, $18, $83, $1a, $7f, $1c, $83, $1e, $89, $1e, $89
    db $1e, $89, $20, $83, $22, $83, $24, $83, $26, $81, $26, $81, $28, $8a, $2a, $7f
    db $2c, $8a, $2a, $7f, $26, $81, $26, $81, $2e, $84, $30, $84, $32, $88, $34, $7f
    db $36, $86, $38, $86, $3a, $7f, $3c, $7f, $3e, $7f, $40, $7f, $42, $7f, $44, $7f
    db $46, $7f, $48, $86, $4a, $7f, $4c, $7f, $4e, $84, $50, $87, $52, $87, $54, $87
    db $56, $7f, $58, $88, $5a, $88, $5c, $7f, $5e, $8b, $60, $88, $62, $7f, $64, $88
    db $66, $88, $68, $85, $6a, $7f, $6c, $7f, $6e, $7f, $70, $7f, $72, $7f, $74, $7f
    db $76, $7f, $78, $7f, $78, $7f, $7a, $7f

; Map the Case I scene ID to a palette ID, then stage both sets.
LoadC1Pal:
Call_001_486d:
    ld a, [wSceneId]
    ld e, a
    ld d, $00
    ld hl, Case1PalIds
    add hl, de
    ld a, [hl]
    ld [wScenePalId], a
    call StagePals
    ret
; One palette ID per Case I scene; shared IDs use shared palette sets.
Case1PalIds:
    db $00, $00, $01, $02, $03, $03, $03, $03, $04, $04, $05, $05, $06, $06, $07, $07
    db $07, $07, $08, $08, $09, $09, $09, $09, $0a, $0a, $0b, $0b, $0c, $0c, $0c, $0c
    db $0d, $0d, $0d, $0d, $0e, $0e, $0f, $0f, $10, $10, $10, $10, $11, $11, $12, $12
    db $13, $13, $13, $13, $13, $13, $13, $13, $13, $13, $13, $13, $13, $13, $13, $13
    db $14, $15, $15, $16, $17, $18, $19, $1a, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21
    db $22, $23, $23, $24, $25, $26, $27, $28, $29, $29, $2a, $2a, $2b, $2b, $2c, $2c
jr_001_48df:
    db $2d, $2d, $2e, $2e, $2e, $2f, $30, $30, $31, $31, $32, $33, $33, $34, $34, $35
    db $36, $36, $37, $38, $38, $39, $39, $3a, $3b, $3c, $3d, $3e, $3e, $3f, $40, $40
    db $41, $41
jr_001_4901:
    db $42, $42, $43, $43, $44, $45, $46, $47, $48, $49, $49, $4a, $4b, $4c, $4d, $4e
    db $4f, $50, $51, $52, $53, $54
jr_001_4917:
    db $55

; Copy 128 staged palette bytes into active sets and request their upload.
ApplyScenePal:
    ld bc, wBgPalNext
    ld hl, wBgPal
    ld d, $80

jr_001_4920:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_001_4920

    call WaitVideo
    call RequestPals

jr_001_492c:
    ret
