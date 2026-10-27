

; Resolve the previous room to its three-byte state records.
ReadC1Prev:
Call_001_4341:
    ld a, [wPrevRoom]
    jr C1ResolveRoomRecord

; Resolve the current room to its three-byte state records.
ReadC1Room:
Call_001_4346:
    ld a, [wRoomId]

; Resolve the room ID in A to the room-state record pointer.
C1ResolveRoomRecord:
jr_001_4349:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C1RoomRefs
    add hl, bc
    ld a, [hl+]
    ld [wRoomDataPtr], a
    ld a, [hl]
    ld [wRoomDataPtr+1], a
    ret

C1MarkTile:
    db $01, $01, $73

; Rooms $00..$4d select shared three-byte records, terminated by $ff.
; Fields: cell, marked state/target ID, scene effect.
C1RoomRefs:
    dw C1StartStallStates
    dw C1StartWashroomStates
    dw C1WashroomHallwayStates
    dw C1WomenWashroomStates
    dw C1WomenStallStates
    dw C1BarStates
    dw C1CellarStates
    dw C1RackPassageStates
    dw C1CasinoStates
    dw C1CasinoLiftEntranceStates
    dw C1CasinoLiftStates
    dw C1TopFloorRoomStates
    dw C1CorpseOfficeStates
    dw C1SecretaryOfficeStates
    dw C1UpstairsHallwayStates
    dw C1FireEscape3States
    dw C1FireEscape2States
    dw C1JoeStreetStates
    dw C1NewsstandStreetStates
    dw C1GunShopStreetStates
    dw C1PeoriaBlueCabStopStates
    dw C1PeoriaYellowCabStopStates
    dw C1JoeAlleyStates
    dw C1PoliceFrontStates
    dw C1ConstructionPitStates
    dw C1StanfordFrontStates
    dw C1BungalowFrontStates
    dw C1OfficeBuildingFrontStates
    dw C1EstateFrontStates
    dw C1JoeStreetUpperSewerStates
    dw C1AlleyMuggerEncounterStates
    dw C1BumEncounterStates
    dw C1ArmedWomanEncounterStates
    dw C1FallenWomanStreetStates
    dw C1CarRearStates
    dw C1LuxuryCarStates
    dw C1AlligatorEncounterStates
    dw C1GunShopStates
    dw C1BlueCabPeoriaStates
    dw C1YellowCabPeoriaStates
    dw C1StanfordLobbyStates
    dw C1StanfordLobbyLiftStates
jr_001_43b1:
    dw C1StanfordPenthouseStates
    dw C1BungalowStates
    dw C1OfficeBuildingLobbyStates
    dw C1DoctorEntranceStates
    dw C1DoctorOfficeStates
    dw C1AceOfficeEntranceStates
    dw C1AceOfficeStates
    dw C1MansionFrontDoorStates
    dw C1MansionVestibuleStates
    dw C1Room33
    dw C1MansionKitchenStates
    dw C1MansionUpstairsHallwayStates
    dw C1MansionMasterBedroomStates
    dw C1MansionGuestBedroomStates
    dw C1LiftSewerStates
    dw C1SewerJunctionStates
    dw C1RackLadderSewerStates
    dw C1JoeStreetLowerSewerStates
    dw C1DeepestSewerStates
    dw C1JoeAlleyUpperSewerStates
    dw C1Room3E
    dw C1HiddenOfficeLiftStates
    dw C1TopFloorLiftStates
    dw C1StanfordPenthouseLiftStates
    dw C1BlueCabStanfordStates
    dw C1YellowCabStanfordStates
    dw C1BlueCabBungalowStates
    dw C1YellowCabBungalowStates
    dw C1BlueCabOfficeBuildingStates
    dw C1YellowCabOfficeBuildingStates
    dw C1BlueCabEstateStates
    dw C1YellowCabEstateStates
    dw C1MuggerJoeStreetStates
    dw C1MuggerNewsstandStates
    dw C1MuggerGunShopStreetStates
    dw C1MuggerPeoriaStates

; Case I starting toilet stall state records.
C1StartStallStates:
C1Room00:
    db $21, C1StateStartStallDoorOpen, $02
    db C1RoomRecordEnd

; Case I starting washroom state records.
C1StartWashroomStates:
C1Room01:
    db $31, C1StateStartWashroomDoorOpen, SceneFxRightChevron
    db $24, C1StateStartStallDoorOpen, $05
    db C1RoomRecordEnd

; Case I washroom hallway state records.
C1WashroomHallwayStates:
C1Room02:
    db $02, C1StateWomenWashroomDoorOpen, SceneFxLeftChevron
    db $40, C1StateBarDoorOpen, $02
    db $24, C1StateStartWashroomDoorOpen, $05
    db C1RoomRecordEnd

; Case I women's washroom state records.
C1WomenWashroomStates:
C1Room03:
    db $41, C1StateWomenWashroomDoorOpen, SceneFxRightChevron
    db $03, C1StateWomenStallDoorOpen, $02
    db C1RoomRecordEnd

; Case I women's toilet stall state records.
C1WomenStallStates:
C1Room04:
    db C1RoomCellNoMark, C1StateWomenStallLidOpen, SceneFxDiagonalStripes
    db $24, C1StateWomenStallDoorOpen, $05
    db C1RoomRecordEnd

; Case I bar state records.
C1BarStates:
C1Room05:
    db $00, C1StateCellarDoorOpen, $02
    db $40, C1StateJoeFrontDoorOpen, $02
    db $03, C1StateBarStairsPassable, SceneFxUpChevron
    db $24, C1StateBarDoorOpen, $05
    db C1RoomRecordEnd

; Case I cellar state records.
C1CellarStates:
C1Room06:
    db $00, C1StateRackPassageOpen + C1RoomIdConditional, $02
    db $24, C1StateCellarDoorOpen, $05
    db C1RoomRecordEnd

; Case I passage beside the rack state records.
C1RackPassageStates:
C1Room07:
    db $42, C1StateRackPassageOpen, SceneFxRightChevron
    db $02, C1StateCasinoDoorOpen, SceneFxLeftChevron
    db $24, C1StateRackSewerLadderPassable, SceneFxDownChevron
    db C1RoomRecordEnd

; Case I casino state records.
C1CasinoStates:
C1Room08:
    db $40, C1StateCasinoDoorOpen, $02
    db $24, C1StateCasinoLiftPassagePassable, $05
    db C1RoomRecordEnd

; Case I casino lift entrance state records.
C1CasinoLiftEntranceStates:
C1Room09:
    db $21, C1StateCasinoLiftDoorOpen, $02
    db $24, C1StateCasinoLiftPassagePassable, $05
    db C1RoomRecordEnd

; Case I casino lift state records.
C1CasinoLiftStates:
C1Room0A:
    db $10, C1StateCasinoLiftDoorOpen, $02
    db C1RoomRecordEnd

; Case I top-floor room state records.
C1TopFloorRoomStates:
C1Room0B:
    db $00, C1StateTopFloorLiftDoorOpen, $02
    db $41, C1StateTopFloorWindowOpen, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I office containing the corpse state records.
C1CorpseOfficeStates:
C1Room0C:
    db $20, C1StateCorpseOfficeWindowOpen, $02
    db C1RoomCellNoMark, C1StateCorpseOfficeWallSafeOpen, SceneFxDiagonalStripes
    db $24, C1StateCorpseOfficeDoorOpen, $05
    db C1RoomRecordEnd

; Case I secretary's office state records.
C1SecretaryOfficeStates:
C1Room0D:
    db $02, C1StateCorpseOfficeDoorOpen, SceneFxLeftChevron
    db $24, C1StateSecretaryHallDoorOpen, $05
    db C1RoomRecordEnd

; Case I upstairs hallway state records.
C1UpstairsHallwayStates:
C1Room0E:
    db $20, C1StateSecretaryHallDoorOpen, $02
jr_001_4467:
    db $24, C1StateBarStairsPassable, SceneFxDownChevron
    db C1RoomRecordEnd

; Case I third-floor fire escape state records.
C1FireEscape3States:
C1Room0F:
    db $40, C1StateTopFloorWindowOpen, SceneFxRightChevron
    db $24, C1StateFireEscape3To2Passable, SceneFxDownChevron
    db C1RoomRecordEnd

; Case I second-floor fire escape state records.
C1FireEscape2States:
C1Room10:
    db $42, C1StateCorpseOfficeWindowOpen, SceneFxRightChevron
    db $20, C1StateFireEscape3To2Passable, SceneFxUpChevron
    db $24, C1StateFireEscape2ToAlleyPassable, SceneFxDownChevron
jr_001_447b:
    db C1RoomRecordEnd

; Case I street outside Joe's bar state records.
C1JoeStreetStates:
C1Room11:
    db $10, C1StateJoeFrontDoorOpen, $02
    db $24, C1StateJoeStreetManholeOpen, SceneFxDownChevron
    db C1RoomCellNoMark, C1StateCarTrunkOpen, SceneFxDiagonalStripes
    db $32, C1StateLuxuryCarDoorOpen, $02
jr_001_4488:
    db $00, C1StateJoeStreetAlleyPassable, $02
    db $04, C1StateJoeStreetNewsstandPassable, SceneFxLeftChevron
    db $44, C1StateJoeStreetPoliceFrontPassable, SceneFxRightChevron
    db $12, C1StateJoeStreetCarRearPassable, $02
    db C1RoomRecordEnd

; Case I newsstand street state records.
C1NewsstandStreetStates:
C1Room12:
    db $44, C1StateJoeStreetNewsstandPassable, SceneFxRightChevron
    db $04, C1StateNewsstandGunShopPassable, SceneFxLeftChevron
    db C1RoomRecordEnd

; Case I gun-shop street state records.
C1GunShopStreetStates:
C1Room13:
    db $31, C1StateGunShopDoorOpen, $02
    db $44, C1StateNewsstandGunShopPassable, SceneFxRightChevron
    db $04, C1StateGunShopPeoriaPassable, SceneFxLeftChevron
    db C1RoomRecordEnd

; Case I Peoria blue-cab stop state records.
C1PeoriaBlueCabStopStates:
C1Room14:
    db $22, C1DoorIdBlueCabPeoria, $02
    db $44, C1StateGunShopPeoriaPassable, SceneFxRightChevron
    db $04, C1StatePeoriaCabStopsPassable, SceneFxLeftChevron
    db C1RoomRecordEnd

; Case I Peoria yellow-cab stop state records.
C1PeoriaYellowCabStopStates:
C1Room15:
    db $22, C1DoorIdYellowCabPeoria, $02
    db $44, C1StatePeoriaCabStopsPassable
jr_001_44b5:
    db SceneFxRightChevron, C1RoomRecordEnd

; Case I alley behind Joe's bar state records.
C1JoeAlleyStates:
C1Room16:
    db $33, C1StateJoeAlleyManholeOpen, SceneFxDownChevron
    db $30, C1StateJoeStreetAlleyPassable, $02
    db $00, C1StateFireEscape2ToAlleyPassable, SceneFxUpChevron
    db C1RoomRecordEnd

; Case I police station front state records.
C1PoliceFrontStates:
C1Room17:
    db $20, C1StatePoliceStationDoorOpen, $02
    db $04, C1StateJoeStreetPoliceFrontPassable, SceneFxLeftChevron
    db $44, C1StateConstructionPitEntryPassable, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I construction pit state records.
C1ConstructionPitStates:
C1Room18:
    db C1RoomRecordEnd

; Case I Stanford building front state records.
C1StanfordFrontStates:
C1Room19:
    db C1RoomCellNoMark, C1StateYellowCabView, SceneFxDiagonalStripes
    db $21, C1StateStanfordEntranceDoorOpen, $02
jr_001_44d2:
    db $04, C1DoorIdBlueCabStanford + C1RoomIdConditional, $02
    db $44, C1DoorIdYellowCabStanford + C1RoomIdConditional, $02
    db C1RoomRecordEnd

; Case I bungalow front state records.
C1BungalowFrontStates:
C1Room1A:
    db C1RoomCellNoMark, C1StateYellowCabView, SceneFxDiagonalStripes
    db $20, C1StateBungalowDoorOpen, $02
    db $04, C1DoorIdBlueCabBungalow + C1RoomIdConditional, $02
    db $44
jr_001_44e3:
    db C1DoorIdYellowCabBungalow + C1RoomIdConditional, $02, C1RoomRecordEnd

; Case I office building front state records.
C1OfficeBuildingFrontStates:
C1Room1B:
    db C1RoomCellNoMark, C1StateYellowCabView, SceneFxDiagonalStripes
    db $21, C1StateOfficeBuildingEntranceDoorOpen, $02
    db $13, C1DoorIdBlueCabOfficeBuilding + C1RoomIdConditional, $02
    db $44, C1DoorIdYellowCabOfficeBuilding + C1RoomIdConditional, $02
    db C1RoomRecordEnd

; Case I estate front state records.
C1EstateFrontStates:
C1Room1C:
    db C1RoomCellNoMark, C1StateYellowCabView, SceneFxDiagonalStripes
    db $20, C1StateEstateApproachPassable, $02
    db $04, C1DoorIdBlueCabEstate + C1RoomIdConditional, $02
    db $04, C1DoorIdYellowCabEstate + C1RoomIdConditional, $02
    db C1RoomRecordEnd

; Case I upper sewer below Joe's street state records.
C1JoeStreetUpperSewerStates:
C1Room1D:
    db $20, C1StateJoeStreetManholeOpen, SceneFxUpChevron
    db $24, C1StateJoeStreetSewerLadderPassable, SceneFxDownChevron
    db C1RoomRecordEnd

; Case I alley mugger encounter state records.
C1AlleyMuggerEncounterStates:
C1Room1E:
    db C1RoomRecordEnd

; Case I bum encounter state records.
C1BumEncounterStates:
C1Room1F:
    db $44, C1StateGunShopPeoriaPassable, SceneFxDiagonalStripes
    db $04, C1StateGunShopPeoriaPassable, SceneFxDiagonalStripes
    db C1RoomRecordEnd

; Case I armed woman encounter state records.
C1ArmedWomanEncounterStates:
C1Room20:
    db C1RoomRecordEnd

; Case I street with the fallen woman state records.
C1FallenWomanStreetStates:
C1Room21:
    db $20, C1StateJoeStreetNewsstandPassable, SceneFxDiagonalStripes
    db $24, C1StateJoeStreetPoliceFrontPassable, SceneFxDiagonalStripes
    db C1RoomRecordEnd

; Case I rear of the car state records.
C1CarRearStates:
C1Room22:
    db C1RoomCellNoMark, C1StateCarTrunkOpen, SceneFxDiagonalStripes
    db $42, C1StateJoeStreetCarRearPassable, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I luxury car interior state records.
C1LuxuryCarStates:
C1Room23:
    db C1RoomCellNoMark, C1StateLuxuryCarDashboardOpen, SceneFxDiagonalStripes
    db $42, C1StateLuxuryCarDoorOpen, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I alligator encounter state records.
C1AlligatorEncounterStates:
C1Room24:
    db C1RoomCellNoMark, C1StateAlligatorShotView, SceneFxDiagonalStripes
    db C1RoomRecordEnd

; Case I gun shop interior state records.
C1GunShopStates:
C1Room25:
jr_001_4529:
    db $24, C1StateGunShopDoorOpen, $05
    db C1RoomRecordEnd

; Case I blue cab at Peoria Street state records.
C1BlueCabPeoriaStates:
C1Room26:
    db $43, C1DoorIdBlueCabPeoria, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I yellow cab at Peoria Street state records.
C1YellowCabPeoriaStates:
C1Room27:
    db $43, C1DoorIdYellowCabPeoria, SceneFxRightChevron
jr_001_4534:
    db C1RoomRecordEnd

; Case I Stanford lobby state records.
C1StanfordLobbyStates:
C1Room28:
    db $21, C1StateStanfordLobbyLiftDoorOpen, $02
    db $24, C1StateStanfordEntranceDoorOpen, $05
    db C1RoomRecordEnd

; Case I Stanford lobby lift state records.
C1StanfordLobbyLiftStates:
C1Room29:
    db $22, C1StateStanfordLobbyLiftDoorOpen, $02
    db C1RoomRecordEnd

; Case I Stanford penthouse state records.
C1StanfordPenthouseStates:
C1Room2A:
    db $24, C1StateStanfordPenthouseLiftDoorOpen, $05
    db C1RoomRecordEnd

; Case I bungalow interior state records.
C1BungalowStates:
C1Room2B:
    db $24, C1StateBungalowDoorOpen, $05
    db C1RoomRecordEnd

; Case I office building lobby state records.
C1OfficeBuildingLobbyStates:
C1Room2C:
jr_001_4548:
    db $11, C1StateAceOfficeStairsPassable, SceneFxUpChevron
    db $41, C1StateDoctorOfficeHallPassable, $02
    db $24, C1StateOfficeBuildingEntranceDoorOpen, $05
    db C1RoomRecordEnd

; Case I doctor's office entrance state records.
C1DoctorEntranceStates:
C1Room2D:
    db $20, C1StateDoctorOfficeDoorOpen, $02
    db $24, C1StateDoctorOfficeHallPassable, $05
    db C1RoomRecordEnd

; Case I doctor's office state records.
C1DoctorOfficeStates:
C1Room2E:
    db $24, C1StateDoctorOfficeDoorOpen, $05
    db C1RoomRecordEnd

; Case I Ace's office entrance state records.
C1AceOfficeEntranceStates:
C1Room2F:
    db $20, C1StateAceOfficeDoorOpen, $02
    db $24, C1StateAceOfficeStairsPassable, SceneFxDownChevron
    db C1RoomRecordEnd

; Case I Ace's office state records.
C1AceOfficeStates:
C1Room30:
    db C1RoomCellNoMark, C1StateAceOfficeGunmanVisible, SceneFxDiagonalStripes
    db $24, C1StateAceOfficeDoorOpen, $05
    db C1RoomRecordEnd

; Case I mansion front door state records.
C1MansionFrontDoorStates:
C1Room31:
    db $24, C1StateEstateApproachPassable, $05
    db C1RoomCellNoMark
jr_001_456f:
    db C1StateMansionFrontDoorOpen, $02, C1RoomRecordEnd

; Case I mansion vestibule state records.
C1MansionVestibuleStates:
C1Room32:
    db C1RoomCellNoMark, C1StateMansionButlerPresent, SceneFxDiagonalStripes
    db $31, C1StateMansionKitchenDoorOpen, $02
    db $11, C1StateMansionStairsPassable, SceneFxUpChevron
    db $24, C1StateMansionFrontDoorOpen, $05
    db C1RoomRecordEnd

C1Room33:
    db C1RoomRecordEnd

; Case I mansion kitchen state records.
C1MansionKitchenStates:
C1Room34:
    db $24, C1StateMansionKitchenDoorOpen, $05
    db C1RoomRecordEnd

; Case I mansion upstairs hallway state records.
C1MansionUpstairsHallwayStates:
C1Room35:
    db $30, C1StateMansionMasterBedroomDoorOpen, $02
    db $01, C1StateMansionGuestBedroomDoorOpen, SceneFxLeftChevron
jr_001_458a:
    db $24, C1StateMansionStairsPassable, SceneFxDownChevron
    db C1RoomRecordEnd

; Case I mansion master bedroom state records.
C1MansionMasterBedroomStates:
C1Room36:
    db $01, C1StateMansionBedroomLinkDoorOpen, SceneFxLeftChevron
    db $24, C1StateMansionMasterBedroomDoorOpen, $05
    db C1RoomRecordEnd

; Case I mansion guest bedroom state records.
C1MansionGuestBedroomStates:
C1Room37:
    db $41, C1StateMansionBedroomLinkDoorOpen
jr_001_4597:
    db SceneFxRightChevron, $24, C1StateMansionGuestBedroomDoorOpen
    db $05, C1RoomRecordEnd

; Case I sewer below the lift state records.
C1LiftSewerStates:
C1Room38:
    db $22, C1StateLiftToRackSewerPassable, $02
    db C1RoomRecordEnd

; Case I sewer junction state records.
C1SewerJunctionStates:
C1Room39:
    db $20, C1StateJoeAlleySewerLadderPassable, SceneFxUpChevron
    db $02, C1StateJoeStreetSewerJunctionPassable, SceneFxLeftChevron
    db $42, C1StateRackSewerJunctionPassable, SceneFxRightChevron
    db $24, C1StateDeepestSewerTunnelPassable, SceneFxDownChevron
    db C1RoomRecordEnd

; Case I sewer at the rack ladder state records.
C1RackLadderSewerStates:
C1Room3A:
    db $20, C1StateRackSewerLadderPassable, SceneFxUpChevron
    db $44, C1StateRackSewerJunctionPassable, SceneFxRightChevron
    db $04, C1StateLiftToRackSewerPassable, SceneFxLeftChevron
    db C1RoomRecordEnd

; Case I lower sewer below Joe's street state records.
C1JoeStreetLowerSewerStates:
C1Room3B:
    db $00, C1StateJoeStreetSewerLadderPassable
jr_001_45b9:
    db SceneFxUpChevron, $22, C1StateJoeStreetSewerJunctionPassable
    db $02, C1RoomRecordEnd

; Case I deepest sewer state records.
C1DeepestSewerStates:
C1Room3C:
    db $20, C1StateDeepestSewerTunnelPassable, SceneFxUpChevron
    db C1RoomRecordEnd

; Case I upper sewer below Joe's alley state records.
C1JoeAlleyUpperSewerStates:
C1Room3D:
    db $20, C1StateJoeAlleyManholeOpen
jr_001_45c4:
    db SceneFxUpChevron, $24, C1StateJoeAlleySewerLadderPassable
    db SceneFxDownChevron, C1RoomRecordEnd

C1Room3E:
    db C1RoomRecordEnd

; Case I hidden office lift state records.
C1HiddenOfficeLiftStates:
C1Room3F:
    db $10, C1StateHiddenOfficeLiftDoorOpen, $02
    db C1RoomRecordEnd

; Case I top-floor lift state records.
C1TopFloorLiftStates:
C1Room40:
    db $10, C1StateTopFloorLiftDoorOpen, $02
    db C1RoomRecordEnd

; Case I Stanford penthouse lift state records.
C1StanfordPenthouseLiftStates:
C1Room41:
    db $22, C1StateStanfordPenthouseLiftDoorOpen, $02
    db C1RoomRecordEnd

; Case I blue cab at the Stanford building state records.
C1BlueCabStanfordStates:
C1Room42:
    db $43
jr_001_45d7:
    db C1DoorIdBlueCabStanford, SceneFxRightChevron, C1RoomRecordEnd

; Case I yellow cab at the Stanford building state records.
C1YellowCabStanfordStates:
C1Room43:
    db $43, C1DoorIdYellowCabStanford, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I blue cab at the bungalow state records.
C1BlueCabBungalowStates:
C1Room44:
    db $43, C1DoorIdBlueCabBungalow, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I yellow cab at the bungalow state records.
C1YellowCabBungalowStates:
C1Room45:
    db $43, C1DoorIdYellowCabBungalow
jr_001_45e4:
    db SceneFxRightChevron, C1RoomRecordEnd

; Case I blue cab at the office building state records.
C1BlueCabOfficeBuildingStates:
C1Room46:
jr_001_45e6:
    db $43, C1DoorIdBlueCabOfficeBuilding, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I yellow cab at the office building state records.
C1YellowCabOfficeBuildingStates:
C1Room47:
    db $43, C1DoorIdYellowCabOfficeBuilding, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I blue cab at the estate state records.
C1BlueCabEstateStates:
C1Room48:
    db $43, C1DoorIdBlueCabEstate, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I yellow cab at the estate state records.
C1YellowCabEstateStates:
C1Room49:
    db $43, C1DoorIdYellowCabEstate, SceneFxRightChevron
    db C1RoomRecordEnd

; Case I mugger encounter at Joe's street state records.
C1MuggerJoeStreetStates:
C1Room4A:
    db C1RoomRecordEnd

; Case I mugger encounter at the newsstand state records.
C1MuggerNewsstandStates:
C1Room4B:
    db C1RoomRecordEnd

; Case I mugger encounter at the gun-shop street state records.
C1MuggerGunShopStreetStates:
C1Room4C:
    db C1RoomRecordEnd

; Case I mugger encounter at Peoria Street state records.
C1MuggerPeoriaStates:
C1Room4D:
    db C1RoomRecordEnd
