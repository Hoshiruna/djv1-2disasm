
; Store the masked item type and dispatch to its Case I list filter.
BuildC1Item:


    ld a, [wRoomType]
    and $7f
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemType
    add hl, bc
    ld [hl], a
    rst RST_00

; Types $00..$05 select these filters; $01 and $02 share the copy routine.
C1ItemCalls:
    dw CheckC1RoomItem
    dw CopyC1Item
    dw CopyC1Item
    dw CheckC1BitItem
    dw CheckC1ObjItem
    dw CheckC1MarkItem

; Set the result for an unrestricted entry or a visible object.
CheckListVisible:
    call ClearResult
    ld a, [wRoomVisId]
    cp $ff
    jr z, C1ListVisibleResult

    call ReadObjVisible
    ld a, [wStateResult]
    and $01
    jr z, C1ListVisibleReturn

; Set the result for an unrestricted or visible room-list entry.
C1ListVisibleResult:

jr_001_6cc6:
    call SetResult

; Return the room-list visibility result.
C1ListVisibleReturn:

jr_001_6cc9:
    ret

; Apply the original room-item exceptions before storing the item ID.
CheckC1RoomItem:


    ld a, [wRoomItem]
    cp C1TargetAceOfficeDoorShadow
    jr nz, C1FilterButlerItem

    ld a, [wSceneId]
    cp C1SceneAceOfficeDoorClosed
    jr z, C1FilterButlerItem

    jp SkipRoomItem

; Keep the butler target only in scene $7a, otherwise continue to the next exception.
C1FilterButlerItem:


jr_001_6cdb:
    ld a, [wRoomItem]
    cp C1TargetMansionButler
    jr nz, C1FilterRackItem

    ld a, [wSceneId]
    cp C1SceneMansionButlerKitchenClosed
    jr z, C1StoreRoomItem

    jp SkipRoomItem

; Skip the rack bottle target when its passage state is set.
C1FilterRackItem:


jr_001_6cec:
    ld a, [wRoomItem]
    cp C1TargetRackBottle
    jr nz, C1StoreRoomItem

    ld a, C1StateRackPassageOpen
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr z, C1StoreRoomItem

    jp SkipRoomItem

; Copy the accepted room-item ID into the selected operation slot.
C1StoreRoomItem:


jr_001_6d02:
    ld a, [wRoomItem]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ret

; Copy the item ID into the current room-list slot.
CopyC1Item:


    ld a, [wRoomItem]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ret

; Skip entries whose first item-bitmap bit is set; store the remaining item ID.
CheckC1BitItem:


    ld a, [wRoomItem]
    push af
    srl a
    srl a
    srl a
    ldh [hRoomIndex], a
    pop af
    and $07
    ld [wRoomBit], a
    ld bc, wItemFlags
    ldh a, [hRoomIndex]
    ld l, a
    ldh a, [hRoomIndex+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [wRoomBit]
    ldh [hRoomIndex], a
    xor a
    ldh [hRoomIndex+1], a
    ld a, d
    push af
    ld bc, BitMasks
    ldh a, [hRoomIndex]
    ld l, a
    ldh a, [hRoomIndex+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr z, C1StoreBitItem

    jp SkipRoomItem

; Store the item ID after its item-bitmap bit was found clear.
C1StoreBitItem:


jr_001_6d5f:
    ld a, [wRoomItem]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ret

; Apply scene exceptions and property-four bit zero before storing the item ID.
CheckC1ObjItem:


    ld a, [wRoomItem]
    cp C1PortableCoat
    jr z, C1ObjItemScene00

    cp C1PortableGun1
    jr nz, C1ObjItemPropertyCheck

; Keep the coat and gun one only in scene $00.
C1ObjItemScene00:

jr_001_6d7b:
    ld a, [wSceneId]
    cp C1SceneStartStallDoorClosed
    jr z, C1ObjItemPropertyCheck

    jp SkipRoomItem

; Test property-four bit zero for the candidate object-backed item.
C1ObjItemPropertyCheck:


jr_001_6d85:
    ld a, [wRoomItem]
    ldh [hRoomIndex], a
    ld bc, wProp4
    ldh a, [hRoomIndex]
    ld l, a
    ldh a, [hRoomIndex+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $01
    jr z, C1StoreObjItem

    jp SkipRoomItem

; Store the accepted object-backed item and preserve the original returned A value.
C1StoreObjItem:


jr_001_6d9c:
    ld d, a
    ldh a, [hRoomIndex]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ld a, d
    ret

; Apply the mark check and allow the car trunk only in scene $43.
CheckC1MarkItem:


    ld a, [wRoomItem]
    cp C1DoorIdCarTrunk
    jr z, C1TrunkMarkSceneCheck

    cp C1DoorIdBlueCabStanford
    jr z, C1FilterCabEntry

    cp C1DoorIdBlueCabBungalow
    jr z, C1FilterCabEntry

    cp C1DoorIdBlueCabOfficeBuilding
    jr z, C1FilterCabEntry

    cp C1DoorIdBlueCabEstate
    jr z, C1FilterCabEntry

    cp C1DoorIdYellowCabStanford
    jr z, C1FilterCabEntry

    cp C1DoorIdYellowCabBungalow
    jr z, C1FilterCabEntry

    cp C1DoorIdYellowCabOfficeBuilding
    jr z, C1FilterCabEntry

    cp C1DoorIdYellowCabEstate
    jr nz, C1StoreMarkItem

; Apply cab-color visibility before keeping the selected cab-entry item.
C1FilterCabEntry:
C1FilterSpecialMark:

jr_001_6dd5:
    call CheckC1CabColorHidden
    ld a, [wStateResult]
    and $01
    jr z, C1StoreMarkItem

    jp SkipRoomItem

; Store the accepted passage item ID in the selected operation slot.
C1StoreMarkItem:


jr_001_6de2:
    ld a, [wRoomItem]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ret

; Keep the car trunk target only in scene $43.
C1TrunkMarkSceneCheck:


jr_001_6df3:
    ld a, [wSceneId]
    cp C1SceneCarTrunkClosed
    jr z, C1StoreMarkItem

    jp SkipRoomItem
