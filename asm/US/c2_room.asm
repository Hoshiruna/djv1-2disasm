

; Resolve the previous room to its four-byte state records.
ReadC2Prev:
Call_003_463d:
    ld a, [wPrevRoom]
    jr C2ResolveRoomRecords

; Resolve the current room to its four-byte state records.
ReadC2Room:
Call_003_4642:
    ld a, [wRoomId]

; Index the Case II room reference table and store the selected record pointer.
C2ResolveRoomRecords:
jr_003_4645:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C2RoomRefs
    add hl, bc
    ld a, [hl+]
    ld [wRoomDataPtr], a
    ld a, [hl]
    ld [wRoomDataPtr+1], a
    ret

C2MarkTile:
    db $01, $01, $73

; Rooms $00..$a0 select shared four-byte records.
; Fields: cell, state/target ID, scene effect, patch base; C2RoomRecordEnd ends a list.
C2RoomRefs:
    dw VegasBathStates
    dw VegasBedroomStates
    dw VegasHall1States
    dw VegasLobbyStates
    dw VegasCashierStates
    dw VegasBlackjackStates
    dw C2RoomNone
    dw VegasLift1States
    dw VegasLift2States
    dw VegasLift3States
    dw VegasLift4States
    dw VegasHall2States
    dw VegasHall3States
    dw VegasHamperStates
    dw VegasHall4States
    dw VegasVentiniOfficeStates
    dw VegasMaloneOfficeStates
    dw HotelFrontStates
    dw C2Room12
    dw OutskirtsStates
    dw StationStates
    dw VegasStationLobbyStates
    dw VegasLuggageClaimStates
    dw VegasPlatform6States
    dw VegasPlatform7States
    dw VegasPlatform8States
    dw VegasPlatform9States
    dw Train6AStates
    dw Train6BStates
    dw Train7AStates
    dw Train7BStates
    dw Train8AStates
    dw Train8BStates
    dw Train9AStates
    dw Train9BStates
    dw Train2AStates
    dw Train2BStates
    dw Train3AStates
    dw Train3BStates
    dw Train4AStates
    dw Train4BStates
    dw Train5AStates
    dw Train5BStates
    dw ChicagoStationLobbyStates
    dw ChicagoPlatform2States
    dw ChicagoPlatform3States
    dw ChicagoPlatform4States
    dw ChicagoPlatform5States
    dw ChicagoStationFrontStates
    dw CabChiStates
    dw AdisonApartmentFrontStates
jr_003_46bf:
    dw AdisonHallwayStates
    dw AdisonApartmentStates
    dw JoeFrontStates
    dw JoeAlleyStates
    dw JoeFireEscapeStates
    dw JoeOfficeStates
    dw JoeRearAlleyStates
    dw JoeRearHallwayStates
    dw JoeBarStates
    dw JoeCellarStates
    dw JoeChamberStates
    dw JoeCasinoStates
    dw JoeUpstairsHallwayStates
    dw PoliceStationFrontStates
    dw SugarApartmentFrontStates
    dw SugarApartmentStates
    db LOW(MorgueFrontStates)
jr_003_46e0:
    db HIGH(MorgueFrontStates)
    dw MorgueReceptionStates
    dw MorgueColdRoomStates
    dw HamperStates
    dw LaundryStates
    dw CleanersHallwayStates
    dw OuterRoomStates
    dw SecretRoomStates
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
jr_003_4701:
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw C2RoomNone
    dw CabAdisonStates
    dw CabCottageStates
    dw CabPeoriaStates
    dw CabMorgueStates
    dw TracksAStates
    dw TracksBStates
    dw C2RoomNone
    dw C2RoomNone
    dw DesertRightDownStates
    dw DesertRightDownLeftStates
    dw DesertRightDownLeftStates
    dw DesertRightDownLeftStates
    dw DesertRightDownLeftStates
    dw DesertRightDownLeftStates
    dw DesertRightDownLeftStates
    dw DesertDownLeftStates
    dw DesertDownRightUpStates
    dw DesertRightLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightLeftUpStates
    dw DesertRightLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertDownLeftUpStates
    dw DesertDownRightUpStates
    dw DesertRightDownLeftUpStates
    dw DesertDownLeftUpStates
    dw DesertDownRightUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertDownLeftUpStates
    dw DesertDownRightUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertDownLeftUpStates
    dw DesertDownRightUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertDownLeftUpStates
    dw DesertDownRightUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertRightDownLeftUpStates
    dw DesertDownLeftUpStates
    dw DesertRightUpStates
    dw DesertRightLeftUpStates
    dw DesertRightLeftUpStates
    dw DesertRightLeftUpStates
    dw DesertRightLeftUpStates
    dw DesertRightLeftUpStates
    dw DesertRightLeftUpStates
    dw DesertLeftUpStates

; Case II Lucky Dice hotel bathroom state records.
VegasBathStates:
C2Room00:
    db $20, C2StateVegasBathDoorOpen
jr_003_479d:
    db $02, C2PatchIdVegasBathDoorClosed, C2RoomRecordEnd

; Case II Lucky Dice hotel bedroom state records.
VegasBedroomStates:
C2Room01:
    db C2RoomCellNoMark, C2StateBedroomCurtainClosed, $02, C2PatchIdBedroomCurtainOpen
    db $24, C2StateVegasBathDoorOpen, $05, C2PatchListEnd
    db $03, C2StateVegasBedroomDoorOpen, SceneFxLeftChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Case II hotel first-floor hallway state records.
VegasHall1States:
C2Room02:
    db $20, C2StateHotelLobbyDoorOpen, $02, $04
jr_003_47b1:
    db $02, C2StateLift1DoorOpen, SceneFxLeftChevron, $06
    db $42, C2StateHotelQuietGuestDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $24, C2StateVegasBedroomDoorOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Lucky Dice hotel lobby state records.
VegasLobbyStates:
C2Room03:
    db $40, C2StateHotelLobbyDoorOpen, $02, $08
    db $03, C2StateVegasCashierPassageOpen, SceneFxLeftChevron, C2PatchListEnd
    db $24, C2StateCasinoFrontDoorOpen, $05, C2PatchListEnd
    db C2RoomCellNoMark, C2CasinoGlass, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II casino cashier area state records.
VegasCashierStates:
C2Room04:
    db $42, C2StateVegasCashierPassageOpen, SceneFxRightChevron, C2PatchListEnd
    db $02, C2StateVegasBlackjackPassageOpen, SceneFxLeftChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Case II casino blackjack table state records.
VegasBlackjackStates:
C2Room05:
    db C2RoomCellNoMark, C2StateRudyRecognizesAce, $02, $0a
    db $42, C2StateVegasBlackjackPassageOpen, SceneFxRightChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Original floor 1 lift room state record.
VegasLift1States:

C2Room07:
    db $42, C2StateLift1DoorOpen, SceneFxRightChevron, C2PatchIdLiftDoorClosed
    db C2RoomRecordEnd

; Original floor 2 lift room state record.
VegasLift2States:

C2Room08:
    db $42, C2StateLift2DoorOpen, SceneFxRightChevron, C2PatchIdLiftDoorClosed
    db C2RoomRecordEnd

; Original floor 3 lift room state record.
VegasLift3States:

C2Room09:
    db $42, C2StateLift3DoorOpen, SceneFxRightChevron, C2PatchIdLiftDoorClosed
    db C2RoomRecordEnd

; Original floor 4 lift room state record.
VegasLift4States:

C2Room0A:
    db $42, C2StateLift4DoorOpen, SceneFxRightChevron, C2PatchIdLiftDoorClosed
    db C2RoomRecordEnd

; Case II hotel second-floor hallway state records.
VegasHall2States:
C2Room0B:
    db $42, C2StateHotelQuietGuestDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $24, C2StateLift2DoorOpen, $05, C2PatchListEnd
    db $02, C2StateHotelGuestDoor2Open, SceneFxLeftChevron, C2PatchListEnd
    db $20, C2StateHotelGuestDoor3Open, $02, C2PatchListEnd
    db C2RoomRecordEnd

VegasHall3States:
C2Room0C:
    db C2RoomCellConditional + $11, C2StateVegasHamperOpen, SceneFxDownChevron, $0e
    db $42, C2StateHotelQuietGuestDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $02, C2StateHotelGuestDoor2Open, SceneFxLeftChevron, C2PatchListEnd
    db $20, C2StateHotelGuestDoor3Open, $02, C2PatchListEnd
    db $24, C2StateLift3DoorOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

VegasHamperStates:
C2Room0D:
    db $20, C2StateVegasHamperOpen, SceneFxUpChevron, $68
    db C2RoomRecordEnd

; Case II hotel fourth-floor hallway state records.
VegasHall4States:
C2Room0E:
    db $01, C2StateVentiniOfficeDoorOpen, SceneFxLeftChevron, $10
    db $41, C2StateMaloneOfficeDoorOpen, SceneFxRightChevron, $12
    db $24, C2StateLift4DoorOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Danny Ventini office state records.
VegasVentiniOfficeStates:
C2Room0F:
    db C2RoomCellNoMark, C2ThinShadeShut, $02, $14
    db C2RoomCellNoMark, C2StateVentiniCityWindowBroken, $02, $14
    db C2RoomCellNoMark, C2WhiteShadeShut, $02, $18
    db C2RoomCellNoMark, C2StateVentiniVegasWindowBroken, $02, $18
    db C2RoomCellNoMark, C2HatRackTaken, $02, $1c
    db $24, C2StateVentiniOfficeDoorOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Anthony Malone office state records.
VegasMaloneOfficeStates:
C2Room10:
    db C2RoomCellNoMark, C2SilkShut, $02, $20
    db C2RoomCellNoMark, C2StateMaloneVegasWindowBroken, $02, $20
    db $01, C2StateMaloneOfficeDoorOpen
jr_003_4850:
    db SceneFxLeftChevron, $1e, C2RoomRecordEnd

; Case II Lucky Dice hotel front state records.
HotelFrontStates:
C2Room11:
    db $20, C2StateCasinoFrontDoorOpen, $02, $24
    db C2RoomCellNoMark, C2CasinoGlass, $02, $24
jr_003_485b:
    db $24, C2StateHotelDesertRouteOpen, $05, C2PatchListEnd
    db $02, C2StateHotelTracksRouteOpen, SceneFxLeftChevron, C2PatchListEnd
    db $42, C2StateHotelStationRouteOpen, SceneFxRightChevron, C2PatchListEnd
    db C2RoomRecordEnd

C2Room12:
    db C2RoomRecordEnd

; Case II Las Vegas outskirts state records.
OutskirtsStates:
C2Room13:
    db $00, C2StateLaundryChuteDoorOpen, SceneFxDownChevron, $6c
    db $31, C2StateCleanersEntranceOpen, $02, $6e
    db C2RoomCellNoMark, C2CleanGlass, SceneFxRightChevron, $6e
    db C2RoomCellNoMark, C2StateCleanersGlassBroken, SceneFxRightChevron, $6a
    db $42, C2StateOutskirtsTracksRouteOpen, SceneFxRightChevron, C2PatchListEnd
    db $02, C2StateOutskirtsLeftDesertRouteOpen, SceneFxLeftChevron, C2PatchListEnd
    db $24, C2StateOutskirtsBelowDesertRouteOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Las Vegas station exterior state records.
StationStates:
C2Room14:
    db $21, C2StateVegasStationEntranceOpen, $02
jr_003_4889:
    db $28, C2RoomCellNoMark, C2VegasGlass, $02
    db $28, $02
jr_003_488f:
    db C2StateHotelStationRouteOpen, SceneFxLeftChevron, C2PatchListEnd, $42
jr_003_4893:
    db C2StateStationRightDesertRouteOpen, SceneFxRightChevron, C2PatchListEnd, $24
    db C2StateStationBelowDesertRouteOpen, $05, C2PatchListEnd, C2RoomRecordEnd

; Case II Las Vegas station lobby state records.
VegasStationLobbyStates:
C2Room15:
    db $24, C2StateVegasStationEntranceOpen, $05, C2PatchListEnd
    db $43
jr_003_48a0:
    db C2StateVegasLuggagePassageOpen, SceneFxRightChevron, C2PatchListEnd, $01
    db C2StateVegasPlatform6PassageOpen, SceneFxLeftChevron, C2PatchListEnd, $10
    db C2StateVegasPlatform7PassageOpen, $02, C2PatchListEnd, $30
    db C2StateVegasPlatform8PassageOpen, $02, C2PatchListEnd, $41
    db C2StateVegasPlatform9PassageOpen, SceneFxRightChevron
jr_003_48b2:
    db C2PatchListEnd, C2RoomCellNoMark, C2VegasGlass, $02
    db C2PatchListEnd, C2RoomRecordEnd

; Case II Las Vegas luggage claim state records.
VegasLuggageClaimStates:
C2Room16:
    db $02, C2StateVegasLuggagePassageOpen, SceneFxLeftChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Las Vegas platform 6 state records.
VegasPlatform6States:
C2Room17:
    db C2RoomCellConditional + $01, C2StateTrain6BoardingDoorOpen, $02, $88
    db C2RoomCellNoMark, C2StateTrain6PlatformView, $02, C2PatchSkipBase
    db C2RoomCellConditional + $41, C2StateTrain6DestinationDoorOpen, $02, C2PatchListEnd
    db $24, C2StateVegasPlatform6PassageOpen, $05, C2PatchListEnd
    db $20, C2StateVegasPlatform6EmergencyExitOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Las Vegas platform 7 state records.
VegasPlatform7States:
C2Room18:
    db C2RoomCellConditional + $01, C2StateTrain7BoardingDoorOpen, $02, $88
    db C2RoomCellNoMark, C2StateTrain7PlatformView, $02, C2PatchSkipBase
    db C2RoomCellConditional + $41, C2StateTrain7DestinationDoorOpen, $02, C2PatchListEnd
    db $24, C2StateVegasPlatform7PassageOpen, $05, C2PatchListEnd
    db $20, C2StateVegasPlatform7EmergencyExitOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Las Vegas platform 8 state records.
VegasPlatform8States:
C2Room19:
    db C2RoomCellConditional + $01, C2StateTrain8BoardingDoorOpen, $02, $88
    db C2RoomCellNoMark, C2StateTrain8PlatformView, $02, C2PatchSkipBase
    db C2RoomCellConditional + $41, C2StateTrain8DestinationDoorOpen, $02, C2PatchListEnd
    db $24
jr_003_48f4:
    db C2StateVegasPlatform8PassageOpen, $05, C2PatchListEnd, $20
    db C2StateVegasPlatform8EmergencyExitOpen, $02, C2PatchListEnd, C2RoomRecordEnd

; Case II Las Vegas platform 9 state records.
VegasPlatform9States:
C2Room1A:
    db C2RoomCellConditional + $01, C2StateTrain9BoardingDoorOpen, $02, $88
    db C2RoomCellNoMark, C2StateTrain9PlatformView, $02, C2PatchSkipBase
    db C2RoomCellConditional + $41, C2StateTrain9DestinationDoorOpen, $02, C2PatchListEnd
    db $24, C2StateVegasPlatform9PassageOpen, $05, C2PatchListEnd
    db $20, C2StateVegasPlatform9EmergencyExitOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 6 passenger room A state records.
Train6AStates:
C2Room1B:
    db C2RoomCellNoMark, C2StateTrain6AFareView, $02, C2PatchSkipBase
    db $44, C2StateTrain6BoardingDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $20, C2StateTrain6InternalPassageOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 6 passenger room B state records.
Train6BStates:
C2Room1C:
    db $40, C2StateTrain6DestinationDoorOpen, SceneFxRightChevron, $2c
    db C2RoomCellNoMark, C2StateTrain6BFareView, $02, C2PatchSkipBase
    db $24, C2StateTrain6InternalPassageOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 7 passenger room A state records.
Train7AStates:
C2Room1D:
    db C2RoomCellNoMark, C2StateTrain7AFareView, $02, C2PatchSkipBase
    db $44, C2StateTrain7BoardingDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $20, C2StateTrain7InternalPassageOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 7 passenger room B state records.
Train7BStates:
C2Room1E:
    db $40, C2StateTrain7DestinationDoorOpen, SceneFxRightChevron, $2c
    db C2RoomCellNoMark, C2StateTrain7BFareView, $02, C2PatchSkipBase
    db $24, C2StateTrain7InternalPassageOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 8 passenger room A state records.
Train8AStates:
C2Room1F:
    db C2RoomCellNoMark, C2StateTrain8AFareView, $02
jr_003_4948:
    db C2PatchSkipBase, $44, C2StateTrain8BoardingDoorOpen, SceneFxRightChevron
    db C2PatchListEnd, $20, C2StateTrain8InternalPassageOpen, $02
    db C2PatchListEnd, C2RoomRecordEnd

; Case II train 8 passenger room B state records.
Train8BStates:
C2Room20:
    db $40, C2StateTrain8DestinationDoorOpen, SceneFxRightChevron
jr_003_4955:
    db $2c, C2RoomCellNoMark, C2StateTrain8BFareView, $02
    db C2PatchSkipBase, $24, C2StateTrain8InternalPassageOpen, $05
    db C2PatchListEnd, C2RoomRecordEnd

; Case II train 9 passenger room A state records.
Train9AStates:
C2Room21:
    db C2RoomCellNoMark, C2StateTrain9AFareView, $02, C2PatchSkipBase
    db $44, C2StateTrain9BoardingDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $20, C2StateTrain9InternalPassageOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 9 passenger room B state records.
Train9BStates:
C2Room22:
jr_003_496c:
    db $40, C2StateTrain9DestinationDoorOpen, SceneFxRightChevron, $2c
    db C2RoomCellNoMark, C2StateTrain9BFareView, $02, C2PatchSkipBase
    db $24, C2StateTrain9InternalPassageOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 2 passenger room A state records.
Train2AStates:
C2Room23:
    db C2RoomCellNoMark, C2StateTrain2AFareView, $02
jr_003_497c:
    db C2PatchSkipBase, $44, C2StateTrain2BoardingDoorOpen, SceneFxRightChevron
    db C2PatchListEnd, $20, C2StateTrain2InternalPassageOpen, $02
    db C2PatchListEnd, C2RoomRecordEnd

; Case II train 2 passenger room B state records.
Train2BStates:
C2Room24:
    db $40, C2StateTrain2DestinationDoorOpen, SceneFxRightChevron, $2c
    db C2RoomCellNoMark, C2StateTrain2BFareView, $02, C2PatchSkipBase
    db $24, C2StateTrain2InternalPassageOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 3 passenger room A state records.
Train3AStates:
C2Room25:
    db C2RoomCellNoMark, C2StateTrain3AFareView, $02, C2PatchSkipBase
    db $44, C2StateTrain3BoardingDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $20, C2StateTrain3InternalPassageOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 3 passenger room B state records.
Train3BStates:
C2Room26:
    db $40, C2StateTrain3DestinationDoorOpen, SceneFxRightChevron, $2c
    db C2RoomCellNoMark, C2StateTrain3BFareView, $02, C2PatchSkipBase
    db $24, C2StateTrain3InternalPassageOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 4 passenger room A state records.
Train4AStates:
C2Room27:
    db C2RoomCellNoMark, C2StateTrain4AFareView, $02, C2PatchSkipBase
    db $44, C2StateTrain4BoardingDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $20, C2StateTrain4InternalPassageOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 4 passenger room B state records.
Train4BStates:
C2Room28:
    db $40, C2StateTrain4DestinationDoorOpen, SceneFxRightChevron, $2c
    db C2RoomCellNoMark, C2StateTrain4BFareView, $02, C2PatchSkipBase
    db $24, C2StateTrain4InternalPassageOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 5 passenger room A state records.
Train5AStates:
C2Room29:
    db C2RoomCellNoMark, C2StateTrain5AFareView, $02, C2PatchSkipBase
    db $44, C2StateTrain5BoardingDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $20, C2StateTrain5InternalPassageOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II train 5 passenger room B state records.
Train5BStates:
C2Room2A:
    db $40, C2StateTrain5DestinationDoorOpen, SceneFxRightChevron, $2c
    db C2RoomCellNoMark, C2StateTrain5BFareView, $02, C2PatchSkipBase
    db $24, C2StateTrain5InternalPassageOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Chicago station lobby state records.
ChicagoStationLobbyStates:
C2Room2B:
    db C2RoomCellNoMark, C2StateNewsstandOpen, SceneFxRightChevron, $2e
    db C2RoomCellNoMark, $78, $02, C2PatchListEnd
    db $01, C2StateChicagoPlatform2PassageOpen, SceneFxLeftChevron, C2PatchListEnd
    db $10, C2StateChicagoPlatform3PassageOpen, $02, C2PatchListEnd
    db $30, C2StateChicagoPlatform4PassageOpen, $02, C2PatchListEnd
    db $41, C2StateChicagoPlatform5PassageOpen, SceneFxRightChevron
jr_003_49f8:
    db C2PatchListEnd, $24, C2StateChicagoStationEntranceOpen, $05
    db C2PatchListEnd, C2RoomRecordEnd

; Case II Chicago platform 2 state records.
ChicagoPlatform2States:
C2Room2C:
    db C2RoomCellConditional + $01, C2StateTrain2BoardingDoorOpen, $02, $88
    db C2RoomCellNoMark, C2StateTrain2PlatformView, $02, C2PatchSkipBase
    db C2RoomCellConditional + $41, C2StateTrain2DestinationDoorOpen, $02, C2PatchListEnd
    db $24, C2StateChicagoPlatform2PassageOpen, $05, C2PatchListEnd
    db $20, C2StateChicagoPlatform2EmergencyExitOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Chicago platform 3 state records.
ChicagoPlatform3States:
C2Room2D:
    db C2RoomCellConditional + $01, C2StateTrain3BoardingDoorOpen, $02, $88
    db C2RoomCellNoMark, C2StateTrain3PlatformView, $02, C2PatchSkipBase
    db C2RoomCellConditional + $41, C2StateTrain3DestinationDoorOpen, $02, C2PatchListEnd
    db $24, C2StateChicagoPlatform3PassageOpen, $05, C2PatchListEnd
    db $20, C2StateChicagoPlatform3EmergencyExitOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Chicago platform 4 state records.
ChicagoPlatform4States:
C2Room2E:
    db C2RoomCellConditional + $01, C2StateTrain4BoardingDoorOpen, $02, $88
    db C2RoomCellNoMark, C2StateTrain4PlatformView, $02, C2PatchSkipBase
    db C2RoomCellConditional + $41, C2StateTrain4DestinationDoorOpen, $02, C2PatchListEnd
    db $24, C2StateChicagoPlatform4PassageOpen, $05, C2PatchListEnd
    db $20, C2StateChicagoPlatform4EmergencyExitOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Chicago platform 5 state records.
ChicagoPlatform5States:
C2Room2F:
    db C2RoomCellConditional + $01, C2StateTrain5BoardingDoorOpen, $02, $88
    db C2RoomCellNoMark, C2StateTrain5PlatformView, $02, C2PatchSkipBase
    db C2RoomCellConditional + $41, C2StateTrain5DestinationDoorOpen, $02, C2PatchListEnd
    db $24, C2StateChicagoPlatform5PassageOpen, $05, C2PatchListEnd
    db $20, C2StateChicagoPlatform5EmergencyExitOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Chicago station front state records.
ChicagoStationFrontStates:
C2Room30:
    db C2RoomCellNoMark, C2ChiGlass2, SceneFxRightChevron, $84
    db C2RoomCellNoMark, C2ChiGlass1, SceneFxRightChevron, $86
    db $21, C2StateChicagoStationEntranceOpen, $02, $30
    db $33, C2StateChicagoCabPassageOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

CabChiStates:
ChiStnStates:
C2Room31:
    db C2RoomCellNoMark, $a1, SceneFxRightChevron, $32
    db $02, C2StateChicagoCabPassageOpen, SceneFxLeftChevron, C2PatchListEnd
    db $42, C2StateJammedCabDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Adison apartment front state records.
AdisonApartmentFrontStates:
C2Room32:
    db $41, C2StateAdisonBuildingEntranceOpen, SceneFxRightChevron, $34
    db C2RoomCellNoMark, C2LobbyGlass, SceneFxRightChevron, $34
    db $03, C2StateAdisonCabPassageOpen, SceneFxLeftChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Adison hallway state records.
AdisonHallwayStates:
C2Room33:
    db $20, C2StateAdisonApartmentDoorOpen, $02, $38
    db $24, C2StateAdisonBuildingEntranceOpen, $05, C2PatchListEnd
    db $41, C2StateAdisonNeighborDoor1Open, SceneFxRightChevron, C2PatchListEnd
    db $01, C2StateAdisonNeighborDoor2Open, SceneFxLeftChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Adison apartment state records.
AdisonApartmentStates:
C2Room34:
    db $20, C2StateAdisonApartmentDoorOpen, $02, $3a
jr_003_4a92:
    db C2RoomCellNoMark, C2HomeCurtain, SceneFxRightChevron, $3a
    db C2RoomRecordEnd

; Case II Joe's bar front state records.
JoeFrontStates:
C2Room35:
    db C2RoomCellNoMark, C2JoeFrontGlass, SceneFxRightChevron, $3e
    db C2RoomCellNoMark, C2StateJoeWindowBroken, SceneFxRightChevron, $40
    db $33, C2StateJoeFrontCabPassageOpen, $02, C2PatchListEnd
    db $44, C2StateJoePoliceRouteOpen, SceneFxRightChevron
jr_003_4aa6:
    db C2PatchListEnd, $00, C2StateJoeAlleyPassageOpen, $02
    db C2PatchListEnd, $24, C2StateJoeFrontManholeOpen, SceneFxDownChevron
    db C2PatchListEnd, $11, C2StateJoeBarFrontDoorOpen, $02
    db C2PatchListEnd, $04, C2StateJoeWorksRoute, SceneFxRightChevron
    db C2PatchListEnd, C2RoomRecordEnd

; Case II Joe's street-side alley state records.
JoeAlleyStates:
C2Room36:
    db $20, C2StateJoeAlleyPassageOpen, $02, C2PatchListEnd
    db $01, C2StateJoeFireEscapePassageOpen, SceneFxUpChevron, C2PatchListEnd
    db $04, C2StateJoeRearAlleyRouteOpen, $05, C2PatchListEnd
    db $23, C2StateJoeRearManholeOpen, SceneFxDownChevron, C2PatchListEnd
    db C2RoomCellNoMark, $84, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Joe's fire escape state records.
JoeFireEscapeStates:
C2Room37:
    db $24, C2StateJoeFireEscapePassageOpen, SceneFxDownChevron, C2PatchListEnd
    db $42, C2StateJoeBoardGapOpen, SceneFxRightChevron, C2PatchListEnd
    db $20, C2StateJoeUpperLadderRoute, SceneFxUpChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Joe's office state records.
JoeOfficeStates:
C2Room38:
    db C2RoomCellNoMark, C2StateJoeSafeOpen, SceneFxRightChevron
jr_003_4add:
    db $42, $20, C2StateJoeBoardGapOpen, $02
    db C2PatchListEnd, $24, C2StateSecretaryDoorOpen, SceneFxRightChevron
    db C2PatchListEnd, $02, C2StateJoeOfficeLiftDoorOpen, $05
    db C2PatchListEnd, C2RoomRecordEnd

; Case II Joe's rear alley state records.
JoeRearAlleyStates:
C2Room39:
    db $31, C2StateJoeRearDoorOpen, $02, $54
    db $24, C2StateJoeRearAlleyRouteOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Joe's rear hallway state records.
JoeRearHallwayStates:
C2Room3A:
    db $30, C2StateJoeBarInteriorDoorOpen, $02, $44
    db $44, C2StateJoeRearDoorOpen, $05, C2PatchListEnd
    db $02, C2StateJoeLadiesDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $24, C2StateJoeMensDoorOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Joe's bar state records.
JoeBarStates:
C2Room3B:
    db $00, C2StateJoeCellarDoorOpen, $02, $46
    db C2RoomCellNoMark, C2JoeFrontGlass
jr_003_4b0b:
    db SceneFxRightChevron, $48, C2RoomCellNoMark, C2StateJoeWindowBroken
    db SceneFxRightChevron, $4a, $40, C2StateJoeBarFrontDoorOpen
    db $02, C2PatchListEnd, $24, C2StateJoeBarInteriorDoorOpen
    db $05, C2PatchListEnd, $03, C2StateJoeBarStairsOpen
    db SceneFxUpChevron, C2PatchListEnd, C2RoomRecordEnd

; Case II Joe's cellar state records.
JoeCellarStates:
C2Room3C:
    db C2RoomCellConditional + $00, C2StateJoeShelvesOpen, $02, $4c
    db $24, C2StateJoeCellarDoorOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Joe's chamber state records.
JoeChamberStates:
C2Room3D:
    db $42, C2StateJoeShelvesOpen, SceneFxRightChevron, $4e
    db $02, C2StateJoeCasinoDoorOpen, SceneFxLeftChevron, $50
    db $24, C2StateJoeFrontManholeOpen, SceneFxDownChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Joe's casino state records.
JoeCasinoStates:
C2Room3E:
    db $40, C2StateJoeCasinoDoorOpen, $02, $52
jr_003_4b38:
    db $24, C2StateJoeCasinoLiftDoorOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Joe's upstairs hallway state records.
JoeUpstairsHallwayStates:
C2Room3F:
    db $24, C2StateJoeBarStairsOpen, SceneFxDownChevron, C2PatchListEnd
    db $20, C2StateJoeUpstairsRestrictedDoorOpen, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Case II police station front state records.
PoliceStationFrontStates:
C2Room40:
    db $20, C2StatePoliceGlassBroken, $02, $56
    db $04, C2StateJoePoliceRouteOpen, SceneFxLeftChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Case II Sugar's apartment front state records.
SugarApartmentFrontStates:
C2Room41:
    db $41, C2StateCottageCabPassageOpen, SceneFxRightChevron
jr_003_4b52:
    db C2PatchListEnd, $03, C2StateSugarDoorUnlocked, $02
    db C2PatchListEnd, $01, C2StateSugarFrontLockedDoorOpen, SceneFxRightChevron
    db C2PatchListEnd, C2RoomRecordEnd

; Case II Sugar's apartment state records.
SugarApartmentStates:
C2Room42:
    db C2RoomCellNoMark, C2StateSugarWardrobeOpen, SceneFxRightChevron, C2PatchIdSugarWardrobeClosedIntact
    db C2RoomCellNoMark, C2StateSugarWardrobeMirrorBroken, SceneFxRightChevron, C2PatchIdSugarWardrobeClosedIntact
    db $24, C2StateSugarDoorUnlocked, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II morgue front state records.
MorgueFrontStates:
C2Room43:
    db $20, C2StateMorgueEntranceDoorOpen, $02, $5c
    db C2RoomCellNoMark, C2MorgueGlass, SceneFxRightChevron, $5c
    db $24, C2StateMorgueCabPassageOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II morgue reception state records.
MorgueReceptionStates:
C2Room44:
    db $30, C2StateMorgueColdRoomDoorOpen, $02, $60
    db C2RoomCellNoMark, C2GateOpen, SceneFxRightChevron, $62
    db $24, C2StateMorgueEntranceDoorOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II morgue cold room state records.
MorgueColdRoomStates:
C2Room45:
    db C2RoomCellNoMark, C2Drawer1Open, $02, $64
    db C2RoomCellNoMark, C2Drawer2Open, $02, $66
    db $24, C2StateMorgueColdRoomDoorOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

HamperStates:
C2Room46:
    db $20, C2StateLaundryHamperPassageOpen, SceneFxUpChevron, $68
    db C2RoomRecordEnd

LaundryStates:
C2Room47:
    db C2RoomCellNoMark, C2StateLaundryUntied, $02, C2PatchIdLaundryBound
    db $01, C2StateLaundryChuteDoorOpen, SceneFxUpChevron, C2PatchListEnd
    db $43, C2StateLaundryStairsOpen, SceneFxUpChevron, C2PatchListEnd
    db $22, C2StateLaundryHamperPassageOpen, SceneFxDownChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Case II cleaners hallway state records.
CleanersHallwayStates:
C2Room48:
    db $03, C2StateCleanersEntranceOpen, SceneFxLeftChevron, $74
    db C2RoomCellNoMark, C2CleanGlass, SceneFxRightChevron
jr_003_4bad:
    db $74, C2RoomCellNoMark, C2StateCleanersGlassBroken, SceneFxRightChevron
    db $78, $41, C2StateCleanersOfficeDoorOpen, $02
    db $7a, C2RoomCellNoMark, C2CounterRaised, SceneFxRightChevron
    db $7a, $20, C2StateLaundryStairsOpen, $02
    db C2PatchListEnd, C2RoomRecordEnd

OuterRoomStates:
C2Room49:
    db C2RoomCellConditional + $21, C2StateOuterOfficeSecretDoorOpen, $02, $7e
    db C2RoomCellNoMark, C2StateCleanersSunWindowBroken, SceneFxRightChevron, $80
    db C2RoomCellNoMark, C2DrapeOpen, SceneFxRightChevron, $80
    db $04, C2StateCleanersOfficeDoorOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

SecretRoomStates:
C2Room4A:
    db $24, C2StateOuterOfficeSecretDoorOpen, $05
jr_003_4bd3:
    db C2PatchListEnd, C2RoomRecordEnd

CabAdisonStates:
AdisonStates:
C2Room5E:
    db C2RoomCellNoMark, $a1, SceneFxRightChevron, $32
    db $42, C2StateJammedCabDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $02, C2StateAdisonCabPassageOpen, SceneFxLeftChevron, C2PatchListEnd
    db C2RoomRecordEnd

CabCottageStates:
CottageStates:
C2Room5F:
    db C2RoomCellNoMark, $a1, SceneFxRightChevron, $32
    db $42, C2StateJammedCabDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $02, C2StateCottageCabPassageOpen, SceneFxLeftChevron, C2PatchListEnd
    db C2RoomRecordEnd

CabPeoriaStates:
PeoriaStates:
C2Room60:
    db C2RoomCellNoMark, $a1, SceneFxRightChevron, $32
    db $42, C2StateJammedCabDoorOpen, SceneFxRightChevron, C2PatchListEnd
    db $02, C2StateJoeFrontCabPassageOpen, SceneFxLeftChevron, C2PatchListEnd
    db C2RoomRecordEnd

CabMorgueStates:
MorgueStates:
C2Room61:
    db C2RoomCellNoMark
jr_003_4bfd:
    db $a1, SceneFxRightChevron, $32, $42
    db C2StateJammedCabDoorOpen, SceneFxRightChevron, C2PatchListEnd, $02
    db C2StateMorgueCabPassageOpen, SceneFxLeftChevron, C2PatchListEnd, C2RoomRecordEnd

; Case II tire tracks A state records.
TracksAStates:
C2Room62:
    db $02, C2StateOutskirtsTracksRouteOpen, SceneFxLeftChevron, C2PatchListEnd
    db $42, C2StateTracksLinkOpen, SceneFxRightChevron, C2PatchListEnd
    db $20, C2StateTracksAAboveDesertRouteOpen, $02, C2PatchListEnd
    db $24, C2StateTracksABelowDesertRouteOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Case II tire tracks B state records.
TracksBStates:
C2Room63:
    db $42, C2StateHotelTracksRouteOpen, SceneFxRightChevron, C2PatchListEnd
    db $02, C2StateTracksLinkOpen, SceneFxLeftChevron, C2PatchListEnd
    db $20, C2StateTracksBAboveDesertRouteOpen, $02, C2PatchListEnd
    db $24, C2StateTracksBBelowDesertRouteOpen, $05, C2PatchListEnd
    db C2RoomRecordEnd

; Shared movement lists: entry labels select tails ending at the original $ff.
; Shared desert records: right, down, left, up.
DesertRightDownLeftUpStates:
C2Room70:
    db $42, GridRight, SceneFxRightChevron, C2PatchListEnd

; Shared desert records: down, left, up.
DesertDownLeftUpStates:
C2Room75:
    db $24, GridDown, $05, C2PatchListEnd

; Shared desert records: left, up.
DesertLeftUpStates:
C2RoomA0:
    db $02, GridLeft, SceneFxLeftChevron, C2PatchListEnd
    db $20, GridUp, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Shared desert records: down, right, up.
DesertDownRightUpStates:
C2Room6E:
    db $24, GridDown, $05, C2PatchListEnd

; Shared desert records: right, up.
DesertRightUpStates:
C2Room99:
    db $42, GridRight, SceneFxRightChevron, C2PatchListEnd
    db $20, GridUp, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Shared desert records: right, down, left.
DesertRightDownLeftStates:
C2Room67:
    db $42, GridRight, SceneFxRightChevron, C2PatchListEnd

; Shared desert records: down, left.
DesertDownLeftStates:
C2Room6D:
    db $24, GridDown, $05, C2PatchListEnd
    db $02, GridLeft, SceneFxLeftChevron, C2PatchListEnd
    db C2RoomRecordEnd

; Shared desert records: right, left, up.
DesertRightLeftUpStates:
C2Room6F:
    db $42, GridRight, SceneFxRightChevron, C2PatchListEnd
    db $02, GridLeft, SceneFxLeftChevron, C2PatchListEnd
    db $20, GridUp, $02, C2PatchListEnd
    db C2RoomRecordEnd

; Shared desert records: right, down.
DesertRightDownStates:
C2Room66:
    db $42, GridRight, SceneFxRightChevron, C2PatchListEnd
    db $24, GridDown, $05, C2PatchListEnd

C2RoomNone:
    db C2RoomRecordEnd
