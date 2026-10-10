; Scene state shared by the US and JP engines.
DEF wCaseId       EQU $c599 ; 0 = Case I, 1 = Case II.
DEF wSceneId      EQU $c522 ; Visual scene ID; may differ from the room ID.
DEF wRoomId       EQU $c521
DEF wScenePalId   EQU $c641
DEF wSceneVariant EQU $c866 ; Offset within the current room's scene list.
DEF wSceneBlank   EQU $c87d ; Nonzero makes the masked renderer draw blank cells.

; Scratch values used while selecting and staging a scene map.
; These bytes are also reused outside the scene loader.
DEF wMapIndex     EQU $c875
DEF wMapPtr       EQU $c855 ; ROM pointer, then the staged map pointer at $c902.

DEF hBgGfx        EQU $ffa4 ; Requested background graphics ID.
DEF hObjGfx       EQU $ffa5 ; Requested object graphics ID.
DEF hBgLoaded     EQU $ffa6 ; Cached IDs; $ff forces a reload.
DEF hObjLoaded    EQU $ffa7
DEF hVideoFlags   EQU $ff8c ; Bit 0: palettes, bit 3: graphics, bit 6: map queue.

DEF hGfxSrcLo     EQU $ff97
DEF hGfxSrcHi     EQU $ff98
DEF hGfxVramBank  EQU $ff99
DEF hGfxDstLo     EQU $ff9a
DEF hGfxDstHi     EQU $ff9b

; WRAM bank 1: scene palettes are staged before becoming active.
DEF wBgPalNext    EQU $dbc0
DEF wObjPalNext   EQU $dc00
DEF wBgPal        EQU $db40
DEF wObjPal       EQU $db80

; Scene selection and Case II map patches; scratch bytes are reused by other paths.
DEF wRoomDataPtr     EQU $c85e
DEF wStateResult     EQU $c523
DEF wPatchId         EQU $c868
DEF wPatchList       EQU $c869 ; Nine entries; $fe ends the list.
DEF wPatchBase       EQU $c873
DEF wPatchBits       EQU $c874
DEF wPatchDst        EQU $c5c3
DEF wPatchWidth      EQU $c5c5
DEF wPatchHeight     EQU $c5c6
DEF wSceneMap        EQU $c902

; Masked scene drawing and map transfer queue; these scratch bytes have other uses.
DEF wSceneFx         EQU $c640
DEF wDrawSteps       EQU $c5c3
DEF wDrawRow         EQU $c877
DEF wDrawStep        EQU $c878
DEF wDrawMask        EQU $c883
DEF wDrawMaskPtr     EQU $c857
DEF wCellRect        EQU $c19e
DEF wCellTile        EQU $c1a0
DEF wCellAttr        EQU $c1a1
DEF wMapQueue        EQU $c0a0
DEF hMapQueueLen     EQU $ff90
DEF hMapWidth        EQU $ff92
DEF hMapHeight       EQU $ff93
DEF hMapRunLeft      EQU $ff95

; Room-object drawing; HRAM coordinates share storage with map-transfer scratch.
DEF wShadowOam       EQU $c000
DEF hOamCount        EQU $ff94
DEF hSpriteX         EQU $ff92
DEF hSpriteY         EQU $ff93
DEF hSpriteLeft      EQU $ff91
DEF wObjList         EQU $c600
DEF wObjListPtr      EQU $c867
DEF wRoomObjPtr      EQU $c8ad
DEF wDrawObj         EQU $c8b8
DEF wSpriteScrollY   EQU $c197
DEF wSpriteClip      EQU $c1a2

; Animation counters; wAnimPtr shares the scene/patch scratch pointer.
DEF wWaitFrame       EQU $c5d4
DEF wWaitTick        EQU $c5d5
DEF wAnimLeft        EQU $c5d6
DEF wC2AnimFrame     EQU $c5d7
DEF wC2AnimTick      EQU $c5d8
DEF wAnimPtr         EQU $c5c3

; Object bitmap operations; rule flags and HRAM indices reuse other scratch.
DEF wObjPresent      EQU $c420
DEF wObjVisible      EQU $c438
DEF wObjFlags        EQU $c450
DEF wObjRule         EQU $c5c3
DEF wBitId           EQU $c8a7
DEF wBitPtr          EQU $c861
DEF hBitByte         EQU $ff9e
DEF hBitNum          EQU $ffa0

; Script operands and item flags; arg 0 shares storage with the bitmap bit ID.
DEF wScriptPtr       EQU $c8a5
DEF wArg0            EQU $c8a7
DEF wArg1            EQU $c8a8
DEF wArg2            EQU $c8a9
DEF wArg3            EQU $c8aa
DEF wItemId          EQU $c8c6
DEF wItemFlags       EQU $c4e9

; Room transitions and pending changes; HRAM indices reuse other scratch.
DEF wPrevRoom        EQU $c536
DEF wPending         EQU $c528
DEF wPendingOps      EQU $c52a
DEF wPendingArgs     EQU $c52b
DEF wStateBits       EQU $c4c1
DEF hChangePos       EQU $ff9e
DEF hItemSlot        EQU $ffa0

; Pending record indices and property bytes; change values reuse room scratch.
DEF wPendingCur      EQU $c528
DEF wPendingLast     EQU $c529
DEF wItemType        EQU $c8c5
DEF wChangeType      EQU $c85f
DEF wChangeValue     EQU $c860
DEF wProp1           EQU $c4d9
DEF wProp4           EQU $c509
DEF wGroupData       EQU $c53b

; Pending deletion and list decoding; these names share existing scratch storage.
DEF wChangeMode      EQU $c524
DEF wDropPos         EQU $c5c3
DEF wListScratch     EQU $c85b
DEF wWorkList        EQU $c46f
DEF wListKind        EQU $c855
DEF wListRaw         EQU $c856
DEF wListType        EQU $c8d3
DEF wListValue       EQU $c8d4

; Secondary item state and list selection fields.
DEF wItemState       EQU $c4f9
DEF wListRow         EQU $c526
DEF wListPacked      EQU $c8d2

; List drawing fields; coordinates and mark selection are also used by text drawing.
DEF wListBase        EQU $c468
DEF wListMax         EQU $c525
DEF wListName        EQU $c8b6
DEF wListMark        EQU $c8e6
DEF wTextX           EQU $c668
DEF wTextY           EQU $c669

; List selection and per-operation row/name fields; slots use byte offsets.
DEF wListSel         EQU $c5c0
DEF wListPrev        EQU $c5c1
DEF wSelAction       EQU $c8b2
DEF wSelMode         EQU $c8c9
DEF wSelRow          EQU $c8ca
DEF wSelName         EQU $c8cb
DEF wListMarkRow     EQU $c8ea

; Input dispatch state and the alternate operation slot.
DEF wInputMode       EQU $c875
DEF wInputSel        EQU $c8af
DEF wInputKind       EQU $c8b0
DEF wAltSlot         EQU $c8d5

; Cursor coordinates and joypad state; candidate fields reuse scene scratch.
DEF wJoyHeld         EQU $c187
DEF wJoyPress        EQU $c188
DEF wCursorX         EQU $c8ab
DEF wCursorY         EQU $c8ac
DEF wInputX          EQU $c876
DEF wInputY          EQU $c877
DEF wCursorDir       EQU $c855

; Restricted list selection result; $ff indicates no confirmed row.
DEF wListPick        EQU $c884

; List encoding scratch; unsupported types keep the previous byte.
DEF wListCode        EQU $c8b7

; Operation preparation fields; the bitmap byte index reuses room scratch.
DEF wOpClass         EQU $c8b1
DEF wOpAttr          EQU $c8c7
DEF wOpList          EQU $c8cc
DEF wOpByte          EQU $c865

; Resolved action code; $ff selects the case fallback.
DEF wActionCode      EQU $c8b3

; Message pointer and regional text pointer/bank configurations.
DEF wTextPtr         EQU $c19a
DEF wTextCfg0        EQU $c1a8
DEF wTextCfg1        EQU $c1b4
DEF wTextCfg2        EQU $c1c0
DEF wTextCfg3        EQU $c1cc

; Last script call bank; zero makes ReturnScript skip bank restoration.
DEF wCallBank        EQU $c598

; Active ROM bank and shared HRAM byte-stack index.
DEF hRomBank         EQU $ff8e
DEF hStackPtr        EQU $ff8f

; Constant map-fill values; reused by other video paths.
DEF wFillTile        EQU $c19c
DEF wFillAttr        EQU $c19d

; WRAM frame latch cleared by the interrupt handler.
DEF wFrameFlags      EQU $c181

; Saved IRQ mask and LCD configuration used by display control.
DEF wIrqSave         EQU $c180
DEF hLcdc            EQU $ffac

; Executable OAM DMA routine installed in HRAM.
DEF hOamDma          EQU $ff80

; Eight-bit VBlank tick counter used by the input-polling wait.
DEF hFrameTick       EQU $ffab

; Audio engine ROM bank selected by initialization.
DEF wAudioBank       EQU $c164

; Retained audio selection and command ID (the latter in WRAM bank 7).
DEF wAudioId         EQU $c161
DEF wAudioReq        EQU $d210

; Audio selection state; the cleared workspace is in WRAM bank 7.
DEF wAudioState      EQU $c160
DEF wAudioWork       EQU $d040

; Audio slot staging fields in WRAM bank 7; completion flag is common WRAM.
DEF wAudioSlotPtr    EQU $d016
DEF wAudioSlot       EQU $d160
DEF wAudioDone       EQU $c186

; Audio hardware output staging and cached pulse values in WRAM bank 7.
DEF wAudioReg        EQU $d000
DEF wAudioCache      EQU $d00a
DEF wAudioOut        EQU $d018
DEF wAudioMask       EQU $d21f

; Audio loop records and interpreter scratch in WRAM bank 7.
DEF wAudioLoops      EQU $d180
DEF wAudioLoopTmp    EQU $d214
DEF wAudioByte       EQU $d216

; Main-loop scroll reset and Case II resume marker ($ff retains existing data).
DEF wScrollY         EQU $c184
DEF wCaseResume      EQU $c8e8

; RLE scratch aliases; the same HRAM bytes are reused by other decoders.
DEF hRleFlags          EQU $ffe0
DEF hRleLeft           EQU $ffe1
DEF hRleValue          EQU $ffe2
DEF hRleMark           EQU $ffe3

; Direct map-reader dimensions in shared decoder scratch HRAM.
DEF hReadWidth         EQU $ffe4
DEF hReadHeight        EQU $ffe5

; LZ aliases for the shared decoder scratch HRAM.
DEF hLzDstLo           EQU $ffe0
DEF hLzDstHi           EQU $ffe1
DEF hLzLenLo           EQU $ffe2
DEF hLzLenHi           EQU $ffe3
DEF hLzSrcLo           EQU $ffe4
DEF hLzSrcHi           EQU $ffe5
DEF hLzBitsLo          EQU $ffe6
DEF hLzBitsHi          EQU $ffe7

; Palette transition RGB555 component scratch.
DEF wPalR              EQU $c18e
DEF wPalG              EQU $c18f
DEF wPalB              EQU $c190
DEF wGoalR             EQU $c191
DEF wGoalG             EQU $c192
DEF wGoalB             EQU $c193

; Original three-way palette transition selector.
DEF wFadeMode         EQU $c194

; Eight-bit random output and state, in shared HRAM scratch.
DEF hRandByte          EQU $ffa2
DEF hRandState         EQU $ffa3

; Persisted text-set index, validated below five; actual save selection uses other scratch.
DEF wTextSet         EQU $c163

; Save-payload sum scratch; its high byte also serves as the scene variant.
DEF wSaveSum           EQU $c865
DEF wSaveSumPtr        EQU $c859

; Save addressing aliases for shared scratch; four copies per selected index.
DEF hSaveIndex         EQU $ffad
DEF wSaveCopy          EQU $c864
DEF wSavePtr           EQU $c855
DEF wSaveTagPtr        EQU $c857

; Save-menu availability and per-index saved case bytes; availability shares input-mode scratch.
DEF wSaveMask          EQU $c875
DEF wSavedCase         EQU $c5dc

; Active address/bank text references and their case selector.
DEF wTextRefs          EQU $c1a5
DEF wTextCase          EQU $c599

; Temporary state snapshot and its two-byte sum in cartridge RAM.
DEF sStateSnap         EQU $be00
DEF sStateSum          EQU $bf7e

; Startup A saved for the original soft-reset path.
DEF hBootByte         EQU $ffa8
