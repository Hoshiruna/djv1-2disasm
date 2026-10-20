
; Reload the HUD and current Case II view; show opening messages only for resume marker zero.
; Resumed setup also invalidates graphics caches and re-applies initial state bits.
InitC2View:
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
    call DrawCursorObjs
    call SubmitOam
    call BuildObjList
    call RedrawScene
    call FadeIn
    ld hl, wRoomObjPtr
    ld d, $18
    ld a, $ff
    call FillC2Bytes
    ld a, $ff
    ld hl, wListSel
    ld [hl+], a
    ld [hl], a
    ld a, [wCaseResume]
    cp $00
    jr nz, C2ViewFinishInit

    xor a
    call ShowMsg0
    ld a, $0d
    ld [wFxId], a
    call SaveC2Effect
    ld a, $0a
    call PlayAudio
    ld a, $78
    call WaitTicks
    ld a, $01
    call ShowMsg0
    ld a, $3c
    call WaitTicks
    xor a
    ld [wFxId], a
    call ShowC2Effect
    ld a, $78
    call WaitTicks
    ld a, $02
    call ShowMsg0
    ld a, $3c
    call WaitTicks
    call RestoreC2Effect
    call RoomCueCall
    ld a, $03
    call ShowMsg0

; Finish view setup after either the opening sequence or a resumed view.
C2ViewFinishInit:
jr_003_40a8:
    ld a, $fe
    ld [wCaseResume], a
    xor a
    ld [wInputSel], a
    ld a, $a0
    call SetStateBit
    ld a, $a3
    call SetStateBit
    ret

; Initialize Case II scene, room, object, selection, and original case-specific state fields.
InitC2Data:


    ld a, $ff
    ld d, $20
    ld hl, wScriptPtr
    call FillC2Bytes
    xor a
    ld [wInputSel], a
    xor a
    ld [wSceneId], a
    ld [wRoomId], a
    ld a, $02
    ld [wChangeMode], a
    ld [wListMax], a
    ld a, $ff
    ld [wOpClass], a
    ld [wSelAction], a
    ld [wActionCode], a
    ld hl, wItemType
    ld d, $20
    call FillC2Bytes
    ld hl, wObjPresent
    ld d, $18
    call FillC2Bytes
    ld hl, wListBase
    ld d, $59
    call FillC2Bytes
    ld hl, wPending
    ld d, $0c
    call FillC2Bytes
    ld hl, wGroupData
    ld d, $20
    call FillC2Bytes
    xor a
    ld [wC2Washer], a
    ld [wC2Trash1], a
    ld [wC2Trash2], a
    ld [wC2Desk], a
    ld hl, wObjVisible
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
    jr nz, FillC2Bytes

    ret
