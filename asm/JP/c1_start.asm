
; Reload the HUD and current Case I view; run the original opening path when required.
; Resumed setup also invalidates graphics caches and re-applies initial state bits.
InitC1View:
    ld a, $ff
    ldh [hBgLoaded], a
    ldh [hObjLoaded], a
    xor a
    ld [wSpriteScrollY], a
    ld [wScrollY], a
    ld a, $10
    ld [wCursorX], a
    ld a, $80
    ld [wCursorY], a
    call FadeToWhite
    call RequestTimer
    call DisableLcd
    ld a, UiMapIdGameHud
    call ReadUiMap
    call LoadBaseGfx
    call StopTimer
    call RestoreLcd
    call BlankOam
    call DrawC1Marks
    call DrawListUI
    call InitC1Bits
    ld a, [wCaseResume]
    cp CaseStartNewMarker
    jr nz, C1ResumeViewLoad

    call BlankOam
    ld a, C1SceneHitman
    ld [wSceneId], a
    jr C1InitViewDraw

; Load the resumed scene palette and submit cursor objects before drawing the view.
C1ResumeViewLoad:

jr_001_6bb6:
    call LoadC1Pal
    call DrawCursorObjs
    call SubmitOam
    call BuildObjList

; Redraw and fade in the selected view, then reset room-object and list selection fields.
C1InitViewDraw:

jr_001_6bc2:
    call RedrawScene
    call FadeFromWhite
    ld hl, wRoomObjPtr
    ld a, $ff
    ld d, $18
    call FillC1Bytes
    ld a, $ff
    ld hl, wListSel
    ld [hl+], a
    ld [hl], a
    xor a
    ld [wInputSel], a
    ld a, C1OpeningShown
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    ret nz

    ld a, $5a
    call WaitTicks
    xor a
    ld [wSceneId], a
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    call ShowScene
    ld a, C1OpeningShown
    call SetObjFlag
    ld a, CaseViewReadyMarker
    ld [wCaseResume], a
    call BuildObjList
    call SaveState
    xor a
    call ShowMsg0 ; Message Text0CMessage00: ふと めが さめた。 / ここは・・・・・・?[PAGE] / ・・・どうも トイレの なからしい。どうして こんなところに / いるのだろう?[PAGE] / かんがえ...
    ret

; Initialize Case I room, object, selection, and original case-specific state fields.
InitC1Data:


Call_001_6c0e:
    ld a, $ff
    ld d, $20
    ld hl, wScriptPtr
    call FillC1Bytes
    xor a
    ld [wInputSel], a
    xor a
    ld [wRoomId], a
    ld a, $03
    ld [wGun1Ammo], a
    ld a, $06
    ld [wGun2Ammo], a
    xor a
    ld [wGun3Ammo], a
    ld [wBullet1Count], a
    ld [wBullet2Count], a
    ld a, $07
    ld [wC1CoinQty], a
    ld a, $06
    ld [wC1AmmoQty], a
    ld a, $02
    ld [wChangeMode], a
    ld [wListMax], a
    ld a, $ff
    ld [wOpClass], a
    ld [wSelAction], a
    ld [wActionCode], a
    ld hl, wItemType
    ld d, $20
    call FillC1Bytes
    ld hl, wObjPresent
    ld d, $18
    call FillC1Bytes
    ld hl, wObjVisible
    ld d, $18
    call FillC1Bytes
    ld hl, wListBase
    ld d, $59
    call FillC1Bytes
    ld hl, wPending
    ld d, $0c
    call FillC1Bytes
    ld hl, wGroupData
    ld d, $20
    call FillC1Bytes
    ld a, $0a
    ld [wGroupData], a
    xor a
    ld [wC1HeldItem], a
    call InitC1Absent
    ret

; Fill D bytes at HL with A, preserving the original zero-count wrap.
FillC1Bytes:


Call_001_6c8e:
jr_001_6c8e:
    ld [hl+], a
    dec d
    jr nz, FillC1Bytes

    ret
