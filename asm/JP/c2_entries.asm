; Room pointers select seven-byte entry lists ending with $ff.
C2EntryRefs:
Case2RoomObjects:
    db LOW(Case2BathroomObjects)
jr_005_48d2:
    db HIGH(Case2BathroomObjects)
    dw VegasBedroomEntries
    dw VegasHall1Entries
    db LOW(VegasLobbyEntries)
jr_005_48d8:
    db HIGH(VegasLobbyEntries)
    dw VegasCashierEntries
    dw VegasBlackjackEntries
    dw EmptyCase2Entries
jr_005_48df:
    dw VegasLift1Entries
jr_005_48e1:
    dw VegasLift2Entries
    dw VegasLift3Entries
jr_005_48e5:
    dw VegasLift4Entries
    dw VegasHall2Entries
    dw VegasHall3Entries
    dw VegasHamperEntries
    dw VegasHall4Entries
    db LOW(VegasVentiniOfficeEntries)
jr_005_48f0:
    db HIGH(VegasVentiniOfficeEntries)
    dw VegasMaloneOfficeEntries
    dw HotelFrontEntries
    db LOW(DesertCactusThornRockEntries)
jr_005_48f6:
    db HIGH(DesertCactusThornRockEntries)
    dw OutskirtsEntries
    dw StationEntries
jr_005_48fb:
    dw VegasStationLobbyEntries
    dw VegasLuggageClaimEntries
    dw VegasPlatform6Entries
    dw VegasPlatform7Entries
    dw VegasPlatform8Entries
    dw VegasPlatform9Entries
    dw TrainCarAEntries
    dw TrainCarBEntries
    dw TrainCarAEntries
    dw TrainCarBEntries
    db LOW(TrainCarAEntries)
jr_005_4910:
    db HIGH(TrainCarAEntries)
    dw TrainCarBEntries
    dw TrainCarAEntries
    dw TrainCarBEntries
    dw TrainCarAEntries
    dw TrainCarBEntries
    dw TrainCarAEntries
    dw TrainCarBEntries
    dw TrainCarAEntries
    dw TrainCarBEntries
    dw TrainCarAEntries
    dw TrainCarBEntries
    dw ChicagoStationLobbyEntries
    dw ChicagoPlatform2Entries
    dw ChicagoPlatform3Entries
jr_005_492d:
    dw ChicagoPlatform4Entries
    dw ChicagoPlatform5Entries
    dw ChicagoStationFrontEntries
    dw CabInteriorEntries
    db LOW(AdisonApartmentFrontEntries)
jr_005_4936:
    db HIGH(AdisonApartmentFrontEntries)
    dw AdisonHallwayEntries
    dw AdisonApartmentEntries
    db LOW(JoeFrontEntries)
jr_005_493c:
    db HIGH(JoeFrontEntries)
jr_005_493d:
    dw JoeAlleyEntries
    dw JoeFireEscapeEntries
    dw JoeOfficeEntries
    dw JoeRearAlleyEntries
    dw JoeRearHallwayEntries
    dw JoeBarEntries
    dw JoeCellarEntries
    dw JoeChamberEntries
    dw JoeCasinoEntries
    dw JoeUpstairsHallwayEntries
    dw PoliceStationFrontEntries
    dw SugarApartmentFrontEntries
jr_005_4955:
    dw SugarApartmentEntries
    dw MorgueFrontEntries
    dw MorgueReceptionEntries
    dw MorgueColdRoomEntries
    dw HamperEntries
    dw LaundryEntries
    dw CleanersHallwayEntries
    dw OuterOfficeEntries
    dw SecretOfficeEntries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw EmptyCase2Entries
    dw CabInteriorEntries
    dw CabInteriorEntries
    dw CabInteriorEntries
    dw CabInteriorEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
jr_005_49ad:
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
jr_005_49f5:
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
jr_005_49fb:
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
jr_005_4a01:
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
jr_005_4a07:
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries
jr_005_4a0d:
    dw DesertCactusRockGrassEntries
    dw DesertTreeGrassSkullEntries
    dw DesertCactusThornRockEntries

C2Entry00:
jr_005_4a13:
Case2BathroomObjects:
    db $4e, $58, $2d, $3c, $83, C2ItemTowel, C2VisIdBathTowel
    db $29
jr_005_4a1b:
    db $38, $17, $3e, $84, C2ItemTrench, C2VisIdBathTrench
    db $39, $45, $17, $35, $84, C2ItemPants, C2VisIdBathPants
    db $66, $6f, $13, $28, $80
jr_005_4a2d:
    db C2TargetBathMirror, C2VisIdBathMirrorBroken
    db $66, $6f, $13, $28, $00
jr_005_4a34:
    db C2TargetBathMirror, $ff
    db $10, $1a, $3d
jr_005_4a39:
    db $47, $80, C2TargetBathSink, C2VisIdBathRunningWater
    db $00, $25
jr_005_4a3f:
    db $38, $6f, $00, C2TargetBathTub, $ff
    db $1b
jr_005_4a45:
    db $22, $31, $37, $00, C2TargetBathColdTap, $ff
    db $10, $17, $31, $37, $00, C2TargetBathHotTap
jr_005_4a51:
    db $ff
    db $49, $5f, $2d, $32, $00
jr_005_4a57:
    db C2TargetBathTowelRod, $ff
    db $28, $48, $10, $4f
jr_005_4a5d:
    db $05, C2TargetVegasBathDoor, $ff
    db $ff

; Case II Lucky Dice hotel bedroom physical room records.
VegasBedroomEntries:
C2Entry01:
    db $47, $58
jr_005_4a63:
    db $08, $1f, $80, C2TargetBedroomMirror, C2VisIdBedroomMirrorBroken
    db $47
jr_005_4a69:
    db $58, $08, $1f, $00, C2TargetBedroomMirror, $ff
    db $55, $5b, $5f, $65, $83, C2Ring1, C2VisIdBedroomCigarRing
    db $68, $6f, $00, $3e, $80, C2TargetBedroomWindow, C2VisIdBedroomWindowBroken
    db $68, $6f, $00, $3e, $00, C2TargetBedroomWindow, C2VisIdBedroomWindowIntact
    db $4a, $56, $26, $2a, $83, C2ItemTimetable, C2VisIdBedroomTimetable
    db $0f, $23, $2c, $34, $83, C2ItemPillow, C2VisIdBedroomPillow
    db $60, $67, $00, $3c, $00, C2TargetBedroomCurtain, C2VisIdBedroomCurtainOpen
    db $60, $6f, $00, $3f, $00, C2TargetBedroomCurtain, C2VisIdBedroomCurtainClosed
    db $00, $26, $20
jr_005_4aa3:
    db $5f, $00, C2TargetBedroomBed, $ff
    db $11, $22, $08, $18, $00
jr_005_4aac:
    db C2TargetBedroomPainting, $ff
    db $3f, $5f
jr_005_4ab0:
    db $27, $48, $01, C2ContainerVegasDresser, $ff
    db $27, $38, $2e, $47, $01, C2ContainerVegasNightstand, $ff
    db $ff

; Case II hotel first-floor hallway physical room records.
VegasHall1Entries:
C2Entry02:
    db $26, $49, $00, $07, $00, C2TargetHotelCasinoSign, $ff
    db $00, $0e, $40, $4f, $83, C2ItemVegasHallPlant, C2VisIdVegasHallPlant
    db $26, $49, $08, $30, $05, C2TargetHotelLobbyDoor, $ff
    db $08, $1a, $00, $47, $05, C2TargetVegasLift1Door, $ff
    db $55, $61, $00, $49, $05, C2TargetHotelQuietGuestDoor, $ff
    db $00, $10, $48, $65, $00, C2TargetHotelHallTable
jr_005_4ae6:
    db $ff
    db $67, $6f, $01, $11, $00, C2TargetHotelLitLamp, $ff
    db $00, $07, $01, $11, $00, C2TargetHotelTackyLamp, $ff
    db $00, $07, $1f, $28, $00
jr_005_4afa:
    db C2TargetHotelLiftCallButton, $ff
    db $ff

; Case II Lucky Dice hotel lobby physical room records.
VegasLobbyEntries:
C2Entry03:
    db $2b, $32, $46, $4a, $83, C2ItemVegasLobbyAshtray, C2VisIdVegasLobbyAshtray
    db $59, $66, $33, $41, $83, C2ItemVegasLobbyPot, C2VisIdVegasLobbyPot
    db $68, $6f, $08, $47, $05, C2TargetHotelLobbyDoor, $ff
    db $1f, $48, $0f, $29, $00, C2TargetHotelLobbyPainting, $ff
    db $40, $57, $30, $4f, $00, C2TargetHotelLobbyChair, $ff
    db $10, $26, $30, $4f, $00, C2TargetHotelLobbyRedChair, $ff
    db $27, $40, $47, $53, $00, C2TargetHotelLobbyCoffeeTable, $ff
    db $ff

; Case II casino cashier area physical room records.
VegasCashierEntries:
C2Entry04:
    db $0a, $65, $00, $0f, $00, C2TargetHotelCashierSign, $ff
    db $2d, $42, $57, $6c, $00, C2TargetHotelChipPrice, $ff
    db $28, $47, $18, $36, $00, C2TargetHotelCashier, $ff
    db $04, $6b, $00, $6f, $00, C2TargetHotelCashCounter, $ff
    db $ff

; Case II casino blackjack table physical room records.
VegasBlackjackEntries:
C2Entry05:
    db $21, $32, $3a, $3f, $80, C2TargetHotelDealer, C2VisIdVegasBlackjackDealer
    db $3e, $48, $27, $2f, $00, C2TargetHotelDealerTag, $ff
    db $20, $4f, $1f, $3f, $00, C2TargetHotelDealer, $ff
    db $2d, $41, $08, $1e, $00, C2TargetHotelDealer, $ff
    db $00, $6f, $40, $6f
jr_005_4b6c:
    db $00, C2TargetHotelBlackjackTable, $ff
    db $ff

; Case II hotel first-floor lift physical room records.
; Pressed-button records retain target $00: drawing skips it, while input may copy it.
VegasLift1Entries:
C2Entry07:
    db $48, $67, $17, $6f, $05, C2TargetVegasLift1Door, $ff
jr_005_4b77:
    db $0f, $29, $30, $40, $00, C2TargetLiftCasinoAd, $ff
    db $38, $3d, $54, $5b, $00, C2TargetLiftButton1, $ff
    db $38, $3d, $4c, $53, $00, C2TargetLiftButton2, $ff
    db $38, $3d, $44, $4b, $00, C2TargetLiftButton3, $ff
    db $38, $3d, $54, $5b, $80, $00, C2VisIdLiftButton1Pressed
    db $38, $3d, $4c, $53, $80, $00, C2VisIdLiftButton2Pressed
    db $38, $3d, $44, $4b, $80, $00, C2VisIdLiftButton3Pressed
    db $38, $3d, $3c
jr_005_4bab:
    db $43, $80, $00, C2VisIdLiftButton4Pressed
    db $38, $3d, $3c, $43, $83, C2ItemLiftButton, C2VisIdLiftButton4Installed
    db $49, $4f, $0b, $13, $80
jr_005_4bbb:
    db C2TargetNoHit, C2VisIdLiftFloor1
    db $4e, $55, $08, $11, $80, C2TargetNoHit, C2VisIdLiftFloor2
jr_005_4bc4:
    db $54, $5b, $05, $0d, $80, C2TargetNoHit, C2VisIdLiftFloor3
    db $5b, $62, $01, $0a, $80, C2TargetNoHit, C2VisIdLiftFloor4
jr_005_4bd2:
    db $32, $3f, $38, $5f, $00, C2TargetLiftPanel, $ff
jr_005_4bd9:
    db $ff

; Case II hotel second-floor lift physical room records.
; Pressed-button records retain target $00: drawing skips it, while input may copy it.
VegasLift2Entries:
C2Entry08:
    db $48, $67, $17, $6f, $05, C2TargetVegasLift2Door, $ff
    db $0f, $29, $30, $40, $00, C2TargetLiftCasinoAd, $ff
jr_005_4be8:
    db $38, $3d, $54, $5b, $00, C2TargetLiftButton1, $ff
    db $38, $3d, $4c, $53, $00, C2TargetLiftButton2, $ff
    db $38, $3d, $44, $4b, $00, C2TargetLiftButton3, $ff
    db $38, $3d, $54, $5b, $80, $00, C2VisIdLiftButton1Pressed
    db $38, $3d, $4c, $53, $80, $00, C2VisIdLiftButton2Pressed
    db $38, $3d, $44, $4b, $80, $00, C2VisIdLiftButton3Pressed
    db $38, $3d, $3c, $43, $80, $00, C2VisIdLiftButton4Pressed
    db $38, $3d, $3c, $43, $83, C2ItemLiftButton, C2VisIdLiftButton4Installed
    db $49, $4f, $0b, $13, $80
jr_005_4c25:
    db C2TargetNoHit, C2VisIdLiftFloor1
    db $4e, $55, $08, $11, $80, C2TargetNoHit, C2VisIdLiftFloor2
jr_005_4c2e:
    db $54, $5b, $05, $0d, $80, C2TargetNoHit, C2VisIdLiftFloor3
jr_005_4c35:
    db $5b, $62, $01, $0a, $80, C2TargetNoHit, C2VisIdLiftFloor4
jr_005_4c3c:
    db $32, $3f, $38, $5f, $00, C2TargetLiftPanel, $ff
jr_005_4c43:
    db $ff

; Case II hotel third-floor lift physical room records.
; Pressed-button records retain target $00: drawing skips it, while input may copy it.
VegasLift3Entries:
C2Entry09:
    db $48, $67, $17, $6f, $05, C2TargetVegasLift3Door, $ff
    db $0f, $29, $30, $40, $00, C2TargetLiftCasinoAd, $ff
jr_005_4c52:
    db $38, $3d, $54, $5b, $00, C2TargetLiftButton1, $ff
    db $38, $3d, $4c, $53, $00, C2TargetLiftButton2, $ff
    db $38, $3d, $44, $4b, $00, C2TargetLiftButton3, $ff
    db $38, $3d, $54, $5b, $80, $00, C2VisIdLiftButton1Pressed
    db $38, $3d, $4c, $53, $80, $00, C2VisIdLiftButton2Pressed
    db $38, $3d, $44, $4b, $80, $00, C2VisIdLiftButton3Pressed
    db $38, $3d, $3c, $43, $80, $00, C2VisIdLiftButton4Pressed
    db $38, $3d, $3c, $43, $83, C2ItemLiftButton, C2VisIdLiftButton4Installed
    db $49, $4f, $0b, $13, $80
jr_005_4c8f:
    db C2TargetNoHit, C2VisIdLiftFloor1
    db $4e, $55, $08, $11, $80, C2TargetNoHit, C2VisIdLiftFloor2
jr_005_4c98:
    db $54, $5b, $05, $0d, $80, C2TargetNoHit, C2VisIdLiftFloor3
jr_005_4c9f:
    db $5b, $62, $01, $0a, $80, C2TargetNoHit, C2VisIdLiftFloor4
jr_005_4ca6:
    db $32, $3f, $38, $5f, $00, C2TargetLiftPanel, $ff
jr_005_4cad:
    db $ff

; Case II hotel fourth-floor lift physical room records.
; Pressed-button records retain target $00: drawing skips it, while input may copy it.
VegasLift4Entries:
C2Entry0A:
    db $48, $67, $17, $6f, $05, C2TargetVegasLift4Door, $ff
    db $0f, $29, $30, $40, $00, C2TargetLiftCasinoAd, $ff
jr_005_4cbc:
    db $38, $3d, $54, $5b, $00, C2TargetLiftButton1, $ff
    db $38, $3d, $4c, $53, $00, C2TargetLiftButton2, $ff
    db $38, $3d, $44, $4b, $00, C2TargetLiftButton3, $ff
    db $38, $3d, $54, $5b, $80, $00, C2VisIdLiftButton1Pressed
    db $38, $3d, $4c, $53, $80, $00, C2VisIdLiftButton2Pressed
    db $38, $3d, $44, $4b, $80, $00, C2VisIdLiftButton3Pressed
    db $38, $3d, $3c, $43, $80, $00, C2VisIdLiftButton4Pressed
    db $38, $3d, $3c, $43, $83, C2ItemLiftButton, C2VisIdLiftButton4Installed
    db $49, $4f, $0b, $13, $80
jr_005_4cf9:
    db C2TargetNoHit, C2VisIdLiftFloor1
    db $4e, $55, $08, $11, $80, C2TargetNoHit, C2VisIdLiftFloor2
jr_005_4d02:
    db $54, $5b, $05, $0d, $80, C2TargetNoHit, C2VisIdLiftFloor3
jr_005_4d09:
    db $5b, $62, $01, $0a, $80, C2TargetNoHit, C2VisIdLiftFloor4
jr_005_4d10:
    db $32, $3f, $38, $5f, $00, C2TargetLiftPanel, $ff
jr_005_4d17:
    db $ff

; Case II hotel second-floor hallway physical room records.
VegasHall2Entries:
C2Entry0B:
    db $01, $0c, $3d, $4f, $83, C2ItemVegasHall2Plant, C2VisIdVegasHall2Plant
    db $2f, $40, $06, $30, $05, C2TargetHotelGuestDoor3
jr_005_4d25:
    db $ff
jr_005_4d26:
    db $61, $68, $00, $4c, $05, C2TargetHotelQuietGuestDoor, $ff
    db $10, $17, $00, $41, $05, C2TargetHotelGuestDoor2, $ff
    db $57, $5e, $07, $16, $00, C2TargetHotelHall2Art, $ff
    db $00, $10, $48, $64, $00, C2TargetHotelHallTable, $ff
    db $44, $54, $00, $14, $00, C2TargetHotelLitLamp, $ff
    db $1b, $2b, $00, $14, $00, C2TargetHotelTackyLamp, $ff
    db $00, $07, $00, $11, $00, C2TargetHotelLitLamp, $ff
    db $68, $6f, $00, $11, $00, C2TargetHotelTackyLamp, $ff
    db $ff

; Case II hotel third-floor hallway physical room records.
VegasHall3Entries:
C2Entry0C:
    db $62, $6f, $41, $4f, $83, C2ItemVegasHall3Plant, C2VisIdVegasHall3Plant
    db $14, $2c, $1d, $39, $05, C2TargetVegasHamperLid, C2VisIdVegasHamperClosed
    db $12, $2c, $10, $39, $05, C2TargetVegasHamperLid
jr_005_4d73:
    db C2VisIdVegasHamperOpen
    db $2f, $40, $06, $30, $05, C2TargetHotelGuestDoor3, $ff
    db $58, $5f, $00, $42, $05, C2TargetHotelQuietGuestDoor, $ff
    db $07, $0e, $00, $4a, $05, C2TargetHotelGuestDoor2, $ff
    db $10, $18, $01, $0f
jr_005_4d8d:
    db $00, C2TargetHotelHall3Art, $ff
    db $5f, $6f, $48, $65, $00, C2TargetHotelHallTable, $ff
    db $44, $54, $00, $14, $00, C2TargetHotelLitLamp, $ff
    db $1b, $2b, $00, $14, $00, C2TargetHotelTackyLamp, $ff
    db $00, $07, $00, $11, $00, C2TargetHotelLitLamp, $ff
    db $68, $6f, $00, $11, $00, C2TargetHotelTackyLamp, $ff
    db $ff

; Case II hotel hamper physical room records.
VegasHamperEntries:
C2Entry0D:
    db $1f, $3f, $4c, $57, $00, C2TargetHamperInterior, $ff
    db $40, $66, $4f, $57, $00, C2TargetHamperInterior, $ff
    db $00, $0f, $5b, $6f, $00, C2TargetHamperInterior, $ff
    db $10, $6f, $58, $6f, $00, C2TargetHamperInterior, $ff
    db $10, $5f, $00, $0e, $05, C2TargetVegasHamperLid, $ff
    db $00, $0f, $00, $0c, $05, C2TargetVegasHamperLid, $ff
    db $60, $6f, $00, $0c, $05, C2TargetVegasHamperLid, $ff
    db $ff

; Case II hamper interior physical room records.
HamperEntries:
C2Entry46:
    db $1f, $3f, $4c, $57, $00, C2TargetHamperInterior, $ff
    db $40, $66, $4f, $57, $00, C2TargetHamperInterior, $ff
    db $00, $0f, $5b, $6f, $00, C2TargetHamperInterior, $ff
    db $10, $6f, $58, $6f, $00, C2TargetHamperInterior, $ff
    db $10, $5f, $00, $0e, $05, C2TargetLaundryHamper, $ff
    db $00, $0f, $00, $0c, $05, C2TargetLaundryHamper, $ff
    db $60, $6f, $00, $0c, $05, C2TargetLaundryHamper, $ff
    db $ff

; Case II hotel fourth-floor hallway physical room records.
VegasHall4Entries:
C2Entry0E:
    db $2a, $44, $10, $36, $00, C2TargetHotelHall4Tree, $ff
    db $28, $4f, $08, $1b, $00, C2TargetHotelHall4Glass, $ff
    db $28, $4f, $08, $1b, $80, C2TargetHotelHall4Glass, C2VisIdVegasHall4Glass
    db $57, $5f, $00, $3d, $05, C2TargetMaloneOfficeDoor, $ff
    db $10, $19, $00, $3c, $05, C2TargetVentiniOfficeDoor, $ff
    db $00, $0f, $37, $57, $00, C2TargetHotelHallTable, $ff
    db $ff

; Case II Danny Ventini office physical room records.
VegasVentiniOfficeEntries:
C2Entry0F:
    db $43, $54, $4d, $51, $83, C2Dart, C2VisIdVentiniDart
    db $43, $50, $43, $52, $83, C2DartBase, C2VisIdVentiniDartBase
    db $43, $54, $43, $52, $83, C2Paperweight, C2VisIdVentiniPaperweight
    db $00, $0f, $08, $65, $03, C2ItemVentiniHatRack, $ff
    db $18, $4f, $10, $34, $00, C2TargetVentiniCityWindow, C2VisIdVentiniCityWindow
    db $67, $6f, $0c, $41, $00, C2TargetVentiniVegasWindow, C2VisIdVentiniVegasWindow
    db $18, $4f, $08, $10, $00, C2TargetVentiniThinBlinds, C2VisIdVentiniThinBlindsOpen
    db $18, $4f, $08, $34, $00, C2TargetVentiniThinBlinds, C2VisIdVentiniThinBlindsClosed
    db $67, $6f, $02, $0c, $00, C2TargetVentiniWhiteBlinds, C2VisIdVentiniWhiteBlindsOpen
    db $67, $6f, $02, $41, $00, C2TargetVentiniWhiteBlinds, C2VisIdVentiniWhiteBlindsClosed
    db $28, $3f, $35, $47, $00
jr_005_4e8e:
    db C2TargetVentiniChair, $ff
    db $08, $68, $48, $6f, $01, C2ContainerVentiniDesk, $ff
    db $ff

; Case II Anthony Malone office physical room records.
VegasMaloneOfficeEntries:
C2Entry10:
    db $08, $17, $05, $4b, $05, C2TargetMaloneOfficeDoor, $ff
    db $47, $58, $20, $2e, $00, C2TargetMaloneChair, $ff
    db $38, $5f, $01, $27, $00, C2TargetMaloneVegasWindow, C2VisIdMaloneVegasWindow
    db $2f, $68, $00
jr_005_4eb0:
    db $2e, $00, C2TargetMaloneSilkCurtain, $ff
    db $28, $64, $2f, $4f, $02, C2GroupMaloneDesk, $ff
    db $00, $05, $0a
jr_005_4ebe:
    db $17, $00, C2TargetMaloneFishPhoto, $ff
    db $18, $1e, $0e, $17, $00, C2TargetMaloneBanquetPhoto, $ff
    db $ff

; Case II Lucky Dice hotel front physical room records.
HotelFrontEntries:
C2Entry11:
jr_005_4eca:
    db $28, $47, $20, $4f, $05, C2TargetCasinoFrontDoor, $ff
jr_005_4ed1:
    db $58, $6f, $08, $0f, $00, C2TargetHotelShadePalm, $ff
    db $60, $6f, $10, $2f, $00, C2TargetHotelShadePalm, $ff
    db $00, $17, $08, $0f, $00, C2TargetHotelEntryPalm, $ff
    db $00, $0f, $10, $2f, $00, C2TargetHotelEntryPalm, $ff
    db $10, $5f, $07, $1f, $00, C2TargetHotelAwning, $ff
    db $ff

; Shared Case II desert physical pattern; retain all room users.
DesertCactusThornRockEntries:
C2Entry12:
    db $50, $67, $28, $57, $80, C2TargetDesertCactusThorns, C2VisIdDesertCactusThorns2
    db $10, $27, $20, $4f, $80, C2TargetDesertCactusThorns, C2VisIdDesertCactusThorns1
    db $38, $47, $48, $57
jr_005_4f07:
    db $80, C2TargetDesertHotRock, C2VisIdDesertThornLayoutRock1
    db $20, $2f, $58, $67, $80, C2TargetDesertHotRock, C2VisIdDesertThornLayoutRock2
    db $ff

; Case II town outskirts physical room records.
OutskirtsEntries:
C2Entry13:
    db $18, $60, $00, $0f, $00, C2TargetCleanersSign, $ff
    db $2f
jr_005_4f1a:
    db $58, $17, $30, $00
jr_005_4f1e:
    db C2TargetCleanersFrontWindow, $ff
    db $61, $6f, $11, $43, $05, C2TargetCleanersEntrance, $ff
    db $00, $0c, $0c, $3e, $05, C2TargetLaundryChuteDoor, C2VisIdLaundryShutterOpen
    db $00, $0c, $0c, $3e, $05, C2TargetLaundryChuteDoor, C2VisIdLaundryShutterClosed
    db $ff

; Case II Las Vegas station front physical room records.
StationEntries:
C2Entry14:
    db $17, $48, $23, $57, $05
jr_005_4f3b:
    db C2TargetVegasStationEntrance, $ff
    db $18, $57, $17, $20, $00
jr_005_4f42:
    db C2TargetVegasStationSign, $ff
    db $5e, $6f, $17, $40, $80, C2TargetVegasStationArch1, C2VisIdVegasStationArch1Broken
    db $5e
jr_005_4f4c:
    db $6f, $17, $40
jr_005_4f4f:
    db $00
jr_005_4f50:
    db C2TargetVegasStationArch1, $ff
    db $00, $11, $17, $40, $80, C2TargetVegasStationArch2, C2VisIdVegasStationArch2Broken
jr_005_4f59:
    db $00, $11, $17, $40, $00, C2TargetVegasStationArch2
jr_005_4f5f:
    db $ff
    db $ff

; Case II Las Vegas station lobby physical room records.
VegasStationLobbyEntries:
C2Entry15:
    db $1a, $32, $3c, $56, $80, C2TargetVegasSeller, C2VisIdVegasStationSeller
    db $58, $6f, $07, $18, $00
jr_005_4f6d:
    db C2TargetVegasBaggageSign, $ff
    db $18, $1f, $08, $0f, $00
jr_005_4f74:
    db C2TargetVegasPlatform6Sign, $ff
    db $30, $37, $18, $1f, $00, C2TargetVegasPlatform7Sign, $ff
    db $38, $3f, $18, $1f, $00, C2TargetVegasPlatform8Sign, $ff
    db $50, $57, $08, $0f, $00, C2TargetVegasPlatform9Sign, $ff
    db $18, $57, $58, $6f, $00
jr_005_4f90:
    db C2TargetVegasStationBench, $ff
    db $22, $4d, $40, $57
jr_005_4f96:
    db $00, C2TargetVegasStationBench, $ff
    db $33, $3c, $33, $3f, $00, C2TargetVegasStationBench, $ff
    db $18, $1f, $10, $42, $05, C2TargetVegasPlatform6Passage, $ff
    db $30, $37, $20, $32, $05, C2TargetVegasPlatform7Passage, $ff
    db $38, $3f, $20, $32, $05, C2TargetVegasPlatform8Passage, $ff
    db $50, $57, $10, $42, $05, C2TargetVegasPlatform9Passage, $ff
    db $ff

; Case II Las Vegas luggage claim physical room records.
VegasLuggageClaimEntries:
C2Entry16:
    db $57
jr_005_4fbe:
    db $5d, $30, $36, $83, C2ItemRailwayPamphlet, C2VisIdRailwayPamphlet
    db $41, $4b, $49, $58, $84, C2ItemSuitcase, C2VisIdClaimSuitcaseClosed
    db $3e, $4d, $49, $58, $84, C2ItemSuitcase, C2VisIdClaimSuitcaseOpen
    db $18, $2f, $22, $3c, $00, C2TargetVegasClaimAttendant, $ff
    db $47, $60, $00, $08, $00, C2TargetVegasTimetable1, $ff
jr_005_4fe0:
    db $47, $60, $09, $18, $00
jr_005_4fe5:
    db C2TargetVegasTimetable2, $ff
    db $07, $40, $07, $17, $00, C2TargetVegasClaimSign, $ff
    db $4f
jr_005_4fef:
    db $61, $30, $3d, $00, C2TargetVegasScheduleBox, $ff
    db $ff

; Case II Las Vegas platform 6 physical room records.
VegasPlatform6Entries:
C2Entry17:
    db $20, $4f, $04, $11, $80, C2TargetPlatformCeilingSign, C2VisIdVegasPlatform6CeilingSign
    db $18, $27, $18, $35, $05, C2TargetVegasPlatform6TrainDoor, C2VisIdPlatformTrainAndDoor
    db $10, $5f, $08, $3f, $00, C2TargetPlatformTrain, C2VisIdPlatformTrainAndDoor
    db $30, $3f, $00, $17, $05, C2TargetVegasPlatform6EmergencyExit, $ff
    db $ff

; Case II Las Vegas platform 7 physical room records.
VegasPlatform7Entries:
C2Entry18:
    db $20, $4f, $04, $11, $80, C2TargetPlatformCeilingSign, C2VisIdVegasPlatform7CeilingSign
    db $18, $27, $18, $35, $05, C2TargetVegasPlatform7TrainDoor, C2VisIdPlatformTrainAndDoor
    db $10, $5f, $08, $3f, $00
jr_005_5026:
    db C2TargetPlatformTrain, C2VisIdPlatformTrainAndDoor
    db $30, $3f, $00, $17, $05, C2TargetVegasPlatform7EmergencyExit, $ff
jr_005_502f:
    db $ff

; Case II Las Vegas platform 8 physical room records.
VegasPlatform8Entries:
C2Entry19:
    db $20, $4f, $04, $11, $80, C2TargetPlatformCeilingSign
jr_005_5036:
    db C2VisIdVegasPlatform8CeilingSign
    db $18, $27, $18, $35, $05, C2TargetVegasPlatform8TrainDoor, C2VisIdPlatformTrainAndDoor
    db $10, $5f, $08, $3f, $00
jr_005_5043:
    db C2TargetPlatformTrain, C2VisIdPlatformTrainAndDoor
    db $30, $3f
jr_005_5047:
    db $00, $17, $05, C2TargetVegasPlatform8EmergencyExit, $ff
jr_005_504c:
    db $ff

; Case II Las Vegas platform 9 physical room records.
VegasPlatform9Entries:
C2Entry1A:
    db $20, $4f, $04, $11, $80, C2TargetPlatformCeilingSign
jr_005_5053:
    db C2VisIdVegasPlatform9CeilingSign
    db $18, $27, $18, $35, $05, C2TargetVegasPlatform9TrainDoor, C2VisIdPlatformTrainAndDoor
    db $10, $5f, $08, $3f, $00, C2TargetPlatformTrain, C2VisIdPlatformTrainAndDoor
    db $30, $3f
jr_005_5064:
    db $00, $17, $05, C2TargetVegasPlatform9EmergencyExit, $ff
jr_005_5069:
    db $ff

; Case II shared train car A physical records.
TrainCarAEntries:
C2Entry1B:
    db $3b, $4f, $31, $3f, $00, C2TargetTrainChattyWoman
jr_005_5070:
    db C2VisIdTrainChattyWoman
    db $67, $6f, $32, $3f, $00, C2TargetTrainSeatMan, C2VisIdTrainSeatMan
    db $0e, $1d, $12, $1f, $00
jr_005_507d:
    db C2TargetTrainYoungWoman, C2VisIdTrainYoungWoman
    db $08, $6a, $00, $6f, $00, C2TargetTrainConductor, C2VisIdTrainConductor
jr_005_5086:
    db $00, $0d, $02, $1d, $00, C2TargetTrainShade, C2VisIdTrainShade
jr_005_508d:
    db $20, $2e, $02, $16, $00, C2TargetTrainWindow, C2VisIdTrainWindow
    db $41, $4c, $04, $0d, $00, C2TargetTrainDestinationSign, C2VisIdTrainDestinationAndDoor
    db $50, $5f, $00
jr_005_509e:
    db $1f, $05, C2TargetTrainCarAPassageBase, C2VisIdTrainPassage
    db $30, $6f, $40, $6f, $00, C2TargetTrainSeats, C2VisIdTrainSeats
    db $50, $67, $20, $3f, $00, C2TargetTrainSeats, C2VisIdTrainSeats
    db $00, $27, $20, $4f, $00, C2TargetTrainSeats, C2VisIdTrainSeats
    db $20, $39, $18, $1f, $00, C2TargetTrainSeats
jr_005_50bd:
    db C2VisIdTrainSeats
    db $28, $3f, $20, $37, $00, C2TargetTrainSeats, C2VisIdTrainSeats
    db $28, $2f, $38, $47, $00, C2TargetTrainSeats, C2VisIdTrainSeats
    db $48, $4f, $28, $2f, $00, C2TargetTrainSeats, C2VisIdTrainSeats
    db $ff

; Case II shared train car B physical records.
TrainCarBEntries:
C2Entry1C:
    db $08, $6a, $00, $6f, $00, C2TargetTrainConductor
jr_005_50da:
    db C2VisIdTrainConductor
    db $61, $6f, $02, $1c, $00, C2TargetTrainShade, C2VisIdTrainShade
    db $45, $4f, $02, $16, $00, C2TargetTrainWindow, C2VisIdTrainWindow
    db $23, $2e, $04
jr_005_50ec:
    db $0d, $00, C2TargetTrainDestinationSign, C2VisIdTrainDestinationAndDoor
    db $32, $3e, $00, $17, $05, C2TargetTrainCarBDoorBase
jr_005_50f6:
    db C2VisIdTrainDestinationAndDoor
    db $32, $37
jr_005_50f9:
    db $18, $1f, $05, C2TargetTrainCarBDoorBase, C2VisIdTrainDestinationAndDoor
    db $00
jr_005_50ff:
    db $20, $20, $29, $00
jr_005_5103:
    db C2TargetTrainSeats, C2VisIdTrainSeats
    db $00, $28, $2a, $3f, $00, C2TargetTrainSeats, C2VisIdTrainSeats
    db $00, $3f, $40, $6f
jr_005_5110:
    db $00, C2TargetTrainSeats, C2VisIdTrainSeats
jr_005_5113:
    db $48, $6f, $20, $4f, $00, C2TargetTrainSeats, C2VisIdTrainSeats
jr_005_511a:
    db $36, $18, $58, $1f, $00, C2TargetTrainSeats, C2VisIdTrainSeats
jr_005_5121:
    db $2f, $20, $3f, $36, $00, C2TargetTrainSeats, C2VisIdTrainSeats
    db $40, $20, $47, $43, $00, C2TargetTrainSeats, C2VisIdTrainSeats
    db $ff

; Case II Chicago station lobby physical room records.
ChicagoStationLobbyEntries:
C2Entry2B:
    db $61, $6e
jr_005_5132:
    db $19, $26, $83, C2ItemStationNewspaper3, C2VisIdNewsPaper3
    db $61, $6e, $39, $46, $83, C2ItemStationNewspaper4, C2VisIdNewsPaper4
    db $50, $5e, $20, $47, $80, C2TargetChicagoNewsSeller, C2VisIdNewsSeller
    db $53, $69, $4d, $58, $80, C2TargetChicagoNewsDog, C2VisIdNewsDog
    db $12, $19, $10, $16, $00, C2TargetChicagoPlatform2Sign, $ff
    db $20, $2c, $12, $17, $00, C2TargetChicagoPlatform3Sign, $ff
    db $33, $3f, $12, $17, $00, C2TargetChicagoPlatform4Sign, $ff
    db $46, $4c
jr_005_5163:
    db $10, $16, $00
jr_005_5166:
    db C2TargetChicagoPlatform5Sign, $ff
    db $0e, $51, $47, $68, $00, C2TargetChicagoOldBench, $ff
    db $50, $6f, $00
jr_005_5172:
    db $07, $00, C2TargetChicagoTimetable1, $ff
    db $50, $6f, $08, $17, $00, C2TargetChicagoTimetable2, $ff
    db $58, $6f, $18, $47
jr_005_5181:
    db $00, C2TargetChicagoNewsstand, $ff
    db $13, $19, $17, $3a, $05
jr_005_5189:
    db C2TargetChicagoPlatform2Passage, $ff
    db $20, $2c, $18, $32, $05, C2TargetChicagoPlatform3Passage, $ff
    db $33, $3f, $18, $32, $05, C2TargetChicagoPlatform4Passage, $ff
    db $46, $4c, $17, $3a, $05, C2TargetChicagoPlatform5Passage, $ff
    db $ff

; Case II Chicago platform 2 physical room records.
ChicagoPlatform2Entries:
C2Entry2C:
    db $20, $4f, $04, $11, $80, C2TargetPlatformCeilingSign, C2VisIdChicagoPlatform2CeilingSign
    db $18, $27, $18, $35, $05, C2TargetChicagoPlatform2TrainDoor, C2VisIdPlatformTrainAndDoor
    db $10, $5f, $08, $3f, $00, C2TargetPlatformTrain, C2VisIdPlatformTrainAndDoor
    db $30, $3f, $00
jr_005_51b9:
    db $17, $05, C2TargetChicagoPlatform2EmergencyExit, $ff
    db $ff

; Case II Chicago platform 3 physical room records.
ChicagoPlatform3Entries:
C2Entry2D:
    db $20, $4f, $04
jr_005_51c1:
    db $11, $80, C2TargetPlatformCeilingSign, C2VisIdChicagoPlatform3CeilingSign
    db $18, $27, $18, $35, $05, C2TargetChicagoPlatform3TrainDoor, C2VisIdPlatformTrainAndDoor
    db $10, $5f, $08, $3f, $00, C2TargetPlatformTrain, C2VisIdPlatformTrainAndDoor
    db $30, $3f, $00, $17, $05, C2TargetChicagoPlatform3EmergencyExit, $ff
    db $ff

; Case II Chicago platform 4 physical room records.
ChicagoPlatform4Entries:
C2Entry2E:
    db $20, $4f, $04, $11, $80, C2TargetPlatformCeilingSign
jr_005_51e1:
    db C2VisIdChicagoPlatform4CeilingSign
    db $18, $27, $18, $35, $05, C2TargetChicagoPlatform4TrainDoor, C2VisIdPlatformTrainAndDoor
    db $10, $5f, $08, $3f, $00
jr_005_51ee:
    db C2TargetPlatformTrain, C2VisIdPlatformTrainAndDoor
    db $30, $3f
jr_005_51f2:
    db $00, $17, $05, C2TargetChicagoPlatform4EmergencyExit, $ff
jr_005_51f7:
    db $ff

; Case II Chicago platform 5 physical room records.
ChicagoPlatform5Entries:
C2Entry2F:
    db $20, $4f, $04, $11, $80, C2TargetPlatformCeilingSign
jr_005_51fe:
    db C2VisIdChicagoPlatform5CeilingSign
    db $18, $27, $18, $35, $05, C2TargetChicagoPlatform5TrainDoor, C2VisIdPlatformTrainAndDoor
    db $10, $5f, $08, $3f, $00
jr_005_520b:
    db C2TargetPlatformTrain, C2VisIdPlatformTrainAndDoor
    db $30, $3f
jr_005_520f:
    db $00, $17, $05, C2TargetChicagoPlatform5EmergencyExit, $ff
jr_005_5214:
    db $ff

; Case II Chicago station front physical room records.
ChicagoStationFrontEntries:
C2Entry30:
    db $19, $56, $06, $10, $00, C2TargetChicagoStationSign
jr_005_521b:
    db $ff
    db $61, $6f, $0f, $2f, $00, C2TargetChicagoStationArch1, $ff
    db $61, $6f, $0f, $2f, $00
jr_005_5228:
    db C2TargetChicagoStationArch1
jr_005_5229:
    db C2VisIdChicagoStationArch1
    db $00
jr_005_522b:
    db $0e, $0f, $2f, $00, C2TargetChicagoStationArch2, $ff
jr_005_5231:
    db $00, $0e, $0f, $2f, $00, C2TargetChicagoStationArch2, C2VisIdChicagoStationArch2
    db $28, $47, $11, $3f, $05, C2TargetChicagoStationEntrance, $ff
    db $28, $47, $11, $3f, $85, C2TargetChicagoStationEntrance, C2VisIdChicagoStationBrokenDoorGlass
    db $55, $6f, $45
jr_005_5249:
    db $57, $05, C2TargetChicagoStationCab, $ff
    db $38, $6f, $58, $6f, $05, C2TargetChicagoStationCab, $ff
    db $ff

; Case II shared cab interior physical records.
CabInteriorEntries:
C2Entry31:
    db $2d, $3f, $07, $0f, $00, C2TargetCabMirror, $ff
    db $00, $37, $39, $4f, $00, C2TargetCabDriver, $ff
    db $00, $20, $1c, $38, $00
jr_005_5268:
    db C2TargetCabDriver, $ff
    db $50, $6d, $42, $4f, $00, C2TargetCabMeter, $ff
    db $38, $6f, $58, $6f, $00, C2TargetCabPoster, $ff
    db $ff

; Case II Adison apartment front physical room records.
AdisonApartmentFrontEntries:
C2Entry32:
    db $27, $37, $05, $16, $00, C2TargetAdisonVacancySign, $ff
    db $4f, $60
jr_005_5282:
    db $00, $41, $05, C2TargetAdisonBuildingEntrance, $ff
    db $ff

; Case II Adison hallway physical room records.
AdisonHallwayEntries:
C2Entry33:
jr_005_5288:
    db $60, $6c, $10, $30, $81, C2ContainerAdisonMailbox, C2VisIdAdisonMailboxClosed
    db $60, $6c, $10, $30, $01, C2ContainerAdisonMailbox
jr_005_5295:
    db $ff
    db $5a, $5f, $10, $2b, $80, C2TargetAdisonScratchedMailbox, C2VisIdAdisonScratchedMailbox
    db $5a, $5f, $10, $2b, $00, C2TargetAdisonScratchedMailbox, $ff
    db $54, $59, $10, $28, $80, C2TargetAdisonDentedMailbox, C2VisIdAdisonDentedMailbox
    db $54, $59, $10, $28, $00
jr_005_52b0:
    db C2TargetAdisonDentedMailbox, $ff
    db $1c, $33, $00, $37, $05, C2TargetAdisonApartmentDoor, $ff
    db $45, $52, $00, $54, $05
jr_005_52be:
    db C2TargetAdisonNeighborDoor1, $ff
    db $00, $0a, $00, $50, $05, C2TargetAdisonNeighborDoor2, $ff
    db $ff

; Case II Adison apartment physical room records.
AdisonApartmentEntries:
C2Entry34:
    db $00, $0f, $0a, $31, $84, C2ItemSpareCoat, C2VisIdAdisonSpareCoat
    db $28, $37, $6a, $6f, $84, C2ItemFlashlight, C2VisIdAdisonFlashlight
    db $59, $6f, $5a, $67, $84, C2ItemApartmentDrawer, C2VisIdAdisonDrawer
    db $38, $47, $51, $57, $83
jr_005_52e2:
    db C2Bottle, C2VisIdAdisonBottleIntact
    db $38, $47, $51, $57, $83, C2Bottle, C2VisIdAdisonBottleBroken
    db $58, $6e, $4b, $57, $83, C2ItemCrackedLamp, C2VisIdAdisonCrackedLamp
    db $40, $48, $68, $6f, $83, C2Ring2, C2VisIdAdisonCigarRing
    db $47, $4f, $00, $50, $00, C2TargetAdisonCurtains, C2VisIdAdisonCurtainsOpen
    db $68, $6f, $00, $50, $00, C2TargetAdisonCurtains, C2VisIdAdisonCurtainsOpen
    db $47
jr_005_5308:
    db $6f, $00, $50, $00, C2TargetAdisonCurtains, C2VisIdAdisonCurtainsClosed
    db $54, $67, $09, $3f, $05, C2TargetAdisonApartmentDoor, C2VisIdAdisonApartmentDoor
    db $04, $27, $02, $0c, $00, C2TargetAdisonElkHead, $ff
    db $0b, $21, $0d, $1d, $00, C2TargetAdisonElkHead, $ff
    db $0b, $1e, $18
jr_005_5326:
    db $25, $00, C2TargetAdisonElkHead, $ff
    db $2b, $42, $06, $1b, $00, C2TargetAdisonOMalleyPhoto, $ff
    db $00, $24
jr_005_5333:
    db $32, $6f, $00, C2TargetAdisonCouch, $ff
    db $25, $38, $40, $67, $00, C2TargetAdisonCouch, $ff
    db $ff

; Case II Joe's bar front physical room records.
JoeFrontEntries:
C2Entry35:
    db $62, $6f, $38, $47, $05, C2TargetJoeFrontCab, $ff
    db $48, $6f, $48, $67, $05, C2TargetJoeFrontCab, $ff
    db $08, $11, $06, $5b, $00, C2TargetJoeFrontLamppost, $ff
    db $30, $4f, $68, $6f, $05, C2TargetJoeFrontManhole, $ff
    db $14, $33, $14, $53, $05, C2TargetJoeBarFrontDoor, $ff
    db $37, $67, $14, $3f, $00, C2TargetJoeFrontWindow, $ff
    db $00, $07, $00, $5f, $05, C2TargetJoeAlleyPassage, $ff
    db $51, $68, $68, $6f, $05, C2TargetJoeFrontCab, $ff
    db $ff

; Case II Joe's street-side alley physical room records.
JoeAlleyEntries:
C2Entry36:
    db $32, $3c
jr_005_537b:
    db $00, $4b, $00, C2TargetJoeAlleyLamppost, $ff
    db $38, $57, $5b, $6d, $05, C2TargetJoeRearManhole, $ff
    db $07, $27, $00, $10
jr_005_538b:
    db $05, C2TargetJoeFireEscapePassage, $ff
    db $30, $67, $00, $4f, $05, C2TargetJoeAlleyPassage, $ff
    db $ff

; Case II Joe's fire escape physical room records.
JoeFireEscapeEntries:
C2Entry37:
    db $48, $55, $3a, $47, $80, C2TargetJoeSplinteredBoard, C2VisIdJoeSplinteredBoard
    db $44, $47, $43, $4a, $80, C2TargetJoeSplinteredBoard, C2VisIdJoeSplinteredBoard
    db $48, $55
jr_005_53a6:
    db $40, $65, $80, C2TargetJoeSplinteredBoard, C2VisIdJoeSplinteredBoard
    db $5f, $6f, $00, $27, $80, C2TargetJoeBoardedWindow, C2VisIdJoeBoardedWindow
    db $60, $6f, $00, $08, $00, C2TargetJoeBoardedWindow, $ff
    db $60, $67, $09, $22, $00, C2TargetJoeBoardedWindow, $ff
    db $66, $6f, $0a, $27, $05, C2TargetJoeOfficeWindowPassage, $ff
    db $10, $58, $18, $6f, $00, C2TargetJoeFireEscape, $ff
    db $00, $0f, $1d, $6f, $00, C2TargetJoeFireEscape, $ff
    db $58, $5f, $28, $6f
jr_005_53d9:
    db $00, C2TargetJoeFireEscape, $ff
    db $60, $67, $30, $6f, $00, C2TargetJoeFireEscape, $ff
    db $68, $6f, $38, $6f, $00, C2TargetJoeFireEscape, $ff
    db $ff

; Case II Joe's office physical room records.
JoeOfficeEntries:
C2Entry38:
    db $08, $2a, $17, $2f, $01, C2ContainerJoeSafe, $ff
    db $00, $4b, $48, $6f, $01, C2ContainerJoeDesk, $ff
    db $58, $6f, $10, $34, $01, C2ContainerJoePhone, $ff
    db $38, $50, $08, $0f, $00, C2TargetJoeOfficeBoardGap, C2VisIdJoeOfficeBoardGap
    db $40, $50, $10, $13, $00, C2TargetJoeOfficeBoardGap, C2VisIdJoeOfficeBoardGap
    db $43, $50, $14, $1f, $00, C2TargetJoeOfficeBoardGap, C2VisIdJoeOfficeBoardGap
    db $47, $50, $18, $43, $00, C2TargetJoeOfficeBoardGap, C2VisIdJoeOfficeBoardGap
    db $38, $48, $18, $43, $05, C2TargetJoeOfficeWindowPassage, C2VisIdJoeOfficeWindowPassage
    db $30, $57, $00, $07, $00, C2TargetJoeOfficeShade, $ff
    db $20, $2f, $00, $0f, $00, C2TargetJoeOfficeDustWeb, $ff
    db $48, $67, $58, $6f, $00, C2TargetJoeOfficeStickyWeb, $ff
    db $ff

; Case II Joe's rear alley physical room records.
JoeRearAlleyEntries:
C2Entry39:
    db $31, $4e, $4a, $5f, $84, C2ItemMoldyBox, C2VisIdJoeMoldyBox
    db $52, $5c, $5c, $64, $83, C2ItemJuiceCan, C2VisIdJoeJuiceCan
    db $1d
jr_005_5448:
    db $28, $30, $41, $82, C2GroupJoeFoodTrash, C2VisIdJoeFoodTrash
    db $56
jr_005_544f:
    db $60, $0d, $47
jr_005_5452:
    db $05, C2TargetJoeRearDoor, $ff
    db $ff

; Case II Joe's rear hallway physical room records.
JoeRearHallwayEntries:
C2Entry3A:
jr_005_5456:
    db $00, $27, $21, $55, $00
jr_005_545b:
    db C2TargetJoeRearNailedBoards
jr_005_545c:
    db $ff
    db $55, $6f, $05, $50, $05, C2TargetJoeBarInteriorDoor
jr_005_5463:
    db $ff
    db $00, $23
jr_005_5466:
    db $00, $6f, $05, C2TargetJoeLadiesDoor, $ff
    db $ff

; Case II Joe's bar physical room records.
JoeBarEntries:
C2Entry3B:
    db $50, $6f, $38, $6f, $00, C2TargetJoeBarCounter, $ff
    db $1c, $53, $05, $34, $00, C2TargetJoeBarFrontWindow, $ff
jr_005_547a:
    db $00, $07
jr_005_547c:
    db $40, $6f, $05, C2TargetJoeBarStairs, $ff
    db $08, $1f, $48, $6f, $05, C2TargetJoeBarStairs, $ff
    db $08, $10, $07, $47, $05, C2TargetJoeCellarDoor, $ff
    db $57, $6f, $06, $37, $05, C2TargetJoeBarFrontDoor, $ff
    db $ff

; Case II Joe's cellar physical room records.
JoeCellarEntries:
C2Entry3C:
    db $11, $49, $4a, $52, $00, C2TargetJoeCleanBottle, C2VisIdJoeCleanBottle
    db $52, $5f, $4a, $55, $00, C2TargetJoeWineSpigot, $ff
    db $40, $6f, $00, $68, $00, C2TargetJoeWineCask, $ff
    db $00, $1f, $00, $6f, $00, C2TargetJoeBottleRack, C2VisIdJoeBottleRack
    db $00, $1f, $00, $6f, $05, C2TargetJoeShelfPassage, $ff
    db $30, $3f, $20, $33, $00, C2TargetJoeCellarWeb, $ff
    db $2b, $4a, $59, $6f, $00, C2TargetJoeCellarFlyWeb, $ff
    db $ff

; Case II Joe's chamber physical room records.
JoeChamberEntries:
C2Entry3D:
    db $36, $3b, $00, $25, $00, C2TargetJoeChamberBulb, $ff
    db $5f, $68, $21, $6f, $05, C2TargetJoeShelfPassage, $ff
    db $00, $14, $20, $5f, $05, C2TargetJoeCasinoDoor, $ff
    db $25
jr_005_54df:
    db $4a, $63, $ff, $05, C2TargetJoeFrontManhole, $ff
    db $00, $1f, $00, $1f, $00, C2TargetJoeChamberDustWeb, $ff
    db $00, $0e, $60, $6f, $00
jr_005_54f1:
    db C2TargetJoeChamberStickyWeb, $ff
    db $ff

; Case II Joe's casino physical room records.
JoeCasinoEntries:
C2Entry3E:
    db $24, $37, $10, $26, $01, C2ContainerJoeDiarySlot, $ff
jr_005_54fb:
    db $0c, $1f, $10, $26, $01, C2ContainerJoeEmptySlot, $ff
    db $00, $27, $40, $5a, $00, C2TargetJoeRoulette, $ff
    db $04, $36, $38, $3f, $00, C2TargetJoeRoulette, $ff
    db $54, $6f, $00, $2c, $05, C2TargetJoeCasinoDoor, $ff
    db $0c, $37, $30, $37, $00, C2TargetJoeRoulette, $ff
    db $28, $2f, $40, $56, $00, C2TargetJoeRoulette, $ff
    db $ff

; Case II Joe's upstairs hallway physical room records.
JoeUpstairsHallwayEntries:
C2Entry3F:
    db $51, $5d, $20, $3b, $00
jr_005_552b:
    db C2TargetJoeAcePoster, $ff
    db $5f, $6f, $1b, $3f, $00, C2TargetJoeBoxerPoster1, $ff
    db $08, $17, $18, $46, $00, C2TargetJoeBoxerPoster2
jr_005_553a:
    db $ff
    db $26, $49, $16, $58, $05, C2TargetJoeUpstairsRestrictedDoor, $ff
    db $18, $1f, $40, $4f, $00, C2TargetJoeUpstairsWeb, $ff
    db $ff

; Case II police station front physical room records.
PoliceStationFrontEntries:
C2Entry40:
    db $00, $0c, $08, $17, $00
jr_005_554f:
    db C2TargetPoliceStreetLamp, $ff
    db $03
jr_005_5552:
    db $06, $18, $3f, $00, C2TargetPoliceStreetLamp, $ff
    db $63, $6f, $08, $17, $00, C2TargetPoliceStreetLamp, $ff
    db $69, $6c, $18, $3f
jr_005_5563:
    db $00, C2TargetPoliceStreetLamp
jr_005_5565:
    db $ff
    db $10, $5f, $00, $0e, $00, C2TargetPoliceSign, $ff
    db $60, $6f, $18, $37, $80, C2TargetPoliceWindow1, C2VisIdPoliceWindow1Broken
    db $60, $6f, $18, $37, $00, C2TargetPoliceWindow1, $ff
    db $00, $0f, $18, $37, $80, C2TargetPoliceWindow2, C2VisIdPoliceWindow2Broken
    db $00, $0f, $18, $37, $00, C2TargetPoliceWindow2, $ff
    db $38, $4f, $18, $4f, $85, C2TargetPoliceStationDoor, C2VisIdPoliceDoorGlass2
    db $38, $4f, $18, $4f, $05, C2TargetPoliceStationDoor, $ff
    db $20, $37, $18, $4f, $85, C2TargetPoliceStationDoor, C2VisIdPoliceDoorGlass1
    db $20, $37, $18, $4f
jr_005_55a2:
    db $05, C2TargetPoliceStationDoor, $ff
    db $ff

; Case II Sugar's apartment front physical room records.
SugarApartmentFrontEntries:
C2Entry41:
    db $00, $0f
jr_005_55a8:
    db $00, $30, $80, C2TargetSugarPeepWindow, C2VisIdSugarPeepWindowBroken
    db $00, $0f
jr_005_55af:
    db $00, $30, $00
jr_005_55b2:
    db C2TargetSugarPeepWindow, $ff
    db $0e, $17
jr_005_55b6:
    db $4c, $61, $00, C2TargetSugarBarredWindow, $ff
    db $55, $69
jr_005_55bd:
    db $0a, $1c, $80, C2TargetSugarHobo, C2VisIdSugarHobo
    db $55, $6f, $1d, $24, $80, C2TargetSugarHobo, $ff
    db $38, $47, $3e, $57, $85, C2TargetSugarApartmentDoor, C2VisIdSugarApartmentDoorOpen
jr_005_55d0:
    db $38, $47, $3e, $57, $05, C2TargetSugarApartmentDoor, $ff
jr_005_55d7:
    db $2f, $3a, $00
jr_005_55da:
    db $19, $05
jr_005_55dc:
    db C2TargetSugarFrontLockedDoor, $ff
    db $ff

; Case II Sugar's apartment physical room records.
SugarApartmentEntries:
C2Entry42:
    db $5d, $67
jr_005_55e1:
    db $55, $5f
jr_005_55e3:
    db $83, C2ItemSugarTissue, C2VisIdSugarTissue
    db $4a, $5e, $30, $3f
jr_005_55ea:
    db $83, C2ItemSugarPillow, C2VisIdSugarPillow
    db $00, $0b, $42, $4d
jr_005_55f1:
    db $83, C2ItemSugarPerfume, C2VisIdSugarPerfume
    db $33, $45, $37, $43, $83, C2ItemSugarNewspaper, C2VisIdSugarNewspaper
    db $58, $62, $09, $16, $00, C2TargetSugarLamp, $ff
    db $00, $09, $48, $57, $00, C2TargetSugarDressingTable, $ff
    db $0a, $10, $4a, $55, $00, C2TargetSugarDressingTable, $ff
    db $00, $05
jr_005_5612:
    db $58, $6f, $00, C2TargetSugarDressingTable, $ff
    db $60, $6f
jr_005_5619:
    db $37, $57, $01, C2ContainerSugarNightstand, $ff
    db $00, $17, $03, $47, $01, C2ContainerSugarWardrobe, $ff
    db $4e, $69, $17, $51
jr_005_5629:
    db $00, C2TargetSugarBed, $ff
    db $18, $41, $27, $55, $00, C2TargetSugarBed, $ff
    db $42, $4d, $2e, $54, $00, C2TargetSugarBed, $ff
    db $ff

; Case II morgue front physical room records.
MorgueFrontEntries:
C2Entry43:
    db $20, $44, $0c, $1f, $00, C2TargetMorgueSign, $ff
    db $20, $43, $20, $4f, $05, C2TargetMorgueEntranceDoor, $ff
    db $ff

; Case II morgue reception physical room records.
MorgueReceptionEntries:
C2Entry44:
    db $28, $3c, $3c, $46, $84, C2ItemMorgueBox2, C2VisIdMorgueBox2Closed
    db $29, $3b, $3d, $46, $84, C2ItemMorgueBox2, C2VisIdMorgueBox2Open
    db $28, $47, $08, $27, $00, C2TargetMorgueNoticeBoard, $ff
    db $0d, $1e, $18, $27, $00, C2TargetMorgueClerk, $ff
    db $01, $26, $28, $40, $00, C2TargetMorgueClerk, $ff
    db $00, $3f
jr_005_566f:
    db $41, $6f, $00, C2TargetMorgueCounter, $ff
    db $40, $6f, $4f, $6f, $00, C2TargetMorgueGate, C2VisIdMorgueGateClosed
    db $40, $4d, $47, $6f, $00, C2TargetMorgueGate
jr_005_5681:
    db C2VisIdMorgueGateOpen
    db $5a, $6f, $47, $6f, $00
jr_005_5687:
    db C2TargetMorgueGate
jr_005_5688:
    db C2VisIdMorgueGateOpen
    db $50, $65, $00, $09, $00, C2TargetMorgueStaffSign, $ff
    db $50, $60, $0f, $2f, $05
jr_005_5695:
    db C2TargetMorgueColdRoomDoor, $ff
    db $ff

; Case II morgue cold room physical room records.
MorgueColdRoomEntries:
C2Entry45:
    db $09, $10, $1a, $21, $00, C2TargetMorguePlate1, $ff
    db $5b, $63
jr_005_56a1:
    db $16, $21, $00, C2TargetMorguePlate2, $ff
    db $02, $08, $37, $3e, $83, C2MorgueTag1, C2VisIdMorgueTag1
    db $2a, $32, $36, $3d, $83, C2MorgueTag2, C2VisIdMorgueTag2
    db $02, $18, $28, $3e, $00, C2TargetMorgueBody1, C2VisIdMorgueBody1
    db $30, $6a, $30, $4d, $00, C2TargetMorgueScarBody, C2VisIdMorgueScarBody
    db $00, $02, $26, $3e, $00, C2TargetMorgueDrawer1, C2VisIdMorgueDrawer1Open
    db $01, $19, $25, $3d, $00, C2TargetMorgueDrawer1, C2VisIdMorgueDrawer1Closed
    db $39, $54, $25, $2f, $00, C2TargetMorgueDrawer2, C2VisIdMorgueDrawer2Open
    db $54, $6b, $22, $52, $00, C2TargetMorgueDrawer2, C2VisIdMorgueDrawer2Closed
    db $08, $2f, $00, $0f, $00, C2TargetMorgueDrawerSign, $ff
    db $ff

; Case II laundry room physical room records.
LaundryEntries:
C2Entry47:
    db $3b, $44, $02, $0f, $84, C2ItemSoapBox, C2VisIdLaundrySoapBox
    db $23, $42, $54, $5f, $00, C2TargetBindingRope, C2VisIdBindingRope
    db $20, $45, $40, $6f, $00, C2TargetTiedHands, C2VisIdTiedHands
    db $20, $47, $30, $5c, $05, C2TargetLaundryHamper, $ff
    db $48, $60, $18, $37, $02, C2GroupLaundryWasher, $ff
    db $00, $17, $58
jr_005_570c:
    db $6f, $00, C2TargetNailCrate, $ff
    db $48, $6f, $48, $6f, $05, C2TargetLaundryStairs, $ff
    db $58, $6f, $40, $47, $05, C2TargetLaundryStairs, $ff
    db $60, $6f, $38, $3f, $05, C2TargetLaundryStairs, $ff
    db $68, $6f
jr_005_5727:
    db $31, $37, $05, C2TargetLaundryStairs, $ff
    db $00, $0f, $10, $37, $05, C2TargetLaundryChuteDoor, $ff
    db $10, $1f, $20, $44, $05, C2TargetLaundryChuteDoor, $ff
    db $ff

; Case II cleaners hallway physical room records.
CleanersHallwayEntries:
C2Entry48:
jr_005_573b:
    db $1d, $2c
jr_005_573d:
    db $08, $23, $00, C2TargetCleanersHallWindow, $ff
    db $06, $19
jr_005_5744:
    db $05, $50, $05, C2TargetCleanersEntrance, $ff
    db $59, $6f, $27, $37, $00, C2TargetCleanersCounter, C2VisIdCleanersCounterLowered
    db $57, $6f, $38, $55, $00, C2TargetCleanersCounter, C2VisIdCleanersCounterLowered
    db $5e, $6f, $20, $55
jr_005_575b:
    db $00, C2TargetCleanersCounter, C2VisIdCleanersCounterRaised
    db $68, $6f, $08, $2b, $05, C2TargetCleanersOfficeDoor, $ff
    db $59, $62, $14, $21, $00, C2TargetCleanersPriceSign, $ff
    db $07, $48, $07, $27, $05, C2TargetLaundryStairs, $ff
    db $ff

; Case II outer office physical room records.
OuterOfficeEntries:
C2Entry49:
    db $46, $4f, $2f, $37, $83, C2ItemOuterOfficePhoto, C2VisIdOuterOfficePhoto
jr_005_577b:
    db $12, $17, $11, $17, $83, C2Dart, C2VisIdOuterOfficeDartBeforeShift
    db $2a, $2f, $11, $17, $83, C2Dart, C2VisIdOuterOfficeDartAfterShift
    db $4b, $57, $2b, $34, $00, C2TargetCleanersLeatherChair, $ff
    db $4c, $5d, $0b, $2a, $00, C2TargetCleanersSunWindow, C2VisIdCleanersSunWindow
    db $44, $4a, $08, $2f, $00, C2TargetCleanersOfficeDrape, C2VisIdCleanersOfficeDrapeOpen
    db $5e, $67, $09, $36, $00, C2TargetCleanersOfficeDrape, C2VisIdCleanersOfficeDrapeOpen
    db $44, $67, $08, $36, $00, C2TargetCleanersOfficeDrape, C2VisIdCleanersOfficeDrapeClosed
    db $30, $5f, $30, $4f
jr_005_57b0:
    db $01, C2ContainerOuterOfficeDesk, $ff
    db $07, $1f, $07, $38, $00
jr_005_57b8:
    db C2TargetCleanersDartboard, C2VisIdCleanersDartboardBeforeShift
    db $1f, $37, $07, $38, $00
jr_005_57bf:
    db C2TargetCleanersDartboard, C2VisIdCleanersDartboardAfterShift
    db $09, $1e, $09, $37, $05, C2TargetOuterOfficeSecretDoor, C2VisIdOuterOfficeSecretDoor
    db $ff

; Case II secret office physical room records.
SecretOfficeEntries:
C2Entry4A:
    db $24, $2a, $4a, $50, $83, C2Ring1, C2RingObj1
    db $24, $2a, $4a, $50, $83, C2Ring2, C2RingObj2
    db $10, $3f, $4a, $55, $83, C2DeskMat, C2VisIdSecretOfficeDeskMat
    db $60, $6f, $5d, $6f, $02, C2GroupSecretOfficeBin, $ff
    db $18, $37, $27, $4f, $00, C2TargetSecretOfficeChair, $ff
    db $00, $5f, $48, $6f, $01, C2ContainerSecretOfficeDesk, $ff
    db $ff

; Shared empty Case II physical list; retain all twenty room users.
EmptyCase2Entries:
C2Entry06:
    db $ff

; Shared Case II desert physical pattern; retain all room users.
DesertCactusRockGrassEntries:
C2Entry63:
    db $48, $57, $38, $5a, $80, C2TargetDesertCactus, C2VisIdDesertCactus1
    db $10, $26, $30
jr_005_57ff:
    db $55, $80, C2TargetDesertCactus, C2VisIdDesertCactus2
    db $60, $6f, $40, $4b, $80, C2TargetDesertHotRock, C2VisIdDesertGrassLayoutRock1
    db $00, $0f, $60
jr_005_580d:
    db $6b, $80, C2TargetDesertHotRock, C2VisIdDesertGrassLayoutRock2
    db $31, $46, $60, $6e, $00, C2TargetDesertGrass, $ff
    db $19, $2e, $58, $66, $00, C2TargetDesertGrass, $ff
    db $ff

; Shared Case II desert physical pattern; retain all room users.
DesertTreeGrassSkullEntries:
C2Entry65:
    db $41, $56, $22, $38, $00
jr_005_5825:
    db C2TargetDesertTree, $ff
    db $4b, $53, $39, $3f, $00, C2TargetDesertTree, $ff
    db $48, $5f, $48, $4f, $00, C2TargetDesertGrass, $ff
    db $50, $67, $68, $6f, $00, C2TargetDesertGrass, $ff
    db $28, $37, $41, $46, $00, C2TargetDesertGrass, $ff
    db $00, $0f, $51, $56, $00, C2TargetDesertGrass, $ff
    db $48, $5f, $50, $5f, $80, C2TargetDesertAnimalRemains, C2VisIdDesertAnimalRemains
    db $ff
