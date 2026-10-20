; --- save_prompt.asm ---

; Display save confirmation, store only on answer zero, restore the UI flag, and reload the active case view.
RunSavePrompt:

    call FadeOut
    xor a
    ld [wScrollY], a
    call HideTextWindow
    call LoadSaveUi
    call ClearSavePanel
    ld hl, SaveUiPtrs5
    call PickSaveSpec
    call QueueTileSpec
    ld hl, SaveUiPtrs4
    call PickSaveSpec
    call QueueTileSpec
    call SubmitMapQueue
    ld a, $02
    call StageUiObj
    call FadeIn
    ld a, $02
    ld [wSaveMenuRow], a
    call ChooseSaveAnswer
    ld a, [wSaveAnswer]
    cp $00
    jr nz, SavePromptRestoreView

    call StoreGame

; Restore scrolling, invalidate graphics caches, and reload the selected case view.
SavePromptRestoreView:
jr_002_7934:
    call FadeOut
    ld a, [wSpriteScrollY]
    ld [wScrollY], a
    ld a, $ff
    ldh [hBgLoaded], a
    ldh [hObjLoaded], a
    ld a, [wCaseId]
    cp $00
    jr nz, SavePromptReloadCase2

    call ReloadC1View
    ret


; Reload the Case II view after the save confirmation.
SavePromptReloadCase2:
jr_002_794e:
    call ReloadC2View
    ret

; --- save_ui_load.asm ---

; Clear OAM, pause LCD and timer, load save graphics/map/objects, then restore LCD and timer.
LoadSaveUi:


Call_002_7952:
    call BlankOam
    call RequestTimer
    call DisableLcd
    call LoadSaveGfx
    ld a, $02
    call ReadUiMap
    ld a, $02
    call StageUiObj
    call StopTimer
    call RestoreLcd
    ret

; Read the pointer selected by the UI language byte from the table at HL while preserving BC.
PickSaveSpec:


Call_002_796f:
    push bc
    ld a, [wTextSet]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    ld l, c
    pop bc
    ret

; --- save_pos_tbl.asm ---

SaveMenuYs:
    db $68, $70, $78

SaveSlotYs:
    db $58, $68, $78

SaveNumDests:
    dw $9965
    dw $99a5
    dw $99e5

SaveNumPtrs:
    dw SaveNumSet0
    dw SaveNumSet1
    dw SaveNumSet0

; --- save_slot_data.asm ---

SaveNumSet0:
    dw SaveSlotRect0
    dw SaveSlotRect1
    dw SaveSlotRect2

SaveSlotRect0:
    db $06, $01, $c5, $c8, $cb, $c4, $7f, $da

SaveSlotRect1:
    db $06, $01, $c5, $c8, $cb, $c4, $7f, $db

SaveSlotRect2:
    db $06, $01, $c5, $c8, $cb, $c4, $7f, $dc

SaveNumSet1:
    dw SaveSlotRect3
    dw SaveSlotRect4
    dw SaveSlotRect5

SaveSlotRect3:
    db $09, $01, $c5, $c8, $c2, $c7, $c8, $c4, $d1, $7f, $da

SaveSlotRect4:
    db $09, $01, $c5, $c8, $c2, $c7, $c8, $c4, $d1, $7f, $db

SaveSlotRect5:
    db $09, $01, $c5, $c8, $c2, $c7, $c8, $c4, $d1, $7f, $dc

SaveEmptyPtrs:
    dw SaveSlotRect6
    dw SaveSlotRect7
    dw SaveSlotRect8

SaveSlotRect6:
Call_002_79db:
    db $03, $01, $e3, $e4, $e5

SaveSlotRect7:
    db $05, $01, $e9, $ea, $eb, $ec, $ed

SaveSlotRect8:
    db $03, $01, $f0, $f1, $f2

SaveSlotRect9:
    db $06, $01, $a0, $a1, $a2, $a3, $a4, $a5

SaveSlotRect10:
    db $06, $01, $a0, $a1, $a2, $a3, $a4, $a6

SaveCaseDests:
    dw $996b
    dw $99ab
    dw $99eb

SaveSlotRect11:
    db $0b, $01, $c2, $c0, $d2, $c4, $ff, $c1, $ce, $ce, $ca, $ff, $da

SaveSlotRect12:
    db $0b, $01, $c2, $c0, $d2, $c4, $ff, $c1, $ce, $ce, $ca, $ff, $db

; --- save_ui_data.asm ---

SavePanelFill:
    db $65, $99, $0c, $06, $7f

SavePromptFill:
    db $a5, $99, $0c, $03, $7f

SaveUiPtrs0:
    dw SaveUiText00
    dw SaveUiText01
    dw SaveUiText02

SaveUiText00:
    db $a6, $99, $08, $01, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4

SaveUiText01:
    db $a6, $99, $09, $01, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4, $d1

SaveUiText02:
    db $a6, $99, $0a, $01, $c5, $ce, $d1, $d3, $d2, $c4, $d3, $d9, $c4, $cd

SaveUiPtrs1:
    dw SaveUiText10
    dw SaveUiText11
    dw SaveUiText12

SaveUiText10:
    db $c6, $99, $04, $01, $c4, $d7, $c8, $d3

SaveUiText11:
    db $c6, $99, $06, $01, $d2, $ce, $d1, $d3, $c8, $c4

SaveUiText12:
    db $c6, $99, $04, $01, $c4, $cd, $c3, $c4

SaveUiPtrs2:
    dw SaveUiText20
    dw SaveUiText21
    dw SaveUiText22

SaveUiText20:
    db $e6, $99, $08, $01, $cd, $c4, $d6, $7f, $c6, $c0, $cc, $c4

SaveUiText21:
    db $e6, $99, $0b, $01, $cd, $ce, $d4, $d5, $c4, $c0, $d4, $7f, $c9, $c4, $d4

SaveUiText22:
    db $e6, $99, $0b, $01, $cd, $c4, $d4, $c4, $d2, $7f, $d2, $cf, $c8, $c4, $cb

SaveUiPtrs3:
    ; Pointer to SaveUiText30; split bytes retain the interior label.
    db LOW(SaveUiText30)
jr_002_7aa4:
    db HIGH(SaveUiText30)
    dw SaveUiText31
    dw SaveUiText32

SaveUiText30:
    db $a9, $99, $03, $02, $d8, $c4, $d2, $cd, $ce, $7f

SaveUiText31:
    db $a9, $99, $03, $02, $ce, $d4, $c8, $cd, $ce, $cd

SaveUiText32:
    db $a9, $99, $04, $02, $c9, $c0, $7f, $7f, $cd, $c4, $c8, $cd

SaveUiPtrs4:
    dw SaveUiText40
    dw SaveUiText41
    dw SaveUiText42

SaveUiText40:
Call_002_7acf:
    db $09, $9a, $03, $02, $d8, $c4, $d2, $cd, $ce, $7f

SaveUiText41:
    db $a9, $99, $03, $02, $ce, $d4, $c8, $cd, $ce, $cd

SaveUiText42:
    db $a9, $99, $04, $02, $c9, $c0, $7f, $7f, $cd, $c4, $c8, $cd

SaveUiPtrs5:
    dw SaveUiText50
    dw SaveUiText51
    dw SaveUiText52

SaveUiText50:
Call_002_7af5:
    db $64, $99, $0c, $04, $7f, $7f, $f4, $7f, $d2, $c0, $d5, $c4, $7f, $f4, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $d3, $ce, $7f, $ce
    db $d5, $c4, $d1, $d6, $d1, $c8, $d3, $c4, $d3, $c7, $c8, $d2, $7f, $c5, $c8, $cb
    db $c4, $e6, $7f, $7f

SaveUiText51:
    db $67, $99, $07, $01, $c6, $c0, $d1, $c3, $c4, $7f, $e6

SaveUiText52:
    db $67, $99, $0b, $01, $d2, $cf, $c4, $c8, $c2, $c7, $c4, $d1, $cd, $7f, $e6

SaveUiPtrs6:
    dw SaveUiText60
    dw SaveUiText61
    dw SaveUiText62

SaveUiText60:
    db $87, $99, $08, $03, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $c4, $cd, $c3, $7f, $7f, $7f, $7f, $7f

SaveUiText61:
    db $87, $99, $09, $03, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4, $d1, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $c5, $c8, $cd, $7f, $7f, $7f, $7f, $7f, $7f

SaveUiText62:
    db $87, $99, $0a, $03, $c5, $ce, $d1, $d3, $d2, $c4, $d3, $d9, $c4, $cd, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $c4, $cd, $c3, $c4, $7f, $7f, $7f, $7f
    db $7f, $7f
