
; Prepare the selected type/value list, then copy all six scratch bytes into the operation slot.
ReadOpList:


Call_001_5976:
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wChangeType], a
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wChangeValue], a
    call PrepChangeList
    ld a, [wListScratch]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList
    add hl, bc
    ld [hl], a
    ld a, [wListScratch+1]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList+1
    add hl, bc
    ld [hl], a
    ld a, [wListScratch+2]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList+2
    add hl, bc
    ld [hl], a
    ld a, [wListScratch+3]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList+3
    add hl, bc
    ld [hl], a
    ld a, [wListScratch+4]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList+4
    add hl, bc
    ld [hl], a
    ld a, [wListScratch+5]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList+5
    add hl, bc
    ld [hl], a
    ret

; Case II type, target ID, operation-class triples; $ff ends the table.
C2OpClasses:
    db $00, C2TargetBathColdTap, $01
    db $00, C2TargetBathHotTap, $01
    db $00, C2TargetBedroomCurtain, $01
    db $00, C2TargetTrainShade, $01
    db $00, $4e, $01
    db $00, $50, $06
    db $00, $5a, $01
    db $00, $5b, $01
    db $00, $5f, $01
    db $00, $66, $01
    db $00, $63, $06
    db $00, $6b, $01
    db $00, $70, $06
    db $00, $73, $01
    db $00, $80, $01
    db $00, $81, $01
    db $00, $92, $01
    db $00, $94, $01
    db $00, $9e, $01
    db $00, $9f, $01
    db $00, $a4, $01
    db $00, $88, $01
    db $00, $89, $01
    db $01, C2ContainerSugarWardrobe, $06
    db $03, C2ItemTimetable, $04
    db $03, C2ItemLiftButton, $06
    db $03, C2ItemRailwayPamphlet, $04
    db $03, C2Bottle, $06
    db $03, C2Knife, $04
    db $03, $2f, $04
    db $03, $3b, $04
    db $03, $44, $04
    db $03, C2Paperweight, $06
    db $03, C2DeskMat, $04
    db $03, C2Banana, $04
    db $03, $50, $04
    db $04, C2ItemFlashlight, $03
    db $05, C2TargetCasinoFrontDoor, $06
    db $05, C2TargetCleanersEntrance, $06
    db $05, C2TargetVegasStationEntrance, $06
    db $05, C2TargetChicagoStationEntrance, $06
    db $05, C2TargetChicagoStationCab, $06
    db $05, $48, $06
    db $05, C2TargetCottageCab, $06
    db $05, C2TargetJoeFrontCab, $06
    db $05, C2TargetMorgueCab, $06
    db $05, C2TargetAdisonBuildingEntrance, $06
    db $05, C2TargetJoeBarFrontDoor, $06
    db $05, C2TargetPoliceStationDoor, $06
    db $05, C2TargetMorgueEntranceDoor, $06
    db $ff
