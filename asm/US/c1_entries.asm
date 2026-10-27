; Room pointers select seven-byte entry lists ending with $ff.
C1EntryRefs:
    dw C1StartStallEntries
    dw C1StartWashroomEntries
    dw C1WashroomHallwayEntries
    dw C1WomenWashroomEntries
    dw C1WomenStallEntries
    dw C1BarEntries
    dw C1CellarEntries
    dw C1RackPassageEntries
    dw C1CasinoEntries
    dw C1CasinoLiftEntranceEntries
    dw C1CasinoLiftEntries
    dw C1TopFloorRoomEntries
    dw C1CorpseOfficeEntries
    dw C1SecretaryOfficeEntries
    dw C1UpstairsHallwayEntries
    dw C1FireEscape3Entries
    dw C1FireEscape2Entries
    dw C1JoeStreetEntries
    dw C1NewsstandStreetEntries
    dw C1GunShopStreetEntries
    dw C1PeoriaBlueCabStopEntries
    dw C1PeoriaYellowCabStopEntries
    dw C1JoeAlleyEntries
    dw C1PoliceFrontEntries
    dw C1ConstructionPitEntries
    dw C1StanfordFrontEntries
    dw C1BungalowFrontEntries
    dw C1OfficeBuildingFrontEntries
    dw C1EstateFrontEntries
    dw C1JoeStreetUpperSewerEntries
    dw C1AlleyMuggerEncounterEntries
    dw C1BumEncounterEntries
    dw C1ArmedWomanEncounterEntries
    dw C1FallenWomanStreetEntries
    dw C1CarRearEntries
    dw C1LuxuryCarEntries
    dw C1AlligatorEncounterEntries
    dw C1GunShopEntries
    dw C1BlueCabPeoriaEntries
    dw C1YellowCabPeoriaEntries
    dw C1StanfordLobbyEntries
    dw C1StanfordLobbyLiftEntries
    dw C1StanfordPenthouseEntries
    dw C1BungalowEntries
    dw C1OfficeBuildingLobbyEntries
    dw C1DoctorEntranceEntries
    dw C1DoctorOfficeEntries
    dw C1AceOfficeEntranceEntries
    dw C1AceOfficeEntries
    dw C1MansionFrontDoorEntries
    dw C1MansionVestibuleEntries
    dw C1Entry33
    dw C1MansionKitchenEntries
    dw C1MansionUpstairsHallwayEntries
    dw C1MansionMasterBedroomEntries
    dw C1MansionGuestBedroomEntries
    dw C1LiftSewerEntries
    dw C1SewerJunctionEntries
    dw C1RackLadderSewerEntries
    dw C1JoeStreetLowerSewerEntries
    dw C1DeepestSewerEntries
    dw C1JoeAlleyUpperSewerEntries
    dw C1Entry3E
    dw C1HiddenOfficeLiftEntries
    dw C1TopFloorLiftEntries
    dw C1StanfordPenthouseLiftEntries
    dw C1BlueCabStanfordEntries
    dw C1YellowCabStanfordEntries
    dw C1BlueCabBungalowEntries
    dw C1YellowCabBungalowEntries
    dw C1BlueCabOfficeBuildingEntries
    dw C1YellowCabOfficeBuildingEntries
    dw C1BlueCabEstateEntries
    dw C1YellowCabEstateEntries
    dw C1MuggerJoeStreetEntries
    dw C1MuggerNewsstandEntries
    dw C1MuggerGunShopStreetEntries
    dw C1MuggerPeoriaEntries

; Case I starting toilet stall physical room records.
C1StartStallEntries:
C1Entry00:
    db $2c, $4c, $30, $6f, $84, C1PortableCoat, C1ObjectCoat
    db $30, $3f, $30, $5f, $84, C1PortableGun1, C1ObjectGun1
    db $28, $47, $00, $0c, $00, C1TargetStartStallCeilingLight, $ff
    db $60, $6f, $60, $6f, $00, C1TargetStartStallToiletRoll, $ff
    db $18, $57, $20, $6f, $05, C1DoorIdStartStall, $ff
    db $ff

; Case I starting washroom physical room records.
C1StartWashroomEntries:
C1Entry01:
    db $28, $47, $04, $15, $00, C1TargetStartWashroomCeilingLight, $ff
    db $10, $2f, $18, $44, $80, C1TargetStartWashroomMirror, C1ObjectStartWashroomMirror
    db $10, $37, $50, $67, $00, C1TargetStartWashroomSink, $ff
    db $50, $6f, $18, $6f, $05, C1DoorIdStartWashroom, $ff
    db $30, $47, $18, $27, $00, C1TargetStartWashroomCrackedWall, $ff
    db $ff

; Case I washroom hallway physical room records.
C1WashroomHallwayEntries:
C1Entry02:
jr_005_40e4:
    db $21, $4a, $60, $6f, $00, C1TargetWashroomHallPuddle, $ff
    db $00, $20, $03, $6f, $05, C1DoorIdWomenWashroom
jr_005_40f1:
    db $ff
    db $55
jr_005_40f3:
    db $6f, $06, $4f, $05, C1DoorIdBar, $ff
    db $26, $2f, $30, $3f, $00, C1TargetWashroomHallWallMarks, $ff
    db $42, $4f, $23, $35, $00, C1TargetWashroomHallCrackedWall
jr_005_4106:
    db $ff
jr_005_4107:
    db $ff

; Case I women's washroom physical room records.
C1WomenWashroomEntries:
C1Entry03:
    db $38, $47, $60, $6f, $02, C1DisposalWomenWashroomWastebasket, C1ObjectWomenWashroomWastebasket
    db $29, $45, $00, $15, $00, C1TargetWomenWashroomLamp, $ff
    db $10, $2f, $19, $43, $80, C1TargetWomenWashroomMirror, C1ObjectWomenWashroomMirror
    db $10, $37, $50, $6f, $00, C1TargetWomenWashroomSink, $ff
    db $50, $6f, $18, $6f, $05, C1DoorIdWomenWashroom, $ff
jr_005_412b:
    db $00, $0f, $00, $6f, $05, C1DoorIdWomenStall, $ff
    db $ff

; Case I women's toilet stall physical room records.
C1WomenStallEntries:
C1Entry04:
    db $40, $6f, $68, $6f, $00, C1TargetWomenStallPuddle, $ff
    db $00, $07
jr_005_413c:
    db $40, $4f, $00, C1TargetWomenStallToiletRoll, $ff
    db $20, $4f, $28, $67, $01, C1ContainerWomenStallLid, $ff
jr_005_4148:
    db $10, $1f, $10, $1f, $00, C1TargetWomenStallWallMarks, $ff
    db $ff

; Case I bar physical room records.
C1BarEntries:
C1Entry05:
    db $60
jr_005_4151:
    db $67, $48, $4f, $83, C1ItemSeltzer, C1ObjectSeltzer
    db $00, $1f, $40, $6f, $05, C1DoorIdBarStairs, $ff
    db $50, $6f, $38, $6f, $00, C1TargetBarCounter, $ff
    db $20, $4f, $08, $2f, $80, C1TargetBarStreetWindow, C1ObjectBarStreetWindow
    db $04, $12, $04, $3f, $05, C1DoorIdCellar, $ff
    db $55, $6f, $04, $37, $05, C1DoorIdJoeFrontDoor, $ff
    db $ff

; Case I cellar physical room records.
C1CellarEntries:
C1Entry06:
    db $10, $1f, $42, $53, $00, C1TargetRackBottle, $ff
    db $00, $1f, $00, $6f, $05, C1DoorIdRackPassage, $ff
    db $30, $49, $35, $6f, $00, C1TargetCellarCobweb, $ff
    db $35, $3b
jr_005_4192:
    db $00, $0f, $00, C1TargetCellarLamp, $ff
jr_005_4197:
    db $52, $5f, $48, $53, $80, C1TargetCellarSpigot, C1ObjectCellarSpigot
    db $40, $6f, $00, $67, $00, C1TargetCellarBarrel, $ff
    db $ff

; Case I passage beside the rack physical room records.
C1RackPassageEntries:
C1Entry07:
    db $35, $3c, $00, $27, $00, C1TargetRackPassageBulb
jr_005_41ac:
    db $ff
    db $60, $67, $24, $6f, $05, C1DoorIdRackPassage, $ff
    db $00, $0f
jr_005_41b6:
    db $20, $5f, $05, C1DoorIdCasino, $ff
    db $24, $4a, $64, $6f, $05, C1DoorIdRackSewerLadder, $ff
    db $ff

; Case I casino physical room records.
C1CasinoEntries:
C1Entry08:
    db $14, $2a, $30, $3f, $00, C1TargetCasinoRoulette, $ff
    db $0c, $1f, $10, $26, $00, C1TargetCasinoSlotMachine1, $ff
jr_005_41d1:
    db $24, $37, $10, $26, $00, C1TargetCasinoSlotMachine2, $ff
    db $51, $6f, $00, $2f, $05, C1DoorIdCasino, $ff
    db $ff

; Case I casino lift entrance physical room records.
C1CasinoLiftEntranceEntries:
C1Entry09:
    db $58, $61, $3f, $48, $00, C1TargetCasinoLiftCallButton, $ff
    db $18, $4f, $0d, $6f, $05, C1DoorIdCasinoLift, $ff
    db $ff

; Case I casino lift physical room records.
C1CasinoLiftEntries:
C1Entry0A:
    db $5e, $6a, $30, $37, $00, C1TargetLiftTopFloorButton, $ff
    db $5e, $6a, $38, $3f, $00, C1TargetLiftHiddenOfficeButton, $ff
    db $5e, $6a, $40, $47, $00, C1TargetLiftCasinoButton, $ff
    db $5e, $6a
jr_005_4206:
    db $48, $4f, $00, C1TargetLiftSewerButton, $ff
    db $0f, $4f, $00, $6f, $05, C1DoorIdCasinoLift, $ff
    db $ff

; Case I top-floor room physical room records.
C1TopFloorRoomEntries:
C1Entry0B:
    db $09, $17, $60, $6f
jr_005_4217:
    db $02, C1DisposalTopFloorWastebasket, C1ObjectTopFloorWastebasket
    db $10, $18, $40, $47, $00, C1TargetTopFloorLiftCallButton, $ff
    db $19, $4e, $28, $6f, $00, C1TargetTopFloorChair, $ff
    db $54, $5b
jr_005_422a:
    db $60, $67, $83, C1ItemEmptyPentothalVial, C1ObjectEmptyPentothalVial
    db $5d, $64, $62, $69, $83, C1ItemTopFloorMedrezine, C1ObjectTopFloorMedrezine
    db $66, $6d
jr_005_4238:
    db $66
jr_005_4239:
    db $6d, $83, C1ItemEmptyDiethanolVial, C1ObjectEmptyDiethanolVial
    db $00, $08, $18, $6f, $05, C1DoorIdTopFloorLift, $ff
    db $58, $6f, $15, $5b, $05, C1DoorIdTopFloorWindow
jr_005_424a:
    db $ff
    db $ff

; Case I office containing the corpse physical room records.
C1CorpseOfficeEntries:
C1Entry0C:
    db $08, $28, $18, $2f, $01, C1ContainerCorpseOfficeWallSafe, $ff
    db $47, $5e, $5e, $67, $00, C1TargetCorpseOfficeHandset, $ff
    db $58, $6f, $10
jr_005_425d:
    db $34, $00, C1TargetCorpseOfficePhone, $ff
    db $30, $57, $00, $2f, $05, C1DoorIdCorpseOfficeWindow, $ff
    db $00, $4b, $44, $6f, $01, C1ContainerCorpseOfficeDesk, $ff
    db $0d, $55, $30, $5d, $01, C1ContainerSiegelPocket, $ff
    db $ff

; Case I secretary's office physical room records.
C1SecretaryOfficeEntries:
C1Entry0D:
    db $2a, $4c, $0b, $33, $00, C1TargetSecretaryWindow, $ff
    db $53, $6f, $0b, $33, $00, C1TargetSecretaryWindow, $ff
    db $28, $36, $35, $45, $00, C1TargetSecretaryDeskLamp, $ff
    db $39, $4c, $3a, $45, $00, C1TargetSecretaryTypewriter, $ff
    db $50
jr_005_4294:
    db $5d, $3d, $44, $00, C1TargetSecretaryPhone, $ff
    db $02, $1b, $04, $5e, $05, C1DoorIdCorpseOffice, $ff
    db $22, $5f, $46, $63, $01, C1ContainerSecretaryDesk, $ff
    db $ff

; Case I upstairs hallway physical room records.
C1UpstairsHallwayEntries:
C1Entry0E:
    db $08, $17, $18, $46, $00, C1TargetUpstairsPoster1, $ff
    db $5f, $6f, $1b, $3f, $00, C1TargetUpstairsPoster2, $ff
    db $51, $5d, $20, $3b, $00, C1TargetAcePoster, $ff
    db $24, $4b, $14, $58, $05, C1DoorIdSecretaryHall, $ff
    db $ff

; Case I third-floor fire escape physical room records.
C1FireEscape3Entries:
C1Entry0F:
    db $00, $6f, $24, $6f, $00, C1TargetThirdFloorFireEscape, $ff
    db $5b, $6c, $00
jr_005_42d0:
    db $1f, $05, C1DoorIdTopFloorWindow, $ff
    db $ff

; Case I second-floor fire escape physical room records.
C1FireEscape2Entries:
C1Entry10:
    db $67, $6f, $00, $27, $05, C1DoorIdCorpseOfficeWindow, $ff
    db $00, $6f, $18, $6f, $00, C1TargetSecondFloorFireEscapeDrop, $ff
    db $38, $5f, $20, $37, $05, C1DoorIdFireEscape3To2, $ff
    db $ff

; Case I street outside Joe's bar physical room records.
C1JoeStreetEntries:
C1Entry11:
    db $37, $68, $13, $28, $00
jr_005_42f0:
    db C1TargetJoeStreetWindow, $ff
    db $0d, $27, $2c, $4f
jr_005_42f6:
    db $05, C1DoorIdCarTrunk, $ff
    db $0c, $27, $3a, $4f, $05, C1DoorIdCarTrunk, $ff
    db $14, $2b, $13, $39, $05, C1DoorIdJoeFrontDoor, $ff
    db $40, $5b, $29, $5c, $05, C1DoorIdLuxuryCar, $ff
    db $30, $6f, $28, $5f, $00, C1TargetJoeStreetLuxuryCar, $ff
    db $00, $0d, $00, $4d, $05, C1DoorIdJoeStreetAlley, $ff
    db $30, $4f
jr_005_431e:
    db $68, $6f, $05, C1DoorIdJoeStreetManhole, $ff
    db $ff

; Case I newsstand street physical room records.
C1NewsstandStreetEntries:
C1Entry12:
    db $38, $4f, $28, $37, $00, C1TargetNewsBoy, $ff
    db $47, $5a, $3e, $51, $83, C1ItemNewspaper, C1ObjectNewspaper
    db $17, $58, $16, $51, $00, C1TargetSaleNewspaper, $ff
    db $14, $5b, $07, $60, $00, C1TargetNewsstand, $ff
    db $ff

; Case I gun-shop street physical room records.
C1GunShopStreetEntries:
C1Entry13:
    db $08, $58, $28
jr_005_4344:
    db $57, $80, C1TargetGunShopWindow, C1ObjectGunShopWindow
    db $10, $1f, $58, $6f, $02, C1DisposalGunShopStreetTrashCan, C1ObjectGunShopStreetTrashCan
jr_005_434f:
    db $60, $6f, $28, $6f, $05, C1DoorIdGunShop, $ff
    db $ff

; Case I Peoria blue-cab stop physical room records.
C1PeoriaBlueCabStopEntries:
C1Entry14:
    db $08, $68, $30, $6f, $05, C1DoorIdBlueCabPeoria, $ff
    db $ff

; Case I Peoria yellow-cab stop physical room records.
C1PeoriaYellowCabStopEntries:
C1Entry15:
jr_005_435f:
    db $08, $68, $30, $6f, $05, C1DoorIdYellowCabPeoria, $ff
    db $ff

; Case I alley behind Joe's bar physical room records.
C1JoeAlleyEntries:
C1Entry16:
    db $00, $27, $00, $10, $05, C1DoorIdFireEscape2ToAlley
jr_005_436d:
    db $ff
    db $37, $61, $5a
jr_005_4371:
    db $6f, $05, C1DoorIdJoeAlleyManhole, $ff
jr_005_4375:
    db $30, $67, $00, $4f, $05, C1DoorIdJoeStreetAlley, $ff
    db $ff

; Case I police station front physical room records.
C1PoliceFrontEntries:
C1Entry17:
    db $00, $0c
jr_005_437f:
    db $08, $3f, $00, C1TargetPoliceFrontStreetLamp, $ff
    db $63, $6f, $08, $3f, $00, C1TargetPoliceFrontStreetLamp, $ff
    db $20, $4f, $18, $50, $05, C1DoorIdPoliceStation, $ff
    db $ff

; Case I construction pit physical room records.
C1ConstructionPitEntries:
C1Entry18:
    db $ff

; Case I Stanford building front physical room records.
C1StanfordFrontEntries:
C1Entry19:
    db $32, $4b, $1c, $4f, $05, C1DoorIdStanfordEntrance, $ff
    db $00, $2f, $46, $6f, $05, C1DoorIdBlueCabStanford, $ff
    db $40, $6f, $45, $6f, $05, C1DoorIdYellowCabStanford, $ff
    db $00, $6f, $00, $57, $00, C1TargetStanfordBuilding, $ff
    db $ff

; Case I bungalow front physical room records.
C1BungalowFrontEntries:
C1Entry1A:
    db $33, $4b, $00, $30, $05, C1DoorIdBungalow, $ff
    db $00, $2f, $45
jr_005_43bb:
    db $6f, $05, C1DoorIdBlueCabBungalow, $ff
    db $40, $6f, $45
jr_005_43c2:
    db $6f, $05, C1DoorIdYellowCabBungalow, $ff
    db $18, $6f, $00, $5f, $00, C1TargetBungalowExterior, $ff
    db $ff

; Case I office building front physical room records.
C1OfficeBuildingFrontEntries:
C1Entry1B:
    db $20, $41, $1f, $50, $05, C1DoorIdOfficeBuildingEntrance, $ff
    db $00, $57, $45, $6f, $05, C1DoorIdBlueCabOfficeBuilding, $ff
jr_005_43dc:
    db $40, $6f
jr_005_43de:
    db $45
jr_005_43df:
    db $6f, $05, C1DoorIdYellowCabOfficeBuilding, $ff
    db $00, $6f, $00, $58, $00, C1TargetOfficeBuildingExterior, $ff
    db $ff

; Case I estate front physical room records.
C1EstateFrontEntries:
C1Entry1C:
    db $50, $67, $38, $6f, $01, C1ContainerEstateMailbox, $ff
    db $00, $2f, $45, $6f, $05, C1DoorIdBlueCabEstate, $ff
    db $00, $2f, $45, $6f, $05, C1DoorIdYellowCabEstate, $ff
    db $00, $6f, $10, $44, $05, C1DoorIdEstateApproach, $ff
    db $ff

; Case I upper sewer below Joe's street physical room records.
C1JoeStreetUpperSewerEntries:
C1Entry1D:
    db $25, $4a, $22, $6f, $05, C1DoorIdJoeStreetSewerLadder, $ff
    db $02, $6c
jr_005_4411:
    db $00, $21, $05, C1DoorIdJoeStreetManhole, $ff
    db $ff

; Case I alley mugger encounter physical room records.
C1AlleyMuggerEncounterEntries:
C1Entry1E:
    db $00, $6f, $18, $6f, $00, C1TargetRobbingMugger, $ff
    db $ff

; Case I bum encounter physical room records.
C1BumEncounterEntries:
C1Entry1F:
    db $00, $4c, $16, $6f, $00, C1TargetBum, $ff
    db $4d, $6f, $48, $6f, $02, C1DisposalBumEncounterTrashCan, $ff
    db $ff

; Case I armed woman encounter physical room records.
C1ArmedWomanEncounterEntries:
C1Entry20:
    db $18, $5c, $08, $6f, $00, C1TargetArmedWoman, $ff
    db $ff

; Case I street with the fallen woman physical room records.
C1FallenWomanStreetEntries:
C1Entry21:
    db $02
jr_005_4437:
    db $17, $48, $59, $84, C1PortableHandbag, C1ObjectHandbag
    db $08, $5e, $1c, $7f, $00, C1TargetFallenWoman, $ff
    db $ff

; Case I rear of the car physical room records.
C1CarRearEntries:
C1Entry22:
    db $00, $6f, $00, $13, $00, C1TargetCarRearExterior
Jump_005_444b:
    db $ff
    db $00, $6f, $14, $6f, $05, C1DoorIdCarTrunk, $ff
    db $26, $3d, $22, $2c, $83, C1ItemGag, C1ObjectGag
    db $18, $59, $18, $59
jr_005_445e:
    db $00, C1TargetMrsSternwood, $ff
    db $ff

; Case I luxury car interior physical room records.
C1LuxuryCarEntries:
C1Entry23:
    db $50, $6f, $33, $42, $81, C1ContainerLuxuryCarDashboard, $ff
    db $28, $2f, $50, $5f, $00, C1TargetCarGasPedal, $ff
    db $18, $22, $50, $58, $00, C1TargetCarBrake, $ff
    db $08, $12, $50, $58, $00, C1TargetCarClutch, $ff
    db $08, $2f, $20, $47, $00, C1TargetCarSteeringWheel, $ff
    db $30, $36, $37, $3e, $00
jr_005_448a:
    db C1TargetCarIgnition, $ff
jr_005_448c:
    db $00, $07, $48, $4f, $00, C1TargetCarHoodRelease, $ff
    db $ff

; Case I alligator encounter physical room records.
C1AlligatorEncounterEntries:
C1Entry24:
jr_005_4494:
    db $00, $4f, $00, $6f, $00, C1TargetAlligator
jr_005_449a:
    db $ff
    db $ff

; Case I gun shop interior physical room records.
C1GunShopEntries:
C1Entry25:
    db $10, $5f, $60, $6f, $00, C1TargetGunShopPriceSign, $ff
    db $2a, $48, $34, $5b, $84, C1PortableGun3, C1ObjectGun3
    db $1a, $21, $36, $3d, $83, C1ItemGunShopBullet2Slot1, C1ObjectGunShopBullet2Slot1
    db $22, $29, $36, $3d
jr_005_44b5:
    db $83, C1ItemGunShopBullet2Slot2
jr_005_44b7:
    db C1ObjectGunShopBullet2Slot2
    db $1a, $21, $46, $4d, $83
jr_005_44bd:
    db C1ItemGunShopBullet2Slot3, C1ObjectGunShopBullet2Slot3
    db $22, $29, $46, $4d, $83, C1ItemGunShopBullet2Slot4, C1ObjectGunShopBullet2Slot4
    db $1a, $21, $56, $5d, $83, C1ItemGunShopBullet2Slot5, C1ObjectGunShopBullet2Slot5
    db $22, $29, $56, $5d, $83, C1ItemGunShopBullet2Slot6, C1ObjectGunShopBullet2Slot6
jr_005_44d4:
    db $52, $59, $36, $3d, $83, C1ItemGunShopBullet1Slot1, C1ObjectGunShopBullet1Slot1
    db $5a, $61, $36, $3d, $83, C1ItemGunShopBullet1Slot2, C1ObjectGunShopBullet1Slot2
    db $52, $59, $46, $4d, $83, C1ItemGunShopBullet1Slot3, C1ObjectGunShopBullet1Slot3
    db $5a, $61, $46, $4d, $83, C1ItemGunShopBullet1Slot4, C1ObjectGunShopBullet1Slot4
    db $52, $59, $56, $5d, $83, C1ItemGunShopBullet1Slot5, C1ObjectGunShopBullet1Slot5
    db $5a, $61, $56, $5d, $83, C1ItemGunShopBullet1Slot6, C1ObjectGunShopBullet1Slot6
    db $08, $6a, $00, $28, $00
jr_005_4503:
    db C1TargetGunShopClerk, $ff
    db $ff

; Case I blue cab at Peoria Street physical room records.
C1BlueCabPeoriaEntries:
C1Entry26:
    db $00, $36, $17, $51, $00, C1TargetBlueCabDriver, $ff
    db $50, $6f, $42, $4f, $00, C1TargetPeoriaCabFareMeter, $ff
    db $38, $6f, $58, $6f, $00, C1TargetBlueCabFareSlot, $ff
    db $ff

; Case I yellow cab at Peoria Street physical room records.
C1YellowCabPeoriaEntries:
C1Entry27:
    db $00, $36, $17, $51, $00, C1TargetYellowCabDriver, $ff
    db $50, $6f, $42, $4f, $00, C1TargetPeoriaCabFareMeter, $ff
    db $38, $6f, $58, $6f, $00, C1TargetYellowCabFareSlot, $ff
    db $ff

; Case I Stanford lobby physical room records.
C1StanfordLobbyEntries:
C1Entry28:
    db $48, $4f, $28, $2f, $00, C1TargetStanfordOuterCardSlot, $ff
    db $28, $47, $18, $48, $05, C1DoorIdStanfordLobbyLift, $ff
    db $ff

; Case I Stanford lobby lift physical room records.
C1StanfordLobbyLiftEntries:
C1Entry29:
    db $5d, $6a, $30, $49, $00, C1TargetStanfordInnerCardSlot, $ff
    db $07, $50, $00, $6f, $05, C1DoorIdStanfordLobbyLift, $ff
    db $ff

; Case I Stanford penthouse physical room records.
C1StanfordPenthouseEntries:
C1Entry2A:
    db $21, $31, $50, $58, $83, C1ItemMagazine, C1ObjectMagazine
    db $4d, $5d, $30, $36, $83, C1ItemPhoto, C1ObjectPhoto
    db $00, $17, $52, $6f, $00, C1TargetPenthouseChair, $ff
jr_005_4565:
    db $00, $3b, $30, $4f, $00, C1TargetPenthouseSofa, $ff
    db $60, $6f, $46, $61, $00, C1TargetPenthouseBookcase, $ff
    db $48, $59, $36, $53, $00, C1TargetPenthouseFireplace, $ff
    db $08, $2f, $08, $2f, $00, C1TargetPenthouseArt, $ff
    db $18, $47, $50, $62
jr_005_4585:
    db $00, C1TargetPenthouseLowTable, $ff
    db $5a, $6e, $03, $2f, $80, C1TargetPenthouseRoundMirror
jr_005_458e:
    db C1ObjectPenthouseRoundMirror
    db $30, $4f
jr_005_4591:
    db $00, $1d, $00, C1TargetPenthouseChandelier, $ff
    db $ff

; Case I bungalow interior physical room records.
C1BungalowEntries:
C1Entry2B:
    db $04, $0b, $38, $3f
jr_005_459b:
    db $83, C1ItemEarring, C1ObjectEarring
    db $0c, $13, $38, $3f, $83, C1ItemNote3, C1ObjectNote3
    db $14, $1b, $38, $3f, $83, C1ItemNote4, C1ObjectNote4
    db $2f, $6f, $3d, $6f, $00, C1TargetBungalowCot, $ff
    db $08, $29, $04, $2c, $00
jr_005_45b8:
    db C1TargetBungalowWindow, $ff
    db $00, $27, $38, $5f, $01, C1ContainerBungalowDesk, $ff
    db $ff

; Case I office building lobby physical room records.
C1OfficeBuildingLobbyEntries:
C1Entry2C:
    db $00, $2f, $08, $6f, $05, C1DoorIdAceOfficeStairs, $ff
    db $30, $50, $30, $50, $05, C1DoorIdDoctorOfficeHall, $ff
    db $ff

; Case I doctor's office entrance physical room records.
C1DoctorEntranceEntries:
C1Entry2D:
    db $0e, $60, $00, $6f, $05, C1DoorIdDoctorOffice, $ff
    db $ff

; Case I doctor's office physical room records.
C1DoctorOfficeEntries:
C1Entry2E:
    db $50
jr_005_45da:
    db $67, $07
jr_005_45dc:
    db $28, $00
jr_005_45de:
    db C1TargetDoctorEyeChart, $ff
jr_005_45e0:
    db $44
jr_005_45e1:
    db $5b, $32, $41, $81, C1ContainerDoctorLockedCabinet, C1ObjectDoctorCabinet
    db $0f
jr_005_45e8:
    db $17, $15, $1c, $83, C1ItemOfreeallVial1, C1ObjectOfreeallVial1
    db $1a, $21, $16, $1d, $83, C1ItemDoctorMedrezineVial1, C1ObjectDoctorMedrezineVial1
    db $29, $31, $17, $1e, $83, C1ItemPentothalVial1, C1ObjectPentothalVial1
    db $33, $3b, $18, $1f, $83, C1ItemChemopapainVial, C1ObjectChemopapainVial
    db $0c, $16, $23, $2a, $83, C1ItemBisodiumitisVial1, C1ObjectBisodiumitisVial1
    db $18, $21, $24, $2b, $83, C1ItemBicarbonateVial, C1ObjectBicarbonateVial
    db $28, $30, $24, $2b, $83, C1ItemOfreeallVial2, C1ObjectOfreeallVial2
    db $31, $39, $25
jr_005_461b:
    db $2c, $83
jr_005_461d:
    db C1ItemDoctorMedrezineVial2, C1ObjectDoctorMedrezineVial2
    db $06, $10, $43, $4a, $83, C1ItemBisodiumitisVial2, C1ObjectBisodiumitisVial2
jr_005_4626:
    db $11, $19, $42, $49, $83, C1ItemPentothalVial2, C1ObjectPentothalVial2
jr_005_462d:
    db $1f, $27, $41, $48, $83, C1ItemPentothalVial3, C1ObjectPentothalVial3
    db $2a, $33, $40, $4f, $83, C1ItemBisodiumitisVial3, C1ObjectBisodiumitisVial3
    db $00, $3f, $0a, $6f, $00, C1TargetDoctorDrugCabinet, $ff
    db $ff

; Case I Ace's office entrance physical room records.
C1AceOfficeEntranceEntries:
C1Entry2F:
jr_005_4643:
    db $1a, $55, $0a, $4d, $80, C1TargetAceOfficeDoorShadow, C1ObjectAceOfficeDoorShadow
    db $09, $67, $00, $7f, $05, C1DoorIdAceOffice, $ff
    db $00, $07, $23, $3f, $00, C1TargetAceEntranceWallMarks1, $ff
    db $68, $7f, $0c, $24, $00, C1TargetAceEntranceCrackedWall, $ff
    db $68, $7f, $39, $57, $00, C1TargetAceEntranceWallMarks2, $ff
    db $ff

; Case I Ace's office physical room records.
C1AceOfficeEntries:
C1Entry30:
    db $00, $50, $48, $6f, $01, C1ContainerAceOfficeDesk, $ff
    db $00, $17, $32, $3f, $81, C1ContainerAceOfficeCabinet, C1ObjectAceCabinet
    db $1e, $3b, $06, $31, $00, C1TargetAceOfficeWindow, $ff
    db $51, $61, $51, $67, $00, C1TargetAceOfficeDeadMan, $ff
    db $54, $6f, $16, $28, $00, C1TargetAceOfficeShelf, $ff
    db $36, $57, $00, $47, $00, C1TargetAceOfficeCrackedWall, $ff
    db $02, $0f, $00, $0e, $00, C1TargetAceOfficeWallMarks, $ff
    db $ff

; Case I mansion front door physical room records.
C1MansionFrontDoorEntries:
C1Entry31:
    db $23, $4c, $00, $2c, $00, C1TargetMansionDoorKnocker, $ff
    db $07, $68, $00, $6f, $05, C1DoorIdMansionFrontDoor, $ff
    db $ff

; Case I mansion vestibule physical room records.
C1MansionVestibuleEntries:
C1Entry32:
    db $18, $58, $10, $6f, $00, C1TargetMansionButler, $ff
    db $38, $57, $00, $1f, $00, C1TargetMansionChandelier, $ff
    db $53, $64, $20, $3f, $05, C1DoorIdMansionKitchen, $ff
    db $0e, $4f, $04, $61, $05, C1DoorIdMansionStairs, $ff
    db $ff

C1Entry33:
    db $ff

; Case I mansion kitchen physical room records.
C1MansionKitchenEntries:
C1Entry34:
    db $48, $4f, $34, $3d, $84, C1PortableJar1, C1ObjectJar1
    db $12, $1d, $1c, $2d, $84, C1PortableJar2, C1ObjectJar2
    db $20, $2c, $1c, $2b, $84, C1PortableJar3, C1ObjectJar3
    db $30, $3f, $3a, $45, $83, C1ItemSausage, C1ObjectSausage
    db $40, $4c, $16, $25, $83, C1ItemPlate, C1ObjectPlate
    db $30, $3e, $00, $17, $83, C1ItemFryingPan, C1ObjectFryingPan
    db $53, $5f, $14, $25, $83, C1ItemPitcher, C1ObjectPitcher
    db $18, $67
jr_005_46f9:
    db $38, $67, $00, C1TargetMansionKitchenTable, $ff
    db $ff

; Case I mansion upstairs hallway physical room records.
C1MansionUpstairsHallwayEntries:
C1Entry35:
    db $47, $60, $0b
jr_005_4702:
    db $48, $05, C1DoorIdMansionMasterBedroom, $ff
    db $08, $20, $08, $62, $05, C1DoorIdMansionGuestBedroom, $ff
    db $ff

; Case I mansion master bedroom physical room records.
C1MansionMasterBedroomEntries:
C1Entry36:
    db $20, $3f, $28, $31, $84, C1PortableBriefcase, C1ObjectBriefcase
    db $38, $42, $1b, $2d, $00, C1TargetMasterBedroomLamp, $ff
jr_005_471c:
    db $20, $47, $2a, $3f, $01, C1ContainerMasterBedroomTable, $ff
    db $38, $6a, $2c, $46
jr_005_4727:
    db $00, C1TargetMrSternwood
jr_005_4729:
    db $ff
    db $00, $1e, $00, $39, $05, C1DoorIdMansionBedroomLink, $ff
    db $10, $6f, $10, $5f, $00, C1TargetMasterBedroomBed, $ff
    db $ff

; Case I mansion guest bedroom physical room records.
C1MansionGuestBedroomEntries:
C1Entry37:
    db $0a, $24, $00, $14, $80, C1TargetGuestBedroomMirror, C1ObjectGuestBedroomMirror
    db $39, $49, $19
jr_005_4743:
    db $31, $00, C1TargetGuestBedroomLamp, $ff
    db $33, $5f, $2d, $44, $01, C1ContainerGuestBedroomTable, $ff
    db $0e, $49, $2e, $47, $00, C1TargetSleepingWoman, $ff
    db $64, $6f, $00, $3d
jr_005_4759:
    db $05, C1DoorIdMansionBedroomLink, $ff
    db $08, $69, $1b, $61
jr_005_4760:
    db $00, C1TargetGuestBedroomBed
jr_005_4762:
    db $ff
    db $ff

; Case I sewer below the lift physical room records.
C1LiftSewerEntries:
C1Entry38:
    db $22
jr_005_4765:
    db $6c, $1d, $66, $05, C1DoorIdLiftToRackSewer, $ff
    db $ff

; Case I sewer junction physical room records.
C1SewerJunctionEntries:
C1Entry39:
    db $05, $31, $28, $6b, $05, C1DoorIdJoeStreetSewerJunction, $ff
    db $40, $6e, $28, $6b, $05, C1DoorIdRackSewerJunction, $ff
    db $1b, $52, $00, $22, $05, C1DoorIdJoeAlleySewerLadder, $ff
    db $ff

; Case I sewer at the rack ladder physical room records.
C1RackLadderSewerEntries:
C1Entry3A:
    db $1b, $52, $00, $58, $05, C1DoorIdRackSewerLadder, $ff
    db $ff

; Case I lower sewer below Joe's street physical room records.
C1JoeStreetLowerSewerEntries:
C1Entry3B:
    db $04, $1c, $00, $31, $05, C1DoorIdJoeStreetSewerLadder, $ff
    db $22, $6c, $1d, $66, $05, C1DoorIdJoeStreetSewerJunction, $ff
    db $ff

; Case I deepest sewer physical room records.
C1DeepestSewerEntries:
C1Entry3C:
    db $10, $5f, $20, $5f, $02, C1DisposalDeepSewer, $ff
    db $58, $6f, $00, $0f, $05, C1DoorIdDeepestSewerTunnel, $ff
    db $ff

; Case I upper sewer below Joe's alley physical room records.
C1JoeAlleyUpperSewerEntries:
C1Entry3D:
    db $25, $4a, $22, $6f, $05, C1DoorIdJoeAlleySewerLadder, $ff
    db $02, $6c, $00, $21, $05, C1DoorIdJoeAlleyManhole, $ff
    db $ff

C1Entry3E:
    db $ff

; Case I hidden office lift physical room records.
C1HiddenOfficeLiftEntries:
C1Entry3F:
    db $5e, $6a, $30, $37, $00, C1TargetLiftTopFloorButton, $ff
    db $5e, $6a, $38, $3f, $00, C1TargetLiftHiddenOfficeButton, $ff
    db $5e, $6a, $40, $47, $00, C1TargetLiftCasinoButton, $ff
    db $5e, $6a, $48, $4f, $00, C1TargetLiftSewerButton, $ff
    db $0f, $4f, $00, $6f, $05, C1DoorIdHiddenOfficeLift, $ff
    db $ff

; Case I top-floor lift physical room records.
C1TopFloorLiftEntries:
C1Entry40:
    db $5e, $6a, $30, $37, $00, C1TargetLiftTopFloorButton
jr_005_47e2:
    db $ff
    db $5e, $6a, $38, $3f, $00, C1TargetLiftHiddenOfficeButton, $ff
    db $5e, $6a, $40, $47, $00, C1TargetLiftCasinoButton, $ff
    db $5e, $6a
jr_005_47f3:
    db $48, $4f, $00, C1TargetLiftSewerButton, $ff
    db $0f, $4f, $00, $6f
jr_005_47fc:
    db $05, C1DoorIdTopFloorLift, $ff
    db $ff

; Case I Stanford penthouse lift physical room records.
C1StanfordPenthouseLiftEntries:
C1Entry41:
    db $5d, $6a
jr_005_4802:
    db $30, $49, $00, C1TargetStanfordInnerCardSlot, $ff
    db $07, $50, $00, $6f, $05, C1DoorIdStanfordPenthouseLift, $ff
    db $ff

; Case I blue cab at the Stanford building physical room records.
C1BlueCabStanfordEntries:
C1Entry42:
    db $00, $36, $17, $51, $00, C1TargetBlueCabDriver, $ff
    db $38, $6f, $58, $6f, $00, C1TargetBlueCabFareSlot, C1ObjectCabAwayFareSlot
    db $ff

; Case I yellow cab at the Stanford building physical room records.
C1YellowCabStanfordEntries:
C1Entry43:
    db $00, $36, $17, $51, $00, C1TargetYellowCabDriver, $ff
    db $38, $6f, $58, $6f, $00, C1TargetYellowCabFareSlot, C1ObjectCabAwayFareSlot
    db $ff

; Case I blue cab at the bungalow physical room records.
C1BlueCabBungalowEntries:
C1Entry44:
    db $00, $36, $17, $51, $00, C1TargetBlueCabDriver, $ff
    db $38, $6f, $58, $6f, $00, C1TargetBlueCabFareSlot, C1ObjectCabAwayFareSlot
    db $ff

; Case I yellow cab at the bungalow physical room records.
C1YellowCabBungalowEntries:
C1Entry45:
    db $00, $36, $17, $51, $00, C1TargetYellowCabDriver, $ff
    db $38, $6f, $58, $6f, $00, C1TargetYellowCabFareSlot, C1ObjectCabAwayFareSlot
    db $ff

; Case I blue cab at the office building physical room records.
C1BlueCabOfficeBuildingEntries:
C1Entry46:
    db $00, $36, $17, $51, $00, C1TargetBlueCabDriver, $ff
    db $38, $6f, $58, $6f, $00, C1TargetBlueCabFareSlot, C1ObjectCabAwayFareSlot
    db $ff

; Case I yellow cab at the office building physical room records.
C1YellowCabOfficeBuildingEntries:
C1Entry47:
    db $00, $36, $17, $51, $00, C1TargetYellowCabDriver, $ff
    db $38, $6f, $58, $6f, $00, C1TargetYellowCabFareSlot, C1ObjectCabAwayFareSlot
    db $ff

; Case I blue cab at the estate physical room records.
C1BlueCabEstateEntries:
C1Entry48:
    db $00, $36, $17, $51, $00, C1TargetBlueCabDriver, $ff
    db $38, $6f, $58, $6f, $00, C1TargetBlueCabFareSlot, C1ObjectCabAwayFareSlot
    db $ff

; Case I yellow cab at the estate physical room records.
C1YellowCabEstateEntries:
C1Entry49:
    db $00, $36, $17, $51, $00, C1TargetYellowCabDriver, $ff
    db $38, $6f, $58, $6f, $00, C1TargetYellowCabFareSlot, C1ObjectCabAwayFareSlot
    db $ff

; Case I mugger encounter at Joe's street physical room records.
C1MuggerJoeStreetEntries:
C1Entry4A:
    db $10, $5e, $18, $6f, $00, C1TargetShootingMuggerVariant1, $ff
    db $ff

; Case I mugger encounter at the newsstand physical room records.
C1MuggerNewsstandEntries:
C1Entry4B:
    db $40, $47, $28, $2f, $80, C1TargetShootingMuggerVariant2, C1ObjectShootingMuggerVariant2
jr_005_4896:
    db $30, $37, $28, $2f, $80, C1TargetShootingMuggerVariant3, C1ObjectShootingMuggerVariant3
    db $10, $5e, $18, $6f, $00, C1TargetShootingMuggerVariant1, $ff
    db $ff

; Case I mugger encounter at the gun-shop street physical room records.
C1MuggerGunShopStreetEntries:
C1Entry4C:
jr_005_48a5:
    db $40, $47, $28, $2f, $80, C1TargetShootingMuggerVariant2, C1ObjectShootingMuggerVariant2
    db $30, $37, $28, $2f, $80, C1TargetShootingMuggerVariant3, C1ObjectShootingMuggerVariant3
    db $38
jr_005_48b4:
    db $3f, $30, $3f, $80, C1TargetShootingMuggerVariant4, C1ObjectShootingMuggerVariant4
    db $10, $5e, $18, $6f, $00, C1TargetShootingMuggerVariant1, $ff
    db $ff

; Case I mugger encounter at Peoria Street physical room records.
C1MuggerPeoriaEntries:
C1Entry4D:
jr_005_48c2:
    db $30, $37, $28, $2f, $80, C1TargetShootingMuggerVariant3, C1ObjectShootingMuggerVariant3
    db $10, $5e, $18, $6f, $00, C1TargetShootingMuggerVariant1, $ff
    db $ff
