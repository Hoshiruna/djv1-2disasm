
; Draw a blank map, load graphics and palettes, then draw the actual cells.
ShowScene:
Call_000_0bab:
    push bc
    push de
    push hl
    call BlankOam
    call SubmitOam
    ld a, $01
    ld [wSceneBlank], a
    call DrawSceneMap
    call Call_000_0e52
    call SelectSceneMap
    push af

Jump_000_0bc3:
    ld a, $01
    call PushRomBank
    pop af
    call ReadSceneGfx
    call PopRomBank
    call PickScenePal
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ApplyScenePal
    call PopRomBank
    call SubmitOam
    xor a
    ld [wSceneBlank], a
    call DrawSceneMap
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $688c
    call PopRomBank
    call PopRomBank
    pop hl
    pop de
    pop bc
    ret

; Clear the active BG palette, load graphics, copy the map, then apply palettes.
ReloadScene:
Call_000_0bfd:
    push bc
    push de

Jump_000_0bff:
    push hl

Call_000_0c00:
Jump_000_0c00:
    call Call_000_0e52

Call_000_0c03:
Jump_000_0c03:
    call ClearOam
    call SubmitOam
    call SelectSceneMap

Call_000_0c0c:
    push af
    ld a, $01

Call_000_0c0f:
Jump_000_0c0f:
    call PushRomBank
    pop af

Call_000_0c13:
    call ReadSceneGfx
    call PopRomBank
    push af

Jump_000_0c1a:
    ld a, $02

Call_000_0c1c:
    call PushRomBank
    pop af

Jump_000_0c20:
    call $688c
    call PopRomBank
    call CopySceneMap
    call PopRomBank
    call PickScenePal
    push af

Call_000_0c30:
    ld a, $01
    call PushRomBank
    pop af
    call ApplyScenePal
    call PopRomBank
    call WaitFrame
    pop hl
    pop de
    pop bc
    ret

; Load graphics, copy the map, and apply palettes without the initial blank pass.
RedrawScene:
Call_000_0c43:
    push bc
    push de
    push hl
    call BlankOam
    call SubmitOam
    call SelectSceneMap

Jump_000_0c4f:
    push af
    ld a, $01

Jump_000_0c52:
    call PushRomBank
    pop af
    call ReadSceneGfx
    call PopRomBank
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $688c
    call PopRomBank
    call CopySceneMap
    call PopRomBank
    call PickScenePal
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ApplyScenePal
    call PopRomBank

Call_000_0c7f:
    pop hl
    pop de
    pop bc
    ret

; Dispatch to the case-specific palette selector.
PickScenePal:
Call_000_0c83:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_0c98

    push af
    ld a, $01
    call PushRomBank
    pop af
    call LoadC1Pal
    call PopRomBank
    ret


jr_000_0c98:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call LoadC2Pal
    call PopRomBank
    ret

; Select the map bank; wMapIndex = scene ID modulo $28. Caller restores bank.
SelectSceneMap:
Call_000_0ca6:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_0cef

    ld a, [wSceneId]
    ld [wMapIndex], a
    cp $28
    jr nc, jr_000_0cbd

    ld a, $23
    call PushRomBank
    ret


jr_000_0cbd:
    cp $50
    jr nc, jr_000_0ccf

    ld a, $24
    call PushRomBank
    ld a, [wSceneId]
    sub $28
    ld [wMapIndex], a
    ret


Jump_000_0ccf:
jr_000_0ccf:
    cp $78
    jr nc, jr_000_0ce1

Jump_000_0cd3:
    ld a, $25

Jump_000_0cd5:
    call PushRomBank
    ld a, [wSceneId]
    sub $50
    ld [wMapIndex], a
    ret


jr_000_0ce1:
    ld a, $26
    call PushRomBank

Call_000_0ce6:
    ld a, [wSceneId]
    sub $78
    ld [wMapIndex], a
    ret


jr_000_0cef:
    ld a, [wSceneId]
    ld [wMapIndex], a
    cp $28

Call_000_0cf7:
    jr nc, jr_000_0cff

    ld a, $27
    call PushRomBank
    ret


Call_000_0cff:
Jump_000_0cff:
jr_000_0cff:
    ld a, $28
    call PushRomBank
    ld a, [wSceneId]
    sub $28
    ld [wMapIndex], a

Call_000_0d0c:
    ret

; Resolve wMapIndex through the selected bank table at $4000.
ReadSceneMap:
Call_000_0d0d:
Jump_000_0d0d:
    push bc
    push hl
    ld a, [wMapIndex]
    ld l, a
    ld h, $00
    add hl, hl

Call_000_0d16:
    ld bc, $4000
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, c
    ld [wMapPtr], a
    ld a, b
    ld [wMapPtr+1], a
    call StageSceneMap
    pop hl
    pop bc
    ret

; Copy 196 IDs and attributes into rows of 14 IDs + 14 attributes at $c902.
StageSceneMap:
Call_000_0d2c:
    ld a, [wMapPtr]
    ld c, a

Jump_000_0d30:
    ld a, [wMapPtr+1]
    ld b, a
    ld hl, $c902
    ld d, $c4

Jump_000_0d39:
    ld e, $0e

jr_000_0d3b:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_000_0d49

    push de
    ld de, $000e
    add hl, de
    pop de
    ld e, $0e

jr_000_0d49:
    dec d
    jr nz, jr_000_0d3b

    ld hl, $c910
    ld d, $c4
    ld e, $0e

jr_000_0d53:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_000_0d61

    push de
    ld de, $000e
    add hl, de
    pop de
    ld e, $0e

Jump_000_0d61:
jr_000_0d61:
    dec d
    jr nz, jr_000_0d53

    push af
    ld a, $29
    call PushRomBank
    pop af
    call ApplyC2Patches
    call PopRomBank
    ld a, $02
    ld [wMapPtr], a
    ld a, $c9
    ld [wMapPtr+1], a
    ret
