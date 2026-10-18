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

; Text mode flags, page initialization flag, and last byte read.
DEF wTextMode          EQU $c88f
DEF wTextPageReady     EQU $c892
DEF wTextByte          EQU $c8ec

; Nonzero list mode saved before restricted room selection.
DEF wSavedListMode     EQU $c534

; Name IDs used by text substitutions and English form selection.
DEF wTextName0         EQU $c537
DEF wTextName1         EQU $c538

; Text character/value scratch and decimal digits.
DEF wTextValue         EQU $c885
DEF wTextNum100        EQU $c88b
DEF wTextNum10         EQU $c88c
DEF wTextNum1          EQU $c88d
DEF wTextNumShown      EQU $c88e
DEF wTextChar          EQU $c660

; High decimal digits and shared text value/address scratch.
DEF wTextNum10000      EQU $c889
DEF wTextNum1000       EQU $c88a
DEF wTextTmp           EQU $c887

; Text tile position and sprite line start.
DEF wTextCol           EQU $c662
DEF wTextRow           EQU $c663
DEF wTextStartX        EQU $c893

; Text buffer tile rectangle: width, height, then row-major tiles.
DEF wTextBuf           EQU $c66e
DEF wTextWidth         EQU $c66c
DEF wTextHeight        EQU $c66d

; Glyph rectangle and map position; auxiliary byte is US attribute or JP lower tile.
DEF wTextRect          EQU $c664
DEF wTextTile          EQU $c666
DEF wTextAux           EQU $c667
DEF wTextMapX          EQU $c195
DEF wTextMapY          EQU $c196
DEF wTextOriginX       EQU $c65e
DEF wTextOriginY       EQU $c65f

; Cursor bounds scratch: inclusive X minimum/maximum, then Y minimum/maximum.
DEF wCursorBounds     EQU $c865

; Staged scene map rectangle: width, height, interleaved tile/attribute rows.
DEF wSceneRect        EQU $c900

; List end row and previous mode; previous mode shares the scene-variant byte.
DEF wListEndRow        EQU $c527
DEF wPrevListMode      EQU $c866

; Exclusive byte-index limit for the list deletion shift.
DEF wDropEnd          EQU $c87f

; List search target and group/row result; group shares saved text-list mode.
DEF wFoundGroup        EQU $c534
DEF wFoundRow          EQU $c535
DEF wFindListValue     EQU $c882

; Working-list source pointer; shares room-object draw scratch.
DEF wWorkSrc          EQU $c867

; Legacy aliases for Case II cash, quarters, bullets, and batteries.
DEF wC2Word            EQU $c58a
DEF wC2Count0          EQU $c53a
DEF wC2Count1          EQU $c590
DEF wC2Count2          EQU $c58d

; Object ID recorded by the alternate-target room hit scan.
DEF wHitObj           EQU $c5c2

; Legacy Case I coin-count alias; Case II uses the same byte for quarters.
DEF wC1ListCount      EQU $c53a

; Case-one held-item byte; case two reuses this address for text records.
DEF wC1HeldItem       EQU $c55b
; Suppress the input-kind-two list wait when this byte equals one.
DEF wSkipListWait     EQU $c5e5

; Case-one BULLET1 ($08) and BULLET2 ($2d) quantities.
DEF wBullet1Count     EQU $c563
DEF wBullet2Count     EQU $c564

; Legacy aliases for the three loaded-ammunition counts; each is capped at six.
DEF wC1Count0          EQU $c55c
DEF wC1Count1          EQU $c55d
DEF wC1Count2          EQU $c55e

; Base of the case-two script indexed byte counters.
DEF wC2Counters       EQU $c57b

; Byte cost used by the case-two word comparison and subtraction.
DEF wC2Cost           EQU $c58e

; Scene effect index, saved scene ID, and saved case-two audio cue.
DEF wFxCue             EQU $c165
DEF wFxScene           EQU $c539
DEF wFxId              EQU $c8e9

; Case-one game loop exits when this marker is $ff.
DEF wC1Exit           EQU $c5df

; Case-one slot prize and three final reel indices; shares general scratch.
DEF wSlotPrize         EQU $c884
DEF wSlotResult        EQU $c855

; Case-one displayed reel indices and animation iteration; shares general scratch.
DEF wSlotShown         EQU $c858
DEF wSlotFrame         EQU $c864

; Case-two put mode and saved active list mode.
DEF wPutMode           EQU $c5c8
DEF wPutList           EQU $c5c7

; Case-two put group pointer, free byte offset, and packed value; pointer shares draw scratch.
DEF wPutPtr            EQU $c863
DEF wPutValue          EQU $c896
DEF wPutPos            EQU $c895

; Audio test selection and decimal digits; shares game scratch.
DEF wTestIndex         EQU $c5c3
DEF wTestDigit         EQU $c5c5
DEF wTestTens          EQU $c5c6

; Nonzero suppresses case-two room cue selection during scene effects.
DEF wRoomCueHold      EQU $c5c9

; Case-two event bitmap; bank two clears its bits and associated counters.
DEF wC2EventBits     EQU $c5d2

; One when both case-two final flags and group tests succeed.
DEF wC2FinalReady    EQU $c5e2

; Index for the seven case-two effect object records.
DEF wC2FxObjIndex    EQU $c5cb

; Next case/scene pair in the ending display.
DEF wCreditIndex     EQU $c5e0

; Palette selected for the case-two timed room event; shares audio-test digit scratch.
DEF wC2TimedPal      EQU $c5c6

; Eight four-byte case-two schedule records, with $fe denoting an unused byte.
DEF wC2Schedule      EQU $c55b

; Scratch used while selecting case-two schedule records; shared with other UI paths.
DEF wC2SchedPtr        EQU $c855
DEF wC2SchedStart      EQU $c859
DEF wC2SchedEnd        EQU $c85a
DEF wC2SchedIndex      EQU $c85b

; Schedule record name minus $38, retained for the following room message.
DEF wC2SchedName     EQU $c5e3

; Palette source pointer during the case-two schedule transition; shares scene-mask scratch.
DEF wC2FadePtr       EQU $c87d

; Case-two schedule text paging and three text arguments; shared UI scratch.
DEF wC2PageEnd         EQU $c85a
DEF wC2PageNext        EQU $c860
DEF wC2PageOffset      EQU $c85b
DEF wC2PageRows        EQU $c85c
DEF wC2SchedArgs       EQU $c85d

; Moving-sprite coordinates during case-two room entry; shared UI scratch.
DEF wC2MoveX         EQU $c5c5
DEF wC2MoveY         EQU $c5c6

; Incremented on entry into rooms $62 or above, cleared below $62; byte arithmetic wraps.
DEF wC2HighVisits    EQU $c5e4

; Casino chip count and blackjack state; display scratch is shared with other UI paths.
DEF wChips             EQU $c58c
DEF wBJLeft            EQU $c871
DEF wBJCards           EQU $c865
DEF wBJPlayer          EQU $c864
DEF wBJDealer          EQU $c863
DEF wBJNextP           EQU $c874
DEF wBJNextD           EQU $c873
DEF wBJUsed            EQU $c87d
DEF wBJSlot            EQU $c875
DEF wBJCard            EQU $c876
DEF wBJFace            EQU $c877
DEF wBJPayout          EQU $c875
DEF wBJDigits          EQU $c857
DEF wBJRect            EQU $c855

; Blackjack hand scoring scratch: total, remaining soft aces, and occupied slots.
DEF wBJHandPtr         EQU $c5d9
DEF wBJTotal           EQU $c875
DEF wBJAces            EQU $c876
DEF wBJCount           EQU $c877

; Pending blackjack card ID and its decremented bit index.
DEF wBJDraw            EQU $c875
DEF wBJBitId           EQU $c878

; Blackjack target-card search, dealing mode, and exit marker.
DEF wBJTarget          EQU $c87a
DEF wBJBias            EQU $c884
DEF wBJExit            EQU $c5e1
DEF wBJScan            EQU $c855
DEF wBJScanId          EQU $c856

; Blackjack bet, saved available chips, action selection, and result scratch.
DEF wBJBet             EQU $c872
DEF wBJFunds           EQU $c875
DEF wBJChoice          EQU $c875
DEF wBJResult          EQU $c876

; Saved scene during blackjack; shares effect-scene scratch.
DEF wBJSavedScene      EQU $c539

; Casino chip exchange quantity and its current maximum.
DEF wChipCount         EQU $c5c3
DEF wChipLimit         EQU $c896

; Shared case-two choice menu selection, upper bound, and cursor layout.
DEF wC2MenuPick        EQU $c895
DEF wC2MenuMax         EQU $c896
DEF wC2MenuMode        EQU $c5c7

; Save/load confirmation answer and cursor-row selection; shared UI scratch.
DEF wSaveAnswer        EQU $c875
DEF wSaveMenuRow       EQU $c884

; Save-slot case bytes, bitmap scratch, and selected slot.
DEF wSaveCases         EQU $c5dc
DEF wSaveBits          EQU $c876
DEF wSaveSlotsMask     EQU $c875
DEF hSaveSlot          EQU $ffad

; Zero starts a new case; $ff starts a loaded saved game.
DEF wSaveStart         EQU $c8e8

; Stage zero through three of the save-screen audio-test button sequence.
DEF wSaveCodeStage     EQU $c5db

; Eligible visits counted by the Case I room-$24 event.
DEF wRoomEvtCount      EQU $c565

; Pointer to the selected object X/Y pair while appending room objects.
DEF wObjPosPtr         EQU $c863

; Room-target scan offset, packed cursor cell, and resolved Case I object ID.
DEF hRoomHitPos        EQU $ff9e
DEF wRoomHitCell       EQU $c860
DEF wRoomHitId         EQU $c855

; Saved cursor selection and page command during list-page navigation.
DEF wListNavPrev       EQU $c859
DEF wListNavNext       EQU $c85a

; Coordinates in the original text-cell clearing loop.
DEF wClearCellX        EQU $c5c3
DEF wClearCellY        EQU $c5c4

; Values written by script opcodes $49/$4a; the first also holds a schedule cost.
DEF wScriptValue0      EQU $c587
DEF wScriptValue1      EQU $c588

; Selected Case I effect object ID; shared scratch.
DEF wC1FxObj          EQU $c5c3

; Room-entry type before masking; shared scratch.
DEF wRoomType EQU $c5c4

; Room-entry item ID; shared scratch.
DEF wRoomItem EQU $c5c5

; Room-entry visibility object ID, or $ff; shared scratch.
DEF wRoomVisId EQU $c5c6

; Room-item bit position during filtering; shares patch-list storage.
DEF wRoomBit EQU $c869

; Room-item scan and lookup index; shares HRAM scratch.
DEF hRoomIndex EQU $ff9e

; Case II conditional room-mark ID; shared scratch.
DEF wC2MarkId EQU $c855

; ID from the current Case II mark-test row; shared scratch.
DEF wC2MarkTest EQU $c5c3

; Case I scene-state record count; shared scratch.
DEF wC1StateCount EQU $c867

; Case I conditional room-mark ID; shared scratch.
DEF wC1MarkId EQU $c855

; ID from the current Case I mark-test row; shared scratch.
DEF wC1MarkTest EQU $c5c3

; Fast-text request set by button A; the Case I exit path keeps its glyph wait.
DEF wTextFast EQU $c890

; Nonzero clamps the text column to $11 instead of automatic newline.
DEF wTextNoWrap EQU $c894

; US list-label pointer offset; shared HRAM scratch.
DEF hTextIndex EQU $ff9e

; Horizontal scroll value copied to SCX during VBlank.
DEF wScrollX EQU $c182

; Byte counter incremented by VBlankVideo.
DEF wVBlankCount EQU $c18c

; First-deal table offset, saved and restored across card selection; shared scratch.
DEF hBJLoop EQU $ffa0

; Pending blackjack hand slot; shared scratch reused for deck bit selection.
DEF hBJSlot EQU $ff9e

; Byte index into the blackjack used-card bitmap; shared with hBJLoop.
DEF hBJByte EQU $ffa0

; Bit index into the blackjack used-card bitmap; shared with hBJSlot.
DEF hBJBit EQU $ff9e

; Half-byte mask index during lower-rank search; shared scratch.
DEF hBJHalf EQU $ff9e

; Current rank written before the blackjack rank-base lookup; shared scratch.
DEF hBJRank EQU $ffa0

; Start of the $0b00-byte range cleared by ClearCaseData.
DEF wCaseData EQU $c400

; Scene graphics staging buffer in WRAM bank 2; audio uses other banks at this address.
DEF wGfxBuf EQU $d000

; Staged 16-bit note duration, added to the countdown; WRAM bank 7.
DEF wNoteLen EQU $d163

; Staged 16-bit note countdown; WRAM bank 7.
DEF wNoteTime EQU $d165

; Staged 16-bit delta subtracted from the note countdown; WRAM bank 7.
DEF wNoteStep EQU $d167

; Staged pitch offset added before the note-frequency lookup; WRAM bank 7.
DEF wNoteShift EQU $d175

; Staged pulse envelope or wave level selector; WRAM bank 7.
DEF wNoteInst EQU $d16a

; Staged envelope update enable byte; WRAM bank 7.
DEF wEnvOn EQU $d16c

; Staged envelope tick matched against table pairs; WRAM bank 7.
DEF wEnvTick EQU $d16d

; Staged envelope value or wave output level; WRAM bank 7.
DEF wNoteLevel EQU $d179

; Staged wave/noise instrument table pointer; WRAM bank 7.
DEF wInstPtr EQU $d17e

; Staged audio slot flags; WRAM bank 7.
DEF wNoteFlags EQU $d160

; Staged audio command stream pointer; WRAM bank 7.
DEF wNotePtr EQU $d161

; Staged loop-record offset with slot base in the upper nibble; WRAM bank 7.
DEF wLoopPos EQU $d16f

; Staged wave-form ID selecting sixteen wave RAM bytes; WRAM bank 7.
DEF wWaveId EQU $d174

; Four staged sound-register template bytes copied by StageAudioOut; WRAM bank 7.
DEF wNoteRegs EQU $d170

; Staged pulse/noise stereo routing bits packed by AudioPan; WRAM bank 7.
DEF wNotePan EQU $d17a

; Staged byte offset added to the note-frequency table address; WRAM bank 7.
DEF wFreqOff EQU $d17b

; Bit 7 disables envelope initialization in StepPulse/StepWave; WRAM bank 7.
DEF wEnvMode EQU $d169

; Audio slot record length used by staging, saving, and slot-pointer advance.
DEF AudioRecLen EQU $0020

; Bytes cleared from wAudioWork: nine slot records and one staging record.
DEF AudioWorkLen EQU $0140

; Base pulse-2 record; WRAM bank 7.
DEF wBaseP2 EQU $d040

; Base pulse-1 record; WRAM bank 7.
DEF wBaseP1 EQU $d060

; Base wave record; WRAM bank 7.
DEF wBaseWave EQU $d080

; Base noise record; WRAM bank 7.
DEF wBaseNoise EQU $d0a0

; Pulse-2 record selected ahead of wBaseP2; WRAM bank 7.
DEF wAltP2 EQU $d0c0

; Pulse-1 record selected ahead of wBaseP1; WRAM bank 7.
DEF wAltP1 EQU $d0e0

; Wave record selected ahead of wBaseWave; WRAM bank 7.
DEF wAltWave EQU $d100

; Pulse-1 record selected ahead of wAltP1; WRAM bank 7.
DEF wTopP1 EQU $d120

; Noise record selected ahead of wBaseNoise; WRAM bank 7.
DEF wTopNoise EQU $d140

; Pulse-1 output record; seven populated bytes and one untouched byte; WRAM bank 7.
DEF wOutP1 EQU $d018

; Pulse-2 output record; seven populated bytes and one untouched byte; WRAM bank 7.
DEF wOutP2 EQU $d020

; Wave output record; seven populated bytes and one untouched byte; WRAM bank 7.
DEF wOutWave EQU $d028

; Noise output record; seven populated bytes and one untouched byte; WRAM bank 7.
DEF wOutNoise EQU $d030

; JP text lookahead: byte after wTextChar; stored without advancing the saved pointer.
DEF wTextNext EQU $c661

; Saved state bytes from wObjPresent through wCaseId, inclusive.
DEF SaveDataLen EQU $017a

; Repaired save record: payload, four tag bytes, and two checksum bytes.
DEF SaveRecLen EQU $0180

; Case byte offset within the save payload; its final byte.
DEF SaveCaseOff EQU $0179

; Number of tag bytes written and compared for each save copy.
DEF SaveTagLen EQU $0004

; Copies written, checked, repaired, or partially cleared per save slot.
DEF SaveCopies EQU $0004

; Bullet pickup amount shown by Case I indirect text; initialized to six.
DEF wC1AmmoQty EQU $c560

; Loaded ammunition for .38 in US; pistol 1 in JP; capped at six.
DEF wGun1Ammo EQU $c55c

; Loaded ammunition for HANDGUN in US; pistol 2 in JP; capped at six.
DEF wGun2Ammo EQU $c55d

; Loaded ammunition for LUGER in US; pistol 3 in JP; capped at six.
DEF wGun3Ammo EQU $c55e

; Case I coin inventory, type-3 item zero; byte arithmetic and slot prizes share it.
DEF wC1Coins EQU $c53a

; Case II cash in dollars; a little-endian word.
DEF wC2Cash EQU $c58a

; Case II 25-cent coin quantity; shares storage with Case I coins.
DEF wC2Quarters EQU $c53a

; Case II bullet inventory count; loading marks slots without changing this count.
DEF wC2Bullets EQU $c590

; Case II battery quantity; named CELL in the US item table.
DEF wC2Cells EQU $c58d

; Schedule clock; advances on each Case II event step with byte wrap.
DEF wC2Time EQU $c57b

; Bedroom-door timer; room $02 closes its door on step two.
DEF wC2BedTick EQU $c57c

; Timed room-state closure counter; paired state table selects the doors.
DEF wC2DoorTick EQU $c57d

; Desert exposure counter; warnings at 8/16, mirage at 32, death at 40.
DEF wC2HeatTick EQU $c57e

; Goons return counter in rooms $46/$47/$48 while flag $84 is clear.
DEF wC2GoonsTick EQU $c57f

; Recapture counter in rooms $46..$4a while flag $84 is set.
DEF wC2HuntTick EQU $c580

; Dumpster transport counter; room $0d triggers the sequence on step five.
DEF wC2DumpTick EQU $c581

; Casino guard counter in rooms $0a/$0e/$0f/$10; attack on step 40.
DEF wC2GuardTick EQU $c582

; Stogie visit interval; after 133 event steps reset and advance wC2DebtStep.
DEF wC2DebtTick EQU $c583

; Stogie visit ordinal; the original six-entry table uses this byte minus one.
DEF wC2DebtStep EQU $c584

; Flashlight timer under flag $4d; dim at 29 and follow-up from 59.
DEF wC2LampTick EQU $c585

; Ending timer enabled by flags $34/$3e; dispatches at step 52.
DEF wC2EndTick EQU $c586

; Case II counter index for the bedroom-door timer.
DEF C2BedIx EQU $01

; Case II counter index for the room-state closure timer.
DEF C2DoorIx EQU $02

; Case II counter index for the desert exposure timer.
DEF C2HeatIx EQU $03

; Case II counter index for the goons return timer.
DEF C2GoonsIx EQU $04

; Case II counter index for the recapture timer.
DEF C2HuntIx EQU $05

; Case II counter index for the casino guard timer.
DEF C2GuardIx EQU $07

; Case II counter index for the Stogie visit interval.
DEF C2DebtIx EQU $08

; Case II counter index for the flashlight timer.
DEF C2LampIx EQU $0a

; Case II counter index for the ending timer.
DEF C2EndIx EQU $0b

; Saved Case II event mask: desert death.
DEF EvtHeat EQU $01

; Saved Case II event mask: goons return.
DEF EvtGoons EQU $02

; Saved Case II event mask: recapture.
DEF EvtHunt EQU $04

; Saved Case II event mask: casino guard attack.
DEF EvtGuard EQU $08

; Saved Case II event mask: final Stogie visit.
DEF EvtDebt EQU $10

; Saved Case II event mask: ending sequence.
DEF EvtEnd EQU $20

; Saved Case II event mask: flashlight expiry.
DEF EvtLamp EQU $80

; Case II desk contents; checks scan seven bytes, while placement stores up to six items.
DEF wDeskItems EQU $c554

; Case II packed LETTER1 item ID; type three retains the raw value.
DEF C2Letter1 EQU $004d

; Case II packed DIARY item ID.
DEF C2Diary EQU $002f

; Case II packed LETTER3 item ID.
DEF C2Letter3 EQU $0039

; Case II packed PAPER1 item ID.
DEF C2Paper1 EQU $0010

; Case II packed RECORD1 item ID.
DEF C2Record1 EQU $0044

; Case II put mode for the washer.
DEF GrpWasher EQU $0000

; Case II washer record: header, six item slots, and the retained eighth byte.
DEF wC2Washer EQU $c53b

; Case II put mode for the first trash can.
DEF GrpTrash1 EQU $0001

; Case II first trash can record: header, six item slots, and the retained eighth byte.
DEF wC2Trash1 EQU $c543

; Case II put mode for the second trash can.
DEF GrpTrash2 EQU $0002

; Case II second trash can record: header, six item slots, and the retained eighth byte.
DEF wC2Trash2 EQU $c54b

; Case II put mode for the desk drawer.
DEF GrpDesk EQU $0003

; Case II desk drawer record: header, six item slots, and the retained eighth byte.
DEF wC2Desk EQU $c553

; Case II placement mode that confirms removal without storing in a group record.
DEF PutDirect EQU $0004

; Enables the Case II ending timer and suppresses ordinary Stogie visits.
DEF C2EndFlag EQU $34

; Cigar ring planted on the desk; set by the original ring-placement script.
DEF C2RingFlag EQU $3e

; Flashlight active flag; enables the lamp timer and its palette changes.
DEF C2LampFlag EQU $4d

; Police uniform worn; enables the random arrest sequence.
DEF C2Uniform EQU $78

; Eight train records: number, destination name ID, status name ID, and phase.
DEF wTrainRecs EQU $c55b

; Train number displayed by the schedule row numeric control; shares scratch storage.
DEF wTrainNo EQU $c85d

; Abbreviated train destination name ID displayed by the schedule row.
DEF wTrainCity EQU $c85e

; Train status name ID displayed by the schedule row; shares change scratch.
DEF wTrainState EQU $c85f

; Full destination name ID used after a train journey.
DEF wTrainName EQU $c5e3

; Current train fare in dollars; a byte used by the two-byte cash comparison.
DEF wTrainFare EQU $c58e

; Bytes per train schedule record.
DEF TrainRecLen EQU $0004

; Number of train schedule records.
DEF TrainCount EQU $0008

; Total bytes in the eight train schedule records.
DEF TrainRecsLen EQU $0020

; Train destination display ID: Las Vegas.
DEF CityLV EQU $e0

; Train destination display ID: Chicago.
DEF CityCHG EQU $e1

; Train destination display ID: New York.
DEF CityNY EQU $e2

; Train destination display ID: Los Angeles.
DEF CityLA EQU $e3

; Train destination display ID: St. Louis.
DEF CitySTL EQU $e4

; Train status display ID: INBOUND.
DEF TrainIn EQU $e5

; Train status display ID: ARRIVED.
DEF TrainHere EQU $e6

; Train status display ID: BOARDING.
DEF TrainBoard EQU $e7

; Train status display ID: DEPARTING.
DEF TrainLeave EQU $e8

; Train status display ID: OUTBOUND.
DEF TrainOut EQU $e9

; Unused train record byte; the schedule is initially filled with this value.
DEF TrainNone EQU $fe

; Subtract from a short train destination ID to obtain its full city name ID.
DEF CityNameGap EQU $38

; Pointer to the current arrival/destination pair.
DEF wTrainPtr EQU $c855

; Candidate arrival tick minus four; retain the original $fc adjustment.
DEF wTrainStart EQU $c859

; Candidate arrival tick plus twelve, stored as a byte.
DEF wTrainEnd EQU $c85a

; Current train record index, zero through seven.
DEF wTrainIndex EQU $c85b

; Pointer to the selected train fade palette data.
DEF wTrainPalPtr EQU $c87d

; Bytes occupied by four train records.
DEF TrainHalfLen EQU $0010

; Train schedule header list-text ID.
DEF TrainHeadText EQU $0007

; Train schedule row list-text ID.
DEF TrainRowText EQU $0008

; Maximum displayed train rows per page.
DEF TrainPageRows EQU $0003

; Exclusive record offset for the displayed half; shares wTrainEnd storage.
DEF wTrainPageEnd EQU $c85a

; Original second-page restart offset: four or twenty.
DEF wTrainRepeat EQU $c860

; Zero on the first page, then the restart offset; shares wTrainIndex storage.
DEF wTrainPageOff EQU $c85b

; Number of schedule rows displayed on the current page.
DEF wTrainRows EQU $c85c

; First of the sixteen paired passenger-room IDs.
DEF TrainRoomBase EQU $001b

; Room count in the eight-by-eight desert grid.
DEF DesertCells EQU $0040

; Desert movement object at hit cell $42: grid index plus one.
DEF GridRight EQU $0078

; Desert movement object at hit cell $02: grid index minus one.
DEF GridLeft EQU $0079

; Desert movement object at hit cell $24: grid index plus eight.
DEF GridDown EQU $007a

; Desert movement object at hit cell $20: grid index minus eight.
DEF GridUp EQU $007b

; Lucky Dice hotel front.
DEF RoomHotelFront EQU $11

; Town outskirts; JP identifies the cleaners front.
DEF RoomOutskirts EQU $13

; Las Vegas train station front.
DEF RoomStation EQU $14

; First tire-track room in the desert grid.
DEF RoomTracksA EQU $62

; Second tire-track room in the desert grid.
DEF RoomTracksB EQU $63

; Desert exposure threshold: warn that the desert sun beats down mercilessly.
DEF HeatSun EQU $08

; Desert exposure threshold: warn about the lack of shade and water.
DEF HeatDry EQU $10

; Desert exposure threshold: show the lemonade-stand mirage, restore the scene effect, and resume the room cue.
DEF HeatMirage EQU $20

; Desert exposure threshold: show collapse in the sand, mark the saved heat event, and run the exit effect.
DEF HeatLimit EQU $28

; First room in the contiguous desert exposure range.
DEF DesertRoomMin EQU $66

; Exclusive end of the contiguous desert exposure range.
DEF DesertRoomEnd EQU $a1

; Boolean result of the escape-plan flag and desk-evidence checks.
DEF wC2EscapeReady EQU $c5e2

; Consecutive Case II entries into rooms $62 or higher; lower IDs reset it and the byte may wrap.
DEF wC2EscapeSteps EQU $c5e4

; Consecutive high-room entries required for the desert escape gate.
DEF EscapeMinSteps EQU $0004

; Ending deadline checked on this exact timer step.
DEF C2EndDelay EQU $34

; Original late-step comparison in the completed-proof deadline branch.
DEF C2EndLate EQU $52

; Case II effect: moose-spike.
DEF FxGoons EQU $06

; Case II effect: lemonade-stand.
DEF FxMirage EQU $0f

; Case II effect: stogie-martin.
DEF FxStogie EQU $10

; Case II effect: vegas-times.
DEF FxVegasNews2 EQU $11

; Case II effect: lucky-entrance.
DEF FxLuckyDoor EQU $12

; Case II effect: reliant-cleaners.
DEF FxCleaners EQU $13

; Case II effect: vegas-times.
DEF FxVegasNews1 EQU $14

; Case II scene: moose-spike.
DEF SceneGoons EQU $3a

; Case II scene: lemonade-stand.
DEF SceneMirage EQU $40

; Case II scene: stogie-martin.
DEF SceneStogie EQU $06

; Case II scene: vegas-times.
DEF SceneVegasNews2 EQU $42

; Case II scene: lucky-entrance.
DEF SceneLuckyDoor EQU $0d

; Case II scene: reliant-cleaners.
DEF SceneCleaners EQU $34

; Case II scene: vegas-times.
DEF SceneVegasNews1 EQU $41

; Index zero through six while writing the ending overlay records.
DEF wWarMarkIndex EQU $c5cb

; Number of ending overlay records.
DEF WarMarkCount EQU $0007

; Object ID used for each ending overlay mark.
DEF WarMarkId EQU $0069

; High byte of the original wObjList base at $c600.
DEF ObjListPage EQU $00c6

; Object flag enabling Case II animation $68 while text is processed.
DEF C2TextAnim EQU $aa

; Case II opening mob-war sequence.
DEF AnimWarStart EQU $67

; Case II repeating mob-war frames; PlayAnim stops at $ff, StepC2Anim loops.
DEF AnimWarLoop EQU $68

; Case II horizontal desert sprite sequence.
DEF AnimDesertFlat EQU $006c

; Case II sloping desert sprite sequence.
DEF AnimDesertSlope EQU $006b

; Sprite X scratch for the two desert motion paths.
DEF wDesertObjX EQU $c5c5

; Sprite Y scratch for the sloping desert motion path.
DEF wDesertObjY EQU $c5c6

; Case II packed item ID for Bondwell's letter; original LETTER1.
DEF C2BondLetter EQU $004d

; Case II packed item ID for Siegel's diary.
DEF C2SiegelDiary EQU $002f

; Case II packed item ID for McMurphy's note; original LETTER3.
DEF C2McMNote EQU $0039

; Case II packed payment-demand item ID; original PAPER1.
DEF C2PayNote EQU $0010

; Case II packed ledger item ID; original RECORD1.
DEF C2Ledger EQU $0044

; Case II diary examined flag; opening sets it and closing retains it.
DEF C2DiarySeen EQU $0071

; Case II diary open flag.
DEF C2DiaryOpen EQU $0074

; Case II ledger examined flag; opening sets it and closing retains it.
DEF C2LedgerSeen EQU $008a

; Case II ledger open flag.
DEF C2LedgerOpen EQU $0011

; Case II knowledge flag set by reading Bondwell's letter.
DEF C2BondSeen EQU $0033

; Case II knowledge flag set by reading McMurphy's note.
DEF C2McMSeen EQU $0081

; Case II black ledger open flag.
DEF C2BlackOpen EQU $0059

; Case II black ledger examined flag; opening sets it and closing retains it.
DEF C2BlackSeen EQU $0062

; Case II knowledge that the black ledger agrees with the examined diary.
DEF C2BookMatch EQU $00a3

; Case II flag suppressing a repeated courier-zero payment-sum revelation.
DEF C2SumShown EQU $0055

; Case II knowledge flag set after the police-bribe clue and fixed payment sum are shown.
DEF C2BribeKnown EQU $0010

; Case II flag recording the first secret-desk opening response.
DEF C2DeskSeen EQU $00a0

; Case II flag recording the initial clue about the confiscated belongings.
DEF C2LootSeen EQU $0006

; Case II cigar-ring hint shown at the desk; suppresses the corresponding exit hint.
DEF C2DeskHint EQU $0052

; Case II cigar-ring hint shown at the exit; suppresses the corresponding desk hint.
DEF C2ExitHint EQU $0053

; Case II first packed cigar-ring item ID.
DEF C2Ring1 EQU $000e

; Case II second packed cigar-ring item ID.
DEF C2Ring2 EQU $005b

; Case II desk-mat item ID used by the ring-target match.
DEF C2DeskMat EQU $004b

; Case II room object shown after planting the first cigar-ring variant.
DEF C2RingObj1 EQU $0054

; Case II room object shown after planting the second cigar-ring variant.
DEF C2RingObj2 EQU $0066

; Case II plan clue set after recovering belongings with police bribes already known.
DEF C2LootPlan EQU $008b

; Case II cigar-ring plan clue set by the secret-desk or exit hint.
DEF C2RingPlan EQU $008d

; Case II flag set with Bondwell's letter knowledge; selects the Chicago-dealings response for the banquet photo.
DEF C2BondHint EQU $008c

; Exclusive low-byte endpoint for the seven desk bytes scanned from $c554.
DEF DeskEndLo EQU $005b

; Low byte immediately after the three-item Case II proof table.
DEF ProofEndLo EQU $002b

; Low byte immediately after the two-item Case II conflicting-proof table.
DEF BadProofEndLo EQU $0049

; Case II secret-office first-entry description has been shown.
DEF C2SecretSeen EQU $0087

; Case II original photo taken flag; office entry tests it before setting the alternate photo state.
DEF C2PhotoTaken EQU $003a

; Case II banana taken flag; office entry tests it before setting the peel item state.
DEF C2BananaTaken EQU $006a

; Case II banana peeled flag; controls description, peeling, and the original food-use branch.
DEF C2BananaPeeled EQU $0056

; Case II packed banana-peel item and text-name ID.
DEF C2Peel EQU $0053

; Case II flag set when the peeled banana is consumed; no direct reader recovered.
DEF C2BananaEaten EQU $0089

; Case II packed banana item ID.
DEF C2Banana EQU $004f

; Case II hands-free flag, set after working the binding rope over the crate nails.
DEF C2HandsFree EQU $0082

; Case II flag set when the goons are fooled by the open front door; enables the later hunt timer.
DEF C2GoonsFooled EQU $0084

; Case II initial goons timer threshold; compared with carry, preserving the original eight-bit counter.
DEF GoonsWait EQU $0009

; Case II hunt timer threshold after the door diversion; compared with carry.
DEF HuntWait EQU $0031

; Case II front-door state ID used by the goons diversion.
DEF C2FrontDoor EQU $0015

; Case II first hamper clue has been shown with hands free and the goons not yet fooled.
DEF C2HamperHint EQU $0085

; Case II crate examined flag; a later look before freeing the hands adds the sharp-nails hint.
DEF C2CrateSeen EQU $0083

; Case II inside the industrial laundry hamper.
DEF RoomHamper EQU $0046

; Case II laundry room connected to the hamper and stairs.
DEF RoomLaundry EQU $0047

; Case II outer office connected to the secret entrance.
DEF RoomOuterOffice EQU $0049

; Case II secret office connected to the outer office.
DEF RoomSecretOffice EQU $004a

; Case II cab menu key and destination table lengths.
DEF CabStops EQU $0005

; Case II repetitions of the original cab ride animation.
DEF CabRideLoops EQU $0008

; Case II cab ride animation ID.
DEF AnimCabRide EQU $006a

; Case II cab menu key: Chicago station.
DEF CabChicago EQU $00e0

; Case II cab menu key: Adison.
DEF CabAdison EQU $00e1

; Case II cab menu key: Peoria.
DEF CabPeoria EQU $00e2

; Case II cab menu key: Cottage.
DEF CabCottage EQU $00e3

; Case II cab menu key: Morgue.
DEF CabMorgue EQU $00e4

; Case II cab interior at stop: Chicago station.
DEF CabAtChicago EQU $0031

; Case II cab interior at stop: Adison.
DEF CabAtAdison EQU $005e

; Case II cab interior at stop: Peoria.
DEF CabAtPeoria EQU $0060

; Case II cab interior at stop: Cottage.
DEF CabAtCottage EQU $005f

; Case II cab interior at stop: Morgue.
DEF CabAtMorgue EQU $0061

; Case II newspaper payment available for the next pickup.
DEF C2NewsPaid EQU $004a

; Case II at least one newspaper has been taken at the stand.
DEF C2NewsTaken EQU $007a

; Case II a subsequent newspaper pickup has been recorded.
DEF C2NewsBoth EQU $0079

; Case II left Chicago station by cab after the subsequent newspaper pickup.
DEF C2NewsLeft EQU $00a1

; Case II morgue destination was added after reading a newspaper.
DEF C2MorgueKnown EQU $0038

; Legacy cab destination room name.
DEF RoomChiStn EQU $0031

; Legacy cab destination room name.
DEF RoomAdison EQU $005e

; Legacy cab destination room name.
DEF RoomCottage EQU $005f

; Legacy cab destination room name.
DEF RoomPeoria EQU $0060

; Legacy cab destination room name.
DEF RoomMorgue EQU $0061

; Case II the first meeting with Gabby has been shown.
DEF C2GabbyMet EQU $0043

; Case II the initial apartment-front description has been shown.
DEF C2HomeSeen EQU $0044

; Case II the initial Cottage street description has been shown.
DEF C2CottageSeen EQU $0069

; Case II the initial Peoria street description has been shown.
DEF C2PeoriaSeen EQU $0051

; Case II Chicago was added to the cab destination list.
DEF C2ChicagoKnown EQU $0027

; Case II the folded timetable is open.
DEF C2TimetableOpen EQU $0007

; Case II the magnetic lift button was taken.
DEF C2ButtonTaken EQU $000f

; Case II the carried photo has been read.
DEF C2PhotoSeen EQU $0039

; Case II photo and hamper mark have suggested hiding for the cleaners trip.
DEF C2HamperPlan EQU $001c

; Case II Vegas third-floor hall.
DEF RoomVegasHall3 EQU $000c

; Case II Vegas hamper interior.
DEF RoomVegasHamper EQU $000d

; Case II Vegas hamper transport timer.
DEF wC2HamperTick EQU $c581

; Original action count before hamper transport.
DEF HamperRideWait EQU $0005

; Case II the hamper transfer and frisking ended in the laundry room.
DEF C2Frisked EQU $0077

; Case II casino guard attacks on this original timer step.
DEF GuardAttackStep EQU $0028

; Case II the railway pamphlet is open.
DEF C2PamphletOpen EQU $0014

; Case II the Adison cab destination was added from the license.
DEF C2AdisonKnown EQU $0035

; Case II Peoria was added from the newspaper clipping.
DEF C2PeoriaKnown EQU $0036

; Case II Cottage was added from Sugar's business card.
DEF C2CottageKnown EQU $0037

; Case II the old clipping discovery text has been shown while opening the newspaper.
DEF C2ClipFound EQU $0042

; Case II the original trench coat was taken.
DEF C2TrenchTaken EQU $0028

; Case II the original pants were taken.
DEF C2PantsTaken EQU $0029

; Case II the original suitcase was taken.
DEF C2SuitcaseTaken EQU $00a4

; Case II the original laundry envelope and photo discovery was shown.
DEF C2LaundrySearched EQU $0013

; Case II the spare coat pocket inspection flag has been set.
DEF C2CoatPocketSeen EQU $005a

; Case II the vacuum was opened.
DEF C2VacOpened EQU $0072

; Case II the first vacuum description was shown.
DEF C2VacSeen EQU $0073

; Case II the vacuum bag was torn.
DEF C2VacBagTorn EQU $0075

; Case II the folding knife is open.
DEF C2KnifeOpen EQU $0068

; Case II the flashlight has an installed cell.
DEF C2LampHasCell EQU $004e

; Case II the original flashlight weak-cell flag was set at timer step 29.
DEF C2LampWeak EQU $00a8

; Original flashlight dimming step.
DEF LampDimStep EQU $001d

; Original flashlight expiry step.
DEF LampEndStep EQU $003b

; Case II the flashlight can be switched on with its original cell state.
DEF C2LampReady EQU $0076

; Case II the original Bondwell box was taken.
DEF C2Box2Taken EQU $00a5

; Case II packed envelope 1: type 4, item 6.
DEF C2Envelope1 EQU $0086

; Case II packed gun: type 4, item 9.
DEF C2Gun EQU $0089

; Case II original photo item.
DEF C2Photo EQU $0018

; Case II original letter item searched for during the hamper capture.
DEF C2FriskLetter EQU $0019

; Case II the trench coat is worn.
DEF C2TrenchWorn EQU $000d

; Case II the pants are worn.
DEF C2PantsWorn EQU $000c

; Case II packed type 4 item $00.
DEF C2Trench EQU $0080

; Case II packed type 4 item $01.
DEF C2Pants EQU $0081

; Case II packed type 4 item $08.
DEF C2Coat EQU $0088

; Case II packed type 4 item $0a.
DEF C2Lamp EQU $008a

; Case II the bottle is broken.
DEF C2BottleBroken EQU $004c

; Case II the bottle has been taken.
DEF C2BottleTaken EQU $00a2

; Case II packed type 3 item $1e.
DEF C2Bottle EQU $001e

; Case II packed type 3 item $24.
DEF C2Knife EQU $0024

; Case II packed type 3 item $49.
DEF C2Opener EQU $0049

; Case II Rudy recognized Ace after seeing the old clipping.
DEF C2RudyKnows EQU $000e

; Case II the attendant has brought out the suitcase.
DEF C2CaseShown EQU $001b

; Case II the lock on Joe's rear door has been broken.
DEF C2JoeLockGone EQU $005d

; Case II the lock on Sugar's apartment door has been broken.
DEF C2SugLockGone EQU $006b

; Case II the rear door lock hint flag; the original description sets it before checking it.
DEF C2JoeLockHint EQU $005e

; Case II Sugar's cheap lock has been described.
DEF C2SugLockHint EQU $006c

; Case II Sugar's apartment entry description has been shown.
DEF C2SugarSeen EQU $006e

; Case II the paperweight has been inspected.
DEF C2WeightSeen EQU $0012

; Case II the dartboard bullseye sequence has run.
DEF C2Bullseye EQU $009e

; Case II the detached bird has been thrown to reveal the secret passage.
DEF C2DartUsed EQU $0086

; Case II packed type 3 item $46.
DEF C2Paperweight EQU $0046

; Case II packed type 3 item $47.
DEF C2Dart EQU $0047

; Case II packed type 3 item $48.
DEF C2DartBase EQU $0048

; Case II packed type 3 item $3f.
DEF C2ClaimTicket EQU $003f

; Case II the diary slot machine lock is unlocked.
DEF DiaryUnlocked EQU $005b

; Case II the second slot machine lock is unlocked.
DEF EmptyUnlocked EQU $005c

; Case II the diary slot machine initial description has been shown.
DEF DiarySlotSeen EQU $0063

; Case II the second slot machine initial description has been shown.
DEF EmptySlotSeen EQU $0065

; Case II key 4 has unlocked the second machine at least once.
DEF EmptyKeyUsed EQU $0066

; Case II packed type 3 item $06.
DEF C2Key1 EQU $0006

; Case II packed type 3 item $25.
DEF C2Key2 EQU $0025

; Case II packed type 3 item $2d.
DEF C2Key3 EQU $002d

; Case II packed type 3 item $32.
DEF C2Key4 EQU $0032

; Case II packed type 3 item $3c.
DEF C2Key5 EQU $003c

; Case II packed type 3 item $41.
DEF C2Key6 EQU $0041

; Case II Ace's mailbox lock is unlocked.
DEF C2MailUnlocked EQU $0048

; Case II the laundry door lock is unlocked.
DEF LaundryUnlocked EQU $0026

; Case II Ace's apartment door lock is unlocked.
DEF HomeUnlocked EQU $0047

; Case II Ace's apartment first-entry sequence has run.
DEF C2HomeEntered EQU $0049

; Case II state bit for the open curtain in Ace's apartment.
DEF C2HomeCurtain EQU $00a3

; Case II the wall safe contents hint has been shown.
DEF C2SafeSeen EQU $0057

; Case II the old telephone has been opened.
DEF C2PhoneOpened EQU $0058

; Original name for the movable shelf flag; retained for compatibility.
DEF C2BottleHit EQU $009d

; Case II the passage behind the wine rack has been found.
DEF C2WinePassage EQU $0061

; Case II the wine tap has been turned open.
DEF C2TapOpen EQU $005f

; Case II the dog has been asked to give its paw.
DEF C2DogPawAsked EQU $003d

; Case II the cold water tap is open.
DEF C2ColdTapOn EQU $0001

; Case II the hot water tap is open.
DEF C2HotTapOn EQU $0002

; Case II the grimy room window glass is broken.
DEF C2WindowBroken EQU $0005

; Case II the initial conversation with the hobo has occurred.
DEF C2HoboTalked EQU $006d

; Case II the young woman has been approached once.
DEF C2WomanTalked EQU $0016

; Case II the young woman has reached the repeated-conversation slap branch.
DEF C2WomanFedUp EQU $0017

; Case II the male passenger dozing reply has been shown.
DEF C2SeatManAsleep EQU $0018

; Case II the seller introduction dialogue has been shown.
DEF C2SellerMet EQU $0032

; Battery stock threshold tested before adding the purchased cells.
DEF ShopCellStop EQU $0064

; Cash price of one three-cell purchase.
DEF ShopCellPrice EQU $0032

; Battery quantity added by one purchase.
DEF ShopCellQty EQU $0003

; Bullet stock threshold tested before adding the purchased rounds.
DEF ShopBulletStop EQU $0078

; Cash price of one six-bullet purchase.
DEF ShopBulletPrice EQU $0064

; Bullet quantity added by one purchase.
DEF ShopBulletQty EQU $0006

; Set after a passenger train journey; enables the seller purchase dialogue.
DEF C2TrainTaken EQU $0031

; Case II state bit for the open morgue reception gate.
DEF C2GateOpen EQU $00a9

; Case II state bit for the first open morgue drawer.
DEF C2Drawer1Open EQU $00aa

; Case II state bit for the second open morgue drawer.
DEF C2Drawer2Open EQU $00ab

; Case II nametag one has been handed to the clerk.
DEF C2Tag1Given EQU $007f

; Case II nametag two has been handed to the clerk for Bondwell's belongings.
DEF C2Tag2Given EQU $007e

; Case II the clerk has given the initial gate access warning.
DEF C2MorgueWarned EQU $007c

; Case II the clerk has seen license one without the uniform.
DEF C2ClerkSawID EQU $007d

; Case II the cold morgue back room has been entered in uniform.
DEF C2ColdRoomSeen EQU $0080

; Case II the spare coat is currently worn.
DEF C2CoatWorn EQU $0050

; Case II the bank deposit bundle is open.
DEF C2DepositsOpen EQU $004f

; Case II the small magnet has been picked up.
DEF C2MagnetTaken EQU $0019

; Case II Ventini has been recognized from the framed Malone photo.
DEF C2VentiniKnown EQU $00a7

; Case II the tissue has been used to blow the nose.
DEF C2TissueUsed EQU $0070

; Case II policeman effect.
DEF FxPoliceman EQU $0008

; Case II scene for the policeman effect.
DEF ScenePoliceman EQU $003c

; Case II handcuffs effect.
DEF FxHandcuffs EQU $0009

; Case II scene for the handcuffs effect.
DEF SceneHandcuffs EQU $003d

; Case II casino bouncer effect.
DEF FxBouncer EQU $000e

; Case II scene for the bouncer effect.
DEF SceneBouncer EQU $003f

; Case II effect for SceneDog.
DEF FxDog EQU $0007

; Case II effect for SceneConductor1.
DEF FxConductor1 EQU $000b

; Case II effect for SceneConductor2.
DEF FxConductor2 EQU $000c

; Case II scene used by FxDog.
DEF SceneDog EQU $003b

; Case II scene used by FxConductor1.
DEF SceneConductor1 EQU $0017

; Case II scene used by FxConductor2.
DEF SceneConductor2 EQU $0019

; Case II Ace grave scene; effect table entry 0A.
DEF SceneAceGrave EQU $003e

; Case II state bit for the broken casino entrance glass.
DEF C2CasinoGlass EQU $009d

; Case II state bit for the broken Vegas station entrance glass.
DEF C2VegasGlass EQU $009e

; Case II train 6 passenger room A.
DEF RoomTrain6A EQU $001b

; Case II train 6 passenger room B.
DEF RoomTrain6B EQU $001c

; Case II train 7 passenger room A.
DEF RoomTrain7A EQU $001d

; Case II train 7 passenger room B.
DEF RoomTrain7B EQU $001e

; Case II train 8 passenger room A.
DEF RoomTrain8A EQU $001f

; Case II train 8 passenger room B.
DEF RoomTrain8B EQU $0020

; Case II train 9 passenger room A.
DEF RoomTrain9A EQU $0021

; Case II train 9 passenger room B.
DEF RoomTrain9B EQU $0022

; Case II train 2 passenger room A.
DEF RoomTrain2A EQU $0023

; Case II train 2 passenger room B.
DEF RoomTrain2B EQU $0024

; Case II train 3 passenger room A.
DEF RoomTrain3A EQU $0025

; Case II train 3 passenger room B.
DEF RoomTrain3B EQU $0026

; Case II train 4 passenger room A.
DEF RoomTrain4A EQU $0027

; Case II train 4 passenger room B.
DEF RoomTrain4B EQU $0028

; Case II train 5 passenger room A.
DEF RoomTrain5A EQU $0029

; Case II train 5 passenger room B.
DEF RoomTrain5B EQU $002a

; Case II the Chicago station entrance glass is broken.
DEF C2ChiGlass EQU $003f

; Case II the first Chicago station front description has been shown.
DEF C2ChiFrontSeen EQU $0040

; Case II the apartment building hallway has been described once.
DEF C2LobbySeen EQU $0046

; Case II state bit for the broken apartment building entrance glass.
DEF C2LobbyGlass EQU $00a2

; Case II state bit for the broken morgue front entrance glass.
DEF C2MorgueGlass EQU $00a8

; Case II state bit for the broken Joe front entrance glass.
DEF C2JoeFrontGlass EQU $00a4

; Case II object flag set on the first Joe fire escape platform visit.
DEF C2JoeEscapeSeen EQU $0054

; Case II object flag set by the lit Joe bar arrival; no reader confirmed.
DEF C2JoeBarVisited EQU $0060

; Case II object flag set when the shelves open and cleared when they close.
DEF C2ShelvesOpen EQU $009d

; Case II object flag suppressing the repeated office framed-picture hint.
DEF C2FrameHint EQU $00a6

; Case II state bit for the raised Reliant counter.
DEF C2CounterRaised EQU $00af

; Case II object flag set after Stogie first appears in the hotel room.
DEF C2StogieMet EQU $0008

; Case II object flag set on the first permitted hotel hallway visit.
DEF C2VegasHallSeen EQU $0009

; Case II object flag set after the first fourth-floor hallway memory sequence.
DEF C2VegasHall4Seen EQU $000b

; Case II state bit for broken glass in the Reliant main entrance.
DEF C2CleanGlass EQU $00ae

; Case II object flag blocking the outside Reliant entrance opening path.
DEF C2CleanLock EQU $003b

; Case II floor 1 lift interior.
DEF RoomVegasLift1 EQU $0007

; Case II floor 2 lift interior.
DEF RoomVegasLift2 EQU $0008

; Case II floor 3 lift interior.
DEF RoomVegasLift3 EQU $0009

; Case II floor 4 lift interior.
DEF RoomVegasLift4 EQU $000a

; Case II object flag set after the first newspaper seller dog description.
DEF C2NewsDogSeen EQU $003c

; Case II state bit for broken Chicago window 1 glass.
DEF C2ChiGlass1 EQU $00b3

; Case II state bit for broken Chicago window 2 glass.
DEF C2ChiGlass2 EQU $00b2

; Case II object flag set by desk mat pickup; no reader confirmed.
DEF C2DeskMatTaken EQU $009f

; Case II state bit set when the brass hat rack is taken.
DEF C2HatRackTaken EQU $009a

; Case II state bit for office drape open.
DEF C2DrapeOpen EQU $00b1

; Case II state bit for shade or silk curtain closed.
DEF C2ThinShadeShut EQU $0096

; Case II state bit for shade or silk curtain closed.
DEF C2WhiteShadeShut EQU $0098

; Case II state bit for shade or silk curtain closed.
DEF C2SilkShut EQU $009b

; Case I object flag: first washroom mirror is broken.
DEF C1Mirror1Broken EQU $0000

; Case I object flag: second washroom mirror is broken.
DEF C1Mirror2Broken EQU $0001

; Case I object flag: street-facing window is broken.
DEF C1StreetWinBroken EQU $0002

; Case I object flag: round mirror is broken.
DEF C1RoundMirrorBroken EQU $0009

; Case I object flag: wall mirror is broken.
DEF C1WallMirrorBroken EQU $0014

; Case I object flag: gun-shop window is broken.
DEF C1GunShopWinBroken EQU $0015

; Case I object flag set after the first mirror's memory effect; also permits leaving the washroom.
DEF C1Mirror1Seen EQU $0017

; Case I object flag set after shooting the office shadow; suppresses the gunman's attack.
DEF C1ShadowShot EQU $0016

; Case I object flag set by the final Bisodiumitis recovery step; selects recovered-memory paths.
DEF C1MemoryRecovered EQU $0025

; Case I object flag: key three unlocks door $06; closing it with the key clears this flag.
DEF C1Door06Unlocked EQU $005a

; Case I object flag: key one unlocks office door $14; its key-closing path clears this flag.
DEF C1OfficeDoorUnlocked EQU $005b

; Case I object flag: key two unlocks car door $1b; its key-closing path clears this flag.
DEF C1CarDoorUnlocked EQU $005c

; Case I object flag: key four unlocks the trunk; its key-closing path clears this flag.
DEF C1TrunkUnlocked EQU $005d

; Case I object flag: key five unlocks shadow door $38; its key-closing path clears this flag.
DEF C1ShadowDoorUnlocked EQU $005e

; Case I object flag: key five unlocks doctor's door $36; its key-closing path clears this flag.
DEF C1DoctorDoorUnlocked EQU $005f

; Case I object flag set after shooting the lock of bungalow door $31.
DEF C1BungalowUnlocked EQU $0060

; Case I object flag set after shooting the locked cabinet; permits its opening action.
DEF C1CabinetUnlocked EQU $001f

; Case I object flag set by the first door-$00 introduction or room-$01 entry description.
DEF C1Washroom1IntroSeen EQU $0030

; Case I object flag set after the first hallway room-$02 description.
DEF C1Hall02Seen EQU $0031

; Case I object flag set after the first women's washroom room-$03 description.
DEF C1Washroom3Seen EQU $0032

; Case I object flag set after the first bar room-$05 description.
DEF C1BarRoomSeen EQU $0033

; Case I object flag set after the first women's stall room-$04 description; also changes the puddle view.
DEF C1WomenStallSeen EQU $0034

; Case I object flag set after the first cellar room-$06 description.
DEF C1CellarSeen EQU $0035

; Case I object flag set after the first street room-$11 description.
DEF C1JoeStreetSeen EQU $0036

; Case I object flag set by the normal first upstairs-hall entry; the effect-$18 path leaves it unchanged.
DEF C1JoeUpHallSeen EQU $0037

; Case I object flag set after the first wine-rack passage room-$07 description.
DEF C1RackPassageSeen EQU $0038

; Case I object flag set after the first sewer room-$3a description.
DEF C1Sewer3ASeen EQU $0039

; Case I object flag set after the first casino room-$08 description.
DEF C1CasinoSeen EQU $003a

; Case I object flag selecting the small elevator's first or repeat entry text across its room IDs.
DEF C1SmallLiftSeen EQU $003b

; Case I object flag set after the hidden-elevator sliding-wall explanation.
DEF C1HiddenLiftSeen EQU $003c

; Case I object flag set after the first room-$0b description.
DEF C1Room0BSeen EQU $003d

; Case I object flag set after the first secretary-office room-$0d description.
DEF C1SecretaryRoomSeen EQU $003e

; Case I object flag set after the first newsstand street room-$12 description.
DEF C1NewsstandSeen EQU $003f

; Case I object flag set by the shared first manhole-entry sewer description.
DEF C1ManholeSewerSeen EQU $0040

; Case I object flag set after the first car-rear description.
DEF C1CarRearSeen EQU $0041

; Case I object flag set after the first luxury-car interior description.
DEF C1CarInteriorSeen EQU $0042

; Case I object flag set after the first gun-shop interior description.
DEF C1GunShopSeen EQU $0045

; Case I object flag set after the first Stanford Arms street description.
DEF C1StanfordStreetSeen EQU $0048

; Case I object flag set after the first bungalow street description.
DEF C1BungalowStreetSeen EQU $0049

; Case I object flag set after the first estate-exterior description.
DEF C1EstateStreetSeen EQU $004b

; Case I object flag set after the first Stanford Arms lobby description.
DEF C1Lobby28Seen EQU $004c

; Case I object flag set after the first bungalow-interior description.
DEF C1BungalowRoomSeen EQU $004d

; Case I object flag set after the first Ace-office landing sequence, with either recovery branch.
DEF C1AceOfficeFrontSeen EQU $004e

; Case I object flag set after the first doctor's office interior description.
DEF C1DoctorRoomSeen EQU $004f

; Case I object flag set after the first recovered-memory entry to Ace's office room $30.
DEF C1AceOfficeRoomSeen EQU $0050

; Case I object flag set after the first master-bedroom description.
DEF C1MasterBedroomSeen EQU $0051

; Case I object flag set after the first guestroom description.
DEF C1GuestBedroomSeen EQU $0052

; Case I object flag set after the first sewer room-$3b description.
DEF C1Sewer3BSeen EQU $0053

; Case I object flag set after the first sewer room-$39 description.
DEF C1Sewer39Seen EQU $0054

; Case I object flag set after the first sewer room-$38 description.
DEF C1Sewer38Seen EQU $0055

; Case I object flag set after the first deepest-sewer room-$3c description.
DEF C1Sewer3CSeen EQU $0056

; Case I object flag set after the first office room-$0c description outside the hidden-lift path.
DEF C1OfficeDescribed EQU $0057

; Case I object flag set after reading NOTE2 and adding quick-list destination $a0.
DEF C1Note2RouteKnown EQU $007b

; Case I object flag set when the photograph supplies quick-list destination $a1.
DEF C1PhotoRouteKnown EQU $007c

; Case I object flag set when the bill supplies quick-list destination $a2.
DEF C1BillRouteKnown EQU $007d

; Case I object flag set after using the pencil to reveal writing on the memo.
DEF C1MemoWritingRevealed EQU $0078

; Case I object flag set by the first Bisodiumitis step; also selects the FILE4 description.
DEF C1BisodiumitisStage1Done EQU $0071

; Case I object flag set by the second Bisodiumitis step before the final memory recovery.
DEF C1BisodiumitisStage2Done EQU $002c

; Case I object flag set when trash can one opens and cleared when it closes.
DEF C1Trash1Open EQU $0020

; Case I object flag set when trash can two opens and cleared when it closes.
DEF C1Trash2Open EQU $0021

; Case I object flag set when trash can three opens and cleared when it closes.
DEF C1Trash3Open EQU $0022

; Case I object flag set when trash can four opens and cleared when it closes.
DEF C1Trash4Open EQU $0023

; Case I object flag set by the first medicine-tool pickup; controls its trash-can hint and repeat pickup.
DEF C1MedToolTakenOnce EQU $0024

; Case I object flag set after punching the butler; permits the inner mansion paths.
DEF C1ButlerDown EQU $0027

; Case I object flag set when NOTE3 opens the wall safe; changes its later description.
DEF C1WallSafeUnlocked EQU $001c

; Case I object flag set by the cabinet opening script; selects its later short description.
DEF C1CabinetOpenedOnce EQU $001e

; Case I object flag set when the coat pocket is opened; suppresses its initial hint.
DEF C1CoatPocketOpenedOnce EQU $0018

; Case I object flag set after the coat pickup's initial comment.
DEF C1CoatTakeCommentSeen EQU $001d

; Case I object flag set after reading the revealed memo timetable.
DEF C1MemoTimetableRead EQU $001a

; Case I object flag set after reading FILE5; changes the later Siegel description.
DEF C1File5Read EQU $001b

; Case I object flag set after the detailed FILE4 description; changes medicine-related descriptions.
DEF C1File4Read EQU $0026

; Case I object flag set after buying the newspaper; permits repeat pickup and changes seller dialogue.
DEF C1NewspaperPaid EQU $0028

; Case I object flag set after the first bungalow locked-door explanation.
DEF C1BungalowLockHintSeen EQU $002d

; Case I object flag set after the first barrel description.
DEF C1BarrelSeen EQU $002e

; Case I object flag set after pushing the wine-rack bottle.
DEF C1RackBottlePressed EQU $006f

; Case I object flag set after the trunk's first key-opening sequence.
DEF C1TrunkIntroSeen EQU $0075

; Case I object flag set by the car key's initial unlock-only path.
DEF C1CarKeyUsedOnce EQU $0079

; Case I object flag set by the sleeping-woman description; also changes photograph interpretation.
DEF C1SleepWomanSeen EQU $0074

; Case I object flag set after the detailed Mrs. Sternwood description.
DEF C1MrsSternwoodSeen EQU $0070

; Case I object flag set by the initial seven-coin pickup; changes the slot-machine description.
DEF C1InitialCoinsTaken EQU $008c

; Case I object flag marking the first BULLET1 list insertion, shared by purchases and the six-round pickup.
DEF C1Bullet1Listed EQU $008d

; Case I object flag marking the first BULLET2 purchase and list insertion.
DEF C1Bullet2Listed EQU $008e

; Case I object flag set after taking the bookmark; changes the diary's descriptions.
DEF C1BookmarkTaken EQU $008f

; Case I object flag set after taking NOTE1; changes the folder description.
DEF C1Note1Taken EQU $0090

; Case I object flag set by either six-round pickup path; gates ammo-case placement.
DEF C1SixBulletsTaken EQU $0096

; Case I object flag set after taking LETTER1; gates its envelope's burning and placement.
DEF C1Letter1Taken EQU $0097

; Case I object flag set after taking LETTER2; gates its envelope's burning and placement.
DEF C1Letter2Taken EQU $0098

; Case I object flag set after taking the alternate bill; gates handbag placement.
DEF C1AltBillTaken EQU $0099

; Case I object flag set after taking key four; gates box placement.
DEF C1Key4Taken EQU $009d

; Case I object flag set when a coin cost cannot be paid in blue-cab room $26; cleared by repayment.
DEF C1BlueCabDebt EQU $0081

; Case I object flag set when a coin cost cannot be paid in yellow-cab room $27; cleared by repayment.
DEF C1YellowCabDebt EQU $00a0

; Case I object flag marking the accepted current fare; debt repayment retains its separate native branch.
DEF C1CabFarePaid EQU $0082

; Case I object flag set when SetRoomArg3 changes the selected cab destination and cleared on exit.
DEF C1CabTripMade EQU $0083

; Case I object flag set after the first unpaid-fare warning and cleared on exit.
DEF C1CabFareWarned EQU $0084

; Case I object flag set after choosing cab travel and cleared by the coin-payment or free-ride reply.
DEF C1CabFarePending EQU $00a9

; Case I object flag set after Mrs. Sternwood's Pentothal reply and address reveal.
DEF C1MrsPentothalUsed EQU $0085

; Case I object flag set after giving Medrezine to Mrs. Sternwood.
DEF C1MrsMedrezineGiven EQU $0086

; Case I object flag set when the gag is taken and cleared by its original placement path.
DEF C1GagRemoved EQU $0087

; Case I object flag set after giving Medrezine to Mr. Sternwood.
DEF C1MrMedrezineGiven EQU $0088

; Case I object flag set after Mr. Sternwood's Pentothal reply; blocks its repetition.
DEF C1MrPentothalUsed EQU $0089

; Case I object flag set after giving Medrezine to the sleeping woman.
DEF C1SleepMedrezineGiven EQU $008a

; Case I object flag set after the sleeping woman's Pentothal reply; blocks its repetition.
DEF C1SleepPentothalUsed EQU $008b

; Case I object flag set after the allowed gun-one placement; tested by the police ending.
DEF C1Gun1Placed EQU $00a1

; Case I object flag set after burning the map or completing its allowed placement.
DEF C1MapDisposed EQU $00a2

; Case I object flag set after burning FILE5 or completing its allowed placement.
DEF C1File5Disposed EQU $00a3

; Case I object flag set after burning NOTE1 or completing its allowed placement.
DEF C1Note1Disposed EQU $00a4

; Case I object flag set alongside C1File5Read; gates FILE5 disposal and NOTE1 interpretation.
DEF C1File5Examined EQU $00a5

; Case I object flag set at the start of map inspection; gates map disposal.
DEF C1MapExamined EQU $00a6

; Case I object flag set at the start of NOTE1 inspection; gates NOTE1 disposal.
DEF C1Note1Examined EQU $00a7

; Case I object flag checked before BULLET1 use or placement; separate from the ammunition count.
DEF C1Bullet1UseAllowed EQU $00aa

; Case I object flag checked before BULLET2 use or placement; separate from the ammunition count.
DEF C1Bullet2UseAllowed EQU $00ab

; Case I object flag set after the access card opens the lift door; changes card and slot descriptions.
DEF C1AccessCardUsed EQU $00ac

; Case I object flag set after the first penthouse room-$2a description.
DEF C1PenthouseSeen EQU $00ad

; Case I object flag set after either bill pays for gun three; allows later pickup without another payment.
DEF C1Gun3Paid EQU $00af

; Case I object flag set after opening the trunk; enables its later opening audio path.
DEF C1TrunkOpenedOnce EQU $00b4

; Case I object flag set after drinking the seltzer; selects the empty-glass replies.
DEF C1SeltzerDrunk EQU $00b6

; Case I object flag set by closing the barrel spigot and cleared by opening it.
DEF C1SpigotClosed EQU $0003

; Case I object flag set by opening the barrel spigot and cleared by closing it.
DEF C1SpigotOpen EQU $0004

; Case I object flag set after the mugger's first punch sequence.
DEF C1MuggerHit1 EQU $0005

; Case I object flag set after the mugger's second punch sequence.
DEF C1MuggerHit2 EQU $0006

; Case I object flag set after the mugger's third punch sequence; selects armed retaliation.
DEF C1MuggerHit3 EQU $0007

; Case I object flag set after a bill pays off the recurring mugger; suppresses his random encounters.
DEF C1MuggerPaid EQU $002a

; Case I object flag set by the separate paid-mugger exit path.
DEF C1OtherMuggerPaid EQU $002b

; Case I object flag set after paying the bum for his hint; changes later bum and dead-man text.
DEF C1BumHintHeard EQU $0091

; Case I object flag set after punching the armed woman; suppresses her random encounter.
DEF C1ArmedLadyDown EQU $0092

; Case I object flag set on the original fatal mugger paths.
DEF C1MuggerFatalEncounter EQU $0095

; Case I object flag set after the initial opening view; suppresses its replay on later view initialization.
DEF C1OpeningShown EQU $00be

; Case I object flag that bypasses PickAltTarget's carried-item check; cleared by entry and failure paths.
DEF C1AltTargetBypass EQU $0080

; Case I object flag set when alternate selection is cancelled; consumed by PickAltTarget.
DEF C1AltTargetCancelled EQU $007f

; Case I object flag set when the access card opens the lift door and cleared by its card-closing path.
DEF C1CardLiftDoorOpen EQU $0059

; Case I object flag cleared when trash can one opens and set when it closes.
DEF C1Trash1Closed EQU $009a

; Case I object flag cleared when trash can two opens and set when it closes.
DEF C1Trash2Closed EQU $009b

; Case I object flag cleared when trash can three opens and set when it closes.
DEF C1Trash3Closed EQU $009c

; Case I object flag set alongside quick-list destination $a3 by map reading or Peoria arrival paths.
DEF C1PeoriaStopKnown EQU $007a

; Case I object flag set when the revealed memo is read; selects the map's alternate explanatory text.
DEF C1MemoReadForMap EQU $009f

; Case I object flag set by the random bum encounter and cleared by the gun-shop street entry script.
DEF C1BumEventActive EQU $00a8

; Case I object flag consumed by SaveSnapshot to skip one state-snapshot write.
DEF C1SkipNextSnapshot EQU $00b0

; Case I object flag set by either detailed Mrs. Sternwood view path; also selects effect text.
DEF C1SternwoodViewShown EQU $00b2
