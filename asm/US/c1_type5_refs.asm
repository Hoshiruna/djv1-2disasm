; Type 5 has 78 item rows, each containing 4 script pointers.

C1Type5Refs:
    dw C1Act5_00
    dw C1Act5_01
    dw C1Act5_02
    dw C1Act5_03
    dw C1Act5_04
    dw C1Act5_05
    dw C1Act5_06
    dw C1Act5_07
    dw C1Act5_08
    dw C1Act5_09
    dw C1Act5_0A
    dw C1Act5_0B
    dw C1Act5_0C
    dw C1Act5_0D
    dw C1Act5_0E
    dw C1Act5_0F
    dw C1Act5_10
    dw C1Act5_11
    dw C1Act5_12
    dw C1Act5_13
    dw C1Act5_14
    dw C1Act5_15
    dw C1Act5_16
    dw C1Act5_17
    dw C1Act5_18
    dw C1Act5_19
    dw C1Act5_1A
    ; Pointer to C1Act5_1B; split bytes retain the interior label.
    db LOW(C1Act5_1B)
jr_006_700d:
    db HIGH(C1Act5_1B)
    dw C1Act5_1C
    dw C1Act5_1D
    dw C1Act5_1E
    dw C1Act5_1F
    dw C1Act5_20
    dw C1Act5_21
    dw C1Act5_22
    dw C1Act5_23
    dw C1Act5_24
    dw C1Act5_25
    dw C1Act5_26
    dw C1Act5_27
    dw C1Act5_28
    dw C1Act5_29
    dw C1Act5_2A
    dw C1Act5_2B
    dw C1Act5_2C
    dw C1Act5_2D
    dw C1Act5_2E
    dw C1Act5_2F
    dw C1Act5_30
    dw C1Act5_31
    dw C1Act5_32
    dw C1Act5_33
    dw C1Act5_34
    dw C1Act5_35
    dw C1Act5_36
    dw C1Act5_37
    dw C1Act5_38
    dw C1Act5_39
    dw C1Act5_3A
    dw C1Act5_3B
    dw C1Act5_3C
    dw C1Act5_3D
    dw C1Act5_3E
    dw C1Act5_3F
    dw C1Act5_40
    dw C1Act5_41
    dw C1Act5_42
    dw C1Act5_43
    dw C1Act5_44
    dw C1Act5_45
    dw C1Act5_46
    dw C1Act5_47
    dw C1Act5_48
    dw C1Act5_49
    dw C1Act5_4A
    dw C1Act5_4B
    dw C1Act5_4C
    dw C1Act5_4D

C1Act5_00:
    dw LookC1Door00 ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1Door00 ; Selected action SelActionMove (class $05)

C1Act5_01:
    dw LookC1Door01 ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1Door01 ; Selected action SelActionMove (class $05)

C1Act5_02:
    dw LookC1Door02 ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1Door02 ; Selected action SelActionMove (class $05)

C1Act5_03:
    dw LookC1Door03 ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1Door03 ; Selected action SelActionMove (class $05)

C1Act5_04:
    dw LookC1Door04 ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1Door04 ; Selected action SelActionMove (class $05)

C1Act5_05:
    dw LookC1CellarDoor ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1CellarDoor ; Selected action SelActionMove (class $05)

C1Act5_06:
    dw LookC1FrontDoor ; Selected action SelActionLook (class $05)
    dw OpenC1Door06 ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1FrontDoor ; Selected action SelActionMove (class $05)

C1Act5_07:
    dw LookC1Stairs ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1Stairs ; Selected action SelActionMove (class $05)

C1Act5_08:
    dw LookC1RackPassage ; Selected action SelActionLook (class $05)
    dw OpenC1RackPassage ; Selected action SelActionOpen (class $05)
    dw CloseC1RackPassage ; Selected action SelActionClose (class $05)
    dw MoveC1RackPassage ; Selected action SelActionMove (class $05)

C1Act5_09:
    dw LookC1CasinoDoor ; Selected action SelActionLook (class $05)
    dw OpenC1OneWayDoor ; Selected action SelActionOpen (class $05)
    dw CloseC1OneWayDoor ; Selected action SelActionClose (class $05)
    dw MoveC1CasinoDoor ; Selected action SelActionMove (class $05)

C1Act5_0A:
    dw LookC1SewerLadder ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1SewerLadder ; Selected action SelActionMove (class $05)

C1Act5_0B:
    dw C1PassageEmptyScript ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1CasinoPassage ; Selected action SelActionMove (class $05)

C1Act5_0C:
    dw LookC1LiftDoor ; Selected action SelActionLook (class $05)
    dw OpenC1SmallLiftDoor ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1LiftDoor0C ; Selected action SelActionMove (class $05)

C1Act5_0D:
    dw MoveC1OfficePassage ; Selected action SelActionLook (class $05)
    dw MoveC1OfficePassage ; Selected action SelActionOpen (class $05)
    dw MoveC1OfficePassage ; Selected action SelActionClose (class $05)
    dw MoveC1OfficePassage ; Selected action SelActionMove (class $05)

C1Act5_0E:
    dw LookC1LiftDoor ; Selected action SelActionLook (class $05)
    dw OpenC1SmallLiftDoor ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1OfficePassage ; Selected action SelActionMove (class $05)

C1Act5_0F:
    dw LookC1LiftDoor ; Selected action SelActionLook (class $05)
    dw OpenC1SmallLiftDoor ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1LiftDoor0F ; Selected action SelActionMove (class $05)

C1Act5_10:
    dw LookC1Window10 ; Selected action SelActionLook (class $05)
    dw OpenC1PassageWindow ; Selected action SelActionOpen (class $05)
    dw CloseC1PassageWindow ; Selected action SelActionClose (class $05)
    dw MoveC1Window10 ; Selected action SelActionMove (class $05)

C1Act5_11:
    dw C1FireEscapeEmptyView ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1FireEscape11 ; Selected action SelActionMove (class $05)

C1Act5_12:
    dw LookC1Window12 ; Selected action SelActionLook (class $05)
    dw OpenC1PassageWindow ; Selected action SelActionOpen (class $05)
jr_006_7106:
    dw CloseC1PassageWindow ; Selected action SelActionClose (class $05)
    dw MoveC1Window12 ; Selected action SelActionMove (class $05)

C1Act5_13:
    dw LookC1FireEscape13 ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1FireEscape13 ; Selected action SelActionMove (class $05)

C1Act5_14:
    dw LookC1Door14 ; Selected action SelActionLook (class $05)
    dw OpenC1Door14 ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    ; Pointer to $7688; split bytes retain the interior label.
    db LOW(MoveC1Door14) ; Selected action SelActionMove (class $05)
jr_006_7119:
    db HIGH(MoveC1Door14)

C1Act5_15:
    dw LookC1Door15 ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1Door15 ; Selected action SelActionMove (class $05)

C1Act5_16:
    dw LookC1AlleyPassage16 ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1AlleyPassage16 ; Selected action SelActionMove (class $05)

C1Act5_17:
    dw C1NewsstandEmptyView ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1NewsstandPassage ; Selected action SelActionMove (class $05)

C1Act5_18:
    dw LookC1Manhole18 ; Selected action SelActionLook (class $05)
    dw OpenC1Manhole ; Selected action SelActionOpen (class $05)
    dw CloseC1Manhole ; Selected action SelActionClose (class $05)
    dw MoveC1Manhole18 ; Selected action SelActionMove (class $05)

C1Act5_19:
    dw C1SewerEntryEnd ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1PolicePassage ; Selected action SelActionMove (class $05)

C1Act5_1A:
    dw C1PoliceEntryEnd ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1CarRearPassage ; Selected action SelActionMove (class $05)

C1Act5_1B:
    dw LookC1CarDoor1B ; Selected action SelActionLook (class $05)
    dw OpenC1Door1B ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1CarDoor1B ; Selected action SelActionMove (class $05)

C1Act5_1C:
    dw C1CarInteriorEntryEnd ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1GunShopStreet ; Selected action SelActionMove (class $05)

C1Act5_1D:
    dw C1GunShopStreetEnd ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1PeoriaPassage1D ; Selected action SelActionMove (class $05)

C1Act5_1E:
    dw LookC1GunShopDoor ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1GunShopDoor ; Selected action SelActionMove (class $05)

C1Act5_1F:
    dw C1GunShopEntryEnd ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1PeoriaPassage1F ; Selected action SelActionMove (class $05)

C1Act5_20:
    dw LookC1PoliceDoor ; Selected action SelActionLook (class $05)
    dw EnterC1PoliceStation ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw EnterC1PoliceStation ; Selected action SelActionMove (class $05)

C1Act5_21:
    dw C1PoliceDoorViewEnd ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1ConstructionPit ; Selected action SelActionMove (class $05)

C1Act5_22:
    dw LookC1Manhole22 ; Selected action SelActionLook (class $05)
    dw OpenC1Manhole ; Selected action SelActionOpen (class $05)
    dw CloseC1Manhole ; Selected action SelActionClose (class $05)
    dw MoveC1Manhole22 ; Selected action SelActionMove (class $05)

C1Act5_23:
    dw LookC1BlueCab26 ; Selected action SelActionLook (class $05)
    dw C1DoorAlreadyOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1BlueCab26 ; Selected action SelActionMove (class $05)

C1Act5_24:
    dw LookC1BlueCab42 ; Selected action SelActionLook (class $05)
    dw C1DoorAlreadyOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1BlueCab42 ; Selected action SelActionMove (class $05)

C1Act5_25:
    dw LookC1BlueCab44 ; Selected action SelActionLook (class $05)
    dw C1DoorAlreadyOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1BlueCab44 ; Selected action SelActionMove (class $05)

C1Act5_26:
    dw LookC1BlueCab46 ; Selected action SelActionLook (class $05)
    dw C1DoorAlreadyOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1BlueCab46 ; Selected action SelActionMove (class $05)

C1Act5_27:
    dw LookC1BlueCab48 ; Selected action SelActionLook (class $05)
    dw C1DoorAlreadyOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1BlueCab48 ; Selected action SelActionMove (class $05)

C1Act5_28:
    dw LookC1YellowCab27 ; Selected action SelActionLook (class $05)
    dw C1DoorAlreadyOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1YellowCab27 ; Selected action SelActionMove (class $05)

C1Act5_29:
    dw LookC1YellowCab43 ; Selected action SelActionLook (class $05)
    dw C1DoorAlreadyOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1YellowCab43 ; Selected action SelActionMove (class $05)

C1Act5_2A:
    dw LookC1YellowCab45 ; Selected action SelActionLook (class $05)
    dw C1DoorAlreadyOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1YellowCab45 ; Selected action SelActionMove (class $05)

C1Act5_2B:
    dw LookC1YellowCab47 ; Selected action SelActionLook (class $05)
    dw C1DoorAlreadyOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1YellowCab47 ; Selected action SelActionMove (class $05)

C1Act5_2C:
    dw LookC1YellowCab49 ; Selected action SelActionLook (class $05)
    dw C1DoorAlreadyOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1YellowCab49 ; Selected action SelActionMove (class $05)

C1Act5_2D:
    dw LookC1StanfordDoor ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1StanfordDoor ; Selected action SelActionMove (class $05)

C1Act5_2E:
    dw LookC1PrivateLift ; Selected action SelActionLook (class $05)
    dw LookC1PrivateLift ; Selected action SelActionOpen (class $05)
    dw LookC1PrivateLift ; Selected action SelActionClose (class $05)
    dw LookC1PrivateLift ; Selected action SelActionMove (class $05)

C1Act5_2F:
    dw LookC1PrivateLift ; Selected action SelActionLook (class $05)
    dw OpenC1SmallLiftDoor ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1PrivateLift2F ; Selected action SelActionMove (class $05)

C1Act5_30:
    dw LookC1PrivateLift30 ; Selected action SelActionLook (class $05)
    dw OpenC1SmallLiftDoor ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1PrivateLift30 ; Selected action SelActionMove (class $05)

C1Act5_31:
    dw LookC1BungalowDoor ; Selected action SelActionLook (class $05)
    dw OpenC1Door31 ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1BungalowDoor ; Selected action SelActionMove (class $05)

C1Act5_32:
    dw LookC1OfficeDoor32 ; Selected action SelActionLook (class $05)
    dw LookC1OfficeDoor32 ; Selected action SelActionOpen (class $05)
    dw LookC1OfficeDoor32 ; Selected action SelActionClose (class $05)
    dw LookC1OfficeDoor32 ; Selected action SelActionMove (class $05)

C1Act5_33:
    dw LookC1OfficeDoor32 ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1OfficeDoor32 ; Selected action SelActionMove (class $05)

C1Act5_34:
    dw C1OfficeStairEmptyView ; Selected action SelActionLook (class $05)
    dw C1OfficeStairEmptyView ; Selected action SelActionOpen (class $05)
    dw C1OfficeStairEmptyView ; Selected action SelActionClose (class $05)
    dw C1OfficeStairEmptyView ; Selected action SelActionMove (class $05)

C1Act5_35:
    dw LookC1OfficeStairs ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1OfficeStairs ; Selected action SelActionMove (class $05)

C1Act5_36:
    ; Pointer to $7b82; split bytes retain the interior label.
    db LOW(LookC1DoctorDoor) ; Selected action SelActionLook (class $05)
jr_006_7223:
    db HIGH(LookC1DoctorDoor)
    dw OpenC1Door36 ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1DoctorDoor ; Selected action SelActionMove (class $05)

C1Act5_37:
    dw LookC1OfficeHall37 ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1OfficeHall37 ; Selected action SelActionMove (class $05)

C1Act5_38:
    dw LookC1ShadowDoor ; Selected action SelActionLook (class $05)
    dw OpenC1ShadowDoor ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1ShadowDoor ; Selected action SelActionMove (class $05)

C1Act5_39:
    dw LookC1EstatePassage39 ; Selected action SelActionLook (class $05)
    dw C1LiftDoorWontOpen ; Selected action SelActionOpen (class $05)
    dw CloseC1LiftDoor ; Selected action SelActionClose (class $05)
    dw MoveC1EstatePassage39 ; Selected action SelActionMove (class $05)

C1Act5_3A:
    dw C1EstateInnerEmptyView ; Selected action SelActionLook (class $05)
    dw C1EstateInnerEmptyView ; Selected action SelActionOpen (class $05)
    dw C1EstateInnerEmptyView ; Selected action SelActionClose (class $05)
    dw C1EstateInnerEmptyView ; Selected action SelActionMove (class $05)

C1Act5_3B:
    dw C1EstateInnerEmptyView ; Selected action SelActionLook (class $05)
    dw C1EstateInnerEmptyView ; Selected action SelActionOpen (class $05)
    dw C1EstateInnerEmptyView ; Selected action SelActionClose (class $05)
    dw C1EstateInnerEmptyView ; Selected action SelActionMove (class $05)

C1Act5_3C:
    dw LookC1KitchenDoor ; Selected action SelActionLook (class $05)
    dw OpenC1Door3C ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1KitchenDoor ; Selected action SelActionMove (class $05)

C1Act5_3D:
    dw LookC1EstateStairs ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1EstateStairs ; Selected action SelActionMove (class $05)

C1Act5_3E:
    dw LookC1LiftDoor ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1MasterBedroom ; Selected action SelActionMove (class $05)

C1Act5_3F:
    dw LookC1LiftDoor ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1GuestBedroom ; Selected action SelActionMove (class $05)

C1Act5_40:
    dw LookC1LiftDoor ; Selected action SelActionLook (class $05)
    dw OpenC1Door ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw MoveC1BedroomLink ; Selected action SelActionMove (class $05)

C1Act5_41:
    dw LookC1SewerLadder41 ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1SewerLadder41 ; Selected action SelActionMove (class $05)

C1Act5_42:
    dw LookC1SewerLadder42 ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1SewerLadder42 ; Selected action SelActionMove (class $05)

C1Act5_43:
    dw LookC1SewerTunnel43 ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1SewerTunnel43 ; Selected action SelActionMove (class $05)

C1Act5_44:
    dw LookC1SewerTunnel44 ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1SewerTunnel44 ; Selected action SelActionMove (class $05)

C1Act5_45:
    dw LookC1SewerTunnel45 ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1SewerTunnel45 ; Selected action SelActionMove (class $05)

C1Act5_46:
    dw LookC1SewerTunnel46 ; Selected action SelActionLook (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionOpen (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionClose (class $05)
    dw MoveC1SewerTunnel46 ; Selected action SelActionMove (class $05)

C1Act5_47:
    dw LookC1TrunkDoor ; Selected action SelActionLook (class $05)
    dw OpenC1TrunkDoor ; Selected action SelActionOpen (class $05)
    dw CloseC1Door ; Selected action SelActionClose (class $05)
    dw C1PassageActionRefusal ; Selected action SelActionMove (class $05)

C1Act5_48:
    dw C1Passage48Empty ; Selected action SelActionLook (class $05)
    dw C1Passage48Empty ; Selected action SelActionOpen (class $05)
    dw C1Passage48Empty ; Selected action SelActionClose (class $05)
    dw C1Passage48Empty ; Selected action SelActionMove (class $05)

C1Act5_49:
    dw LookC1MansionFrontDoor ; Selected action SelActionLook (class $05)
    dw OpenC1MansionFrontDoor ; Selected action SelActionOpen (class $05)
    dw CloseC1MansionFrontDoor ; Selected action SelActionClose (class $05)
    dw MoveC1MansionFrontDoor ; Selected action SelActionMove (class $05)

C1Act5_4A:
    dw C1TrailingPassageEmpty ; Selected action SelActionLook (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionOpen (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionClose (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionMove (class $05)

C1Act5_4B:
    dw C1TrailingPassageEmpty ; Selected action SelActionLook (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionOpen (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionClose (class $05)
jr_006_72d0:
    dw C1TrailingPassageEmpty ; Selected action SelActionMove (class $05)

C1Act5_4C:
    dw C1TrailingPassageEmpty ; Selected action SelActionLook (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionOpen (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionClose (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionMove (class $05)

C1Act5_4D:
    dw C1TrailingPassageEmpty ; Selected action SelActionLook (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionOpen (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionClose (class $05)
    dw C1TrailingPassageEmpty ; Selected action SelActionMove (class $05)
