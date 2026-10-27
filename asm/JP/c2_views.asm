
; IDs $00..$a0 select 52 shared scene-list starts.
C2SceneRefs:
    dw C2View00
    dw C2View01
    dw C2View02
    dw C2View03
    dw C2View04
    dw C2View05
    dw C2View06
    dw C2View07
    dw C2View07
    dw C2View07
    dw C2View07
    dw C2View0B
    dw C2View0C
    dw C2View0D
    dw C2View0E
    dw C2View0F
    dw C2View10
    dw C2View11
    dw C2View06
    dw C2View13
    dw C2View14
    dw C2View15
    dw C2View16
    dw C2View17
    dw C2View17
    dw C2View17
    dw C2View17
    dw C2View1B
    dw C2View1C
    dw C2View1B
    dw C2View1C
    dw C2View1B
    dw C2View1C
    dw C2View1B
    dw C2View1C
    dw C2View1B
    dw C2View1C
    dw C2View1B
    dw C2View1C
    dw C2View1B
    dw C2View1C
    db LOW(C2View1B)
jr_003_4368:
    db HIGH(C2View1B)
    dw C2View1C
    dw C2View2B
    dw C2View2C
    dw C2View2C
    dw C2View2C
    dw C2View2C
    dw C2View30
    dw C2View31
    dw C2View32
    dw C2View33
    dw C2View34
    db LOW(C2View35)
jr_003_4380:
    db HIGH(C2View35)
    dw C2View36
    dw C2View37
    dw C2View38
    dw C2View39
    dw C2View3A
    dw C2View3B
    dw C2View3C
    dw C2View3D
    dw C2View3E
    dw C2View3F
    dw C2View40
    dw C2View41
    dw C2View42
    dw C2View43
    dw C2View44
    dw C2View45
    dw C2View0D
    dw C2View47
    dw C2View48
    dw C2View49
    dw C2View4A
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View06
    dw C2View31
    dw C2View31
    dw C2View31
    dw C2View31
    dw C2View06
    dw C2View63
    dw C2View63
    dw C2View65
    dw C2View06
    dw C2View63
    dw C2View65
    dw C2View06
    dw C2View63
    dw C2View65
    dw C2View06
    dw C2View63
    db LOW(C2View65)
jr_003_43f2:
    db HIGH(C2View65)
    dw C2View06
    db LOW(C2View63)
jr_003_43f6:
    db HIGH(C2View63)
    db LOW(C2View65)
jr_003_43f8:
    db HIGH(C2View65)
    dw C2View06
    db LOW(C2View63)
jr_003_43fc:
    db HIGH(C2View63)
    db LOW(C2View65)
jr_003_43fe:
    db HIGH(C2View65)
    dw C2View06
    db LOW(C2View63)
jr_003_4402:
    db HIGH(C2View63)
    db LOW(C2View63)
jr_003_4404:
    db HIGH(C2View63)
    db LOW(C2View65)
jr_003_4406:
    db HIGH(C2View65)
    dw C2View06
    db LOW(C2View63)
jr_003_440a:
    db HIGH(C2View63)
    db LOW(C2View65)
jr_003_440c:
    db HIGH(C2View65)
    dw C2View06
    db LOW(C2View63)
jr_003_4410:
    db HIGH(C2View63)
    db LOW(C2View65)
jr_003_4412:
    db HIGH(C2View65)
    dw C2View06
    db LOW(C2View63)
jr_003_4416:
    db HIGH(C2View63)
    dw C2View65
    dw C2View06
    dw C2View63
    dw C2View65
    dw C2View06
    dw C2View63
    dw C2View65
    dw C2View06
    db LOW(C2View63)
jr_003_4428:
    db HIGH(C2View63)
    dw C2View65
    dw C2View06
    db LOW(C2View63)
jr_003_442e:
    db HIGH(C2View63)
    dw C2View65
    dw C2View06
    db LOW(C2View63)
jr_003_4434:
    db HIGH(C2View63)
    dw C2View65
    dw C2View06
    db LOW(C2View63)
jr_003_443a:
    db HIGH(C2View63)
    dw C2View65
    dw C2View06
    db LOW(C2View63)
jr_003_4440:
    db HIGH(C2View63)
    dw C2View65
    dw C2View06
    db LOW(C2View63)
jr_003_4446:
    db HIGH(C2View63)
    dw C2View65
    dw C2View06
    dw C2View63
    db LOW(C2View65)
jr_003_444e:
    db HIGH(C2View65)
    dw C2View06
    dw C2View63
    db LOW(C2View65)
jr_003_4454:
    db HIGH(C2View65)
    dw C2View06

C2View00:
    db C2SceneVegasBath, C2SceneVegasBath

C2View01:
    db C2SceneVegasBedroom, C2SceneVegasBedroom

C2View02:
    db C2SceneVegasCasinoHall, C2SceneVegasCasinoHall, C2SceneVegasCasinoHall, C2SceneVegasCasinoHall

C2View03:
    db C2SceneVegasLobby
jr_003_4460:
    db C2SceneVegasLobby

C2View04:
    db C2SceneVegasCashier

C2View05:
    db C2SceneVegasBlackjack, C2SceneVegasBlackjack

C2View07:
    db C2SceneVegasElevator, C2SceneVegasElevator

C2View0B:
jr_003_4466:
    db C2SceneVegasSecondFloorHall

C2View0C:
    db C2SceneVegasThirdFloorHall, C2SceneVegasThirdFloorHall

C2View0D:
    db C2SceneLaundryHamper, C2SceneLaundryHamper

C2View0E:
    db C2SceneVegasFourthFloorHall
jr_003_446c:
    db C2SceneVegasFourthFloorHall, C2SceneVegasFourthFloorHall, C2SceneVegasFourthFloorHall

C2View0F:
    db C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice
jr_003_4472:
    db C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice
jr_003_4478:
    db C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice
jr_003_447e:
    db C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice
jr_003_4484:
    db C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice
jr_003_448a:
    db C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice, C2SceneVentiniOffice

C2View10:
    db C2SceneMaloneOffice
jr_003_4490:
    db C2SceneMaloneOffice, C2SceneMaloneOffice, C2SceneMaloneOffice, C2SceneMaloneOffice, C2SceneMaloneOffice, C2SceneMaloneOffice
jr_003_4496:
    db C2SceneMaloneOffice

C2View11:
    db SceneLuckyDoor, SceneLuckyDoor, SceneLuckyDoor, SceneLuckyDoor

C2View13:
    db SceneCleaners
jr_003_449c:
    db SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners, SceneCleaners

C2View14:
    db C2SceneVegasStationFront, C2SceneVegasStationFront, C2SceneVegasStationFront, C2SceneVegasStationFront

C2View15:
    db C2SceneVegasWaitingHall

C2View16:
    db C2SceneVegasLuggageClaim

C2View17:
    db C2SceneVegasPlatformNoTrain, C2SceneVegasPlatformNoTrain, C2SceneVegasPlatformTrain, C2SceneVegasPlatformTrain

C2View1C:
    db C2SceneTrainPassengerCarB, C2SceneTrainPassengerCarB, SceneConductor2, SceneConductor2

C2View1B:
    db C2SceneTrainPassengerCarA, SceneConductor1

C2View2B:
    db C2SceneChicagoWaitingHall, C2SceneChicagoWaitingHall

C2View2C:
    db C2SceneChicagoPlatformNoTrain, C2SceneChicagoPlatformNoTrain, C2SceneChicagoPlatformTrain, C2SceneChicagoPlatformTrain

C2View30:
    db C2SceneChicagoStationFront, C2SceneChicagoStationFront, C2SceneChicagoStationFront, C2SceneChicagoStationFront, C2SceneChicagoStationFront, C2SceneChicagoStationFront, C2SceneChicagoStationFront, C2SceneChicagoStationFront

C2View31:
    db C2SceneCabInterior, C2SceneCabInterior

C2View32:
    db C2SceneAdisonApartmentFront, C2SceneAdisonApartmentFront, C2SceneAdisonApartmentFront, C2SceneAdisonApartmentFront

C2View33:
jr_003_44cf:
    db C2SceneAdisonHallway, C2SceneAdisonHallway

C2View34:
    db C2SceneAdisonApartment, C2SceneAdisonApartment, C2SceneAdisonApartment, C2SceneAdisonApartment, C2SceneAdisonApartment, C2SceneAdisonApartment, C2SceneAdisonApartment, C2SceneAdisonApartment

C2View35:
    db C2SceneJoeFront, C2SceneJoeFront, C2SceneJoeFront, C2SceneJoeFront

C2View36:
    db C2SceneJoeAlley

C2View37:
    db C2SceneJoeFireEscape

C2View38:
    db C2SceneJoeOffice, C2SceneJoeOffice

C2View39:
    db C2SceneJoeRearAlley, C2SceneJoeRearAlley

C2View3A:
    db C2SceneJoeRearHallway, C2SceneJoeRearHallway

C2View3B:
    db C2SceneJoeBar, C2SceneJoeBar, C2SceneJoeBar, C2SceneJoeBar, C2SceneJoeBar, C2SceneJoeBar, C2SceneJoeBar, C2SceneJoeBar

C2View3C:
    db C2SceneJoeCellar, C2SceneJoeCellar

C2View3D:
    db C2SceneJoeChamber, C2SceneJoeChamber
jr_003_44f1:
    db C2SceneJoeChamber, C2SceneJoeChamber

C2View3E:
    db C2SceneJoeCasino, C2SceneJoeCasino

C2View3F:
    db C2SceneJoeUpstairsHallway

C2View40:
    db C2ScenePoliceStationFront, C2ScenePoliceStationFront

C2View41:
    db C2SceneSugarApartmentFront

C2View42:
    db C2SceneSugarApartment, C2SceneSugarApartment, C2SceneSugarApartment, C2SceneSugarApartment

C2View43:
    db C2SceneMorgueFront, C2SceneMorgueFront, C2SceneMorgueFront, C2SceneMorgueFront

C2View44:
    db C2SceneMorgueReception, C2SceneMorgueReception, C2SceneMorgueReception, C2SceneMorgueReception

C2View45:
    db C2SceneMorgueColdRoom, C2SceneMorgueColdRoom, C2SceneMorgueColdRoom, C2SceneMorgueColdRoom

C2View47:
    db C2SceneLaundry, C2SceneLaundry

C2View48:
    db C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway
    db C2SceneCleanersHallway, C2SceneCleanersHallway
jr_003_451d:
    db C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway, C2SceneCleanersHallway
    db C2SceneCleanersHallway, C2SceneCleanersHallway

C2View49:
jr_003_452f:
    db C2SceneOuterOffice, C2SceneOuterOffice
jr_003_4531:
    db C2SceneOuterOffice, C2SceneOuterOffice, C2SceneOuterOffice, C2SceneOuterOffice, C2SceneOuterOffice, C2SceneOuterOffice

C2View4A:
    db C2SceneSecretOffice

C2View06:
    db C2SceneDesertPalms

C2View63:
    db C2SceneDesertShrubs

C2View65:
    db C2SceneDesertTree
