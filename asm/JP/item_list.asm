
; Prepare the selected type/value list, then copy all six scratch bytes into the operation slot.
; This filtered slot snapshot is copied by KeepSelChange without another content-table read.
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
    db $00, C2TargetChicagoNewsstand, $01
    db $00, C2TargetChicagoNewsDog, $06
    db $00, C2TargetAdisonScratchedMailbox, $01
    db $00, C2TargetAdisonDentedMailbox, $01
    db $00, C2TargetAdisonCurtains, $01
    db $00, C2TargetJoeBarCounter, $01
    db $00, C2TargetJoeRearNailedBoards, $06
    db $00, C2TargetJoeWineSpigot, $01
    db $00, C2TargetJoeBoardedWindow, $06
    db $00, C2TargetJoeOfficeShade, $01
    db $00, C2TargetMorgueCounter, $01
    db $00, C2TargetMorgueGate, $01
    db $00, C2TargetCleanersCounter, $01
    db $00, C2TargetCleanersOfficeDrape, $01
    db $00, C2TargetVentiniThinBlinds, $01
    db $00, C2TargetVentiniWhiteBlinds, $01
    db $00, C2TargetMaloneSilkCurtain, $01
    db $00, C2TargetMorgueDrawer1, $01
    db $00, C2TargetMorgueDrawer2, $01
    db $01, C2ContainerSugarWardrobe, $06
    db $03, C2ItemTimetable, $04
    db $03, C2ItemLiftButton, $06
    db $03, C2ItemRailwayPamphlet, $04
    db $03, C2Bottle, $06
    db $03, C2Knife, $04
    db $03, C2SiegelDiary, $04
    db $03, C2ItemBankSlips, $04
    db $03, C2Ledger, $04
    db $03, C2Paperweight, $06
    db $03, C2DeskMat, $04
    db $03, C2Banana, $04
    db $03, C2ItemRecord2, $04
    db $04, C2ItemFlashlight, $03
    db $05, C2TargetCasinoFrontDoor, $06
    db $05, C2TargetCleanersEntrance, $06
    db $05, C2TargetVegasStationEntrance, $06
    db $05, C2TargetChicagoStationEntrance, $06
    db $05, C2TargetChicagoStationCab, $06
    db $05, C2TargetAdisonCab, $06
    db $05, C2TargetCottageCab, $06
    db $05, C2TargetJoeFrontCab, $06
    db $05, C2TargetMorgueCab, $06
    db $05, C2TargetAdisonBuildingEntrance, $06
    db $05, C2TargetJoeBarFrontDoor, $06
    db $05, C2TargetPoliceStationDoor, $06
    db $05, C2TargetMorgueEntranceDoor, $06
    db $ff
