
; Train access flags, indexed in train-number order.
TrainAccessFlags:
C2SchedObjs:
    db $22, $23, $24, $25, $1e, $1f, $20, $21

; Passenger clearance flags; set after payment or the original no-cash bypass.
TrainPassFlags:
C2SchedTests:
    db $2d, $2e, $2f, $30, $15, $2a, $2b, $2c

; Destination platform rooms selected after a journey.
TrainDestRooms:
C2SchedNextRooms:
    db $17, $18, $19, $1a, $2c, $2d, $2e, $2f

; Previous-room values written at the destination platform.
TrainPrevRooms:
C2SchedPrevRooms:
    db RoomTrain6A, RoomTrain7A, RoomTrain8A, RoomTrain9A, RoomTrain2A, RoomTrain3A, RoomTrain4A, RoomTrain5A

; First passenger room for each train.
TrainCarA:
C2SchedRoomsA:
    db RoomTrain2A, RoomTrain3A
jr_003_6a07:
    db RoomTrain4A, RoomTrain5A, RoomTrain6A, RoomTrain7A, RoomTrain8A, RoomTrain9A

; Second passenger room for each train.
TrainCarB:
C2SchedRoomsB:
    db RoomTrain2B, RoomTrain3B, RoomTrain4B, RoomTrain5B
jr_003_6a11:
    db RoomTrain6B, RoomTrain7B, RoomTrain8B, RoomTrain9B

; Departure platform room for each train.
TrainPlatforms:
C2SchedRoomsC:
    db $2c, $2d, $2e, $2f, $17, $18, $19, $1a
