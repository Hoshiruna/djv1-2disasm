
; Set each state bit in C2StartBits until the $ff terminator.
InitC2Bits:


Call_003_412a:
    ld hl, C2StartBits

; Set the next initial Case II state bit.
C2InitNextStateBit:
jr_003_412d:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    call SetStateBit
    pop hl
    jr C2InitNextStateBit

; Case II initial state-bit IDs, terminated by $ff.
C2StartBits:
    db C2StateVegasCashierPassageOpen, C2StateVegasBlackjackPassageOpen, C2StateHotelDesertRouteOpen, C2StateHotelTracksRouteOpen
    db C2StateHotelStationRouteOpen, C2StateOutskirtsTracksRouteOpen, C2StateOutskirtsLeftDesertRouteOpen, C2StateOutskirtsBelowDesertRouteOpen
    db C2StateStationRightDesertRouteOpen, C2StateStationBelowDesertRouteOpen, C2StateVegasLuggagePassageOpen, C2StateVegasPlatform6PassageOpen
    db C2StateVegasPlatform7PassageOpen, C2StateVegasPlatform8PassageOpen, C2StateVegasPlatform9PassageOpen, C2StateTrain6InternalPassageOpen
    db C2StateTrain7InternalPassageOpen, C2StateTrain8InternalPassageOpen, C2StateTrain9InternalPassageOpen, C2StateTrain2InternalPassageOpen
    db C2StateTrain3InternalPassageOpen, C2StateTrain4InternalPassageOpen, C2StateTrain5InternalPassageOpen, C2StateChicagoPlatform2PassageOpen
    db C2StateChicagoPlatform3PassageOpen, C2StateChicagoPlatform4PassageOpen, C2StateChicagoPlatform5PassageOpen, C2StateChicagoCabPassageOpen
    db C2StateAdisonCabPassageOpen, C2StateCottageCabPassageOpen, C2StateJoeFrontCabPassageOpen, C2StateMorgueCabPassageOpen
    db C2StateJoePoliceRouteOpen, C2StateJoeAlleyPassageOpen, C2StateJoeFireEscapePassageOpen
jr_003_415b:
    db C2StateJoeRearAlleyRouteOpen, C2StateJoeBarStairsOpen, C2StateLaundryStairsOpen, C2StateLaundryHamperPassageOpen
    db C2StateTracksLinkOpen, C2StateTracksAAboveDesertRouteOpen, C2StateTracksABelowDesertRouteOpen, C2StateTracksBAboveDesertRouteOpen
    db C2StateTracksBBelowDesertRouteOpen, GridRight, GridLeft, GridDown
    db GridUp, C2StateJoeWorksRoute, C2StateJoeUpperLadderRoute, C2StateVegasPlatform6EmergencyExitOpen
    db C2StateVegasPlatform7EmergencyExitOpen, C2StateVegasPlatform8EmergencyExitOpen, C2StateVegasPlatform9EmergencyExitOpen, C2StateChicagoPlatform2EmergencyExitOpen
    db C2StateChicagoPlatform3EmergencyExitOpen, C2StateChicagoPlatform4EmergencyExitOpen, C2StateChicagoPlatform5EmergencyExitOpen, C2StateBedroomCurtainClosed
    db $ff

; Set initial object visibility and restore the caller scratch bytes at hItemSlot/hItemSlot+1.
InitC2Visible:

Call_003_4174:
    push af

; Save the caller operation-slot offset.
C2VisibleSaveSlot:
jr_003_4175:
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl

; Start reading initial object visibility IDs.
C2VisibleStartList:
jr_003_417d:
    ld hl, Case2InitialObjectFlags

; Set visibility for the next initial object ID.
C2VisibleNextObject:
jr_003_4180:
    ld a, [hl+]
    cp $ff
    jr z, C2VisibleRestoreSlot

    push hl
    call SetObjVisible
    pop hl
    jr C2VisibleNextObject

; Restore the caller operation-slot offset.
C2VisibleRestoreSlot:
jr_003_418c:
    pop hl
    push af
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    ret


Case2InitialObjectFlags:
    db C2VisIdBathTowel, C2VisIdBathTrench, C2VisIdBathPants
    db C2VisIdBedroomTimetable
jr_003_419a:
    db C2VisIdBedroomPillow
    db C2VisIdVegasHallPlant, C2VisIdVegasLobbyAshtray, C2VisIdVegasLobbyPot
    db C2VisIdVegasHall2Plant
    db C2VisIdVegasHall3Plant
    db C2VisIdVegasHall4Glass
    db C2VisIdVentiniPaperweight
    db C2VisIdVegasStationSeller
    db C2VisIdRailwayPamphlet
    db C2VisIdVegasPlatform6CeilingSign
    db C2VisIdVegasPlatform7CeilingSign
    db C2VisIdVegasPlatform8CeilingSign
    db C2VisIdVegasPlatform9CeilingSign
    db C2VisIdChicagoPlatform2CeilingSign
    db C2VisIdChicagoPlatform3CeilingSign
    db C2VisIdChicagoPlatform4CeilingSign
    db C2VisIdChicagoPlatform5CeilingSign
    db C2VisIdNewsPaper3, C2VisIdNewsPaper4, C2VisIdNewsSeller, C2VisIdNewsDog
    db C2VisIdChicagoStationArch1
    db C2VisIdAdisonSpareCoat
    db C2VisIdAdisonFlashlight
    db C2VisIdAdisonDrawer
    db C2VisIdAdisonBottleIntact
    db C2VisIdAdisonCrackedLamp
    db C2VisIdAdisonDentedMailbox
    db C2VisIdAdisonScratchedMailbox
    db C2VisIdAdisonMailboxClosed
    db C2VisIdJoeBoardedWindow
    db C2VisIdJoeMoldyBox
    db C2VisIdJoeJuiceCan
    db C2VisIdSugarHobo
    db C2VisIdSugarNewspaper
    db C2VisIdSugarPillow
    db C2VisIdSugarPerfume
    db C2VisIdSugarTissue
    db C2VisIdJoeFoodTrash
    db C2VisIdLaundrySoapBox
    db C2VisIdOuterOfficePhoto
    db C2VisIdSecretOfficeDeskMat
    INCBIN "../../res/scene/case2/common/initial-visibility.bin", $2f, $6
    db C2VisIdDesertCactusThorns1
    db C2VisIdDesertCactusThorns2
    db C2VisIdDesertThornLayoutRock1
    db C2VisIdDesertThornLayoutRock2
    db C2VisIdDesertCactus1
    db C2VisIdDesertCactus2
    db C2VisIdDesertGrassLayoutRock1
    db C2VisIdDesertGrassLayoutRock2
jr_003_41d3:
    db C2VisIdDesertAnimalRemains
    db C2VisIdAdisonCigarRing
    db C2VisIdVegasBlackjackDealer
    db C2VisIdBedroomCurtainOpen
    db C2VisIdVegasHamperClosed
    db C2VisIdVentiniThinBlindsOpen
    db C2VisIdVentiniWhiteBlindsOpen
    db C2VisIdMaloneVegasWindow
    db C2VisIdBedroomWindowIntact
    db C2VisIdVentiniCityWindow
    db C2VisIdVentiniVegasWindow
    db C2VisIdAdisonCurtainsOpen
    db C2VisIdAdisonApartmentDoor
    db C2VisIdJoeOfficeBoardGap
    db C2VisIdJoeOfficeWindowPassage
    db C2VisIdJoeBottleRack, C2VisIdJoeCleanBottle
    db C2VisIdMorgueGateClosed
jr_003_41e5:
    db C2VisIdMorgueDrawer1Closed
    db C2VisIdMorgueDrawer2Closed
    db C2VisIdLaundryShutterClosed
    db C2VisIdBindingRope, C2VisIdTiedHands
    db C2VisIdCleanersCounterLowered
    db C2VisIdCleanersOfficeDrapeClosed
    db C2VisIdCleanersDartboardBeforeShift
    INCBIN "../../res/scene/case2/common/initial-visibility.bin", $57, $1
