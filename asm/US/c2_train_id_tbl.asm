; Six sixteen-byte tables, indexed by passenger room $1b..$2a.

TrainRoomStates:
C2StateIds:
    db C2StateTrain6AFareView, C2StateTrain6BFareView, C2StateTrain7AFareView, C2StateTrain7BFareView
    db C2StateTrain8AFareView, C2StateTrain8BFareView, C2StateTrain9AFareView, C2StateTrain9BFareView
    db C2StateTrain2AFareView, C2StateTrain2BFareView
jr_003_5216:
    db C2StateTrain3AFareView, C2StateTrain3BFareView, C2StateTrain4AFareView, C2StateTrain4BFareView
    db C2StateTrain5AFareView, C2StateTrain5BFareView

TrainRoomFxIds:
C2RoomCodes:
    db $0b, $0c, $0b, $0c, $0b, $0c, $0b, $0c, $0b, $0c, $0b, $0c, $0b, $0c, $0b, $0c

TrainExitRooms:
C2NextRooms:
    db RoomVegasPlatform6, RoomVegasPlatform6, RoomVegasPlatform7, RoomVegasPlatform7, RoomVegasPlatform8, RoomVegasPlatform8, RoomVegasPlatform9, RoomVegasPlatform9, RoomChicagoPlatform2, RoomChicagoPlatform2, RoomChicagoPlatform3, RoomChicagoPlatform3, RoomChicagoPlatform4, RoomChicagoPlatform4, RoomChicagoPlatform5, RoomChicagoPlatform5


; Boarding-door state IDs indexed by passenger room; both sides share their train state.
TrainBoardingDoorStateByRoom:
TrainRoomStatesA:
C2StateIdsA:
    db C2StateTrain6BoardingDoorOpen, C2StateTrain6BoardingDoorOpen, C2StateTrain7BoardingDoorOpen, C2StateTrain7BoardingDoorOpen
    db C2StateTrain8BoardingDoorOpen, C2StateTrain8BoardingDoorOpen, C2StateTrain9BoardingDoorOpen, C2StateTrain9BoardingDoorOpen
    db C2StateTrain2BoardingDoorOpen, C2StateTrain2BoardingDoorOpen, C2StateTrain3BoardingDoorOpen, C2StateTrain3BoardingDoorOpen
jr_003_5248:
    db C2StateTrain4BoardingDoorOpen, C2StateTrain4BoardingDoorOpen, C2StateTrain5BoardingDoorOpen, C2StateTrain5BoardingDoorOpen


; Destination-door state IDs indexed by passenger room; both sides share their train state.
TrainDestinationDoorStateByRoom:
TrainRoomStatesB:
C2StateIdsB:
    db C2StateTrain6DestinationDoorOpen, C2StateTrain6DestinationDoorOpen, C2StateTrain7DestinationDoorOpen, C2StateTrain7DestinationDoorOpen
    db C2StateTrain8DestinationDoorOpen, C2StateTrain8DestinationDoorOpen, C2StateTrain9DestinationDoorOpen, C2StateTrain9DestinationDoorOpen
    db C2StateTrain2DestinationDoorOpen, C2StateTrain2DestinationDoorOpen, C2StateTrain3DestinationDoorOpen, C2StateTrain3DestinationDoorOpen
    db C2StateTrain4DestinationDoorOpen, C2StateTrain4DestinationDoorOpen, C2StateTrain5DestinationDoorOpen, C2StateTrain5DestinationDoorOpen

TrainRoomFlags:
C2FlagIds:
    db C2Train6PassGranted, C2Train6PassGranted, C2Train7PassGranted, C2Train7PassGranted
    db C2Train8PassGranted, C2Train8PassGranted, C2Train9PassGranted, C2Train9PassGranted
    db C2Train2PassGranted, C2Train2PassGranted, C2Train3PassGranted, C2Train3PassGranted
    db C2Train4PassGranted, C2Train4PassGranted, C2Train5PassGranted, C2Train5PassGranted
