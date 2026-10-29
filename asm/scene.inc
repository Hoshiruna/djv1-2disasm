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

; Input selection indices; the last two constants are cursor-link page commands.
DEF InputSelSelf EQU $09
DEF InputSelAux EQU $0a
DEF InputSelNextPage EQU $0b
DEF InputSelPrevPage EQU $0c
DEF InputSelListFirst EQU $0d
DEF CursorLinkNextPage EQU $18
DEF CursorLinkPrevPage EQU $19

; Fine room selectors share hit testing; Start presets the second. Grid selects room marks.
DEF InputSelRoomFine EQU $15
DEF InputSelRoomFineStart EQU $16
DEF InputSelRoomGrid EQU $17

; Input classification values; values at or above InputKindCount return before handler dispatch.
DEF InputKindRoom EQU $00
DEF InputKindAction EQU $01
DEF InputKindListRow EQU $02
DEF InputKindCount EQU $03
DEF InputKindIgnored EQU $04

; Cursor-input modes only; the shared save-answer byte has separate meanings.
DEF InputModeCursor EQU $00
DEF InputModeConfirm EQU $01
DEF InputModeCancel EQU $02

; Operation-record offsets and size; hItemSlot also serves unrelated temporary indices.
DEF OpSlotPrimary EQU $00
DEF OpSlotAlternate EQU $10
DEF OpSlotSize EQU $10

; Input dispatch state and the alternate operation slot.
DEF wInputMode       EQU $c875
DEF wInputSel        EQU $c8af
DEF wInputKind       EQU $c8b0
DEF wAltSlot         EQU $c8d5

; Pointer-byte offsets in CursorMaps, temporarily stored in hItemSlot.
DEF CursorMapOnOffset EQU $00
DEF CursorMapOffOffset EQU $02

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

; Operation attribute bit positions; their gameplay meanings depend on operation type.
DEF OpAttrBit0Mask EQU $01
DEF OpAttrBit1Mask EQU $02
DEF OpAttrBit2Mask EQU $04
DEF OpAttrBit0ClearMask EQU $fe
DEF OpAttrBit1ClearMask EQU $fd
DEF OpAttrBit2ClearMask EQU $fb

; Operation preparation fields; the bitmap byte index reuses room scratch.
DEF wOpClass         EQU $c8b1
DEF wOpAttr          EQU $c8c7
DEF wOpList          EQU $c8cc
DEF wOpByte          EQU $c865

; Resolved action code; $ff selects the case fallback.
DEF wActionCode      EQU $c8b3

; Type-zero input targets for the fixed self control and room-scan no-hit result.
DEF C1TargetSelf EQU $73
DEF C1TargetNoHit EQU $6f
DEF C2TargetSelf EQU $a6
DEF C2TargetNoHit EQU $a7

; Case II initial-bathroom type-zero targets; tap flags and visibility use separate fields.
DEF C2TargetBathTub EQU $00
DEF C2TargetBathColdTap EQU $01
DEF C2TargetBathHotTap EQU $02
DEF C2TargetBathMirror EQU $03
DEF C2TargetBathTowelRod EQU $04
DEF C2TargetBathSink EQU $05

; Case II type-four clothing IDs; C2Trench/C2Pants are packed values $80/$81.
DEF C2ItemTrench EQU $00
DEF C2ItemPants EQU $01

; Case II type-three towel item; target and display IDs are separate.
DEF C2ItemTowel EQU $05

; Case II type-three removable magnetic lift button; its packed prefix is zero.
DEF C2ItemLiftButton EQU $17

; Hotel hallway table and lamp type-zero target IDs.
DEF C2TargetHotelHallTable EQU $0b
DEF C2TargetHotelLitLamp EQU $0c
DEF C2TargetHotelTackyLamp EQU $0d

; First-floor hotel lift call button and casino-sign type-zero IDs.
DEF C2TargetHotelLiftCallButton EQU $0e
DEF C2TargetHotelCasinoSign EQU $0f

; Casino lobby painting, chairs and coffee-table type-zero target IDs.
DEF C2TargetHotelLobbyPainting EQU $10
DEF C2TargetHotelLobbyRedChair EQU $11
DEF C2TargetHotelLobbyChair EQU $12
DEF C2TargetHotelLobbyCoffeeTable EQU $13

; Casino cashier-area sign, chip-price, counter and cashier target IDs.
DEF C2TargetHotelCashierSign EQU $14
DEF C2TargetHotelChipPrice EQU $15
DEF C2TargetHotelCashCounter EQU $16
DEF C2TargetHotelCashier EQU $17

; Blackjack table, dealer name-tag and dealer type-zero target IDs.
DEF C2TargetHotelBlackjackTable EQU $18
DEF C2TargetHotelDealerTag EQU $1a
DEF C2TargetHotelDealer EQU $1b

; Second- and third-floor hotel hallway art type-zero target IDs.
DEF C2TargetHotelHall2Art EQU $23
DEF C2TargetHotelHall3Art EQU $24

; Hotel-front palm trees and awning type-zero target IDs.
DEF C2TargetHotelShadePalm EQU $25
DEF C2TargetHotelEntryPalm EQU $26
DEF C2TargetHotelAwning EQU $27

; Case II shared desert type-zero target IDs.
DEF C2TargetDesertCactusThorns EQU $28
DEF C2TargetDesertTree EQU $29
DEF C2TargetDesertHotRock EQU $2a
DEF C2TargetDesertAnimalRemains EQU $2b
DEF C2TargetDesertGrass EQU $2c
DEF C2TargetDesertCactus EQU $2d

; Las Vegas station-front arched windows and sign type-zero target IDs.
DEF C2TargetVegasStationArch1 EQU $2e
DEF C2TargetVegasStationArch2 EQU $2f
DEF C2TargetVegasStationSign EQU $30

; Las Vegas station lobby bench, platform signs and baggage sign type-zero target IDs.
DEF C2TargetVegasStationBench EQU $31
DEF C2TargetVegasPlatform6Sign EQU $32
DEF C2TargetVegasPlatform7Sign EQU $33
DEF C2TargetVegasPlatform8Sign EQU $34
DEF C2TargetVegasPlatform9Sign EQU $35
DEF C2TargetVegasBaggageSign EQU $36

; Vegas station seller and baggage-claim type-zero target IDs.
DEF C2TargetVegasSeller EQU $37
DEF C2TargetVegasTimetable1 EQU $38
DEF C2TargetVegasTimetable2 EQU $39
DEF C2TargetVegasClaimSign EQU $3a
DEF C2TargetVegasScheduleBox EQU $3b
DEF C2TargetVegasClaimAttendant EQU $3c

; Type-zero ceiling-sign and train targets shared by both cities platforms.
DEF C2TargetPlatformCeilingSign EQU $3d
DEF C2TargetPlatformTrain EQU $3e

; Chicago station lobby platform signs, old bench and timetable type-zero targets.
DEF C2TargetChicagoPlatform2Sign EQU $47
DEF C2TargetChicagoPlatform3Sign EQU $48
DEF C2TargetChicagoPlatform4Sign EQU $49
DEF C2TargetChicagoPlatform5Sign EQU $4a
DEF C2TargetChicagoOldBench EQU $4b
DEF C2TargetChicagoTimetable1 EQU $4c
DEF C2TargetChicagoTimetable2 EQU $4d

; Chicago newsstand, seller and dog type-zero target IDs; action classes differ.
DEF C2TargetChicagoNewsstand EQU $4e
DEF C2TargetChicagoNewsSeller EQU $4f
DEF C2TargetChicagoNewsDog EQU $50

; Chicago station-front sign and arched-window type-zero targets.
DEF C2TargetChicagoStationSign EQU $51
DEF C2TargetChicagoStationArch1 EQU $52
DEF C2TargetChicagoStationArch2 EQU $53

; Shared cab-interior type-zero targets; destination rooms use one physical list.
DEF C2TargetCabMirror EQU $54
DEF C2TargetCabDriver EQU $55
DEF C2TargetCabMeter EQU $56
DEF C2TargetCabPoster EQU $57

; Adison vacancy sign and two mailbox type-zero target IDs.
DEF C2TargetAdisonVacancySign EQU $58
DEF C2TargetAdisonScratchedMailbox EQU $5a
DEF C2TargetAdisonDentedMailbox EQU $5b

; Adison apartment elk head, photo, couch and curtain type-zero target IDs.
DEF C2TargetAdisonElkHead EQU $5c
DEF C2TargetAdisonOMalleyPhoto EQU $5d
DEF C2TargetAdisonCouch EQU $5e
DEF C2TargetAdisonCurtains EQU $5f

; Joe front/bar window and front/alley lamppost type-zero target IDs.
DEF C2TargetJoeFrontWindow EQU $60
DEF C2TargetJoeFrontLamppost EQU $61
DEF C2TargetJoeAlleyLamppost EQU $62
DEF C2TargetJoeBarFrontWindow EQU $68

; Joe upstairs, cellar, office and chamber spider-web type-zero target IDs.
DEF C2TargetJoeUpstairsWeb EQU $59
DEF C2TargetJoeCellarWeb EQU $64
DEF C2TargetJoeChamberDustWeb EQU $65
DEF C2TargetJoeCellarFlyWeb EQU $67
DEF C2TargetJoeOfficeDustWeb EQU $8c
DEF C2TargetJoeOfficeStickyWeb EQU $a8
DEF C2TargetJoeChamberStickyWeb EQU $a9

; Joe bar counter, cellar fixtures, chamber bulb and casino roulette type-zero targets.
DEF C2TargetJoeBarCounter EQU $66
DEF C2TargetJoeWineCask EQU $6a
DEF C2TargetJoeWineSpigot EQU $6b
DEF C2TargetJoeBottleRack EQU $6c
DEF C2TargetJoeChamberBulb EQU $6d
DEF C2TargetJoeRoulette EQU $6e

; Joe cellar dust-free bottle type-zero target ID.
DEF C2TargetJoeCleanBottle EQU $69

; Joe nailed boards, fire escape, boarded window and office gap/shade type-zero targets.
DEF C2TargetJoeRearNailedBoards EQU $63
DEF C2TargetJoeSplinteredBoard EQU $6f
DEF C2TargetJoeBoardedWindow EQU $70
DEF C2TargetJoeFireEscape EQU $71
DEF C2TargetJoeOfficeBoardGap EQU $72
DEF C2TargetJoeOfficeShade EQU $73

; Joe upstairs boxing posters and police-front lamp/sign type-zero targets.
DEF C2TargetJoeAcePoster EQU $74
DEF C2TargetJoeBoxerPoster1 EQU $75
DEF C2TargetJoeBoxerPoster2 EQU $76
DEF C2TargetPoliceStreetLamp EQU $77
DEF C2TargetPoliceSign EQU $aa

; Police station two window type-zero target IDs.
DEF C2TargetPoliceWindow1 EQU $ab
DEF C2TargetPoliceWindow2 EQU $ac

; Sugar building windows, hobo and apartment furnishings type-zero target IDs.
DEF C2TargetSugarPeepWindow EQU $78
DEF C2TargetSugarBarredWindow EQU $79
DEF C2TargetSugarHobo EQU $7a
DEF C2TargetSugarLamp EQU $7b
DEF C2TargetSugarBed EQU $7c
DEF C2TargetSugarDressingTable EQU $7d

; City morgue sign, reception counter/gate, staff sign and clerk type-zero targets.
DEF C2TargetMorgueSign EQU $7e
DEF C2TargetMorgueNoticeBoard EQU $7f
DEF C2TargetMorgueCounter EQU $80
DEF C2TargetMorgueGate EQU $81
DEF C2TargetMorgueStaffSign EQU $82
DEF C2TargetMorgueClerk EQU $83

; Morgue cold-room plates, bodies, drawer targets and instruction sign.
DEF C2TargetMorguePlate1 EQU $84
DEF C2TargetMorguePlate2 EQU $85
DEF C2TargetMorgueBody1 EQU $86
DEF C2TargetMorgueScarBody EQU $87
DEF C2TargetMorgueDrawer1 EQU $88
DEF C2TargetMorgueDrawer2 EQU $89
DEF C2TargetMorgueDrawerSign EQU $8a

; Shared hamper interior and cleaners hall window, prices and counter type-zero targets.
DEF C2TargetHamperInterior EQU $8b
DEF C2TargetCleanersHallWindow EQU $90
DEF C2TargetCleanersPriceSign EQU $91
DEF C2TargetCleanersCounter EQU $92

; Cleaners outer-office and exterior type-zero target IDs.
DEF C2TargetCleanersDartboard EQU $93
DEF C2TargetCleanersOfficeDrape EQU $94
DEF C2TargetCleanersSunWindow EQU $95
DEF C2TargetCleanersLeatherChair EQU $96
DEF C2TargetCleanersSign EQU $97
DEF C2TargetCleanersFrontWindow EQU $98

; Vegas fourth-floor hall, Ventini/Malone offices and secret-office type-zero targets.
DEF C2TargetHotelHall4Tree EQU $99
DEF C2TargetHotelHall4Glass EQU $9a
DEF C2TargetVentiniChair EQU $9b
DEF C2TargetVentiniCityWindow EQU $9c
DEF C2TargetVentiniVegasWindow EQU $9d
DEF C2TargetVentiniThinBlinds EQU $9e
DEF C2TargetVentiniWhiteBlinds EQU $9f
DEF C2TargetMaloneChair EQU $a0
DEF C2TargetMaloneFishPhoto EQU $a1
DEF C2TargetMaloneBanquetPhoto EQU $a2
DEF C2TargetMaloneVegasWindow EQU $a3
DEF C2TargetMaloneSilkCurtain EQU $a4
DEF C2TargetSecretOfficeChair EQU $a5

; Case II hotel-bedroom type-zero targets; visibility gates use separate fields.
DEF C2TargetBedroomWindow EQU $06
DEF C2TargetBedroomCurtain EQU $07
DEF C2TargetBedroomMirror EQU $08
DEF C2TargetBedroomBed EQU $09
DEF C2TargetBedroomPainting EQU $0a

; Case II type-five bathroom/bedroom door targets; state IDs use separate names.
DEF C2TargetVegasBathDoor EQU $00
DEF C2TargetVegasBedroomDoor EQU $01

; Case II type-five lift doors; selected item IDs also select the matching state bit.
DEF C2TargetVegasLift1Door EQU $04
DEF C2TargetVegasLift2Door EQU $09
DEF C2TargetVegasLift3Door EQU $0c
DEF C2TargetVegasLift4Door EQU $0e

; Case II shared lift type-zero targets; the removable fourth-floor button has type three.
DEF C2TargetLiftCasinoAd EQU $1e
DEF C2TargetLiftPanel EQU $1f
DEF C2TargetLiftButton1 EQU $20
DEF C2TargetLiftButton2 EQU $21
DEF C2TargetLiftButton3 EQU $22

; Case II type-zero passenger-car targets; shared across the train-room lists.
DEF C2TargetTrainSeats EQU $3f
DEF C2TargetTrainShade EQU $40
DEF C2TargetTrainWindow EQU $41
DEF C2TargetTrainDestinationSign EQU $42
DEF C2TargetTrainConductor EQU $43
DEF C2TargetTrainChattyWoman EQU $44
DEF C2TargetTrainSeatMan EQU $45
DEF C2TargetTrainYoungWoman EQU $46

; Case II type-zero laundry-room targets; separate from visibility IDs and object flags.
DEF C2TargetBindingRope EQU $8d
DEF C2TargetTiedHands EQU $8e
DEF C2TargetNailCrate EQU $8f

; Laundry map-patch base; setting C2StateLaundryUntied selects the next patch.
DEF C2PatchIdLaundryBound EQU $72

; Case II type-five Vegas hamper-lid target; its ID also indexes the corresponding state bit.
DEF C2TargetVegasHamperLid EQU $0d

; Bathroom closed-door map-patch base; the open state selects the following patch.
DEF C2PatchIdVegasBathDoorClosed EQU $00

; Case II bathroom and bedroom door-open states; type-five grid targets share these IDs.
DEF C2StateVegasBathDoorOpen EQU $00
DEF C2StateVegasBedroomDoorOpen EQU $01

; Bedroom curtain state and map-patch base; visibility gates use separate IDs.
DEF C2StateBedroomCurtainClosed EQU $77
DEF C2PatchIdBedroomCurtainOpen EQU $02

; Shared lift-door patch base; setting the floor door-open state selects the next patch.
DEF C2PatchIdLiftDoorClosed EQU $0c

; Case II lift-door open states shared by each lift and its hallway.
DEF C2StateLift1DoorOpen EQU $04
DEF C2StateLift2DoorOpen EQU $09
DEF C2StateLift3DoorOpen EQU $0c
DEF C2StateLift4DoorOpen EQU $0e

; Case II state bit for the Vegas hamper lid; separate from RoomVegasHamper.
DEF C2StateVegasHamperOpen EQU $0d

; Case II state bit selecting the laundry-room untied patch; separate from C2HandsFree.
DEF C2StateLaundryUntied EQU $95

; Type-three pickup item IDs from the Vegas hall and lobby.
DEF C2ItemVegasHallPlant EQU $12
DEF C2ItemVegasLobbyPot EQU $13
DEF C2ItemVegasLobbyAshtray EQU $14

; Vegas hotel hall/lobby pickup objects and blackjack dealer visibility IDs.
DEF C2VisIdVegasHallPlant EQU $0a
DEF C2VisIdVegasLobbyAshtray EQU $0b
DEF C2VisIdVegasLobbyPot EQU $0c
DEF C2VisIdVegasBlackjackDealer EQU $0d

; Bedroom pillow/timetable type-three item IDs and separate visibility gates.
DEF C2ItemPillow EQU $0f
DEF C2ItemTimetable EQU $11
DEF C2VisIdBedroomTimetable EQU $08
DEF C2VisIdBedroomPillow EQU $09

; Adison apartment cigar-ring visibility; the planted variant uses C2RingObj2.
DEF C2VisIdAdisonCigarRing EQU $65

; Case II bedroom visibility IDs; curtain and intact-window entries are input gates.
DEF C2VisIdBedroomMirrorBroken EQU $05
DEF C2VisIdBedroomCigarRing EQU $06
DEF C2VisIdBedroomWindowBroken EQU $07
DEF C2VisIdBedroomCurtainOpen EQU $80
DEF C2VisIdBedroomCurtainClosed EQU $81
DEF C2VisIdBedroomWindowIntact EQU $89

; Case II bathroom display-object IDs; separate from item IDs and tap flags.
DEF C2VisIdBathTowel EQU $00
DEF C2VisIdBathTrench EQU $01
DEF C2VisIdBathPants EQU $02
DEF C2VisIdBathMirrorBroken EQU $03
DEF C2VisIdBathRunningWater EQU $04

; Case II floor-display objects shared by all four Vegas lift rooms.
DEF C2VisIdLiftFloor1 EQU $11
DEF C2VisIdLiftFloor2 EQU $12
DEF C2VisIdLiftFloor3 EQU $13
DEF C2VisIdLiftFloor4 EQU $14

; Case II installed magnetic button; object flag C2ButtonTaken is separate.
DEF C2VisIdLiftButton4Installed EQU $0f

; Case II pressed-button objects shared by the four Vegas lift rooms.
DEF C2VisIdLiftButton1Pressed EQU $10
DEF C2VisIdLiftButton2Pressed EQU $1e
DEF C2VisIdLiftButton3Pressed EQU $1f
DEF C2VisIdLiftButton4Pressed EQU $20

; Case II type-three morgue toe tags; bitmap checks retain the same item IDs.
DEF C2MorgueTag1 EQU $51
DEF C2MorgueTag2 EQU $52

; Case II reversible wine-rack state and separate rack/bottle visibility IDs.
DEF C2StateJoeShelvesOpen EQU $61
DEF C2VisIdJoeBottleRack EQU $91
DEF C2VisIdJoeCleanBottle EQU $92

; Case II newsstand open state and separate paper, seller and dog visibility IDs.
DEF C2StateNewsstandOpen EQU $a0
DEF C2VisIdNewsPaper3 EQU $2c
DEF C2VisIdNewsPaper4 EQU $2d
DEF C2VisIdNewsSeller EQU $2e
DEF C2VisIdNewsDog EQU $2f

; Case II type-three physical IDs: hall plants.
DEF C2ItemVegasHall2Plant EQU $15
DEF C2ItemVegasHall3Plant EQU $16

; Case II type-three physical IDs: lamp can.
DEF C2ItemCrackedLamp EQU $1f
DEF C2ItemJuiceCan EQU $2c

; Case II type-three physical IDs: sugar.
DEF C2ItemSugarTissue EQU $33
DEF C2ItemSugarPillow EQU $34
DEF C2ItemSugarPerfume EQU $35
DEF C2ItemSugarNewspaper EQU $36

; Case II type-three physical IDs: station papers.
DEF C2ItemRailwayPamphlet EQU $1a
DEF C2ItemStationNewspaper3 EQU $1b
DEF C2ItemStationNewspaper4 EQU $1c

; Case II type-three physical IDs: office furnishings.
DEF C2ItemOuterOfficePhoto EQU $43
DEF C2ItemVentiniHatRack EQU $45

; Ventini office display IDs; separate from paperweight and part item values.
DEF C2VisIdVentiniDart EQU $18
DEF C2VisIdVentiniDartBase EQU $19
DEF C2VisIdVentiniPaperweight EQU $1a

; Case II pickup display IDs: hall pamphlet.
DEF C2VisIdVegasHall2Plant EQU $15
DEF C2VisIdVegasHall3Plant EQU $16
DEF C2VisIdRailwayPamphlet EQU $1c

; Case II pickup display IDs: adison.
DEF C2VisIdAdisonSpareCoat EQU $33
DEF C2VisIdAdisonFlashlight EQU $34
DEF C2VisIdAdisonDrawer EQU $35
DEF C2VisIdAdisonBottleIntact EQU $36
DEF C2VisIdAdisonBottleBroken EQU $37
DEF C2VisIdAdisonCrackedLamp EQU $38

; Case II pickup display IDs: sugar.
DEF C2VisIdSugarNewspaper EQU $47
DEF C2VisIdSugarPillow EQU $48
DEF C2VisIdSugarPerfume EQU $49
DEF C2VisIdSugarTissue EQU $4a

; Case II pickup display IDs: morgue.
DEF C2VisIdMorgueBox2Closed EQU $4b
DEF C2VisIdMorgueBox2Open EQU $4c
DEF C2VisIdMorgueTag1 EQU $4d
DEF C2VisIdMorgueTag2 EQU $4e

; Case II pickup display IDs: alley laundry.
DEF C2VisIdJoeMoldyBox EQU $3e
DEF C2VisIdJoeJuiceCan EQU $3f
DEF C2VisIdLaundrySoapBox EQU $50

; Case II pickup display IDs: office.
DEF C2VisIdOuterOfficePhoto EQU $51
DEF C2VisIdOuterOfficeDartBeforeShift EQU $52
DEF C2VisIdSecretOfficeDeskMat EQU $53
DEF C2VisIdOuterOfficeDartAfterShift EQU $5b

; Case II fixed-container raw IDs: ordinary furniture.
DEF C2ContainerVegasDresser EQU $00
DEF C2ContainerVegasNightstand EQU $01
DEF C2ContainerSugarNightstand EQU $08
DEF C2ContainerOuterOfficeDesk EQU $0a
DEF C2ContainerVentiniDesk EQU $0b

; Case II fixed-container raw IDs: joe office.
DEF C2ContainerJoeDesk EQU $05
DEF C2ContainerJoeSafe EQU $06
DEF C2ContainerJoePhone EQU $07

; Case II fixed-container raw IDs: mail slot.
DEF C2ContainerAdisonMailbox EQU $02
DEF C2ContainerJoeDiarySlot EQU $03
DEF C2ContainerJoeEmptySlot EQU $04

; Case II fixed-container raw IDs: wardrobe secret desk.
DEF C2ContainerSugarWardrobe EQU $09
DEF C2ContainerSecretOfficeDesk EQU $0c

; Case II fixed-container raw IDs: container groups.
DEF C2GroupLaundryWasher EQU $00
DEF C2GroupSecretOfficeBin EQU $01
DEF C2GroupJoeFoodTrash EQU $02
DEF C2GroupMaloneDesk EQU $03

; Case II pickup display IDs: fixed containers.
DEF C2VisIdAdisonMailboxClosed EQU $3b
DEF C2VisIdJoeFoodTrash EQU $4f

; Case II type-five raw targets: guest doors.
DEF C2TargetHotelQuietGuestDoor EQU $03
DEF C2TargetHotelGuestDoor2 EQU $0a
DEF C2TargetHotelGuestDoor3 EQU $0b

; Case II type-five raw targets: hotel entries.
DEF C2TargetHotelLobbyDoor EQU $02
DEF C2TargetCasinoFrontDoor EQU $06
DEF C2TargetVentiniOfficeDoor EQU $0f
DEF C2TargetMaloneOfficeDoor EQU $10

; Case II type-five raw targets: platform passages.
DEF C2TargetVegasPlatform6Passage EQU $1d
DEF C2TargetVegasPlatform7Passage EQU $1e
DEF C2TargetVegasPlatform8Passage EQU $1f
DEF C2TargetVegasPlatform9Passage EQU $20
DEF C2TargetChicagoPlatform2Passage EQU $35
DEF C2TargetChicagoPlatform3Passage EQU $36
DEF C2TargetChicagoPlatform4Passage EQU $37
DEF C2TargetChicagoPlatform5Passage EQU $38

; Case II type-five raw targets: platform train doors.
DEF C2TargetVegasPlatform6TrainDoor EQU $21
DEF C2TargetVegasPlatform7TrainDoor EQU $24
DEF C2TargetVegasPlatform8TrainDoor EQU $27
DEF C2TargetVegasPlatform9TrainDoor EQU $2a
DEF C2TargetChicagoPlatform2TrainDoor EQU $3a
DEF C2TargetChicagoPlatform3TrainDoor EQU $3d
DEF C2TargetChicagoPlatform4TrainDoor EQU $40
DEF C2TargetChicagoPlatform5TrainDoor EQU $43

; Case II type-five raw targets: platform exits.
DEF C2TargetVegasPlatform6EmergencyExit EQU $23
DEF C2TargetVegasPlatform7EmergencyExit EQU $26
DEF C2TargetVegasPlatform8EmergencyExit EQU $29
DEF C2TargetVegasPlatform9EmergencyExit EQU $2c
DEF C2TargetChicagoPlatform2EmergencyExit EQU $3c
DEF C2TargetChicagoPlatform3EmergencyExit EQU $3f
DEF C2TargetChicagoPlatform4EmergencyExit EQU $42
DEF C2TargetChicagoPlatform5EmergencyExit EQU $45

; Case II type-five raw targets: shared cars.
DEF C2TargetTrainCarBDoorBase EQU $22
DEF C2TargetTrainCarAPassageBase EQU $2d

; Effective type-five targets for shared passenger-car room lists.
DEF C2TargetTrain7CarAPassage EQU $2e
DEF C2TargetTrain7CarBDoor EQU $25
DEF C2TargetTrain8CarAPassage EQU $2f
DEF C2TargetTrain8CarBDoor EQU $28
DEF C2TargetTrain9CarAPassage EQU $30
DEF C2TargetTrain9CarBDoor EQU $2b
DEF C2TargetTrain2CarAPassage EQU $31
DEF C2TargetTrain2CarBDoor EQU $3b
DEF C2TargetTrain3CarAPassage EQU $32
DEF C2TargetTrain3CarBDoor EQU $3e
DEF C2TargetTrain4CarAPassage EQU $33
DEF C2TargetTrain4CarBDoor EQU $41
DEF C2TargetTrain5CarAPassage EQU $34
DEF C2TargetTrain5CarBDoor EQU $44

; Case II type-five raw targets: station cabs.
DEF C2TargetVegasStationEntrance EQU $19
DEF C2TargetChicagoStationEntrance EQU $39
DEF C2TargetChicagoStationCab EQU $46
DEF C2TargetJoeFrontCab EQU $4a

; Case II type-five raw targets: laundry routes.
DEF C2TargetLaundryChuteDoor EQU $14
DEF C2TargetCleanersEntrance EQU $15
DEF C2TargetLaundryStairs EQU $6a
DEF C2TargetLaundryHamper EQU $6b
DEF C2TargetCleanersOfficeDoor EQU $6c

; Case II type-five raw targets: adison doors.
DEF C2TargetAdisonBuildingEntrance EQU $4c
DEF C2TargetAdisonApartmentDoor EQU $4d
DEF C2TargetAdisonNeighborDoor1 EQU $4e
DEF C2TargetAdisonNeighborDoor2 EQU $4f

; Case II type-five raw targets: joe outer passages.
DEF C2TargetJoeAlleyPassage EQU $51
DEF C2TargetJoeFireEscapePassage EQU $55
DEF C2TargetJoeOfficeWindowPassage EQU $58

; Case II type-five raw targets: joe manholes front.
DEF C2TargetJoeFrontManhole EQU $52
DEF C2TargetJoeBarFrontDoor EQU $53
DEF C2TargetJoeRearManhole EQU $57

; Case II type-five raw targets: joe inner doors.
DEF C2TargetJoeRearDoor EQU $5b
DEF C2TargetJoeBarInteriorDoor EQU $5c
DEF C2TargetJoeCellarDoor EQU $5f
DEF C2TargetJoeCasinoDoor EQU $62

; Case II type-five raw targets: joe remaining routes.
DEF C2TargetJoeLadiesDoor EQU $5d
DEF C2TargetJoeBarStairs EQU $60
DEF C2TargetJoeShelfPassage EQU $61
DEF C2TargetJoeUpstairsRestrictedDoor EQU $64

; Case II type-five raw targets: public final doors.
DEF C2TargetPoliceStationDoor EQU $65
DEF C2TargetSugarApartmentDoor EQU $66
DEF C2TargetSugarFrontLockedDoor EQU $67
DEF C2TargetMorgueEntranceDoor EQU $68
DEF C2TargetMorgueColdRoomDoor EQU $69
DEF C2TargetOuterOfficeSecretDoor EQU $6d

; Case II script-only type-four item IDs; packed values use a separate prefix.
DEF C2ItemGun EQU $09
DEF C2ItemVacuum EQU $10
DEF C2ItemVacuumBag EQU $11
DEF C2Vacuum EQU $90

; Case II type-five Adison cab grid target; its room-state ID has a separate name.
DEF C2TargetAdisonCab EQU $48

; Type-five targets present in script matches without current physical records.
DEF C2TargetJammedCabDoor EQU $47
DEF C2TargetCottageCab EQU $49
DEF C2TargetMorgueCab EQU $4b
DEF C2TargetSecretaryDoor EQU $74

; Shared platform train body and boarding-door visibility; separate from state $a7.
DEF C2VisIdPlatformTrainAndDoor EQU $a7

; Case II pickup display IDs: route windows.
DEF C2VisIdChicagoStationBrokenDoorGlass EQU $32
DEF C2VisIdAdisonApartmentDoor EQU $8e
DEF C2VisIdJoeOfficeWindowPassage EQU $90

; Case II pickup display IDs: route effects.
DEF C2VisIdPoliceDoorGlass1 EQU $40
DEF C2VisIdPoliceDoorGlass2 EQU $41
DEF C2VisIdSugarApartmentDoorOpen EQU $46
DEF C2VisIdLaundryShutterClosed EQU $9b
DEF C2VisIdLaundryShutterOpen EQU $9c
DEF C2VisIdOuterOfficeSecretDoor EQU $a6

; Case II pickup display IDs: office blinds.
DEF C2VisIdVentiniThinBlindsOpen EQU $84
DEF C2VisIdVentiniThinBlindsClosed EQU $85
DEF C2VisIdVentiniWhiteBlindsOpen EQU $86
DEF C2VisIdVentiniWhiteBlindsClosed EQU $87
DEF C2VisIdMaloneVegasWindow EQU $88
DEF C2VisIdVentiniCityWindow EQU $8a
DEF C2VisIdVentiniVegasWindow EQU $8b

; Case II pickup display IDs: platform signs.
DEF C2VisIdVegasPlatform6CeilingSign EQU $24
DEF C2VisIdVegasPlatform7CeilingSign EQU $25
DEF C2VisIdVegasPlatform8CeilingSign EQU $26
DEF C2VisIdVegasPlatform9CeilingSign EQU $27
DEF C2VisIdChicagoPlatform2CeilingSign EQU $28
DEF C2VisIdChicagoPlatform3CeilingSign EQU $29
DEF C2VisIdChicagoPlatform4CeilingSign EQU $2a
DEF C2VisIdChicagoPlatform5CeilingSign EQU $2b

; Case II pickup display IDs: desert layouts.
DEF C2VisIdDesertCactusThorns1 EQU $5c
DEF C2VisIdDesertCactusThorns2 EQU $5d
DEF C2VisIdDesertThornLayoutRock1 EQU $5e
DEF C2VisIdDesertThornLayoutRock2 EQU $5f
DEF C2VisIdDesertCactus1 EQU $60
DEF C2VisIdDesertCactus2 EQU $61
DEF C2VisIdDesertGrassLayoutRock1 EQU $62
DEF C2VisIdDesertGrassLayoutRock2 EQU $63
DEF C2VisIdDesertAnimalRemains EQU $64

; Case II pickup display IDs: home curtains boards.
DEF C2VisIdAdisonCurtainsOpen EQU $8c
DEF C2VisIdAdisonCurtainsClosed EQU $8d
DEF C2VisIdJoeOfficeBoardGap EQU $8f

; Case II pickup display IDs: morgue fixtures.
DEF C2VisIdMorgueGateClosed EQU $93
DEF C2VisIdMorgueGateOpen EQU $94
DEF C2VisIdMorgueDrawer1Closed EQU $95
DEF C2VisIdMorgueDrawer1Open EQU $96
DEF C2VisIdMorgueBody1 EQU $97
DEF C2VisIdMorgueDrawer2Closed EQU $98
DEF C2VisIdMorgueDrawer2Open EQU $99
DEF C2VisIdMorgueScarBody EQU $9a

; Case II pickup display IDs: cleaners fixtures.
DEF C2VisIdCleanersCounterLowered EQU $9f
DEF C2VisIdCleanersCounterRaised EQU $a0
DEF C2VisIdCleanersSunWindow EQU $a1
DEF C2VisIdCleanersOfficeDrapeClosed EQU $a2
DEF C2VisIdCleanersOfficeDrapeOpen EQU $a3
DEF C2VisIdCleanersDartboardBeforeShift EQU $a4
DEF C2VisIdCleanersDartboardAfterShift EQU $a5

; Case II pickup display IDs: public glass mailboxes.
DEF C2VisIdVegasHall4Glass EQU $17
DEF C2VisIdVegasStationSeller EQU $1b
DEF C2VisIdVegasStationArch1Broken EQU $22
DEF C2VisIdVegasStationArch2Broken EQU $23
DEF C2VisIdChicagoStationArch1 EQU $30
DEF C2VisIdChicagoStationArch2 EQU $31
DEF C2VisIdAdisonDentedMailbox EQU $39
DEF C2VisIdAdisonScratchedMailbox EQU $3a

; Case II pickup display IDs: public boards windows.
DEF C2VisIdJoeBoardedWindow EQU $3c
DEF C2VisIdJoeSplinteredBoard EQU $3d
DEF C2VisIdPoliceWindow2Broken EQU $42
DEF C2VisIdPoliceWindow1Broken EQU $43
DEF C2VisIdSugarHobo EQU $44
DEF C2VisIdSugarPeepWindowBroken EQU $45

; Case II wStateBits IDs: openings.
DEF C2StateJoeBoardGapOpen EQU $58
DEF C2StatePoliceGlassBroken EQU $65
DEF C2StateSugarDoorUnlocked EQU $66
DEF C2StateOuterOfficeSecretDoorOpen EQU $6d
DEF C2StateJoeSafeOpen EQU $75

; Case II wStateBits IDs: windows.
DEF C2StateVentiniCityWindowBroken EQU $97
DEF C2StateVentiniVegasWindowBroken EQU $99
DEF C2StateMaloneVegasWindowBroken EQU $9c
DEF C2StateJoeWindowBroken EQU $a5
DEF C2StateCleanersGlassBroken EQU $ad
DEF C2StateCleanersSunWindowBroken EQU $b0

; Sugar wardrobe patch base: add open bit 0 and broken-mirror bit 1.
DEF C2PatchIdSugarWardrobeClosedIntact EQU $58

; Case II wStateBits IDs: wardrobe.
DEF C2StateSugarWardrobeOpen EQU $ac
DEF C2StateSugarWardrobeMirrorBroken EQU $a7

; Case II wStateBits IDs: casino front door.
DEF C2StateCasinoFrontDoorOpen EQU $06

; Case II wStateBits IDs: clipping and door resets.
DEF C2StateLaundryChuteDoorOpen EQU $14
DEF C2StateCleanersEntranceOpen EQU $15
DEF C2StateRudyRecognizesAce EQU $73

; Case II wStateBits IDs: hotel selected doors.
DEF C2StateHotelLobbyDoorOpen EQU $02
DEF C2StateVentiniOfficeDoorOpen EQU $0f
DEF C2StateMaloneOfficeDoorOpen EQU $10

; Case II wStateBits IDs: hotel guest doors.
DEF C2StateHotelQuietGuestDoorOpen EQU $03
DEF C2StateHotelGuestDoor2Open EQU $0a
DEF C2StateHotelGuestDoor3Open EQU $0b

; Case II wStateBits IDs: station entrances.
DEF C2StateVegasStationEntranceOpen EQU $19
DEF C2StateChicagoStationEntranceOpen EQU $39

; Case II wStateBits IDs: adison doors.
DEF C2StateAdisonBuildingEntranceOpen EQU $4c
DEF C2StateAdisonApartmentDoorOpen EQU $4d
DEF C2StateAdisonNeighborDoor1Open EQU $4e
DEF C2StateAdisonNeighborDoor2Open EQU $4f

; Case II wStateBits IDs: joe outer doors.
DEF C2StateJoeFrontManholeOpen EQU $52
DEF C2StateJoeBarFrontDoorOpen EQU $53
DEF C2StateJoeRearManholeOpen EQU $57
DEF C2StateJoeRearDoorOpen EQU $5b
DEF C2StateJoeBarInteriorDoorOpen EQU $5c

; Case II wStateBits IDs: joe inner doors.
DEF C2StateJoeLadiesDoorOpen EQU $5d
DEF C2StateJoeCellarDoorOpen EQU $5f
DEF C2StateJoeCasinoDoorOpen EQU $62
DEF C2StateJoeUpstairsRestrictedDoorOpen EQU $64

; Case II wStateBits IDs: sugar morgue office doors.
DEF C2StateSugarFrontLockedDoorOpen EQU $67
DEF C2StateMorgueEntranceDoorOpen EQU $68
DEF C2StateMorgueColdRoomDoorOpen EQU $69
DEF C2StateCleanersOfficeDoorOpen EQU $6c

; Case II wStateBits IDs: platform passages.
DEF C2StateVegasPlatform6PassageOpen EQU $1d
DEF C2StateVegasPlatform7PassageOpen EQU $1e
DEF C2StateVegasPlatform8PassageOpen EQU $1f
DEF C2StateVegasPlatform9PassageOpen EQU $20
DEF C2StateChicagoPlatform2PassageOpen EQU $35
DEF C2StateChicagoPlatform3PassageOpen EQU $36
DEF C2StateChicagoPlatform4PassageOpen EQU $37
DEF C2StateChicagoPlatform5PassageOpen EQU $38

; Case II wStateBits IDs: platform emergency exits.
DEF C2StateVegasPlatform6EmergencyExitOpen EQU $23
DEF C2StateVegasPlatform7EmergencyExitOpen EQU $26
DEF C2StateVegasPlatform8EmergencyExitOpen EQU $29
DEF C2StateVegasPlatform9EmergencyExitOpen EQU $2c
DEF C2StateChicagoPlatform2EmergencyExitOpen EQU $3c
DEF C2StateChicagoPlatform3EmergencyExitOpen EQU $3f
DEF C2StateChicagoPlatform4EmergencyExitOpen EQU $42
DEF C2StateChicagoPlatform5EmergencyExitOpen EQU $45

; Case II wStateBits IDs: train internal passages.
DEF C2StateTrain6InternalPassageOpen EQU $2d
DEF C2StateTrain7InternalPassageOpen EQU $2e
DEF C2StateTrain8InternalPassageOpen EQU $2f
DEF C2StateTrain9InternalPassageOpen EQU $30
DEF C2StateTrain2InternalPassageOpen EQU $31
DEF C2StateTrain3InternalPassageOpen EQU $32
DEF C2StateTrain4InternalPassageOpen EQU $33
DEF C2StateTrain5InternalPassageOpen EQU $34

; Case II wStateBits IDs: train boarding doors.
DEF C2StateTrain6BoardingDoorOpen EQU $21
DEF C2StateTrain7BoardingDoorOpen EQU $24
DEF C2StateTrain8BoardingDoorOpen EQU $27
DEF C2StateTrain9BoardingDoorOpen EQU $2a
DEF C2StateTrain2BoardingDoorOpen EQU $3a
DEF C2StateTrain3BoardingDoorOpen EQU $3d
DEF C2StateTrain4BoardingDoorOpen EQU $40
DEF C2StateTrain5BoardingDoorOpen EQU $43

; Case II wStateBits IDs: train destination doors.
DEF C2StateTrain6DestinationDoorOpen EQU $22
DEF C2StateTrain7DestinationDoorOpen EQU $25
DEF C2StateTrain8DestinationDoorOpen EQU $28
DEF C2StateTrain9DestinationDoorOpen EQU $2b
DEF C2StateTrain2DestinationDoorOpen EQU $3b
DEF C2StateTrain3DestinationDoorOpen EQU $3e
DEF C2StateTrain4DestinationDoorOpen EQU $41
DEF C2StateTrain5DestinationDoorOpen EQU $44

; Case II wStateBits IDs: train platform views.
DEF C2StateTrain6PlatformView EQU $7c
DEF C2StateTrain7PlatformView EQU $7d
DEF C2StateTrain8PlatformView EQU $7e
DEF C2StateTrain9PlatformView EQU $7f
DEF C2StateTrain2PlatformView EQU $80
DEF C2StateTrain3PlatformView EQU $81
DEF C2StateTrain4PlatformView EQU $82
DEF C2StateTrain5PlatformView EQU $83

; Case II wStateBits IDs: joe laundry passages.
DEF C2StateJoeAlleyPassageOpen EQU $51
DEF C2StateJoeFireEscapePassageOpen EQU $55
DEF C2StateJoeBarStairsOpen EQU $60
DEF C2StateLaundryStairsOpen EQU $6a
DEF C2StateLaundryHamperPassageOpen EQU $6b

; Case II wStateBits IDs: cab passages.
DEF C2StateChicagoCabPassageOpen EQU $46
DEF C2StateAdisonCabPassageOpen EQU $48
DEF C2StateCottageCabPassageOpen EQU $49
DEF C2StateJoeFrontCabPassageOpen EQU $4a
DEF C2StateMorgueCabPassageOpen EQU $4b

; Case II wStateBits IDs: script only locked doors.
DEF C2StateJammedCabDoorOpen EQU $47
DEF C2StateSecretaryDoorOpen EQU $74

; Case II wStateBits IDs: joe lifts mens room.
DEF C2StateJoeOfficeLiftDoorOpen EQU $5a
DEF C2StateJoeMensDoorOpen EQU $5e
DEF C2StateJoeCasinoLiftDoorOpen EQU $63

; Case II wStateBits IDs: casino passages.
DEF C2StateVegasCashierPassageOpen EQU $05
DEF C2StateVegasBlackjackPassageOpen EQU $07

; Case II wStateBits IDs: hotel outer routes.
DEF C2StateHotelDesertRouteOpen EQU $11
DEF C2StateHotelTracksRouteOpen EQU $12
DEF C2StateHotelStationRouteOpen EQU $13

; Case II wStateBits IDs: outskirts station desert routes.
DEF C2StateOutskirtsTracksRouteOpen EQU $16
DEF C2StateOutskirtsLeftDesertRouteOpen EQU $17
DEF C2StateOutskirtsBelowDesertRouteOpen EQU $18
DEF C2StateStationRightDesertRouteOpen EQU $1a
DEF C2StateStationBelowDesertRouteOpen EQU $1b

; Case II wStateBits IDs: luggage police rear routes.
DEF C2StateVegasLuggagePassageOpen EQU $1c
DEF C2StateJoePoliceRouteOpen EQU $50
DEF C2StateJoeRearAlleyRouteOpen EQU $56

; Case II wStateBits IDs: blocked joe routes.
DEF C2StateJoeWorksRoute EQU $54
DEF C2StateJoeUpperLadderRoute EQU $59

; Case II wStateBits IDs: track desert routes.
DEF C2StateTracksLinkOpen EQU $6e
DEF C2StateTracksAAboveDesertRouteOpen EQU $6f
DEF C2StateTracksABelowDesertRouteOpen EQU $70
DEF C2StateTracksBAboveDesertRouteOpen EQU $71
DEF C2StateTracksBBelowDesertRouteOpen EQU $72

; Add to a cell below $80 to enable the shared mark and target condition check.
DEF C2RoomCellConditional EQU $80

; Room cell skipped by the Case II mark renderer; target scanning still compares the cell.
DEF C2RoomCellNoMark EQU $55

; Case II patch-list end and skipped-patch base; room records still end with $ff.
DEF C2PatchListEnd EQU $fe
DEF C2PatchSkipBase EQU $f0

; First-byte terminator of a Case II four-byte room-record list.
DEF C2RoomRecordEnd EQU $ff

; Shared scene-draw effect IDs with verified mask geometries.
DEF SceneFxRightChevron EQU $00
DEF SceneFxLeftChevron EQU $01
DEF SceneFxDownChevron EQU $03
DEF SceneFxUpChevron EQU $04
DEF SceneFxDiagonalStripes EQU $06

; Condition bit in the Case I record ID, separate from the cell high bit.
DEF C1RoomIdConditional EQU $80

; Stored Case I markless cell; its renderer skips cells with bit seven set.
DEF C1RoomCellNoMark EQU $88

; Case I state bit for the rack passage; separate from the pressed-bottle object flag.
DEF C1StateRackPassageOpen EQU $08

; First-byte terminator of a Case I three-byte room-record list.
DEF C1RoomRecordEnd EQU $ff

; Case I wStateBits IDs: keyed doors and trunk.
DEF C1StateJoeFrontDoorOpen EQU $06
DEF C1StateCorpseOfficeDoorOpen EQU $14
DEF C1StateLuxuryCarDoorOpen EQU $1b
DEF C1StateCarTrunkOpen EQU $47

; Case I wStateBits IDs: dashboard safe and lid.
DEF C1StateLuxuryCarDashboardOpen EQU $48
DEF C1StateCorpseOfficeWallSafeOpen EQU $4a
DEF C1StateWomenStallLidOpen EQU $4b

; Case I wStateBits IDs: casino lift doors.
DEF C1StateCasinoLiftDoorOpen EQU $0c
DEF C1StateHiddenOfficeLiftDoorOpen EQU $0e
DEF C1StateTopFloorLiftDoorOpen EQU $0f

; Case I wStateBits IDs: stanford lift doors.
DEF C1StateStanfordLobbyLiftDoorOpen EQU $2f
DEF C1StateStanfordPenthouseLiftDoorOpen EQU $30

; Case I wStateBits IDs: doctor and ace doors.
DEF C1StateDoctorOfficeDoorOpen EQU $36
DEF C1StateAceOfficeDoorOpen EQU $38

; Case I wStateBits IDs: encounter views.
DEF C1StateAceOfficeGunmanVisible EQU $3a
DEF C1StateMansionButlerPresent EQU $3b
DEF C1StateAlligatorShotView EQU $4d

; Case I wStateBits IDs: bungalow door.
DEF C1StateBungalowDoorOpen EQU $31

; Case I wStateBits IDs: cab color view.
DEF C1StateYellowCabView EQU $0d

; Case I wStateBits IDs: opening area doors.
DEF C1StateStartStallDoorOpen EQU $00
DEF C1StateStartWashroomDoorOpen EQU $01
DEF C1StateWomenWashroomDoorOpen EQU $02
DEF C1StateBarDoorOpen EQU $03
DEF C1StateWomenStallDoorOpen EQU $04
DEF C1StateCellarDoorOpen EQU $05
DEF C1StateCasinoDoorOpen EQU $09

; Case I wStateBits IDs: early passages.
DEF C1StateBarStairsPassable EQU $07
DEF C1StateRackSewerLadderPassable EQU $0a
DEF C1StateCasinoLiftPassagePassable EQU $0b
DEF C1StateFireEscape3To2Passable EQU $11
DEF C1StateFireEscape2ToAlleyPassable EQU $13

; Case I wStateBits IDs: office windows and hall door.
DEF C1StateTopFloorWindowOpen EQU $10
DEF C1StateCorpseOfficeWindowOpen EQU $12
DEF C1StateSecretaryHallDoorOpen EQU $15

; Case I wStateBits IDs: joe street passages.
DEF C1StateJoeStreetAlleyPassable EQU $16
DEF C1StateJoeStreetNewsstandPassable EQU $17
DEF C1StateJoeStreetPoliceFrontPassable EQU $19
DEF C1StateJoeStreetCarRearPassable EQU $1a

; Case I wStateBits IDs: peoria and pit passages.
DEF C1StateNewsstandGunShopPassable EQU $1c
DEF C1StateGunShopPeoriaPassable EQU $1d
DEF C1StatePeoriaCabStopsPassable EQU $1f
DEF C1StateConstructionPitEntryPassable EQU $21

; Case I wStateBits IDs: street manholes and entrances.
DEF C1StateJoeStreetManholeOpen EQU $18
DEF C1StateJoeAlleyManholeOpen EQU $22
DEF C1StateGunShopDoorOpen EQU $1e
DEF C1StateStanfordEntranceDoorOpen EQU $2d
DEF C1StateOfficeBuildingEntranceDoorOpen EQU $33

; Case I wStateBits IDs: office and estate approaches.
DEF C1StateAceOfficeStairsPassable EQU $35
DEF C1StateDoctorOfficeHallPassable EQU $37
DEF C1StateEstateApproachPassable EQU $39

; Case I wStateBits IDs: mansion doors and stairs.
DEF C1StateMansionKitchenDoorOpen EQU $3c
DEF C1StateMansionStairsPassable EQU $3d
DEF C1StateMansionMasterBedroomDoorOpen EQU $3e
DEF C1StateMansionGuestBedroomDoorOpen EQU $3f
DEF C1StateMansionBedroomLinkDoorOpen EQU $40
DEF C1StateMansionFrontDoorOpen EQU $49

; Case I wStateBits IDs: sewer ladders and tunnels.
DEF C1StateJoeStreetSewerLadderPassable EQU $41
DEF C1StateJoeAlleySewerLadderPassable EQU $42
DEF C1StateJoeStreetSewerJunctionPassable EQU $43
DEF C1StateRackSewerJunctionPassable EQU $44
DEF C1StateLiftToRackSewerPassable EQU $45
DEF C1StateDeepestSewerTunnelPassable EQU $46

; Case I wStateBits IDs: police station door.
DEF C1StatePoliceStationDoorOpen EQU $20

; Case I wStateBits IDs: lift sewer exit.
DEF C1DoorIdLiftSewerExit EQU $4c

; Case I scene IDs: native filter scenes.
DEF C1SceneCarTrunkClosed EQU $43
DEF C1SceneCarTrunkOpen EQU $44
DEF C1SceneAceOfficeDoorClosed EQU $73
DEF C1SceneAceOfficeDoorOpen EQU $74
DEF C1SceneMansionButlerKitchenClosed EQU $7a

; Case I scene IDs: native refresh scenes.
DEF C1SceneStartStallDoorClosed EQU $00
DEF C1SceneStartStallDoorOpen EQU $01
DEF C1SceneCellarRackPassageClosed EQU $12
DEF C1SceneCellarRackPassageOpen EQU $13
DEF C1SceneAlligatorEncounter EQU $8d
DEF C1SceneAlligatorShotView EQU $8e

; Case I scene IDs: washroom scene views.
DEF C1SceneStartWashroomHallDoorClosed EQU $02
DEF C1SceneStartWashroomHallDoorOpen EQU $03
DEF C1SceneWashroomHallBothDoorsClosed EQU $04
DEF C1SceneWashroomHallBarDoorOpen EQU $05
DEF C1SceneWashroomHallWomenDoorOpen EQU $06
DEF C1SceneWashroomHallBothDoorsOpen EQU $07
DEF C1SceneWomenWashroomBothDoorsClosed EQU $08
DEF C1SceneWomenWashroomStallDoorOpen EQU $09
DEF C1SceneWomenWashroomHallDoorOpen EQU $0a
DEF C1SceneWomenWashroomBothDoorsOpen EQU $0b
DEF C1SceneWomenStallLidClosed EQU $0c
DEF C1SceneWomenStallLidOpen EQU $0d

; Case I scene IDs: bar casino and lift views.
DEF C1SceneBarBothDoorsClosed EQU $0e
DEF C1SceneBarCellarDoorOpen EQU $0f
DEF C1SceneBarFrontDoorOpen EQU $10
DEF C1SceneBarBothDoorsOpen EQU $11
DEF C1SceneRackPassageRackOpen EQU $14
DEF C1SceneRackPassageBothDoorsOpen EQU $15
DEF C1SceneRackPassageBothDoorsClosed EQU $16
DEF C1SceneRackPassageCasinoDoorOpen EQU $17
DEF C1SceneCasinoDoorOpen EQU $18
DEF C1SceneCasinoDoorClosed EQU $19
DEF C1SceneCasinoLiftEntranceDoorClosed EQU $1a
DEF C1SceneCasinoLiftEntranceDoorOpen EQU $1b
DEF C1SceneCasinoLiftDoorOpen EQU $1c
DEF C1SceneCasinoElevatorClosed EQU $1d
DEF C1SceneTopFloorLiftDoorOpen EQU $1e
DEF C1SceneHiddenOfficeLiftDoorOpen EQU $1f
DEF C1SceneTopFloorRoomBothExitsClosed EQU $20
DEF C1SceneTopFloorRoomLiftDoorOpen EQU $21
DEF C1SceneTopFloorRoomWindowOpen EQU $22
DEF C1SceneTopFloorRoomBothExitsOpen EQU $23

; Case I scene IDs: office and fire escape views.
DEF C1SceneFireEscape3WindowClosed EQU $24
DEF C1SceneFireEscape3WindowOpen EQU $25
DEF C1SceneFireEscape2OfficeWindowClosed EQU $26
DEF C1SceneFireEscape2OfficeWindowOpen EQU $27
DEF C1SceneCorpseOfficeWindowAndSafeClosed EQU $28
DEF C1SceneCorpseOfficeWindowOpen EQU $29
DEF C1SceneCorpseOfficeSafeOpen EQU $2a
DEF C1SceneCorpseOfficeWindowAndSafeOpen EQU $2b
DEF C1SceneSecretaryOfficeDoorClosed EQU $2c
DEF C1SceneSecretaryOfficeDoorOpen EQU $2d
DEF C1SceneUpstairsHallSecretaryDoorClosed EQU $2e
DEF C1SceneUpstairsHallSecretaryDoorOpen EQU $2f

; Case I scene IDs: joe street view combinations.
DEF C1SceneJoeStreetAllClosed EQU $30
DEF C1SceneJoeStreetFrontDoorOpen EQU $33
DEF C1SceneJoeStreetManholeOpen EQU $34
DEF C1SceneJoeStreetFrontDoorManholeOpen EQU $3a
DEF C1SceneJoeStreetTrunkOpen EQU $32
DEF C1SceneJoeStreetFrontDoorTrunkOpen EQU $38
DEF C1SceneJoeStreetManholeTrunkOpen EQU $39
DEF C1SceneJoeStreetFrontDoorManholeTrunkOpen EQU $3e
DEF C1SceneJoeStreetCarDoorOpen EQU $31
DEF C1SceneJoeStreetFrontDoorCarDoorOpen EQU $36
DEF C1SceneJoeStreetManholeCarDoorOpen EQU $37
DEF C1SceneJoeStreetFrontDoorManholeCarDoorOpen EQU $3d
DEF C1SceneJoeStreetTrunkCarDoorOpen EQU $35
DEF C1SceneJoeStreetFrontDoorTrunkCarDoorOpen EQU $3b
DEF C1SceneJoeStreetManholeTrunkCarDoorOpen EQU $3c
DEF C1SceneJoeStreetFrontDoorManholeTrunkCarDoorOpen EQU $3f

; Case I scene IDs: street car and encounter views.
DEF C1SceneMuggerJoeStreet EQU $40
DEF C1SceneLuxuryCarDashboardClosed EQU $41
DEF C1SceneLuxuryCarDashboardOpen EQU $42
DEF C1SceneNewsstandStreet EQU $45
DEF C1SceneMuggerNewsstand EQU $46
DEF C1SceneGunShopFrontDoorClosed EQU $47
DEF C1SceneGunShopFrontDoorOpen EQU $48
DEF C1SceneMuggerGunShopStreet EQU $49
DEF C1SceneGunShopInterior EQU $4a
DEF C1ScenePeoriaBlueCabStop EQU $4b
DEF C1SceneMuggerPeoria EQU $4c
DEF C1ScenePeoriaYellowCabStop EQU $4d
DEF C1ScenePoliceDoorClosed EQU $4e
DEF C1ScenePoliceDoorOpen EQU $4f
DEF C1SceneConstructionPit EQU $50
DEF C1SceneJoeAlleyManholeClosed EQU $51
DEF C1SceneJoeAlleyManholeOpen EQU $52
DEF C1SceneBumEncounter EQU $53
DEF C1SceneRobbingMugger EQU $54
DEF C1SceneArmedWoman EQU $55
DEF C1SceneFallenWoman EQU $56

; Case I scene IDs: cab shared views.
DEF C1SceneBlueCabInterior EQU $58
DEF C1SceneYellowCabInterior EQU $5a

; Case I scene IDs: exterior cab and door views.
DEF C1SceneStanfordFrontBlueCabDoorClosed EQU $5c
DEF C1SceneStanfordFrontBlueCabDoorOpen EQU $5d
DEF C1SceneStanfordFrontYellowCabDoorClosed EQU $5e
DEF C1SceneStanfordFrontYellowCabDoorOpen EQU $5f
DEF C1SceneBungalowFrontBlueCabDoorClosed EQU $66
DEF C1SceneBungalowFrontBlueCabDoorOpen EQU $67
DEF C1SceneBungalowFrontYellowCabDoorClosed EQU $68
DEF C1SceneBungalowFrontYellowCabDoorOpen EQU $69
DEF C1SceneOfficeBuildingFrontBlueCabDoorClosed EQU $6b
DEF C1SceneOfficeBuildingFrontBlueCabDoorOpen EQU $6c
DEF C1SceneOfficeBuildingFrontYellowCabDoorClosed EQU $6d
DEF C1SceneOfficeBuildingFrontYellowCabDoorOpen EQU $6e
DEF C1SceneEstateFrontBlueCab EQU $77
DEF C1SceneEstateFrontYellowCab EQU $78

; Case I scene IDs: building interior views.
DEF C1SceneStanfordLobbyElevatorDoorClosed EQU $60
DEF C1SceneStanfordLobbyElevatorDoorOpen EQU $61
DEF C1SceneStanfordElevatorClosed EQU $62
DEF C1SceneStanfordLiftAtLobbyOpen EQU $63
DEF C1SceneStanfordLiftAtPenthouseOpen EQU $64
DEF C1SceneStanfordPenthouseInterior EQU $65
DEF C1SceneBungalowInterior EQU $6a
DEF C1SceneOfficeBuildingLobby EQU $6f
DEF C1SceneDoctorEntranceDoorClosed EQU $70
DEF C1SceneDoctorEntranceDoorOpen EQU $71
DEF C1SceneDoctorOfficeInterior EQU $72
DEF C1SceneAceOfficeNoGunman EQU $75
DEF C1SceneAceOfficeGunmanVisible EQU $76
DEF C1SceneMansionFrontDoor EQU $79

; Case I scene IDs: mansion interior views.
DEF C1SceneMansionVestibuleKitchenOpenNoButler EQU $7c
DEF C1SceneMansionKitchen EQU $7d
DEF C1SceneMansionUpperHallBothDoorsClosed EQU $7e
DEF C1SceneMansionUpperHallMasterDoorOpen EQU $7f
DEF C1SceneMansionUpperHallGuestDoorOpen EQU $80
DEF C1SceneMansionUpperHallBothDoorsOpen EQU $81
DEF C1SceneMasterBedroomLinkDoorClosed EQU $82
DEF C1SceneMasterBedroomLinkDoorOpen EQU $83
DEF C1SceneGuestBedroomLinkDoorClosed EQU $84
DEF C1SceneGuestBedroomLinkDoorOpen EQU $85

; Case I scene IDs: sewer scene views.
DEF C1SceneLiftSewer EQU $86
DEF C1SceneSewerJunction EQU $87
DEF C1SceneRackLadderSewer EQU $88
DEF C1SceneJoeStreetLowerSewer EQU $89
DEF C1SceneDeepestSewer EQU $8a
DEF C1SceneUpperSewerManholeClosed EQU $8b
DEF C1SceneUpperSewerManholeOpen EQU $8c

; Case I cinematic-effect IDs: slots and impacts.
DEF C1FxIdSlots EQU $00
DEF C1FxIdImpact EQU $06
DEF C1FxIdGunshot EQU $07
DEF C1FxIdExplosion EQU $08

; Case I cinematic-effect IDs: endings and armed woman.
DEF C1FxIdArrest EQU $14
DEF C1FxIdDefeat EQU $15
DEF C1FxIdArmedWomanFires EQU $16
DEF C1FxIdCaseSolved EQU $17

; Case I cinematic-effect IDs: object views and memories.
DEF C1FxIdDogMemory EQU $01
DEF C1FxIdMotherMemory EQU $02
DEF C1FxIdPriestMemory EQU $03
DEF C1FxIdSuzyMemory EQU $04
DEF C1FxIdMirrorReflection EQU $05
DEF C1FxIdSnapshot EQU $09
DEF C1FxIdPosterUncertain EQU $0a
DEF C1FxIdPosterRecognized EQU $0b
DEF C1FxIdHeadacheUpstairs EQU $18
DEF C1FxIdHeadacheOffice EQU $19
DEF C1FxIdRubberDuckMemory EQU $1a

; Case I cinematic-effect IDs: encounter views.
DEF C1FxIdRobbingMugger EQU $0c
DEF C1FxIdArmedWomanEncounter EQU $0d
DEF C1FxIdAlligatorEncounter EQU $0e
DEF C1FxIdBumEncounter EQU $0f
DEF C1FxIdMuggerJoeStreet EQU $10
DEF C1FxIdMuggerNewsstand EQU $11
DEF C1FxIdMuggerGunShopStreet EQU $12
DEF C1FxIdMuggerPeoria EQU $13

; Case I cinematic scenes; hitman variants share BG graphics but load different OBJ graphics.
DEF C1SceneArmedWomanPortrait EQU $57
DEF C1SceneHitman EQU $8f
DEF C1SceneAceClearedNewspaper EQU $90
DEF C1SceneAceInvestigationCertificate EQU $91
DEF C1SceneHandcuffs EQU $92
DEF C1SceneAceGrave EQU $93
DEF C1SceneSocko EQU $94
DEF C1SceneBlam EQU $95
DEF C1SceneBoom EQU $96
DEF C1SceneSlotMachine EQU $97
DEF C1SceneHitmanAlt EQU $98

; Case I scene IDs: mansion shared vestibule.
DEF C1SceneMansionVestibuleShared EQU $7b

; Case I source-rendered cab driver variants; no stored scene-source reference was found.
DEF C1SceneBlueCabDriverTurned EQU $59
DEF C1SceneYellowCabDriverTurned EQU $5b

; Case I cinematic object/animation indices; names apply to the effect table.
; SkipSprite still enters the original position lookup before the later sprite guard.
DEF C1FxObjectDogMemory EQU $0b
DEF C1FxObjectBoxerPortrait EQU $0c
DEF C1FxObjectMotherMemory EQU $0d
DEF C1FxObjectPriestMemory EQU $0e
DEF C1FxObjectSuzyMemory EQU $0f
DEF C1FxObjectSnapshotPortrait EQU $10
DEF C1FxObjectQuestionMark EQU $11
DEF C1FxObjectAcePortrait EQU $12
DEF C1FxObjectSkipSprite EQU $ff

; Case I effect-table message IDs; each stored row separately selects its text family.
DEF C1FxMsgDogMemory EQU $95
DEF C1FxMsgMotherMemory EQU $83
DEF C1FxMsgPriestMemory EQU $bb
DEF C1FxMsgSuzyMemory EQU $96
DEF C1FxMsgMirrorReflection EQU $1f
DEF C1FxMsgPosterUncertain EQU $a7
DEF C1FxMsgPosterRecognized EQU $a8
DEF C1FxMsgCaseSolved EQU $f9
DEF C1FxMsgHeadacheUpstairs EQU $15
DEF C1FxMsgHeadacheOffice EQU $1c
DEF C1FxMsgRubberDuckMemory EQU $2f

; Case I native effect text IDs; direct ShowText calls retain their original family.
DEF C1FxMsgSnapshotDefault EQU $0a
DEF C1FxMsgSnapshotSternwood EQU $32
DEF C1FxMsgSnapshotEnoughSeen EQU $fc
DEF C1FxMsgCaseSolvedClosing EQU $dd

; Case II scene IDs: vegas hotel.
DEF C2SceneVegasBath EQU $00
DEF C2SceneVegasBedroom EQU $01
DEF C2SceneVegasCasinoHall EQU $02
DEF C2SceneVegasLobby EQU $03
DEF C2SceneVegasCashier EQU $04
DEF C2SceneVegasBlackjack EQU $05
DEF C2SceneVegasElevator EQU $07
DEF C2SceneVegasSecondFloorHall EQU $08
DEF C2SceneVegasThirdFloorHall EQU $09
DEF C2SceneVegasFourthFloorHall EQU $0a
DEF C2SceneVentiniOffice EQU $0b
DEF C2SceneMaloneOffice EQU $0c
DEF C2SceneLaundryHamper EQU $33

; Case II scene IDs: stations and trains.
DEF C2SceneVegasStationFront EQU $11
DEF C2SceneVegasWaitingHall EQU $12
DEF C2SceneVegasLuggageClaim EQU $13
DEF C2SceneVegasPlatformNoTrain EQU $14
DEF C2SceneVegasPlatformTrain EQU $15
DEF C2SceneTrainPassengerCarA EQU $16
DEF C2SceneTrainPassengerCarB EQU $18
DEF C2SceneChicagoPlatformNoTrain EQU $1a
DEF C2SceneChicagoPlatformTrain EQU $1b
DEF C2SceneChicagoWaitingHall EQU $1c
DEF C2SceneChicagoStationFront EQU $1d

; Case II scene IDs: chicago residences and morgue.
DEF C2SceneCabInterior EQU $1e
DEF C2SceneAdisonApartmentFront EQU $1f
DEF C2SceneAdisonHallway EQU $20
DEF C2SceneAdisonApartment EQU $21
DEF C2ScenePoliceStationFront EQU $2d
DEF C2SceneSugarApartmentFront EQU $2e
DEF C2SceneSugarApartment EQU $2f
DEF C2SceneMorgueFront EQU $30
DEF C2SceneMorgueReception EQU $31
DEF C2SceneMorgueColdRoom EQU $32

; Case II scene IDs: joe building.
DEF C2SceneJoeFront EQU $22
DEF C2SceneJoeAlley EQU $23
DEF C2SceneJoeRearHallway EQU $24
DEF C2SceneJoeBar EQU $25
DEF C2SceneJoeCellar EQU $26
DEF C2SceneJoeChamber EQU $27
DEF C2SceneJoeCasino EQU $28
DEF C2SceneJoeFireEscape EQU $29
DEF C2SceneJoeOffice EQU $2a
DEF C2SceneJoeUpstairsHallway EQU $2b
DEF C2SceneJoeRearAlley EQU $2c

; Case II scene IDs: laundry and offices.
DEF C2SceneLaundry EQU $35
DEF C2SceneCleanersHallway EQU $36
DEF C2SceneOuterOffice EQU $37
DEF C2SceneSecretOffice EQU $38

; Case II scene IDs: desert and existing exteriors.
DEF C2SceneDesertPalms EQU $0e
DEF C2SceneDesertShrubs EQU $0f
DEF C2SceneDesertTree EQU $10

; Case II backdrop reused by portrait effects.
DEF C2SceneHitman EQU $39

; Shared UI table indices used by blackjack; separate from scene IDs.
DEF UiGfxIdBlackjackCardsLow EQU $06
DEF UiGfxIdBlackjackCardsHigh EQU $07
DEF UiMapIdBlackjackTable EQU $05

; UI boot/title map indices; publisher logo index seven exists only in the US table.
DEF UiMapIdCopyrightNotice EQU $00
DEF UiMapIdTitle EQU $01
DEF UiMapIdDeveloperLogo EQU $04
DEF UiMapIdPublisherLogo EQU $07

; UI graphics indices: title boot and save.
; Publisher-logo low tiles use US-only table index ten.
DEF UiGfxIdSaveScreenLow EQU $00
DEF UiGfxIdSaveScreenHigh EQU $01
DEF UiGfxIdTitleLow EQU $02
DEF UiGfxIdTitleHigh EQU $03
DEF UiGfxIdDeveloperLogoLow EQU $04
DEF UiGfxIdBootTextHigh EQU $05
DEF UiGfxIdPublisherLogoLow EQU $0a

; Shared UI save, gameplay HUD and blank-text map indices.
DEF UiMapIdSaveSelection EQU $02
DEF UiMapIdGameHud EQU $03
DEF UiMapIdBlankTextPanel EQU $06

; UI graphics indices: auxiliary displays.
DEF UiGfxIdAuxLow EQU $08
DEF UiGfxIdAuxHigh EQU $09

; UiPalRefs indices staged as OBJ palettes by the observed UI callers.
DEF UiPalIdCommonObjects EQU $02
DEF UiPalIdCase1ClosingObjects EQU $06

; Paired tile/attribute map format bytes accepted by ReadBgMap.
DEF MapFormatRlePair EQU $17
DEF MapFormatRawPair EQU $18

; Observed single-plane map format and monochrome boot/display operands.
; LCDC $c1 leaves the window off while selecting its unused $9c00 map.
DEF MapFormatRleSingle EQU $20
DEF BootColorStartupByte EQU $11
DEF MonoFallbackRomBank EQU $09
DEF MonoFallbackBgPalette EQU $e4
DEF MonoFallbackLcdControl EQU $c1

; Base LZ format bytes; bit 0 selects signed BG tile addressing.
; UI/monochrome headers retain their accepted bit-4 variant as + $10.
DEF GfxFormatLzUnsigned EQU $0c
DEF GfxFormatLzSigned EQU $0d

; UI resource/palette banks and the complete eight-palette copy length.
DEF UiResourceRomBank EQU $09
DEF UiPaletteRomBank EQU $0a
DEF UiPaletteByteCount EQU $40

; FadeCalls indices and the wait after each changing palette step.
DEF FadeModeAllToStaged EQU $00
DEF FadeModeAllToWhite EQU $01
DEF FadeModeBgToStaged EQU $02
DEF FadeStepDelayFrames EQU $04

; One palette set contains eight palettes of four RGB555 colors (two bytes each).
DEF PaletteSetColorCount EQU $20
DEF PalettePairColorCount EQU $40
DEF PaletteSetByteCount EQU $40
DEF PalettePairByteCount EQU $80
DEF Rgb555ComponentMax EQU $1f
DEF Rgb555White EQU $7fff

; Map queue entry fields; these bit positions are separate from hVideoFlags.
; Submission threshold is checked after a row; it is not a preflight capacity bound.
DEF MapQueueAttrBit EQU $06
DEF MapQueueColumnBit EQU $07
DEF MapQueueAttrFlag EQU $40
DEF MapQueueEntryHeaderBytes EQU $03
DEF MapQueueSubmitThreshold EQU $80

; Blackjack hand slots; playable card limit is exclusive and separate from slot indices.
DEF BJDealerFirstSlot EQU $00
DEF BJDealerSecondSlot EQU $01
DEF BJPlayerFirstSlot EQU $06
DEF BJPlayerSecondSlot EQU $07
DEF BJDealerFirstExtraSlot EQU $02
DEF BJPlayerFirstExtraSlot EQU $08
DEF BJLastHandSlot EQU $0b
DEF BJHandSlotCount EQU $0c
DEF BJPlayableCardLimit EQU $35

; Case-dependent font/HUD and persistent base-object graphics banks.
DEF C1FontHudRomBank EQU $33
DEF C2FontHudRomBank EQU $2a
DEF C1BaseObjGfxRomBank EQU $3f
DEF C2BaseObjGfxRomBank EQU $32

; Japanese two-tile glyph parameters; upper marks use the existing charmap readings.
DEF JpBlankGlyphTile EQU $7f
DEF JpDakutenGlyphTile EQU $90
DEF JpHandakutenGlyphTile EQU $a0
DEF JpDakutenLowerOffset EQU $80
DEF JpHandakutenLowerOffset EQU $70
DEF JpDirectGlyphLimit EQU $10

; Message-loop control bytes; regional names do not change glyph or name-record codes.
DEF UsTextCtrlWaitEnd EQU $5f
DEF UsTextCtrlEnd EQU $1f
DEF UsTextCtrlWaitPage EQU $1b
DEF UsTextCtrlPage EQU $1c
DEF UsTextCtrlLine EQU $1d
DEF UsTextCtrlName EQU $3c
DEF UsTextCtrlNameAlt EQU $3d
DEF UsTextCtrlNameIndirect EQU $3e
DEF UsTextCtrlNum8 EQU $3f
DEF UsTextCtrlNum16 EQU $54
DEF UsTextCtrlSetX EQU $50
DEF UsTextCtrlSetY EQU $51
DEF UsTextCtrlMap0 EQU $52
DEF UsTextCtrlMap1 EQU $53
DEF UsTextCtrlSetFlag7 EQU $55
DEF JpTextCtrlEnd EQU $ff
DEF JpTextCtrlWaitEnd EQU $0f
DEF JpTextGlyphMin EQU $30
DEF JpTextControlTableLimit EQU $20

; Text row/scroll units; regional clear sizes retain the original 144/288-byte ranges.
DEF TextBufferRowTiles EQU $12
DEF TextWindowDefaultTileRows EQU $08
DEF TextScrollCopyBytes EQU $7e
DEF TextBufferBlankTile EQU $7f
DEF UsTextBufferClearBytes EQU $90
DEF JpTextBufferClearBytes EQU $120

; Single-row US/JP-ASCII glyph selection; retain the original direct threshold.
DEF SingleRowGlyphDirectMin EQU $d0
DEF TextModeGlyphAttributesBit EQU $06
DEF TextModeGlyphAltPaletteBit EQU $07
DEF TextGlyphDefaultAttribute EQU $07
DEF TextGlyphAlternateAttribute EQU $06

; Text coordinate mode, independent map base bit and original byte-wrap operands.
DEF TextModeDirectCoordinatesFlag EQU $02
DEF TextModeWindowMapBit EQU $00
DEF TextMapRowWrapValue EQU $20
DEF TextMapColumnHighBits EQU $e0

; Audio test selection limit, timing, ROM bank and two-digit BG parameters.
DEF AudioTestLastIndex EQU $11
DEF AudioTestDelayTicks EQU $10
DEF AudioTestDecimalBase EQU $0a
DEF AudioTestRomBank EQU $02
DEF AudioTestDigitAttribute EQU $06
DEF AudioTestTensMapAddress EQU $9909
DEF AudioTestOnesMapAddress EQU $990a

; Save-menu audio-test held masks; new-press actions are dispatched before these stages.
DEF SaveAudioCodeBRightMask EQU $12
DEF SaveAudioCodeBLeftMask EQU $22
DEF SaveAudioCodeBDownMask EQU $82
DEF SaveAudioCodeBUpMask EQU $42
DEF SaveAudioCodeRejectBeforeLeft EQU $cd
DEF SaveAudioCodeRejectBeforeDown EQU $5d
DEF SaveAudioCodeRejectBeforeUp EQU $3d

; Case II physical container IDs; names and packed values use their own bases.
DEF C2ItemApartmentDrawer EQU $0b
DEF C2ItemMoldyBox EQU $0e
DEF C2ItemMorgueBox2 EQU $13
DEF C2ItemSoapBox EQU $15

; Case II apartment physical item IDs; packed values use the $80 prefix.
DEF C2ItemSpareCoat EQU $08
DEF C2ItemFlashlight EQU $0a

; Case II type-four suitcase physical ID; packed values and names use separate bases.
DEF C2ItemSuitcase EQU $04

; Case II claim-area suitcase visibility; item attributes and taken flag remain separate.
DEF C2VisIdClaimSuitcaseClosed EQU $1d
DEF C2VisIdClaimSuitcaseOpen EQU $21

; Case II visibility IDs shared by passenger-car views; not indexed by train number.
DEF C2VisIdTrainConductor EQU $a8
DEF C2VisIdTrainChattyWoman EQU $a9
DEF C2VisIdTrainSeatMan EQU $aa
DEF C2VisIdTrainYoungWoman EQU $ab
DEF C2VisIdTrainShade EQU $ac
DEF C2VisIdTrainWindow EQU $ad
DEF C2VisIdTrainDestinationAndDoor EQU $ae
DEF C2VisIdTrainPassage EQU $af
DEF C2VisIdTrainSeats EQU $b0

; Case II visibility IDs exchanged by opening and closing the Vegas hamper lid.
DEF C2VisIdVegasHamperClosed EQU $82
DEF C2VisIdVegasHamperOpen EQU $83

; Case II wObjVisible bit IDs for the binding rope and tied-hands targets.
DEF C2VisIdBindingRope EQU $9d
DEF C2VisIdTiedHands EQU $9e

; Shared object flag: clear an automatically selected action after primary action completion.
DEF AutoActionResetPending EQU $00bf

; Ordinary menu indices in wSelAction; wActionCode uses per-class pointer slots.
DEF SelActionLook EQU $00
DEF SelActionOpen EQU $01
DEF SelActionUse EQU $02
DEF SelActionPut EQU $03
DEF SelActionTake EQU $04
DEF SelActionClose EQU $05
DEF SelActionHit EQU $06
DEF SelActionTalk EQU $07
DEF SelActionMove EQU $08

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

; Decimal split/clear counts and regional OR bits used to emit digit glyphs.
DEF TextNum16ProcessedPlaces EQU $04
DEF TextNumDigitBufferBytes EQU $05
DEF UsTextDigitGlyphBits EQU $30
DEF JpTextDigitGlyphBits EQU $80

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

; Live Case II failure-event latch outside the saved payload; cleared after recovery.
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

; Confirmation answer shares wInputMode and the save availability byte at $c875.
; Erase confirmation rescans all slots before redrawing the overwritten bitmap.
DEF wSaveAnswer        EQU $c875
DEF wSaveMenuRow       EQU $c884

; UI names share storage with wSavedCase, wSaveMask and hSaveIndex; no handoff copy.
; Initial UI entry clears case bytes; later scans retain them for rejected slots.
DEF wSaveCases         EQU $c5dc
DEF wSaveBits          EQU $c876
DEF wSaveSlotsMask     EQU $c875
DEF hSaveSlot          EQU $ffad

; Zero starts a new case; $ff starts a loaded saved game.
DEF wSaveStart         EQU $c8e8

; Shared menu-start and view-resume marker values; predicates remain independent.
DEF CaseStartNewMarker    EQU $00
DEF CaseStartLoadedMarker EQU $ff
DEF CaseViewReadyMarker   EQU $fe

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

; Packed-list transforms; encoding and name sentinels retain separate roles.
DEF ListDecodedRawItemType EQU $03
DEF ListPackedValueMask EQU $1f
DEF ListUnencodablePrefix EQU $ff
DEF ListUnavailableNameBase EQU $ff

; Stored-list search group and byte offsets; row rollover uses regional page rows.
DEF ListSearchFirstGroup EQU $02
DEF UsListSearchStartOffset EQU $0e
DEF JpListSearchStartOffset EQU $10
DEF UsListSearchEndOffset EQU $54
DEF JpListSearchEndOffset EQU $58

; List deletion byte-counter endpoints; full and head paths retain equality-before-copy.
DEF UsListDropFullEndOffset EQU $54
DEF JpListDropFullEndOffset EQU $58
DEF UsListDropHeadEndOffset EQU $0e
DEF JpListDropHeadEndOffset EQU $10

; Pending removal: selected byte-offset bound and shared source-address low byte.
DEF PendingSelectedShiftEndOffset EQU $0a
DEF PendingSharedShiftSourceEndLow EQU $32

; Ordinary selected keep accepts FF before testing this full last-index cutoff.
DEF PendingKeepFullLastIndex EQU $03

; Pending flush scans four pairs and clears both index bytes plus those pairs.
DEF PendingFlushEndOffset EQU $08
DEF PendingFlushClearBytes EQU $0a

; MaskGroup retains header bits 0 and 4.
DEF GroupHeaderRetainedBits EQU $11

; Change-list pointer-table kinds; unavailable kinds return on bit 7.
DEF ChangeListKindProp1 EQU $00
DEF ChangeListKindProp4 EQU $01
DEF ChangeListKindGroup EQU $02
DEF ChangeListKindUnavailable EQU $ff

; Work-list scan/clear and case-specific group-store lengths.
DEF WorkListInputBytes EQU $06
DEF UsWorkListClearBytes EQU $07
DEF JpWorkListClearBytes EQU $08
DEF C1GroupStoreBytes EQU $07
DEF C2GroupStoreBytes EQU $06

; Quick-list prefix length, requested feedback ticks and exact selected-list wait skip.
DEF ListQuickSlots EQU $05
DEF ListFeedbackWaitTicks EQU $3c
DEF ListWaitSkipEnabled EQU $01

; List end row indices and capacity group limits; row counts remain separate.
DEF UsListLastRowIndex EQU $06
DEF JpListLastRowIndex EQU $07
DEF UsListFullGroupLimit EQU $0c
DEF JpListFullGroupLimit EQU $0b

; Independent list row counts, group-copy length and Case II base-name adjustment.
DEF UsListPageRows EQU $07
DEF JpListPageRows EQU $08
DEF ListGroupCopyBytes EQU $07
DEF C2ListBaseNameOffset EQU $20

; Case II list label selectors and the five numeric name IDs.
DEF C2ListMarkCash EQU $02
DEF C2ListMarkQuarters EQU $03
DEF C2ListMarkBullets EQU $04
DEF C2ListMarkCells EQU $05
DEF C2ListMarkChips EQU $06
DEF C2ListNumericNameCount EQU $05

; Case I display name IDs for the seven packed-list category groups.
DEF C1ListNameBullet1 EQU $08
DEF C1ListNameBullet2 EQU $2d
DEF C1ListNameTwentyDollarBill EQU $07
DEF C1ListNameMeds1 EQU $28
DEF C1ListNameMeds2 EQU $29
DEF C1ListNameMeds4 EQU $33
DEF C1ListNameMeds6 EQU $35

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

; Coin pickup amount shown by Case I indirect text; initialized to seven.
DEF wC1CoinQty EQU $c55f

; Bullet pickup amount shown by Case I indirect text; initialized to six.
DEF wC1AmmoQty EQU $c560

; Case I initial coin pickup and its two displayed quantities.
DEF C1CoinPickupAmount EQU $07

; Case I reserve-pickup amounts; the case quantity also seeds its text counter.
DEF C1BulletPickupOne EQU $01
DEF C1AmmoCaseRounds EQU $06

; Case I loaded-round limit shared by all three gun counters.
DEF C1LoadedAmmoLimit EQU $06

; Loaded ammunition for .38 in US; pistol 1 in JP; capped at six.
DEF wGun1Ammo EQU $c55c

; Loaded ammunition for HANDGUN in US; pistol 2 in JP; capped at six.
DEF wGun2Ammo EQU $c55d

; Loaded ammunition for LUGER in US; pistol 3 in JP; capped at six.
DEF wGun3Ammo EQU $c55e

; Case I coin inventory, type-3 item zero; byte arithmetic and slot prizes share it.
DEF wC1Coins EQU $c53a

; Case II remaining ROM content items; packed containers retain their $80 prefix.
; Photo4C and the button-like magnet $42 keep separate identities from $18 and $17.
DEF C2ItemHardingLicense EQU $0c
DEF C2ItemSugarCard EQU $30
DEF C2ItemMagnet EQU $42
DEF C2ItemPhoto4C EQU $4c
DEF C2ListItemWallet1 EQU $82
DEF C2ListItemNewspaper1 EQU $83
DEF C2ListItemBulletBox EQU $8c
DEF C2ListItemVacuumBag EQU $91
DEF C2ListItemEnvelope3 EQU $92
DEF C2ListItemWallet2 EQU $94
DEF C2ListItemBox3 EQU $96

; Case I ROM content IDs; packed type-four values use $60, not the physical raw ID.
; BULLET1 values $08/$43/$49 and bills $07/$54 retain separate item identities.
DEF C1ItemSunglasses EQU $04
DEF C1ItemBullet1 EQU $08
DEF C1ItemKey2 EQU $0b
DEF C1ItemPencil EQU $0c
DEF C1ItemKey3 EQU $0d
DEF C1ItemKey4 EQU $0f
DEF C1ItemCosmetic EQU $14
DEF C1ItemKey5 EQU $15
DEF C1ItemSugar EQU $1f
DEF C1ItemFlour EQU $20
DEF C1ItemBallPen EQU $25
DEF C1ItemGlasses EQU $26
DEF C1ItemBullet2 EQU $2d
DEF C1ItemGun2Bullet EQU $43
DEF C1ItemAmmoCaseBullets EQU $49
DEF C1ListItemWallet EQU $61
DEF C1ListItemFolder EQU $63
DEF C1ListItemBox EQU $64
DEF C1ListItemEnvelope1 EQU $65
DEF C1ListItemGun2 EQU $67
DEF C1ListItemDiary EQU $68
DEF C1ListItemAmmoCase EQU $69
DEF C1ListItemEnvelope2 EQU $6a
DEF C1ListItemEnvelope3 EQU $6d
DEF C1ListItemCandyBox EQU $6e

; Case II raw type-three items and packed type-four containers in the put allowlist.
; Box0F retains its raw-ID suffix; its description target is shared with the trench.
DEF C2ItemBoxingClipping EQU $07
DEF C2ItemEmptyPack EQU $0d
DEF C2ItemVinnyLetter EQU $1d
DEF C2ItemPencil EQU $31
DEF C2ItemBondwellLicense EQU $3e
DEF C2ItemCompanyList EQU $4e
DEF C2ListItemEnvelope2 EQU $87
DEF C2ListItemLunchBox EQU $8d
DEF C2ListItemMoldyBox EQU $8e
DEF C2ListItemBox0F EQU $8f
DEF C2ListItemPaperBag EQU $97

; Case II packed type-four laundry values; raw IDs are $05 and $15.
DEF C2ListItemDirtyLinens EQU $85
DEF C2ListItemSoapBox EQU $95

; Case II raw type-three laundry and detergent IDs.
DEF C2ItemSugarLaundry EQU $38
DEF C2ItemDetergent EQU $40

; Case II raw type-three clothing IDs; C2Uniform marks the uniform being worn.
DEF C2ItemDress EQU $37
DEF C2ItemPoliceUniform EQU $3a

; Case II raw type-three food IDs; content-owner and visibility IDs are separate.
DEF C2ItemPekingDuck EQU $2e
DEF C2ItemSandwich EQU $4a

; Case II raw type-three counted item IDs; equal-text suffixes distinguish stored IDs.
; Coin 54 retains the cash-ten category; categories and derived IDs are separate.
DEF C2ItemTenDollars1 EQU $09
DEF C2ItemOneDollar1 EQU $0a
DEF C2ItemOneDollar2 EQU $0b
DEF C2ItemTenDollars2 EQU $20
DEF C2ItemTenDollars3 EQU $3d
DEF C2ItemCoin EQU $54
DEF C2ItemQuarter1 EQU $08
DEF C2ItemQuarter2 EQU $21
DEF C2ItemQuarter3 EQU $22
DEF C2ItemBullet1 EQU $26
DEF C2ItemBullet2 EQU $27
DEF C2ItemBullet3 EQU $28
DEF C2ItemBullet4 EQU $29
DEF C2ItemBullet5 EQU $2a
DEF C2ItemBullet6 EQU $2b
DEF C2ItemBattery EQU $23

; Raw type-three chamber entries in stored scan order; their first bitmap flag is set when empty.
DEF C2ChamberRound1 EQU $55
DEF C2ChamberRound2 EQU $56
DEF C2ChamberRound3 EQU $57
DEF C2ChamberRound4 EQU $58
DEF C2ChamberRound5 EQU $59
DEF C2ChamberRound6 EQU $5a

; Case II aggregate list/flag IDs; separate from loose counted IDs and category IDs.
DEF C2ListItemCash EQU $00
DEF C2ListItemQuarters EQU $01
DEF C2ListItemBullets EQU $02
DEF C2ListItemCells EQU $03
DEF C2ListItemChips EQU $04

; Shared chip/cash availability threshold and the separately gated desert cash event.
DEF C2FundsMinimumCash EQU $05
DEF DesertCashGift EQU $0a
DEF DesertCashRandomMask EQU $07
DEF DesertCashRandomCutoff EQU $06

; Counted-item categories; ten dollars and one dollar both derive item flag zero.
DEF C2ItemKindTenDollars EQU $00
DEF C2ItemKindOneDollar EQU $01
DEF C2ItemKindQuarter EQU $02
DEF C2ItemKindBullet EQU $03
DEF C2ItemKindCell EQU $04

; Case II cash in dollars; a little-endian word.
DEF wC2Cash EQU $c58a

; Case II 25-cent coin quantity; shares storage with Case I coins.
DEF wC2Quarters EQU $c53a

; Case II spare bullet count; loading decrements it, while firing changes chamber flags only.
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

; Latched Case II event mask: desert death.
DEF EvtHeat EQU $01

; Latched Case II event mask: goons return.
DEF EvtGoons EQU $02

; Latched Case II event mask: recapture.
DEF EvtHunt EQU $04

; Latched Case II event mask: casino guard attack.
DEF EvtGuard EQU $08

; Latched Case II event mask: final Stogie visit.
DEF EvtDebt EQU $10

; Latched Case II event mask: ending sequence.
DEF EvtEnd EQU $20

; Latched Case II event mask: flashlight expiry.
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

; Train fade live-buffer spans, requested wait ticks and pointer-table byte offsets.
DEF TrainFadeBgCopyBytes EQU $0038
DEF TrainFadeObjCopyBytes EQU $0008
DEF TrainFadeWaitTicks EQU $001e
DEF TrainFadeInFirstPointerOffset EQU $0002
DEF TrainFadeOutFirstPointerOffset EQU $0006
DEF TrainFadeInEndPointerOffset EQU $000a

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

; Case II Lucky Dice hotel bathroom.
DEF RoomVegasBath EQU $00

; Case II Lucky Dice hotel bedroom.
DEF RoomVegasBedroom EQU $01

; Case II Lucky Dice hotel first-floor hallway.
DEF RoomVegasHall1 EQU $02

; Case II Lucky Dice hotel lobby.
DEF RoomVegasLobby EQU $03

; Case II Lucky Dice casino cashier area.
DEF RoomVegasCashier EQU $04

; Case II Lucky Dice casino blackjack table.
DEF RoomVegasBlackjack EQU $05

; Case II Lucky Dice hotel second-floor hallway.
DEF RoomVegasHall2 EQU $0b

; Case II Lucky Dice hotel fourth-floor hallway.
DEF RoomVegasHall4 EQU $0e

; Case II Danny Ventini office on the Lucky Dice hotel fourth floor.
DEF RoomVegasVentiniOffice EQU $0f

; Case II Anthony Malone office on the Lucky Dice hotel fourth floor.
DEF RoomVegasMaloneOffice EQU $10

; Case II Las Vegas station lobby.
DEF RoomVegasStationLobby EQU $15

; Case II Las Vegas station luggage claim.
DEF RoomVegasLuggageClaim EQU $16

; Case II Las Vegas station platform six.
DEF RoomVegasPlatform6 EQU $17

; Case II Las Vegas station platform 7.
DEF RoomVegasPlatform7 EQU $18

; Case II Las Vegas station platform 8.
DEF RoomVegasPlatform8 EQU $19

; Case II Las Vegas station platform 9.
DEF RoomVegasPlatform9 EQU $1a

; Case II Chicago station lobby.
DEF RoomChicagoStationLobby EQU $2b

; Case II Chicago station platform two.
DEF RoomChicagoPlatform2 EQU $2c

; Case II Chicago station platform 3.
DEF RoomChicagoPlatform3 EQU $2d

; Case II Chicago station platform 4.
DEF RoomChicagoPlatform4 EQU $2e

; Case II Chicago station platform 5.
DEF RoomChicagoPlatform5 EQU $2f

; Case II street outside Chicago station; adjacent cab interior is $31.
DEF RoomChicagoStationFront EQU $30

; Case II street in front of Ace's apartment at the Adison cab stop.
DEF RoomAdisonApartmentFront EQU $32

; Case II hallway outside Ace's apartment at Adison.
DEF RoomAdisonHallway EQU $33

; Case II Ace's apartment interior at Adison.
DEF RoomAdisonApartment EQU $34

; Case II street in front of Joe's Place at the Peoria cab stop.
DEF RoomJoeFront EQU $35

; Case II street-connected alley at Joe's Place; rear alley is $39.
DEF RoomJoeAlley EQU $36

; Case II fire escape at Joe's Place.
DEF RoomJoeFireEscape EQU $37

; Case II office at Joe's Place.
DEF RoomJoeOffice EQU $38

; Case II alley immediately behind Joe's Place.
DEF RoomJoeRearAlley EQU $39

; Case II narrow hallway inside the rear entrance of Joe's Place.
DEF RoomJoeRearHallway EQU $3a

; Case II bar interior at Joe's Place.
DEF RoomJoeBar EQU $3b

; Case II cellar at Joe's Place.
DEF RoomJoeCellar EQU $3c

; Case II small chamber behind the wine shelves at Joe's Place.
DEF RoomJoeChamber EQU $3d

; Case II hidden casino at Joe's Place.
DEF RoomJoeCasino EQU $3e

; Case II upstairs hallway at Joe's Place.
DEF RoomJoeUpstairsHallway EQU $3f

; Case II street in front of the police station near Joe's Place.
DEF RoomPoliceStationFront EQU $40

; Case II street in front of Sugar's apartment at the Cottage cab stop.
DEF RoomSugarApartmentFront EQU $41

; Case II Sugar's apartment interior.
DEF RoomSugarApartment EQU $42

; Case II street in front of the city morgue.
DEF RoomMorgueFront EQU $43

; Case II city morgue reception.
DEF RoomMorgueReception EQU $44

; Case II cold room behind morgue reception.
DEF RoomMorgueColdRoom EQU $45

; Case II Reliant Cleaners hallway.
DEF RoomCleanersHallway EQU $48

; Case II desert cell above track area A in the native grid.
DEF RoomDesertAboveTracksA EQU $70

; Case II desert cell above track area B in the native grid.
DEF RoomDesertAboveTracksB EQU $71

; Case II desert cell left of the outskirts in the native grid.
DEF RoomDesertLeftOutskirts EQU $76

; Case II desert cell right of the station front in the native grid.
DEF RoomDesertRightStation EQU $77

; Case II desert cell below the outskirts in the native grid.
DEF RoomDesertBelowOutskirts EQU $7a

; Case II desert cell below track area A in the native grid.
DEF RoomDesertBelowTracksA EQU $7b

; Case II desert cell below track area B in the native grid.
DEF RoomDesertBelowTracksB EQU $7c

; Case II desert cell below the hotel front in the native grid.
DEF RoomDesertBelowHotel EQU $7d

; Case II desert cell below the station front in the native grid.
DEF RoomDesertBelowStation EQU $7e

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

; Case II raw type-three document IDs; names match BANK SLIPS and RECORD2 slots.
DEF C2ItemBankSlips EQU $3b
DEF C2ItemRecord2 EQU $50

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

; Legacy alias for the Chicago cab interior ($31), not the station front ($30).
DEF RoomChiStn EQU $0031

; Legacy alias for the cab interior at Adison ($5e).
DEF RoomAdison EQU $005e

; Legacy alias for the cab interior at Cottage ($5f).
DEF RoomCottage EQU $005f

; Legacy alias for the cab interior at Peoria ($60).
DEF RoomPeoria EQU $0060

; Legacy alias for the cab interior at Morgue ($61).
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

; Case I opening toilet stall.
DEF C1RoomIdStartStall EQU $00

; Case I washroom outside the opening stall.
DEF C1RoomIdStartWashroom EQU $01

; Case I hallway connecting the washrooms and bar.
DEF C1RoomIdWashroomHallway EQU $02

; Case I women's washroom.
DEF C1RoomIdWomenWashroom EQU $03

; Case I women's toilet stall.
DEF C1RoomIdWomenStall EQU $04

; Case I empty bar; the US arrival describes a restaurant.
DEF C1RoomIdBar EQU $05

; Case I cellar; JP identifies the wine cellar.
DEF C1RoomIdCellar EQU $06

; Case I connecting passage behind the wine rack.
DEF C1RoomIdRackPassage EQU $07

; Case I deserted casino.
DEF C1RoomIdCasino EQU $08

; Case I casino-side small lift entrance.
DEF C1RoomIdCasinoLiftEntrance EQU $09

; Case I lift interior reached from the casino-side entrance.
DEF C1RoomIdCasinoLift EQU $0a

; Case I room reached from the top-floor lift; its purpose is unspecified.
DEF C1RoomIdTopFloorRoom EQU $0b

; Case I office containing the body at the desk.
DEF C1RoomIdCorpseOffice EQU $0c

; Case I secretary's office.
DEF C1RoomIdSecretaryOffice EQU $0d

; Case I upstairs hallway; JP identifies the second floor.
DEF C1RoomIdUpstairsHallway EQU $0e

; Case I third-floor fire escape.
DEF C1RoomIdFireEscape3 EQU $0f

; Case I second-floor fire escape, explicit in JP arrival text.
DEF C1RoomIdFireEscape2 EQU $10

; Case I street in front of Joe's bar/restaurant.
DEF C1RoomIdJoeStreet EQU $11

; Case I street in front of the newsstand.
DEF C1RoomIdNewsstandStreet EQU $12

; Case I street in front of the gun shop.
DEF C1RoomIdGunShopStreet EQU $13

; Case I Peoria Street blue-cab stop.
DEF C1RoomIdPeoriaBlueCabStop EQU $14

; Case I Peoria Street yellow-cab stop.
DEF C1RoomIdPeoriaYellowCabStop EQU $15

; Case I dark alley connected to Joe's street and fire escape.
DEF C1RoomIdJoeAlley EQU $16

; Case I street in front of the police station.
DEF C1RoomIdPoliceFront EQU $17

; Case I construction pit entered by the fatal fall script.
DEF C1RoomIdConstructionPit EQU $18

; Case I street outside the Stanford Arms apartment building.
DEF C1RoomIdStanfordFront EQU $19

; Case I Stanford Arms lobby connected to the private lift.
DEF C1RoomIdStanfordLobby EQU $28

; Case I street in front of the run-down bungalow.
DEF C1RoomIdBungalowFront EQU $1a

; Case I bungalow interior.
DEF C1RoomIdBungalow EQU $2b

; Case I quiet street in front of the dirty office building.
DEF C1RoomIdOfficeBuildingFront EQU $1b

; Case I office-building lobby connecting the hallway and stairs.
DEF C1RoomIdOfficeBuildingLobby EQU $2c

; Case I doctor's office entrance; JP names Dr. Brody.
DEF C1RoomIdDoctorEntrance EQU $2d

; Case I doctor's office interior.
DEF C1RoomIdDoctorOffice EQU $2e

; Case I entrance to Ace Harding's office.
DEF C1RoomIdAceOfficeEntrance EQU $2f

; Case I Ace Harding's office interior.
DEF C1RoomIdAceOffice EQU $30

; Case I exterior of the mansion estate.
DEF C1RoomIdEstateFront EQU $1c

; Case I mansion front-door area with the knocker.
DEF C1RoomIdMansionFrontDoor EQU $31

; Case I mansion vestibule.
DEF C1RoomIdMansionVestibule EQU $32

; Case I mansion kitchen.
DEF C1RoomIdMansionKitchen EQU $34

; Case I mansion upstairs hallway.
DEF C1RoomIdMansionUpstairsHallway EQU $35

; Case I mansion master bedroom.
DEF C1RoomIdMansionMasterBedroom EQU $36

; Case I mansion guest bedroom.
DEF C1RoomIdMansionGuestBedroom EQU $37

; Case I blue cab interior at Peoria.
DEF C1RoomIdBlueCabPeoria EQU $26

; Case I yellow cab interior at Peoria.
DEF C1RoomIdYellowCabPeoria EQU $27

; Case I blue cab interior at Stanford.
DEF C1RoomIdBlueCabStanford EQU $42

; Case I yellow cab interior at Stanford.
DEF C1RoomIdYellowCabStanford EQU $43

; Case I blue cab interior at Bungalow.
DEF C1RoomIdBlueCabBungalow EQU $44

; Case I yellow cab interior at Bungalow.
DEF C1RoomIdYellowCabBungalow EQU $45

; Case I blue cab interior at OfficeBuilding.
DEF C1RoomIdBlueCabOfficeBuilding EQU $46

; Case I yellow cab interior at OfficeBuilding.
DEF C1RoomIdYellowCabOfficeBuilding EQU $47

; Case I blue cab interior at Estate.
DEF C1RoomIdBlueCabEstate EQU $48

; Case I yellow cab interior at Estate.
DEF C1RoomIdYellowCabEstate EQU $49

; Case I Stanford private lift at the lobby.
DEF C1RoomIdStanfordLobbyLift EQU $29

; Case I Stanford Arms penthouse apartment.
DEF C1RoomIdStanfordPenthouse EQU $2a

; Case I lift at the concealed office entrance.
DEF C1RoomIdHiddenOfficeLift EQU $3f

; Case I lift at the top-floor room.
DEF C1RoomIdTopFloorLift EQU $40

; Case I Stanford private lift at the penthouse.
DEF C1RoomIdStanfordPenthouseLift EQU $41

; Case I street scene with the punched woman on the pavement.
DEF C1RoomIdFallenWomanStreet EQU $21

; Case I rear of the luxury car, in front of its trunk.
DEF C1RoomIdCarRear EQU $22

; Case I luxury car interior.
DEF C1RoomIdLuxuryCar EQU $23

; Case I Pete's gun shop interior.
DEF C1RoomIdGunShop EQU $25

; Case I upper sewer under Joe's street manhole.
DEF C1RoomIdJoeStreetUpperSewer EQU $1d

; Case I sewer reached by the ordinary lift and alligator path.
DEF C1RoomIdLiftSewer EQU $38

; Case I sewer junction with the alley ladder and side tunnels.
DEF C1RoomIdSewerJunction EQU $39

; Case I sewer at the ladder below the wine-rack passage.
DEF C1RoomIdRackLadderSewer EQU $3a

; Case I lower sewer reached down the ladder from Joe's street manhole.
DEF C1RoomIdJoeStreetLowerSewer EQU $3b

; Case I deepest sewer section.
DEF C1RoomIdDeepestSewer EQU $3c

; Case I upper sewer under Joe's alley manhole.
DEF C1RoomIdJoeAlleyUpperSewer EQU $3d

; Case I encounter room: mugger in Joe's alley.
DEF C1RoomIdAlleyMuggerEncounter EQU $1e

; Case I encounter room: armed woman near the police station.
DEF C1RoomIdArmedWomanEncounter EQU $20

; Case I encounter room: alligator in the sewer.
DEF C1RoomIdAlligatorEncounter EQU $24

; Case I encounter room: bum at the gun-shop street.
DEF C1RoomIdBumEncounter EQU $1f

; Case I encounter room: mugger at Joe street.
DEF C1RoomIdMuggerJoeStreet EQU $4a

; Case I encounter room: mugger at Peoria Street.
DEF C1RoomIdMuggerPeoria EQU $4d

; Case I encounter room: mugger at the newsstand street.
DEF C1RoomIdMuggerNewsstand EQU $4b

; Case I encounter room: mugger at the gun-shop street.
DEF C1RoomIdMuggerGunShopStreet EQU $4c

; Case I type-five cab-entry item IDs; separate from cab room IDs.
DEF C1DoorIdBlueCabPeoria EQU $23
DEF C1DoorIdBlueCabStanford EQU $24
DEF C1DoorIdBlueCabBungalow EQU $25
DEF C1DoorIdBlueCabOfficeBuilding EQU $26
DEF C1DoorIdBlueCabEstate EQU $27
DEF C1DoorIdYellowCabPeoria EQU $28
DEF C1DoorIdYellowCabStanford EQU $29
DEF C1DoorIdYellowCabBungalow EQU $2a
DEF C1DoorIdYellowCabOfficeBuilding EQU $2b
DEF C1DoorIdYellowCabEstate EQU $2c

; Case II object flag recording a successful diary-machine unlock; relocking retains it.
DEF C2DiarySlotUnlockedOnce EQU $0064

; Case II object flag set after the gun-loading command, including its failure returns.
DEF C2GunLoadAttempted EQU $004b

; Case II object flag suppressing the repeated Malone-office pictures hint.
DEF C2MalonePicturesHintSeen EQU $0000

; Case II object flag recording the first hint that writing is on the Vegas hamper.
DEF C2VegasHamperWritingSeen EQU $000a

; Case II object flag revealing the Vegas hamper map mark after opening its lid.
DEF C2VegasHamperMarkRevealed EQU $001d

; Case II per-car fare-view state IDs, indexed by passenger room $1b-$2a.
DEF C2StateTrain6AFareView EQU $85
DEF C2StateTrain6BFareView EQU $86
DEF C2StateTrain7AFareView EQU $87
DEF C2StateTrain7BFareView EQU $88
DEF C2StateTrain8AFareView EQU $89
DEF C2StateTrain8BFareView EQU $8a
DEF C2StateTrain9AFareView EQU $8b
DEF C2StateTrain9BFareView EQU $8c
DEF C2StateTrain2AFareView EQU $8d
DEF C2StateTrain2BFareView EQU $8e
DEF C2StateTrain3AFareView EQU $8f
DEF C2StateTrain3BFareView EQU $90
DEF C2StateTrain4AFareView EQU $91
DEF C2StateTrain4BFareView EQU $92
DEF C2StateTrain5AFareView EQU $93
DEF C2StateTrain5BFareView EQU $94

; Case II passenger clearance by train; grants include the original no-cash bypass.
DEF C2Train2PassGranted EQU $002d
DEF C2Train3PassGranted EQU $002e
DEF C2Train4PassGranted EQU $002f
DEF C2Train5PassGranted EQU $0030
DEF C2Train6PassGranted EQU $0015
DEF C2Train7PassGranted EQU $002a
DEF C2Train8PassGranted EQU $002b
DEF C2Train9PassGranted EQU $002c

; Case II schedule access flags for trains two through nine; separate from passenger clearance.
DEF C2Train2AccessEnabled EQU $0022
DEF C2Train3AccessEnabled EQU $0023
DEF C2Train4AccessEnabled EQU $0024
DEF C2Train5AccessEnabled EQU $0025
DEF C2Train6AccessEnabled EQU $001e
DEF C2Train7AccessEnabled EQU $001f
DEF C2Train8AccessEnabled EQU $0020
DEF C2Train9AccessEnabled EQU $0021

; Case II object flag set after displaying the courier bribe-payment totals.
DEF C2BribeTotalsShown EQU $0003

; Case II object flag set by the sink-to-towel action; the reverse item-use path leaves it unchanged.
DEF C2SinkTowelActionUsed EQU $0004

; Case I type-five door and passage IDs: opening area.
DEF C1DoorIdStartStall EQU $00
DEF C1DoorIdStartWashroom EQU $01
DEF C1DoorIdWomenWashroom EQU $02
DEF C1DoorIdBar EQU $03
DEF C1DoorIdWomenStall EQU $04
DEF C1DoorIdCellar EQU $05
DEF C1DoorIdJoeFrontDoor EQU $06
DEF C1DoorIdBarStairs EQU $07
DEF C1DoorIdRackPassage EQU $08
DEF C1DoorIdCasino EQU $09

; Case I type-five door and passage IDs: lifts windows and upper doors.
DEF C1DoorIdRackSewerLadder EQU $0a
DEF C1DoorIdCasinoLift EQU $0c
DEF C1DoorIdHiddenOfficeLift EQU $0e
DEF C1DoorIdTopFloorLift EQU $0f
DEF C1DoorIdTopFloorWindow EQU $10
DEF C1DoorIdFireEscape3To2 EQU $11
DEF C1DoorIdCorpseOfficeWindow EQU $12
DEF C1DoorIdFireEscape2ToAlley EQU $13
DEF C1DoorIdCorpseOffice EQU $14
DEF C1DoorIdSecretaryHall EQU $15

; Case I type-five door and passage IDs: street routes and doors.
DEF C1DoorIdJoeStreetAlley EQU $16
DEF C1DoorIdJoeStreetNewsstand EQU $17
DEF C1DoorIdJoeStreetManhole EQU $18
DEF C1DoorIdJoeStreetPoliceFront EQU $19
DEF C1DoorIdLuxuryCar EQU $1b
DEF C1DoorIdNewsstandGunShop EQU $1c
DEF C1DoorIdGunShopPeoria EQU $1d
DEF C1DoorIdGunShop EQU $1e
DEF C1DoorIdPoliceStation EQU $20
DEF C1DoorIdJoeAlleyManhole EQU $22

; Case I type-five door and passage IDs: stanford and office doors.
DEF C1DoorIdStanfordEntrance EQU $2d
DEF C1DoorIdStanfordLobbyLift EQU $2f
DEF C1DoorIdStanfordPenthouseLift EQU $30
DEF C1DoorIdBungalow EQU $31
DEF C1DoorIdOfficeBuildingEntrance EQU $33
DEF C1DoorIdAceOfficeStairs EQU $35
DEF C1DoorIdDoctorOffice EQU $36
DEF C1DoorIdDoctorOfficeHall EQU $37
DEF C1DoorIdAceOffice EQU $38
DEF C1DoorIdEstateApproach EQU $39

; Case I type-five door and passage IDs: mansion doors and stairs.
DEF C1DoorIdMansionKitchen EQU $3c
DEF C1DoorIdMansionStairs EQU $3d
DEF C1DoorIdMansionMasterBedroom EQU $3e
DEF C1DoorIdMansionGuestBedroom EQU $3f
DEF C1DoorIdMansionBedroomLink EQU $40
DEF C1DoorIdMansionFrontDoor EQU $49

; Case I type-five door and passage IDs: sewer ladders and tunnels.
DEF C1DoorIdJoeStreetSewerLadder EQU $41
DEF C1DoorIdJoeAlleySewerLadder EQU $42
DEF C1DoorIdJoeStreetSewerJunction EQU $43
DEF C1DoorIdRackSewerJunction EQU $44
DEF C1DoorIdLiftToRackSewer EQU $45
DEF C1DoorIdDeepestSewerTunnel EQU $46

; Case I type-five door and passage IDs: car trunk.
DEF C1DoorIdCarTrunk EQU $47

; Case I type-1 operation IDs: early containers.
DEF C1ContainerSiegelPocket EQU $00
DEF C1ContainerCorpseOfficeDesk EQU $01
DEF C1ContainerCorpseOfficeWallSafe EQU $02
DEF C1ContainerSecretaryDesk EQU $03
DEF C1ContainerLuxuryCarDashboard EQU $04
DEF C1ContainerBungalowDesk EQU $05

; Case I type-1 operation IDs: later containers.
DEF C1ContainerDoctorLockedCabinet EQU $06
DEF C1ContainerAceOfficeDesk EQU $07
DEF C1ContainerAceOfficeCabinet EQU $08
DEF C1ContainerEstateMailbox EQU $09
DEF C1ContainerMasterBedroomTable EQU $0a
DEF C1ContainerGuestBedroomTable EQU $0b
DEF C1ContainerWomenStallLid EQU $0c

; Case I type-2 operation IDs: disposal targets.
DEF C1DisposalTopFloorWastebasket EQU $00
DEF C1DisposalWomenWashroomWastebasket EQU $01
DEF C1DisposalBumEncounterTrashCan EQU $02
DEF C1DisposalGunShopStreetTrashCan EQU $03
DEF C1DisposalDeepSewer EQU $04

; Case I type-4 operation IDs: physical items.
DEF C1PortableCoat EQU $00
DEF C1PortableGun1 EQU $02
DEF C1PortableHandbag EQU $06
DEF C1PortableJar1 EQU $0b
DEF C1PortableJar2 EQU $0c
DEF C1PortableBriefcase EQU $0f
DEF C1PortableJar3 EQU $10
DEF C1PortableGun3 EQU $11

; Case I type-4 operation IDs: script match items.
DEF C1PortableEnvelope1 EQU $05
DEF C1PortableGun2 EQU $07
DEF C1PortableDiary EQU $08
DEF C1PortableEnvelope2 EQU $0a
DEF C1PortableEnvelope3 EQU $0d

; Case I type-3 operation IDs: medicine vials.
DEF C1ItemEmptyPentothalVial EQU $28
DEF C1ItemTopFloorMedrezine EQU $29
DEF C1ItemEmptyDiethanolVial EQU $2a
DEF C1ItemOfreeallVial1 EQU $33
DEF C1ItemChemopapainVial EQU $34
DEF C1ItemBisodiumitisVial1 EQU $35
DEF C1ItemBicarbonateVial EQU $36
DEF C1ItemPentothalVial1 EQU $55
DEF C1ItemPentothalVial2 EQU $56
DEF C1ItemPentothalVial3 EQU $57
DEF C1ItemDoctorMedrezineVial1 EQU $58
DEF C1ItemDoctorMedrezineVial2 EQU $59
DEF C1ItemOfreeallVial2 EQU $5a
DEF C1ItemBisodiumitisVial2 EQU $5b
DEF C1ItemBisodiumitisVial3 EQU $5c

; Case I type-3 operation IDs: physical loose items.
DEF C1ItemSeltzer EQU $27
DEF C1ItemNewspaper EQU $2b
DEF C1ItemGag EQU $2c
DEF C1ItemMagazine EQU $2e
DEF C1ItemPhoto EQU $2f
DEF C1ItemEarring EQU $30
DEF C1ItemNote3 EQU $31
DEF C1ItemNote4 EQU $32
DEF C1ItemSausage EQU $37
DEF C1ItemPlate EQU $38
DEF C1ItemFryingPan EQU $39
DEF C1ItemPitcher EQU $3a

; Case I type-3 operation IDs: gun shop ammunition.
DEF C1ItemGunShopBullet1Slot1 EQU $3d
DEF C1ItemGunShopBullet1Slot2 EQU $3e
DEF C1ItemGunShopBullet1Slot3 EQU $3f
DEF C1ItemGunShopBullet1Slot4 EQU $40
DEF C1ItemGunShopBullet1Slot5 EQU $41
DEF C1ItemGunShopBullet1Slot6 EQU $42
DEF C1ItemGunShopBullet2Slot1 EQU $4a
DEF C1ItemGunShopBullet2Slot2 EQU $4f
DEF C1ItemGunShopBullet2Slot3 EQU $50
DEF C1ItemGunShopBullet2Slot4 EQU $51
DEF C1ItemGunShopBullet2Slot5 EQU $52
DEF C1ItemGunShopBullet2Slot6 EQU $53

; Case I type-3 operation IDs: twenty dollar selectors.
DEF C1ItemTwentyDollarBill EQU $07
DEF C1ItemTwentyDollarBillAlt EQU $54

; Case I type-3 operation IDs: file matches.
DEF C1ItemFile1 EQU $17
DEF C1ItemFile2 EQU $18
DEF C1ItemFile3 EQU $19
DEF C1ItemFile4 EQU $1a
DEF C1ItemFile5 EQU $1b
DEF C1ItemFile6 EQU $1c
DEF C1ItemFile7 EQU $1d

; Case I type-3 operation IDs: paper and cloth matches.
DEF C1ItemHandkerchief EQU $03
DEF C1ItemNote1 EQU $0e
DEF C1ItemPharmacyBill EQU $10
DEF C1ItemNote2 EQU $11
DEF C1ItemMap EQU $12
DEF C1ItemSnapshot EQU $13
DEF C1ItemBookmark EQU $16
DEF C1ItemLetter1 EQU $1e
DEF C1ItemTissue EQU $21
DEF C1ItemLetter2 EQU $22
DEF C1ItemMemo EQU $24

; Case I type-3 operation IDs: medicine tool and gum cigs.
DEF C1ItemGumCigs EQU $02
DEF C1ItemMedicineTool EQU $0a

; Case I type-0 operation IDs: washroom fixtures.
DEF C1TargetStartStallCeilingLight EQU $00
DEF C1TargetStartStallToiletRoll EQU $01
DEF C1TargetStartWashroomCeilingLight EQU $02
DEF C1TargetStartWashroomMirror EQU $03
DEF C1TargetStartWashroomSink EQU $04
DEF C1TargetWashroomHallPuddle EQU $05
DEF C1TargetWomenWashroomLamp EQU $06
DEF C1TargetWomenWashroomMirror EQU $07
DEF C1TargetWomenWashroomSink EQU $08
DEF C1TargetWomenStallPuddle EQU $09
DEF C1TargetWomenStallToiletRoll EQU $0a
DEF C1TargetStartWashroomCrackedWall EQU $0b
DEF C1TargetWashroomHallWallMarks EQU $0e
DEF C1TargetWashroomHallCrackedWall EQU $6c
DEF C1TargetWomenStallWallMarks EQU $6d

; Case I type-0 operation IDs: bar cellar and casino.
DEF C1TargetBarCounter EQU $0c
DEF C1TargetBarStreetWindow EQU $0d
DEF C1TargetCellarCobweb EQU $0f
DEF C1TargetCellarLamp EQU $10
DEF C1TargetCellarBarrel EQU $11
DEF C1TargetCellarSpigot EQU $12
DEF C1TargetRackBottle EQU $13
DEF C1TargetRackPassageBulb EQU $14
DEF C1TargetCasinoRoulette EQU $15
DEF C1TargetCasinoSlotMachine1 EQU $16
DEF C1TargetCasinoSlotMachine2 EQU $17

; Case I type-0 operation IDs: lift controls and office fixtures.
DEF C1TargetCasinoLiftCallButton EQU $18
DEF C1TargetLiftTopFloorButton EQU $19
DEF C1TargetLiftHiddenOfficeButton EQU $1a
DEF C1TargetLiftCasinoButton EQU $1b
DEF C1TargetLiftSewerButton EQU $1c
DEF C1TargetTopFloorLiftCallButton EQU $1d
DEF C1TargetTopFloorChair EQU $1e
DEF C1TargetCorpseOfficeHandset EQU $1f
DEF C1TargetCorpseOfficePhone EQU $20
DEF C1TargetSecretaryWindow EQU $21
DEF C1TargetSecretaryDeskLamp EQU $22
DEF C1TargetSecretaryTypewriter EQU $23
DEF C1TargetSecretaryPhone EQU $24
DEF C1TargetUpstairsPoster1 EQU $25
DEF C1TargetUpstairsPoster2 EQU $26
DEF C1TargetAcePoster EQU $27

; Case I type-0 operation IDs: street and car fixtures.
DEF C1TargetJoeStreetWindow EQU $28
DEF C1TargetJoeStreetLuxuryCar EQU $29
DEF C1TargetNewsstand EQU $2a
DEF C1TargetGunShopWindow EQU $2c
DEF C1TargetPoliceFrontStreetLamp EQU $2d
DEF C1TargetThirdFloorFireEscape EQU $31
DEF C1TargetSecondFloorFireEscapeDrop EQU $32
DEF C1TargetCarGasPedal EQU $37
DEF C1TargetCarBrake EQU $38
DEF C1TargetCarClutch EQU $39
DEF C1TargetCarSteeringWheel EQU $3a
DEF C1TargetCarIgnition EQU $3b
DEF C1TargetCarRearExterior EQU $3c
DEF C1TargetCarHoodRelease EQU $3e
DEF C1TargetGunShopPriceSign EQU $41
DEF C1TargetSaleNewspaper EQU $74

; Case I type-0 operation IDs: street people.
DEF C1TargetNewsBoy EQU $2b
DEF C1TargetFallenWoman EQU $35
DEF C1TargetBum EQU $36
DEF C1TargetMrsSternwood EQU $3f
DEF C1TargetGunShopClerk EQU $40

; Case I type-0 operation IDs: armed encounters.
DEF C1TargetShootingMuggerVariant1 EQU $2e
DEF C1TargetShootingMuggerVariant2 EQU $75
DEF C1TargetShootingMuggerVariant3 EQU $76
DEF C1TargetShootingMuggerVariant4 EQU $77
DEF C1TargetRobbingMugger EQU $2f
DEF C1TargetArmedWoman EQU $34

; Case I type-0 operation IDs: cab scene targets.
DEF C1TargetBlueCabDriver EQU $42
DEF C1TargetPeoriaCabFareMeter EQU $43
DEF C1TargetBlueCabFareSlot EQU $44
DEF C1TargetYellowCabDriver EQU $46
DEF C1TargetYellowCabFareSlot EQU $48

; Case I type-0 operation IDs: stanford and bungalow fixtures.
DEF C1TargetStanfordBuilding EQU $4a
DEF C1TargetStanfordOuterCardSlot EQU $4b
DEF C1TargetStanfordInnerCardSlot EQU $4c
DEF C1TargetPenthouseChandelier EQU $4d
DEF C1TargetPenthouseChair EQU $4e
DEF C1TargetPenthouseSofa EQU $4f
DEF C1TargetPenthouseFireplace EQU $50
DEF C1TargetPenthouseBookcase EQU $51
DEF C1TargetPenthouseArt EQU $52
DEF C1TargetPenthouseLowTable EQU $53
DEF C1TargetPenthouseRoundMirror EQU $54
DEF C1TargetBungalowCot EQU $55
DEF C1TargetBungalowWindow EQU $56
DEF C1TargetBungalowExterior EQU $57
DEF C1TargetOfficeBuildingExterior EQU $58

; Case I type-0 operation IDs: doctor and ace fixtures.
DEF C1TargetAceOfficeCrackedWall EQU $33
DEF C1TargetAceOfficeWallMarks EQU $3d
DEF C1TargetDoctorEyeChart EQU $59
DEF C1TargetDoctorDrugCabinet EQU $5a
DEF C1TargetAceOfficeWindow EQU $5b
DEF C1TargetAceOfficeDeadMan EQU $5c
DEF C1TargetAceOfficeDoorShadow EQU $6b
DEF C1TargetAceEntranceWallMarks1 EQU $6e
DEF C1TargetAceEntranceCrackedWall EQU $70
DEF C1TargetAceEntranceWallMarks2 EQU $71
DEF C1TargetAceOfficeShelf EQU $72

; Case I type-0 operation IDs: mansion scene targets.
DEF C1TargetMansionDoorKnocker EQU $5e
DEF C1TargetMansionButler EQU $5f
DEF C1TargetMansionChandelier EQU $60
DEF C1TargetMansionKitchenTable EQU $61
DEF C1TargetMasterBedroomLamp EQU $62
DEF C1TargetMasterBedroomBed EQU $63
DEF C1TargetMrSternwood EQU $64
DEF C1TargetGuestBedroomMirror EQU $65
DEF C1TargetGuestBedroomLamp EQU $66
DEF C1TargetGuestBedroomBed EQU $67
DEF C1TargetSleepingWoman EQU $68

; Case I type-0 operation IDs: alligator.
DEF C1TargetAlligator EQU $6a

; Case I type-3 operation IDs: direct argument items.
DEF C1ItemCoins EQU $00
DEF C1ItemLighter EQU $01
DEF C1ItemKey1 EQU $05
DEF C1ItemAccessCard EQU $06
DEF C1ItemCandy EQU $23

; Case I object indices: portable objects.
DEF C1ObjectCoat EQU $41
DEF C1ObjectGun1 EQU $42
DEF C1ObjectHandbag EQU $43
DEF C1ObjectGun3 EQU $44
DEF C1ObjectJar1 EQU $45
DEF C1ObjectJar2 EQU $46
DEF C1ObjectJar3 EQU $47
DEF C1ObjectBriefcase EQU $48

; Case I object indices: ammunition objects.
DEF C1ObjectGunShopBullet2Slot1 EQU $20
DEF C1ObjectGunShopBullet2Slot2 EQU $21
DEF C1ObjectGunShopBullet2Slot3 EQU $22
DEF C1ObjectGunShopBullet2Slot4 EQU $23
DEF C1ObjectGunShopBullet2Slot5 EQU $24
DEF C1ObjectGunShopBullet2Slot6 EQU $25
DEF C1ObjectGunShopBullet1Slot1 EQU $26
DEF C1ObjectGunShopBullet1Slot2 EQU $27
DEF C1ObjectGunShopBullet1Slot3 EQU $28
DEF C1ObjectGunShopBullet1Slot4 EQU $29
DEF C1ObjectGunShopBullet1Slot5 EQU $2a
DEF C1ObjectGunShopBullet1Slot6 EQU $2b

; Case I object indices: medicine objects.
DEF C1ObjectEmptyPentothalVial EQU $1b
DEF C1ObjectTopFloorMedrezine EQU $1c
DEF C1ObjectEmptyDiethanolVial EQU $1d
DEF C1ObjectOfreeallVial1 EQU $31
DEF C1ObjectDoctorMedrezineVial1 EQU $32
DEF C1ObjectPentothalVial1 EQU $33
DEF C1ObjectChemopapainVial EQU $34
DEF C1ObjectBisodiumitisVial1 EQU $35
DEF C1ObjectBicarbonateVial EQU $36
DEF C1ObjectOfreeallVial2 EQU $37
DEF C1ObjectDoctorMedrezineVial2 EQU $38
DEF C1ObjectBisodiumitisVial2 EQU $39
DEF C1ObjectPentothalVial2 EQU $3a
DEF C1ObjectPentothalVial3 EQU $3b
DEF C1ObjectBisodiumitisVial3 EQU $3c

; Case I object indices: loose item objects.
DEF C1ObjectSeltzer EQU $1a
DEF C1ObjectNewspaper EQU $1e
DEF C1ObjectGag EQU $1f
DEF C1ObjectMagazine EQU $2c
DEF C1ObjectPhoto EQU $2d
DEF C1ObjectEarring EQU $2e
DEF C1ObjectNote3 EQU $2f
DEF C1ObjectNote4 EQU $30
DEF C1ObjectSausage EQU $3d
DEF C1ObjectPlate EQU $3e
DEF C1ObjectFryingPan EQU $3f
DEF C1ObjectPitcher EQU $40

; Case I object indices: initially absent objects.
DEF C1ObjectStartWashroomMirror EQU $00
DEF C1ObjectWomenWashroomMirror EQU $01
DEF C1ObjectBarStreetWindow EQU $02
DEF C1ObjectPenthouseRoundMirror EQU $09
DEF C1ObjectGuestBedroomMirror EQU $14
DEF C1ObjectGunShopWindow EQU $15
DEF C1ObjectDoctorCabinet EQU $18
DEF C1ObjectAceCabinet EQU $19

; Case I object indices: scene rule objects.
DEF C1ObjectCellarSpigot EQU $03
DEF C1ObjectShootingMuggerVariant2 EQU $05
DEF C1ObjectShootingMuggerVariant3 EQU $06
DEF C1ObjectShootingMuggerVariant4 EQU $07
DEF C1ObjectCabAwayFareSlot EQU $08
DEF C1ObjectAceOfficeDoorShadow EQU $16

; Case I object indices: disposal objects.
DEF C1ObjectWomenWashroomWastebasket EQU $49
DEF C1ObjectTopFloorWastebasket EQU $4b
DEF C1ObjectGunShopStreetTrashCan EQU $4d

; Case I object indices: rule replacement objects.
DEF C1ObjectCellarSpigotOpen EQU $04
DEF C1ObjectAceOfficeUnshotShadow EQU $0a

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

; Case I object flag: non-Peoria cab visibility selects yellow when set, blue when clear.
DEF C1CabIsYellow EQU $00bb

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

; Case II object flag bypassing the alternate-target attribute check; cleared on selection entry.
DEF C2AltTargetBypass EQU $0088

; Case II object flag set on alternate-selection cancellation and consumed by PickAltTarget.
DEF C2AltTargetCancelled EQU $008f

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
