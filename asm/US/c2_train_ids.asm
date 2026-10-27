
; Return BC as the byte-sized current room minus TrainRoomBase, with B zero; no range check.
TrainRoomIndex:
C2RoomIndex:


Call_003_4d4d:
    ld a, [wRoomId]
    sub TrainRoomBase
    ld c, a
    ld b, $00
    ret

; Read the current train-room state ID used by the fare-view commands.
TrainRoomState:
C2RoomState:


    call TrainRoomIndex
    ld hl, TrainRoomStates
    add hl, bc
    ld a, [hl]
    ret

; Read effect $0b or $0c for the current passenger room.
TrainRoomFx:
C2RoomCode:


    call TrainRoomIndex
    ld hl, TrainRoomFxIds
    add hl, bc
    ld a, [hl]
    ret

; Read the platform room used when leaving the current passenger room.
TrainRoomExit:
C2RoomNext:


    call TrainRoomIndex
    ld hl, TrainExitRooms
    add hl, bc
    ld a, [hl]
    ret


; Read the current passenger room's boarding-door state ID through the original unchecked index.
ReadTrainBoardingDoorState:
TrainRoomStateA:
C2RoomStateA:


    call TrainRoomIndex
    ld hl, TrainBoardingDoorStateByRoom
    add hl, bc
    ld a, [hl]
    ret


; Read the current passenger room's destination-door state ID through the original unchecked index.
ReadTrainDestinationDoorState:
TrainRoomStateB:
C2RoomStateB:


    call TrainRoomIndex
    ld hl, TrainDestinationDoorStateByRoom
    add hl, bc
    ld a, [hl]
    ret

; Read the clearance flag shared by the two passenger rooms of the current train.
TrainPassFlag:
C2RoomFlag:


    call TrainRoomIndex
    ld hl, TrainRoomFlags
    add hl, bc
    ld a, [hl]
    ret
