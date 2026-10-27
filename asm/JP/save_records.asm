; --- save_prompt.asm ---

; Display save confirmation, store only on answer zero, then restore scrolling and reload the case view.
RunSavePrompt:

    call FadeOut
    xor a

    ld [wScrollY], a
    call HideTextWindow
    call LoadSaveUi
    call ClearSavePanel
    ld hl, SaveStorePromptPointers
    call PickSaveSpec
    call QueueTileSpec
    ld hl, SaveStoreAnswerPointers
    call PickSaveSpec
    call QueueTileSpec
    call SubmitMapQueue
    ld a, UiPalIdCommonObjects
    call StageUiObjPal
    call FadeIn
    xor a
    ld [wSaveMenuRow], a
    call ChooseSaveAnswer
    ld a, [wSaveAnswer]
    cp $00
    jr nz, SavePromptRestoreView

    call StoreGame

; Restore scrolling, invalidate graphics caches, and reload the selected case view.
SavePromptRestoreView:
jr_002_7933:
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
jr_002_794d:
    call ReloadC2View
    ret

; --- save_ui_load.asm ---

; Clear OAM, pause LCD and timer, load save graphics/map/objects, then restore LCD and timer.
LoadSaveUi:


Call_002_7951:
    call BlankOam
    call RequestTimer
    call DisableLcd
    call LoadSaveGfx
    ld a, UiMapIdSaveSelection
    call ReadUiMap
    ld a, UiPalIdCommonObjects
    call StageUiObjPal
    call StopTimer
    call RestoreLcd
    ret

; Read the pointer selected by the UI language byte from the table at HL while preserving BC.
PickSaveSpec:


Call_002_796e:
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

; Three menu cursor screen-Y values; new-case choices use indices zero and two.
SaveMenuCursorYTable:
SaveMenuYs:
    db $68, $70, $78

; Three slot cursor screen-Y values.
SaveSlotCursorYTable:
SaveSlotYs:
    db $58, $68, $78

; Three BG destinations for the slot number rectangles.
SaveSlotNumberDestinations:
SaveNumDests:
    dw $9965
    dw $99a5
    dw $99e5

; Text-set-selected number tables; entries zero and two share FILE labels.
SaveSlotNumberPointers:
SaveNumPtrs:
    dw SaveFileNumberRects
    dw SaveFichierNumberRects
    dw SaveFileNumberRects

; --- save_slot_data.asm ---

; Three FILE number rectangles, shared by text-set indices zero and two.
SaveFileNumberRects:
SaveNumSet0:
    dw SaveFileOneRect
    dw SaveFileTwoRect
    dw SaveFileThreeRect

; FILE 1 number label; also used by the German text-set entry.
SaveFileOneRect:
SaveSlotRect0:
    db $06, $01, $c5, $c8, $cb, $c4, $7f, $da

; FILE 2 number label; also used by the German text-set entry.
SaveFileTwoRect:
SaveSlotRect1:
    db $06, $01, $c5, $c8, $cb, $c4, $7f, $db

; FILE 3 number label; also used by the German text-set entry.
SaveFileThreeRect:
SaveSlotRect2:
    db $06, $01, $c5, $c8, $cb, $c4, $7f, $dc

; Three FICHIER number rectangles for text-set index one.
SaveFichierNumberRects:
SaveNumSet1:
    dw SaveFichierOneRect
    dw SaveFichierTwoRect
    dw SaveFichierThreeRect

; FICHIER 1 number label; its last three cells can be overwritten by a case marker.
SaveFichierOneRect:
SaveSlotRect3:
Call_002_79b3:
    db $09, $01, $c5, $c8, $c2, $c7, $c8, $c4, $d1, $7f, $da

; FICHIER 2 number label; its last three cells can be overwritten by a case marker.
SaveFichierTwoRect:
SaveSlotRect4:
    db $09, $01, $c5, $c8, $c2, $c7, $c8, $c4, $d1, $7f, $db

; FICHIER 3 number label; its last three cells can be overwritten by a case marker.
SaveFichierThreeRect:
SaveSlotRect5:
    db $09, $01, $c5, $c8, $c2, $c7, $c8, $c4, $d1, $7f, $dc

; English/French/German empty-slot rectangle pointers.
SaveEmptyStatusPointers:
SaveEmptyPtrs:
    dw SaveEmptyEnglishRect
    dw SaveEmptyFrenchRect
    dw SaveEmptyGermanRect

; EMPTY status label assembled from three graphic tiles.
SaveEmptyEnglishRect:
SaveSlotRect6:
Call_002_79da:
    db $03, $01, $e3, $e4, $e5

; NOUVEAU status label assembled from five graphic tiles.
SaveEmptyFrenchRect:
SaveSlotRect7:
    db $05, $01, $e9, $ea, $eb, $ec, $ed

; NEU status label assembled from three graphic tiles.
SaveEmptyGermanRect:
SaveSlotRect8:
    db $03, $01, $f0, $f1, $f2

; Compact Case Book 1 status marker, selected by a zero saved case byte.
SaveCaseBookOneStatusRect:
SaveSlotRect9:
    db $06, $01, $a0, $a1, $a2, $a3, $a4, $a5

; Compact Case Book 2 status marker, selected by any nonzero saved case byte.
SaveCaseBookTwoStatusRect:
SaveSlotRect10:
    db $06, $01, $a0, $a1, $a2, $a3, $a4, $a6

; Three BG destinations for compact occupied-case markers.
SaveSlotCaseDestinations:
SaveCaseDests:
    dw $996b
    dw $99ab
    dw $99eb

; CASE BOOK 1 label for the new-case choice menu.
SaveCaseBookOneChoiceRect:
SaveSlotRect11:
    db $0b, $01, $c2, $c0, $d2, $c4, $ff, $c1, $ce, $ce, $ca, $ff, $da

; CASE BOOK 2 label for the new-case choice menu.
SaveCaseBookTwoChoiceRect:
SaveSlotRect12:
    db $0b, $01, $c2, $c0, $d2, $c4, $ff, $c1, $ce, $ce, $ca, $ff, $db

; --- save_ui_data.asm ---

SavePanelFill:
    db $65, $99, $0c, $06, $7f

SavePromptFill:
    db $a5, $99, $0c, $03, $7f

; English/French/German pointers: CONTINUE operation label.
SaveContinuePointers:
SaveUiPtrs0:
    dw SaveContinueEnglishSpec
    dw SaveContinueFrenchSpec
    dw SaveContinueGermanSpec

; English destination and tile rectangle: CONTINUE operation label.
SaveContinueEnglishSpec:
SaveUiText00:
    db $a6, $99, $08, $01, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4

; French destination and tile rectangle: CONTINUE operation label.
SaveContinueFrenchSpec:
SaveUiText01:
    db $a6, $99, $09, $01, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4, $d1

; German destination and tile rectangle: CONTINUE operation label.
SaveContinueGermanSpec:
SaveUiText02:
    db $a6, $99, $0a, $01, $c5, $ce, $d1, $d3, $d2, $c4, $d3, $d9, $c4, $cd

; English/French/German pointers: EXIT operation label.
SaveExitPointers:
SaveUiPtrs1:
    dw SaveExitEnglishSpec
    dw SaveExitFrenchSpec
    dw SaveExitGermanSpec

; English destination and tile rectangle: EXIT operation label.
SaveExitEnglishSpec:
SaveUiText10:
    db $c6, $99, $04, $01, $c4, $d7, $c8, $d3

; French destination and tile rectangle: EXIT operation label.
SaveExitFrenchSpec:
SaveUiText11:
    db $c6, $99, $06, $01, $d2, $ce, $d1, $d3, $c8, $c4

; German destination and tile rectangle: EXIT operation label.
SaveExitGermanSpec:
SaveUiText12:
    db $c6, $99, $04, $01, $c4, $cd, $c3, $c4

; English/French/German pointers: NEW GAME operation label; the third operation enters erase confirmation.
SaveNewGamePointers:
SaveUiPtrs2:
    dw SaveNewGameEnglishSpec
    dw SaveNewGameFrenchSpec
    dw SaveNewGameGermanSpec

; English destination and tile rectangle: NEW GAME operation label; the third operation enters erase confirmation.
SaveNewGameEnglishSpec:
SaveUiText20:
    db $e6, $99, $08, $01, $cd, $c4, $d6, $7f, $c6, $c0, $cc, $c4

; French destination and tile rectangle: NEW GAME operation label; the third operation enters erase confirmation.
SaveNewGameFrenchSpec:
SaveUiText21:
    db $e6, $99, $0b, $01, $cd, $ce, $d4, $d5, $c4, $c0, $d4, $7f, $c9, $c4, $d4

; German destination and tile rectangle: NEW GAME operation label; the third operation enters erase confirmation.
SaveNewGameGermanSpec:
SaveUiText22:
    db $e6, $99, $0b, $01, $cd, $c4, $d4, $c4, $d2, $7f, $d2, $cf, $c8, $c4, $cb

; English/French/German pointers: YES/NO erase answer rectangle.
SaveEraseAnswerPointers:
SaveUiPtrs3:
    dw SaveEraseAnswerEnglishSpec
    dw SaveEraseAnswerFrenchSpec
    dw SaveEraseAnswerGermanSpec

; English destination and tile rectangle: YES/NO erase answer rectangle.
SaveEraseAnswerEnglishSpec:
SaveUiText30:
    db $a9, $99, $03, $02, $d8, $c4, $d2, $cd, $ce, $7f

; French destination and tile rectangle: YES/NO erase answer rectangle.
SaveEraseAnswerFrenchSpec:
SaveUiText31:
    db $a9, $99, $03, $02, $ce, $d4, $c8, $cd, $ce, $cd

; German destination and tile rectangle: YES/NO erase answer rectangle.
SaveEraseAnswerGermanSpec:
SaveUiText32:
    db $a9, $99, $04, $02, $c9, $c0, $7f, $7f, $cd, $c4, $c8, $cd

; English/French/German pointers: YES/NO save answer rectangle; English destination differs between US and JP.
SaveStoreAnswerPointers:
SaveUiPtrs4:
    dw SaveStoreAnswerEnglishSpec
    dw SaveStoreAnswerFrenchSpec
    dw SaveStoreAnswerGermanSpec

; English destination and tile rectangle: YES/NO save answer rectangle; English destination differs between US and JP.
SaveStoreAnswerEnglishSpec:
SaveUiText40:
Call_002_7ace:
    db $a9, $99, $03, $02, $d8, $c4, $d2, $cd, $ce, $7f

; French destination and tile rectangle: YES/NO save answer rectangle; English destination differs between US and JP.
SaveStoreAnswerFrenchSpec:
SaveUiText41:
    db $a9, $99, $03, $02, $ce, $d4, $c8, $cd, $ce, $cd

; German destination and tile rectangle: YES/NO save answer rectangle; English destination differs between US and JP.
SaveStoreAnswerGermanSpec:
SaveUiText42:
    db $a9, $99, $04, $02, $c9, $c0, $7f, $7f, $cd, $c4, $c8, $cd

; English/French/German pointers: Save prompt; English rectangle differs in size and destination between US and JP.
SaveStorePromptPointers:
SaveUiPtrs5:
    dw SaveStorePromptEnglishSpec
    dw SaveStorePromptFrenchSpec
    dw SaveStorePromptGermanSpec

; English destination and tile rectangle: Save prompt; English rectangle differs in size and destination between US and JP.
SaveStorePromptEnglishSpec:
SaveUiText50:
Call_002_7af4:
    db $67, $99, $06, $01, $d2, $c0, $d5, $c4, $7f, $e6

; French destination and tile rectangle: Save prompt; English rectangle differs in size and destination between US and JP.
SaveStorePromptFrenchSpec:
SaveUiText51:
    db $67, $99, $07, $01, $c6, $c0, $d1, $c3, $c4, $7f, $e6

; German destination and tile rectangle: Save prompt; English rectangle differs in size and destination between US and JP.
SaveStorePromptGermanSpec:
SaveUiText52:
    db $67, $99, $0b, $01, $d2, $cf, $c4, $c8, $c2, $c7, $c4, $d1, $cd, $7f, $e6

; English/French/German pointers: Stored CONTINUE/END rectangle; no named caller identified in the inspected source.
SaveContinueEndPointers:
SaveUiPtrs6:
    dw SaveContinueEndEnglishSpec
    dw SaveContinueEndFrenchSpec
    dw SaveContinueEndGermanSpec

; English destination and tile rectangle: Stored CONTINUE/END rectangle; no named caller identified in the inspected source.
SaveContinueEndEnglishSpec:
SaveUiText60:
    db $87, $99, $08, $03, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $c4, $cd, $c3, $7f, $7f, $7f, $7f, $7f

; French destination and tile rectangle: Stored CONTINUE/END rectangle; no named caller identified in the inspected source.
SaveContinueEndFrenchSpec:
SaveUiText61:
    db $87, $99, $09, $03, $c2, $ce, $cd, $d3, $c8, $cd, $d4, $c4, $d1, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $c5, $c8, $cd, $7f, $7f, $7f, $7f, $7f, $7f

; German destination and tile rectangle: Stored CONTINUE/END rectangle; no named caller identified in the inspected source.
SaveContinueEndGermanSpec:
SaveUiText62:
    db $87, $99, $0a, $03, $c5, $ce, $d1, $d3, $d2, $c4, $d3, $d9, $c4, $cd, $7f, $7f
    db $7f, $7f
jr_002_7b6b:
    db $7f, $7f, $7f, $7f, $7f, $7f, $c4, $cd, $c3, $c4, $7f, $7f, $7f, $7f, $7f, $7f
