
; Reload the HUD and current Case I view; run the original opening path when required.
InitC1View:
    ld a, $ff
    ldh [hBgLoaded], a
    ldh [hObjLoaded], a
    xor a
    ld [wSpriteScrollY], a
    ld [wScrollY], a
    ld a, $10
    ld [$c8ab], a
    ld a, $80
    ld [$c8ac], a
    call FadeToWhite
    call RequestTimer
    call DisableLcd
    ld a, $03
    call ReadUiMap
    call LoadBaseGfx
    call StopTimer
    call RestoreLcd
    call BlankOam
    call DrawC1Marks
    call DrawListUI
    call InitC1Bits
    ld a, [wCaseResume]
    cp $00
    jr nz, jr_001_6b2f

    call BlankOam
    ld a, $8f
    ld [wSceneId], a
    jr jr_001_6b3b

jr_001_6b2f:
    call LoadC1Pal
    call DrawCursorObjs
    call SubmitOam
    call BuildObjList

jr_001_6b3b:
    call RedrawScene
    call FadeFromWhite
    ld hl, $c8ad
    ld a, $ff
    ld d, $18
    call FillC1Bytes
    ld a, $ff
    ld hl, wListSel
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c8af], a
    ld a, $be
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    ret nz

    ld a, $5a
    call WaitTicks
    xor a
    ld [wSceneId], a
    ld a, $06
    ld [wSceneFx], a
    call ShowScene
    ld a, $be
    call SetObjFlag
    ld a, $fe
    ld [wCaseResume], a
    call BuildObjList
    call SaveState
    xor a
    call ShowMsg0
    ret

; Initialize Case I room, object, selection, and original case-specific state fields.
InitC1Data:


Call_001_6b87:
    ld a, $ff
    ld d, $20
    ld hl, $c8a5
    call FillC1Bytes
    xor a
    ld [$c8af], a
    xor a
    ld [wRoomId], a
    ld a, $03
    ld [wC1Count0], a
    ld a, $06
    ld [wC1Count1], a
    xor a
    ld [wC1Count2], a
    ld [wBullet1Count], a
    ld [wBullet2Count], a
    ld a, $07
    ld [$c55f], a
    ld a, $06
    ld [$c560], a
    ld a, $02
    ld [$c524], a
    ld [$c525], a
    ld a, $ff
    ld [$c8b1], a
    ld [$c8b2], a
    ld [$c8b3], a
    ld hl, $c8c5
    ld d, $20
    call FillC1Bytes
    ld hl, wObjPresent
    ld d, $18
    call FillC1Bytes
    ld hl, $c438
    ld d, $18
    call FillC1Bytes
    ld hl, $c468
    ld d, $59
    call FillC1Bytes
    ld hl, $c528
    ld d, $0c
    call FillC1Bytes
    ld hl, $c53b
    ld d, $20
    call FillC1Bytes
    ld a, $0a
    ld [$c53b], a
    xor a
    ld [wC1HeldItem], a
    call InitC1Absent
    ret

; Fill D bytes at HL with A, preserving the original zero-count wrap.
FillC1Bytes:


Call_001_6c07:
jr_001_6c07:
    ld [hl+], a
    dec d
    jr nz, jr_001_6c07

    ret
