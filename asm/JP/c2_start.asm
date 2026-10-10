
; Reload the HUD and current Case II view; show opening messages only for resume marker zero.
InitC2View:
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
    call FadeOut
    call RequestTimer
    call DisableLcd
    ld a, $03
    call ReadUiMap
    call LoadBaseGfx
    call StopTimer
    call RestoreLcd
    call BlankOam
    call DrawC2Marks
    call RefreshLists
    call InitC2Bits
    call PickC2Scene
    call LoadC2Pal
    call Call_000_19d9
    call SubmitOam
    call BuildObjList
    call RedrawScene
    call FadeIn
    ld hl, $c8ad
    ld d, $18
    ld a, $ff
    call FillC2Bytes
    ld a, $ff
    ld hl, wListSel
    ld [hl+], a
    ld [hl], a
    ld a, [wCaseResume]
    cp $00
    jr nz, jr_003_40a8

    xor a
    call ShowMsg0
    ld a, $0d
    ld [$c8e9], a
    call Call_003_526c
    ld a, $0a
    call PlayAudio
    ld a, $78
    call WaitTicks
    ld a, $01
    call ShowMsg0
    ld a, $3c
    call WaitTicks
    xor a
    ld [$c8e9], a
    call Call_003_527b
    ld a, $78
    call WaitTicks
    ld a, $02
    call ShowMsg0
    ld a, $3c
    call WaitTicks
    call Call_003_52ce
    call Call_000_3966
    ld a, $03
    call ShowMsg0

jr_003_40a8:
    ld a, $fe
    ld [wCaseResume], a
    xor a
    ld [$c8af], a
    ld a, $a0
    call SetStateBit
    ld a, $a3
    call SetStateBit
    ret

; Initialize Case II scene, room, object, selection, and original case-specific state fields.
InitC2Data:


    ld a, $ff
    ld d, $20
    ld hl, $c8a5
    call FillC2Bytes
    xor a
    ld [$c8af], a
    xor a
    ld [wSceneId], a
    ld [wRoomId], a
    ld a, $02
    ld [$c524], a
    ld [$c525], a
    ld a, $ff
    ld [$c8b1], a
    ld [$c8b2], a
    ld [$c8b3], a
    ld hl, $c8c5
    ld d, $20
    call FillC2Bytes
    ld hl, wObjPresent
    ld d, $18
    call FillC2Bytes
    ld hl, $c468
    ld d, $59
    call FillC2Bytes
    ld hl, $c528
    ld d, $0c
    call FillC2Bytes
    ld hl, $c53b
    ld d, $20
    call FillC2Bytes
    xor a
    ld [$c53b], a
    ld [$c543], a
    ld [$c54b], a
    ld [$c553], a
    ld hl, $c438
    ld d, $18
    call FillC2Bytes
    call InitC2Visible
    ret

; Fill D bytes at HL with A, preserving the original zero-count wrap.
FillC2Bytes:


Call_003_4125:
jr_003_4125:
    ld [hl+], a
    dec d
    jr nz, jr_003_4125

    ret
