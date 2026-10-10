
; Draw a blank map, load graphics and palettes, then draw the actual cells.
ShowScene:
Call_000_0bb6:
    push bc
    push de
    push hl
    call BlankOam
    call SubmitOam
    ld a, $01
    ld [wSceneBlank], a
    call DrawSceneMap
    call Call_000_0e5d
    call SelectSceneMap
    push af
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
Call_000_0c08:
    push bc
    push de
    push hl
    call Call_000_0e5d
    call ClearOam

Jump_000_0c11:
    call SubmitOam
    call SelectSceneMap
    push af
    ld a, $01

Jump_000_0c1a:
    call PushRomBank
    pop af
    call ReadSceneGfx
    call PopRomBank
    push af

Jump_000_0c25:
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

Call_000_0c44:
    call PopRomBank

Call_000_0c47:
    call WaitFrame

Call_000_0c4a:
    pop hl

Call_000_0c4b:
    pop de

Call_000_0c4c:
    pop bc

Call_000_0c4d:
    ret

; Load graphics, copy the map, and apply palettes without the initial blank pass.
RedrawScene:
Call_000_0c4e:
    push bc

Call_000_0c4f:
    push de

Call_000_0c50:
    push hl

Call_000_0c51:
    call BlankOam

Call_000_0c54:
    call SubmitOam

Call_000_0c57:
    call SelectSceneMap
    push af
    ld a, $01
    call PushRomBank

Jump_000_0c60:
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
    pop hl
    pop de
    pop bc
    ret

; Dispatch to the case-specific palette selector.
PickScenePal:
Call_000_0c8e:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_0ca3

    push af
    ld a, $01
    call PushRomBank
    pop af
    call LoadC1Pal
    call PopRomBank
    ret


jr_000_0ca3:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call LoadC2Pal
    call PopRomBank
    ret

; Select the map bank; wMapIndex = scene ID modulo $28. Caller restores bank.
SelectSceneMap:
Call_000_0cb1:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_0cfa

    ld a, [wSceneId]
    ld [wMapIndex], a
    cp $28
    jr nc, jr_000_0cc8

    ld a, $23
    call PushRomBank
    ret


jr_000_0cc8:
    cp $50
    jr nc, jr_000_0cda

    ld a, $24
    call PushRomBank
    ld a, [wSceneId]
    sub $28
    ld [wMapIndex], a
    ret


jr_000_0cda:
    cp $78
    jr nc, jr_000_0cec

    ld a, $25
    call PushRomBank
    ld a, [wSceneId]

Call_000_0ce6:
    sub $50
    ld [wMapIndex], a
    ret


jr_000_0cec:
    ld a, $26
    call PushRomBank
    ld a, [wSceneId]
    sub $78
    ld [wMapIndex], a
    ret


jr_000_0cfa:
    ld a, [wSceneId]

Call_000_0cfd:
    ld [wMapIndex], a

Call_000_0d00:
    cp $28

Jump_000_0d02:
    jr nc, jr_000_0d0a

    ld a, $27
    call PushRomBank
    ret


jr_000_0d0a:
    ld a, $28

Call_000_0d0c:
    call PushRomBank
    ld a, [wSceneId]
    sub $28
    ld [wMapIndex], a
    ret

; Resolve wMapIndex through the selected bank table at $4000.
ReadSceneMap:
Call_000_0d18:
    push bc
    push hl
    ld a, [wMapIndex]
    ld l, a
    ld h, $00
    add hl, hl

Call_000_0d21:
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
Call_000_0d37:
    ld a, [wMapPtr]
    ld c, a
    ld a, [wMapPtr+1]
    ld b, a
    ld hl, $c902
    ld d, $c4
    ld e, $0e

jr_000_0d46:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_000_0d54

    push de
    ld de, $000e
    add hl, de
    pop de
    ld e, $0e

jr_000_0d54:
    dec d
    jr nz, jr_000_0d46

    ld hl, $c910
    ld d, $c4
    ld e, $0e

jr_000_0d5e:
    ld a, [bc]
    inc bc
    ld [hl+], a

Jump_000_0d61:
    dec e
    jr nz, jr_000_0d6c

    push de
    ld de, $000e
    add hl, de
    pop de
    ld e, $0e

jr_000_0d6c:
    dec d
    jr nz, jr_000_0d5e

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
