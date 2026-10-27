
; Scene-list pointers for room IDs $00..$4d.
C1SceneRefs:
    dw C1View00
    dw C1View01
    dw C1View02
    dw C1View03
    dw C1View04
    dw C1View05
    dw C1View06
    dw C1View07
    dw C1View08
    dw C1View09
    dw C1View0A
    dw C1View0B
    dw C1View0C
    dw C1View0D
    dw C1View0E
    dw C1View0F
    dw C1View10
    dw C1View11
    dw C1View12
    dw C1View13
    dw C1View14
    dw C1View15
    dw C1View16
    dw C1View17
    dw C1View18
    dw C1View19
    dw C1View1A
    dw C1View1B
    dw C1View1C
    dw C1View1D
    dw C1View1E
    dw C1View1F
    dw C1View20
    dw C1View21
    dw C1View22
    dw C1View23
    dw C1View24
    dw C1View25
    dw C1View26
    dw C1View27
    dw C1View28
    dw C1View29
    dw C1View2A
    dw C1View2B
    dw C1View2C
    dw C1View2D
    dw C1View2E
    dw C1View2F
    dw C1View30
    dw C1View31
    dw C1View32
    dw C1View33
    dw C1View34
    dw C1View35
    dw C1View36
    dw C1View37
    dw C1View38
    dw C1View39
    dw C1View3A
    dw C1View3B
    dw C1View3C
    dw C1View3D
    dw C1View3E
    dw C1View3F
    dw C1View40
    dw C1View41
    dw C1View42
    dw C1View43
    dw C1View44
    dw C1View45
    dw C1View46
    dw C1View47
    dw C1View48
    dw C1View49
    dw C1View4A
    dw C1View4B
    dw C1View4C
    dw C1View4D

C1View00:
    db C1SceneStartStallDoorClosed, C1SceneStartStallDoorOpen, $ff

C1View01:
    db C1SceneStartWashroomHallDoorClosed, C1SceneStartWashroomHallDoorOpen, $ff

C1View02:
    db C1SceneWashroomHallBothDoorsClosed, C1SceneWashroomHallWomenDoorOpen, C1SceneWashroomHallBarDoorOpen, C1SceneWashroomHallBothDoorsOpen, $ff

C1View03:
    db C1SceneWomenWashroomBothDoorsClosed, C1SceneWomenWashroomHallDoorOpen, C1SceneWomenWashroomStallDoorOpen, C1SceneWomenWashroomBothDoorsOpen, $ff

C1View04:
    db C1SceneWomenStallLidClosed, C1SceneWomenStallLidOpen, $ff

C1View05:
    db C1SceneBarBothDoorsClosed, C1SceneBarCellarDoorOpen, C1SceneBarFrontDoorOpen, C1SceneBarBothDoorsOpen, $ff

C1View06:
    db C1SceneCellarRackPassageClosed, C1SceneCellarRackPassageOpen, $ff

C1View07:
    db C1SceneRackPassageBothDoorsClosed, C1SceneRackPassageRackOpen, C1SceneRackPassageCasinoDoorOpen, C1SceneRackPassageBothDoorsOpen, $ff

C1View08:
    db C1SceneCasinoDoorClosed, C1SceneCasinoDoorOpen, $ff

C1View09:
    db C1SceneCasinoLiftEntranceDoorClosed, C1SceneCasinoLiftEntranceDoorOpen, $ff

C1View0A:
    db C1SceneCasinoElevatorClosed, C1SceneCasinoLiftDoorOpen, $ff

C1View0B:
    db C1SceneTopFloorRoomBothExitsClosed, C1SceneTopFloorRoomLiftDoorOpen, C1SceneTopFloorRoomWindowOpen, C1SceneTopFloorRoomBothExitsOpen, $ff

C1View0C:
    db C1SceneCorpseOfficeWindowAndSafeClosed, C1SceneCorpseOfficeWindowOpen, C1SceneCorpseOfficeSafeOpen, C1SceneCorpseOfficeWindowAndSafeOpen, $ff

C1View0D:
    db C1SceneSecretaryOfficeDoorClosed, C1SceneSecretaryOfficeDoorOpen, $ff

C1View0E:
    db C1SceneUpstairsHallSecretaryDoorClosed, C1SceneUpstairsHallSecretaryDoorOpen, $ff

C1View0F:
    db C1SceneFireEscape3WindowClosed, C1SceneFireEscape3WindowOpen, $ff

C1View10:
    db C1SceneFireEscape2OfficeWindowClosed, C1SceneFireEscape2OfficeWindowOpen, $ff

C1View11:
    db C1SceneJoeStreetAllClosed, C1SceneJoeStreetFrontDoorOpen, C1SceneJoeStreetManholeOpen, C1SceneJoeStreetFrontDoorManholeOpen, C1SceneJoeStreetTrunkOpen, C1SceneJoeStreetFrontDoorTrunkOpen, C1SceneJoeStreetManholeTrunkOpen, C1SceneJoeStreetFrontDoorManholeTrunkOpen, C1SceneJoeStreetCarDoorOpen, C1SceneJoeStreetFrontDoorCarDoorOpen, C1SceneJoeStreetManholeCarDoorOpen, C1SceneJoeStreetFrontDoorManholeCarDoorOpen, C1SceneJoeStreetTrunkCarDoorOpen
jr_001_6692:
    db C1SceneJoeStreetFrontDoorTrunkCarDoorOpen, C1SceneJoeStreetManholeTrunkCarDoorOpen, C1SceneJoeStreetFrontDoorManholeTrunkCarDoorOpen, $ff

C1View12:
    db C1SceneNewsstandStreet, $ff

C1View13:
    db C1SceneGunShopFrontDoorClosed, C1SceneGunShopFrontDoorOpen, $ff

C1View14:
    db C1ScenePeoriaBlueCabStop, $ff

C1View15:
    db C1ScenePeoriaYellowCabStop, $ff

C1View16:
jr_001_669f:
    db C1SceneJoeAlleyManholeClosed, C1SceneJoeAlleyManholeOpen, $ff

C1View17:
    db C1ScenePoliceDoorClosed, C1ScenePoliceDoorOpen, $ff

C1View18:
    db C1SceneConstructionPit, $ff

C1View19:
    db C1SceneStanfordFrontBlueCabDoorClosed, C1SceneStanfordFrontYellowCabDoorClosed, C1SceneStanfordFrontBlueCabDoorOpen, C1SceneStanfordFrontYellowCabDoorOpen, $ff

C1View1A:
    db C1SceneBungalowFrontBlueCabDoorClosed, C1SceneBungalowFrontYellowCabDoorClosed, C1SceneBungalowFrontBlueCabDoorOpen, C1SceneBungalowFrontYellowCabDoorOpen, $ff

C1View1B:
    db C1SceneOfficeBuildingFrontBlueCabDoorClosed, C1SceneOfficeBuildingFrontYellowCabDoorClosed, C1SceneOfficeBuildingFrontBlueCabDoorOpen, C1SceneOfficeBuildingFrontYellowCabDoorOpen, $ff

C1View1C:
    db C1SceneEstateFrontBlueCab, C1SceneEstateFrontYellowCab, $ff

C1View1D:
    db C1SceneUpperSewerManholeClosed
jr_001_66ba:
    db C1SceneUpperSewerManholeOpen, $ff

C1View1E:
    db C1SceneRobbingMugger, $ff

C1View1F:
    db C1SceneBumEncounter, $ff

C1View20:
    db C1SceneArmedWoman, $ff

C1View21:
    db C1SceneFallenWoman, $ff

C1View22:
    db C1SceneCarTrunkClosed
jr_001_66c5:
    db C1SceneCarTrunkOpen, $ff

C1View23:
    db C1SceneLuxuryCarDashboardClosed, C1SceneLuxuryCarDashboardOpen, $ff

C1View24:
    db C1SceneAlligatorEncounter, C1SceneAlligatorShotView, $ff

C1View25:
    db C1SceneGunShopInterior, $ff

C1View26:
    db C1SceneBlueCabInterior, $ff

C1View27:
    db C1SceneYellowCabInterior, $ff

C1View28:
    db C1SceneStanfordLobbyElevatorDoorClosed, C1SceneStanfordLobbyElevatorDoorOpen, $ff

C1View29:
    db C1SceneStanfordElevatorClosed, C1SceneStanfordLiftAtLobbyOpen, $ff

C1View2A:
    db C1SceneStanfordPenthouseInterior, $ff

C1View2B:
    db C1SceneBungalowInterior, $ff

C1View2C:
    db C1SceneOfficeBuildingLobby, $ff

C1View2D:
    db C1SceneDoctorEntranceDoorClosed, C1SceneDoctorEntranceDoorOpen, $ff

C1View2E:
    db C1SceneDoctorOfficeInterior, $ff

C1View2F:
    db C1SceneAceOfficeDoorClosed, C1SceneAceOfficeDoorOpen, $ff

C1View30:
    db C1SceneAceOfficeNoGunman, C1SceneAceOfficeGunmanVisible, $ff

C1View31:
    db C1SceneMansionFrontDoor, $ff

; Offsets 0 and 3 share the original foyer scene; retain both state combinations.
C1View32:
    db C1SceneMansionVestibuleShared, C1SceneMansionButlerKitchenClosed, C1SceneMansionVestibuleKitchenOpenNoButler, C1SceneMansionVestibuleShared, $ff

C1View33:
    db C1SceneHitman, C1SceneHitmanAlt, $ff

C1View34:
    db C1SceneMansionKitchen, $ff

C1View35:
    db C1SceneMansionUpperHallBothDoorsClosed, C1SceneMansionUpperHallMasterDoorOpen, C1SceneMansionUpperHallGuestDoorOpen, C1SceneMansionUpperHallBothDoorsOpen, $ff

C1View36:
    db C1SceneMasterBedroomLinkDoorClosed, C1SceneMasterBedroomLinkDoorOpen, $ff

C1View37:
    db C1SceneGuestBedroomLinkDoorClosed, C1SceneGuestBedroomLinkDoorOpen, $ff

C1View38:
    db C1SceneLiftSewer, $ff

C1View39:
    db C1SceneSewerJunction, $ff

C1View3A:
    db C1SceneRackLadderSewer, $ff

C1View3B:
    db C1SceneJoeStreetLowerSewer, $ff

C1View3C:
    db C1SceneDeepestSewer, $ff

C1View3D:
    db C1SceneUpperSewerManholeClosed, C1SceneUpperSewerManholeOpen, $ff

C1View3E:
    db C1SceneArmedWomanPortrait, $ff

C1View3F:
    db C1SceneCasinoElevatorClosed, C1SceneHiddenOfficeLiftDoorOpen, $ff

C1View40:
    db C1SceneCasinoElevatorClosed, C1SceneTopFloorLiftDoorOpen, $ff

C1View41:
    db C1SceneStanfordElevatorClosed, C1SceneStanfordLiftAtPenthouseOpen, $ff

C1View42:
    db C1SceneBlueCabInterior, $ff

C1View43:
    db C1SceneYellowCabInterior, $ff

C1View44:
    db C1SceneBlueCabInterior, $ff

C1View45:
    db C1SceneYellowCabInterior, $ff

C1View46:
    db C1SceneBlueCabInterior, $ff

C1View47:
    db C1SceneYellowCabInterior, $ff

C1View48:
    db C1SceneBlueCabInterior, $ff

C1View49:
    db C1SceneYellowCabInterior, $ff

C1View4A:
    db C1SceneMuggerJoeStreet, $ff

C1View4B:
    db C1SceneMuggerNewsstand, $ff

C1View4C:
    db C1SceneMuggerGunShopStreet, $ff

C1View4D:
    db C1SceneMuggerPeoria, $ff

; BuildC1Scene shifts each raw count right by one.
C1StateCounts:
    db $02, $02, $04, $04, $02, $04, $02, $04, $02, $02, $02, $04, $04, $02, $02, $02
    db $02, $08, $00, $02, $00, $00, $02, $02, $00, $04, $04, $04, $02, $02, $00, $00
    db $00, $00, $02, $02, $02, $00, $00, $00, $02, $02, $00, $00, $00, $02, $00, $02
    db $02, $00, $04, $00, $00, $04, $02, $02, $00, $00, $00, $00, $00, $02, $00, $02
    db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
