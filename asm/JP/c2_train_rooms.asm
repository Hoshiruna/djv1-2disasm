
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
    db $1b, $1d, $1f, $21, $23, $25, $27, $29

; First passenger room for each train.
TrainCarA:
C2SchedRoomsA:
    db $23, $25
jr_003_6a07:
    db $27, $29, $1b, $1d, $1f, $21

; Second passenger room for each train.
TrainCarB:
C2SchedRoomsB:
    db $24, $26, $28, $2a
jr_003_6a11:
    db $1c, $1e, $20, $22

; Departure platform room for each train.
TrainPlatforms:
C2SchedRoomsC:
    db $2c, $2d, $2e, $2f, $17, $18, $19, $1a
