
; Set exactly $23 initial state bits and restore caller scratch at hItemSlot/hItemSlot+1.
InitC1Bits:

Call_001_45fa:
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    ld d, $00
    ld hl, C1StartBits

; Set the next initial state bit and stop after the original $23 entries.
C1InitStateBitLoop:

jr_001_4608:
    ld a, [hl+]
    push hl
    push de
    call SetStateBit
    pop de
    pop hl
    inc d
    ld a, d
    cp $23
    jr c, C1InitStateBitLoop

    pop hl
    push af
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    ret

C1StartBits:
    db C1StateBarStairsPassable, C1StateRackSewerLadderPassable, C1StateCasinoLiftPassagePassable, C1StateFireEscape3To2Passable, C1StateFireEscape2ToAlleyPassable, C1StateJoeStreetAlleyPassable, C1StateJoeStreetNewsstandPassable, C1StateJoeStreetPoliceFrontPassable, C1StateJoeStreetCarRearPassable, C1StateNewsstandGunShopPassable, C1StateGunShopPeoriaPassable, C1StatePeoriaCabStopsPassable, C1StateConstructionPitEntryPassable, C1DoorIdBlueCabPeoria, C1DoorIdBlueCabStanford, C1DoorIdBlueCabBungalow
    db C1DoorIdBlueCabOfficeBuilding, C1DoorIdBlueCabEstate, C1DoorIdYellowCabPeoria, C1DoorIdYellowCabStanford, C1DoorIdYellowCabBungalow, C1DoorIdYellowCabOfficeBuilding, C1DoorIdYellowCabEstate, C1StateAceOfficeStairsPassable, C1StateDoctorOfficeHallPassable, C1StateEstateApproachPassable, C1StateMansionStairsPassable, C1StateJoeStreetSewerLadderPassable, C1StateJoeAlleySewerLadderPassable, C1StateJoeStreetSewerJunctionPassable, C1StateRackSewerJunctionPassable, C1StateLiftToRackSewerPassable
    db C1StateDeepestSewerTunnelPassable, C1StateMansionFrontDoorOpen, C1DoorIdLiftSewerExit

; Clear presence for initial absent-object IDs until $ff; restore caller scratch.
InitC1Absent:

Call_001_4643:
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    ld hl, C1StartAbsent

; Clear the next initial presence bit until the $ff terminator.
C1InitAbsentLoop:

jr_001_464f:
    ld a, [hl+]
    cp $ff
    jr z, C1InitAbsentRestore

    push hl
    call ClearObjPresent
    pop hl
    jr C1InitAbsentLoop

; Restore the caller's HRAM item-slot index after initial presence setup.
C1InitAbsentRestore:

jr_001_465b:
    pop hl
    push af

jr_001_465d:
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    ret

C1StartAbsent:
    db C1ObjectStartWashroomMirror, C1ObjectWomenWashroomMirror, C1ObjectBarStreetWindow, C1ObjectPenthouseRoundMirror, C1ObjectGuestBedroomMirror, C1ObjectGunShopWindow, C1ObjectDoctorCabinet, C1ObjectAceCabinet, $ff
