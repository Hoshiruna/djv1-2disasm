; Type 5 action rows retain their original pointer counts.

C2Type5Refs:
    dw C2Act5_00
    dw C2Act5_01
    dw C2Act5_02
    dw C2Act5_03
    dw C2Act5_04
    dw C2Act5_05
    dw C2Act5_06
    dw C2Act5_07
    dw C2Act5_08
    dw C2Act5_09
    dw C2Act5_0A
    dw C2Act5_0B
    dw C2Act5_0C
    dw C2Act5_0D
    dw C2Act5_0E
    dw C2Act5_0F
    dw C2Act5_10
    dw C2Act5_11
    dw C2Act5_12
    dw C2Act5_13
    dw C2Act5_14
    dw C2Act5_15
    dw C2Act5_16
    dw C2Act5_17
    dw C2Act5_18
    dw C2Act5_19
    dw C2Act5_1A
    dw C2Act5_1B
    dw C2Act5_1C
    dw C2Act5_1D
    dw C2Act5_1E
    dw C2Act5_1F
    dw C2Act5_20
    dw C2Act5_21
    dw C2Act5_22
    dw C2Act5_23
    dw C2Act5_24
    dw C2Act5_25
    ; Pointer to C2Act5_26; split bytes retain the interior label.
    db LOW(C2Act5_26)
jr_008_404d:
    db HIGH(C2Act5_26)
    ; Pointer to C2Act5_27; split bytes retain the interior label.
    db LOW(C2Act5_27)
jr_008_404f:
    db HIGH(C2Act5_27)
    dw C2Act5_28
    dw C2Act5_29
    dw C2Act5_2A
    dw C2Act5_2B
    dw C2Act5_2C
    dw C2Act5_2D
    dw C2Act5_2E
    dw C2Act5_2F
    dw C2Act5_30
    dw C2Act5_31
    dw C2Act5_32
    dw C2Act5_33
    dw C2Act5_34
    dw C2Act5_35
    dw C2Act5_36
    dw C2Act5_37
    dw C2Act5_38
    dw C2Act5_39
    dw C2Act5_3A
    dw C2Act5_3B
    dw C2Act5_3C
    dw C2Act5_3D
    dw C2Act5_3E
    dw C2Act5_3F
    dw C2Act5_40
    dw C2Act5_41
    dw C2Act5_42
    dw C2Act5_43
    dw C2Act5_44
    dw C2Act5_45
    dw C2Act5_46
    dw C2Act5_47
    dw C2Act5_48
    dw C2Act5_49
    dw C2Act5_4A
    dw C2Act5_4B
    dw C2Act5_4C
    dw C2Act5_4D
    dw C2Act5_4E
    dw C2Act5_4F
    dw C2Act5_50
    dw C2Act5_51
    dw C2Act5_52
    dw C2Act5_53
    dw C2Act5_54
    dw C2Act5_55
    dw C2Act5_56
    dw C2Act5_57
    dw C2Act5_58
    dw C2Act5_59
    dw C2Act5_5A
    dw C2Act5_5B
    dw C2Act5_5C
    dw C2Act5_5D
    dw C2Act5_5E
    dw C2Act5_5F
    dw C2Act5_60
    ; Pointer to C2Act5_61; split bytes retain the interior label.
    db LOW(C2Act5_61)
jr_008_40c3:
    db HIGH(C2Act5_61)
    ; Pointer to C2Act5_62; split bytes retain the interior label.
    db LOW(C2Act5_62)
jr_008_40c5:
    db HIGH(C2Act5_62)
    ; Pointer to C2Act5_63; split bytes retain the interior label.
    db LOW(C2Act5_63)
jr_008_40c7:
    db HIGH(C2Act5_63)
    ; Pointer to C2Act5_64; split bytes retain the interior label.
    db LOW(C2Act5_64)
jr_008_40c9:
    db HIGH(C2Act5_64)
    ; Pointer to C2Act5_65; split bytes retain the interior label.
    db LOW(C2Act5_65)
jr_008_40cb:
    db HIGH(C2Act5_65)
    dw C2Act5_66
    dw C2Act5_67
    dw C2Act5_68
    dw C2Act5_69
    dw C2Act5_6A
    dw C2Act5_6B
    dw C2Act5_6C
    dw C2Act5_6D
    dw C2Act5_6E
    dw C2Act5_6F
    dw C2Act5_70
    dw C2Act5_71
    dw C2Act5_72
    dw C2Act5_73
    dw C2Act5_74
    dw C2Act5_75
    dw C2Act5_76
    dw C2Act5_77
    dw GridRightActs
    dw GridLeftActs
    dw GridDownActs
    dw GridUpActs

C2Act5_00:
    dw LookClosedDoor ; Selected action SelActionLook (class $05)
    dw OpenVegasBathDoor ; Selected action SelActionOpen (class $05)
    dw CloseVegasBathDoor ; Selected action SelActionClose (class $05)
    dw UseVegasBathDoor ; Selected action SelActionMove (class $05)

C2Act5_01:
    dw LookVegasRoomDoor ; Selected action SelActionLook (class $05)
    dw OpenVegasRoomDoor ; Selected action SelActionOpen (class $05)
    dw CloseVegasRoomDoor ; Selected action SelActionClose (class $05)
    dw UseVegasRoomDoor ; Selected action SelActionMove (class $05)

C2Act5_02:
    dw LookClosedDoor ; Selected action SelActionLook (class $05)
    dw OpenSceneDoor ; Selected action SelActionOpen (class $05)
    dw CloseSceneDoor ; Selected action SelActionClose (class $05)
    dw UseVegasLobbyDoor ; Selected action SelActionMove (class $05)

C2Act5_03:
    dw LookQuietGuestDoor ; Selected action SelActionLook (class $05)
    dw DoorLockedReply ; Selected action SelActionOpen (class $05)
    dw DoorIsClosed ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_04:
    dw LookVegasLift1 ; Selected action SelActionLook (class $05)
    dw OpenVegasLift1 ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseVegasLift1 ; Selected action SelActionMove (class $05)

C2Act5_05:
    dw LookCashierWay ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseCashierWay ; Selected action SelActionMove (class $05)

C2Act5_06:
    dw LookCasinoDoor ; Selected action SelActionLook (class $06)
    dw OpenCasinoDoor ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw CloseCasinoDoor ; Selected action SelActionClose (class $06)
    dw BreakCasinoDoor ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseCasinoDoor ; Selected action SelActionMove (class $06)

C2Act5_07:
    dw LookDealerWay ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseDealerWay ; Selected action SelActionMove (class $05)

C2Act5_08:
    dw LookVegasLift2 ; Selected action SelActionLook (class $05)
    dw LookVegasLift2 ; Selected action SelActionOpen (class $05)
    dw LookVegasLift2 ; Selected action SelActionClose (class $05)
    dw LookVegasLift2 ; Selected action SelActionMove (class $05)

C2Act5_09:
    dw LookVegasLift2 ; Selected action SelActionLook (class $05)
    dw OpenTimedLiftDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseVegasLift2 ; Selected action SelActionMove (class $05)

C2Act5_0A:
    dw LookGuestDoor2 ; Selected action SelActionLook (class $05)
    dw DoorLockedReply ; Selected action SelActionOpen (class $05)
    dw DoorIsClosed ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_0B:
    dw LookGuestDoor3 ; Selected action SelActionLook (class $05)
    dw DoorLockedReply ; Selected action SelActionOpen (class $05)
    dw DoorIsClosed ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_0C:
    dw LookVegasLift3 ; Selected action SelActionLook (class $05)
    dw OpenVegasLift3 ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseVegasLift3 ; Selected action SelActionMove (class $05)

C2Act5_0D:
    dw LookVegasLid ; Selected action SelActionLook (class $05)
    dw OpenVegasLid ; Selected action SelActionOpen (class $05)
    dw CloseVegasLid ; Selected action SelActionClose (class $05)
    dw UseVegasHamper ; Selected action SelActionMove (class $05)

C2Act5_0E:
    dw LookVegasLift4 ; Selected action SelActionLook (class $05)
    dw OpenVegasLift4 ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseVegasLift4 ; Selected action SelActionMove (class $05)

C2Act5_0F:
    dw LookVentiniDoor ; Selected action SelActionLook (class $05)
    dw OpenVentiniDoor ; Selected action SelActionOpen (class $05)
    dw CloseVentiniDoor ; Selected action SelActionClose (class $05)
    dw UseVentiniDoor ; Selected action SelActionMove (class $05)

C2Act5_10:
    dw LookMaloneDoor ; Selected action SelActionLook (class $05)
    dw OpenSceneDoor ; Selected action SelActionOpen (class $05)
    dw CloseSceneDoor ; Selected action SelActionClose (class $05)
    dw UseMaloneDoor ; Selected action SelActionMove (class $05)

C2Act5_11:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseHotelDesert ; Selected action SelActionMove (class $05)

C2Act5_12:
    dw LookHotelStationWay ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseHotelTracks ; Selected action SelActionMove (class $05)

C2Act5_13:
    dw StreetWayReply ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseHotelStationWay ; Selected action SelActionMove (class $05)

C2Act5_14:
    dw LookLaundryDoor ; Selected action SelActionLook (class $05)
    dw OpenLaundryDoor ; Selected action SelActionOpen (class $05)
    dw CloseLaundryDoor ; Selected action SelActionClose (class $05)
    dw UseLaundryDoor ; Selected action SelActionMove (class $05)

C2Act5_15:
    dw LookCleanEntry ; Selected action SelActionLook (class $06)
    dw OpenCleanEntry ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw CloseCleanEntry ; Selected action SelActionClose (class $06)
    dw BreakGoonsDoor ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseCleanEntry ; Selected action SelActionMove (class $06)

C2Act5_16:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseOutskirtsTracks ; Selected action SelActionMove (class $05)

C2Act5_17:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseOutskirtsSand1 ; Selected action SelActionMove (class $05)

C2Act5_18:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseOutskirtsSand2 ; Selected action SelActionMove (class $05)

C2Act5_19:
    dw LookEntrance ; Selected action SelActionLook (class $06)
    dw OpenVegasDoor ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw CloseVegasDoor ; Selected action SelActionClose (class $06)
    dw BreakVegasDoor ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseVegasDoor ; Selected action SelActionMove (class $06)

C2Act5_1A:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseStationSand1 ; Selected action SelActionMove (class $05)

C2Act5_1B:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseStationSand2 ; Selected action SelActionMove (class $05)

C2Act5_1C:
    dw LookLuggageWay ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseLuggageWay ; Selected action SelActionMove (class $05)

C2Act5_1D:
    dw LookPlatform6Way ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    ; Pointer to $49d3; split bytes retain the interior label.
    db LOW(UsePlatform6Way) ; Selected action SelActionMove (class $05)
jr_008_4205:
    db HIGH(UsePlatform6Way)

C2Act5_1E:
    dw LookPlatform7Way ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UsePlatform7Way ; Selected action SelActionMove (class $05)

C2Act5_1F:
    dw LookPlatform8Way ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UsePlatform8Way ; Selected action SelActionMove (class $05)

C2Act5_20:
    dw LookPlatform9Way ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UsePlatform9Way ; Selected action SelActionMove (class $05)

C2Act5_21:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain6Door ; Selected action SelActionMove (class $05)

C2Act5_22:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain6Door2 ; Selected action SelActionMove (class $05)

C2Act5_23:
    dw LookTrainExit ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw TryTrainExit ; Selected action SelActionMove (class $05)

C2Act5_24:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain7Door1 ; Selected action SelActionMove (class $05)

C2Act5_25:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain7Door2 ; Selected action SelActionMove (class $05)

C2Act5_26:
    dw LookTrainExit ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw TryTrainExit ; Selected action SelActionMove (class $05)

C2Act5_27:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain8Door1 ; Selected action SelActionMove (class $05)

C2Act5_28:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain8Door2 ; Selected action SelActionMove (class $05)

C2Act5_29:
    dw LookTrainExit ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw TryTrainExit ; Selected action SelActionMove (class $05)

C2Act5_2A:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain9Door1 ; Selected action SelActionMove (class $05)

C2Act5_2B:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain9Door2 ; Selected action SelActionMove (class $05)

C2Act5_2C:
    dw LookTrainExit ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw TryTrainExit ; Selected action SelActionMove (class $05)

C2Act5_2D:
    dw LookCarPassage ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTrain6Pass ; Selected action SelActionMove (class $05)

C2Act5_2E:
    dw LookCarPassage ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTrain7Pass ; Selected action SelActionMove (class $05)

C2Act5_2F:
    dw LookCarPassage ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTrain8Pass ; Selected action SelActionMove (class $05)

C2Act5_30:
    dw LookCarPassage ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTrain9Pass ; Selected action SelActionMove (class $05)

C2Act5_31:
    dw LookCarPassage ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTrain2Pass ; Selected action SelActionMove (class $05)

C2Act5_32:
    dw LookCarPassage ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTrain3Pass ; Selected action SelActionMove (class $05)

C2Act5_33:
    dw LookCarPassage ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTrain4Pass ; Selected action SelActionMove (class $05)

C2Act5_34:
    dw LookCarPassage ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTrain5Pass ; Selected action SelActionMove (class $05)

C2Act5_35:
    dw LookPlatform2Way ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UsePlatform2Way ; Selected action SelActionMove (class $05)

C2Act5_36:
    dw LookPlatform3Way ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UsePlatform3Way ; Selected action SelActionMove (class $05)

C2Act5_37:
    dw LookPlatform4Way ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UsePlatform4Way ; Selected action SelActionMove (class $05)

C2Act5_38:
    dw LookPlatform5Way ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UsePlatform5Way ; Selected action SelActionMove (class $05)

C2Act5_39:
    dw LookChiDoor ; Selected action SelActionLook (class $06)
    dw OpenChiDoor ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw CloseChiDoor ; Selected action SelActionClose (class $06)
    dw BreakChiDoor ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseChiDoor ; Selected action SelActionMove (class $06)

C2Act5_3A:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain2Door1 ; Selected action SelActionMove (class $05)

C2Act5_3B:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain2Door2 ; Selected action SelActionMove (class $05)

C2Act5_3C:
    dw LookTrainExit ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw TryTrainExit ; Selected action SelActionMove (class $05)

C2Act5_3D:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain3Door1 ; Selected action SelActionMove (class $05)

C2Act5_3E:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain3Door2 ; Selected action SelActionMove (class $05)

C2Act5_3F:
    dw LookTrainExit ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw TryTrainExit ; Selected action SelActionMove (class $05)

C2Act5_40:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain4Door1 ; Selected action SelActionMove (class $05)

C2Act5_41:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain4Door2 ; Selected action SelActionMove (class $05)

C2Act5_42:
    dw LookTrainExit ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw TryTrainExit ; Selected action SelActionMove (class $05)

C2Act5_43:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain5Door1 ; Selected action SelActionMove (class $05)

C2Act5_44:
    dw LookTrainDoor ; Selected action SelActionLook (class $05)
    dw TryTrainDoor ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseTrain5Door2 ; Selected action SelActionMove (class $05)

C2Act5_45:
    dw LookTrainExit ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw TryTrainExit ; Selected action SelActionMove (class $05)

C2Act5_46:
    dw LookCabChicago ; Selected action SelActionLook (class $06)
    dw DoorIsOpen ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw DoorNoEffect ; Selected action SelActionClose (class $06)
    dw RefuseCabDamage ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseCabChicago ; Selected action SelActionMove (class $06)

C2Act5_47:
    dw LookCabDoor ; Selected action SelActionLook (class $05)
    dw CabDoorJammed ; Selected action SelActionOpen (class $05)
    dw DoorIsClosed ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_48:
    dw LookCabAdison ; Selected action SelActionLook (class $06)
    dw DoorIsOpen ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw DoorNoEffect ; Selected action SelActionClose (class $06)
    dw RefuseCabDamage ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseCabAdison ; Selected action SelActionMove (class $06)

C2Act5_49:
    ; Pointer to $4d8a; split bytes retain the interior label.
    db LOW(LookCabCottage) ; Selected action SelActionLook (class $06)
jr_008_437d:
    db HIGH(LookCabCottage)
    dw DoorIsOpen ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw DoorNoEffect ; Selected action SelActionClose (class $06)
    dw RefuseCabDamage ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseCabCottage ; Selected action SelActionMove (class $06)

C2Act5_4A:
    dw LookCabPeoria ; Selected action SelActionLook (class $06)
    dw DoorIsOpen ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw DoorNoEffect ; Selected action SelActionClose (class $06)
    dw RefuseCabDamage ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseCabPeoria ; Selected action SelActionMove (class $06)

C2Act5_4B:
    dw LookCabMorgue ; Selected action SelActionLook (class $06)
    dw DoorIsOpen ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw DoorNoEffect ; Selected action SelActionClose (class $06)
    dw RefuseCabDamage ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseCabMorgue ; Selected action SelActionMove (class $06)

C2Act5_4C:
    dw LookHomeEntry ; Selected action SelActionLook (class $06)
    dw OpenHomeEntry ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw CloseHomeEntry ; Selected action SelActionClose (class $06)
    dw BreakHomeEntry ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseHomeEntry ; Selected action SelActionMove (class $06)

C2Act5_4D:
    dw LookHomeDoor ; Selected action SelActionLook (class $05)
    dw OpenHomeDoor ; Selected action SelActionOpen (class $05)
    dw CloseHomeDoor ; Selected action SelActionClose (class $05)
    dw UseHomeDoor ; Selected action SelActionMove (class $05)

C2Act5_4E:
    dw LookNeighborDoor1 ; Selected action SelActionLook (class $05)
    dw DoorLockedReply ; Selected action SelActionOpen (class $05)
    dw DoorIsClosed ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_4F:
    dw LookNeighborDoor2 ; Selected action SelActionLook (class $05)
    dw DoorLockedReply ; Selected action SelActionOpen (class $05)
    dw DoorIsClosed ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_50:
    dw QuietPlaceReply ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UsePoliceWay ; Selected action SelActionMove (class $05)

C2Act5_51:
    dw LookJoeAlleyWay ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseJoeAlleyWay ; Selected action SelActionMove (class $05)

C2Act5_52:
    dw LookManhole ; Selected action SelActionLook (class $05)
    dw OpenManholeReply ; Selected action SelActionOpen (class $05)
    dw ManholeClosed ; Selected action SelActionClose (class $05)
    dw ManholeClosed ; Selected action SelActionMove (class $05)

C2Act5_53:
    dw LookKeyedEntry ; Selected action SelActionLook (class $06)
    dw DoorLockedReply ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw DoorIsClosed ; Selected action SelActionClose (class $06)
    dw BreakJoeFront ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $06)

C2Act5_54:
    dw LookWorksBarrier ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw WorksBlocked ; Selected action SelActionMove (class $05)

C2Act5_55:
    dw LookJoeFireEscape ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseJoeFireEscape ; Selected action SelActionMove (class $05)

C2Act5_56:
    dw LookJoeRearWay ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseJoeRearWay ; Selected action SelActionMove (class $05)

C2Act5_57:
    dw LookRearManhole ; Selected action SelActionLook (class $05)
    dw OpenManholeReply ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_58:
    dw LookJoeOfficeWin ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseJoeOfficeWin ; Selected action SelActionMove (class $05)

C2Act5_59:
    dw JoeEscapeUp ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw JoeLadderBlocked ; Selected action SelActionMove (class $05)

C2Act5_5A:
    dw LiftInnerDoorReply ; Selected action SelActionLook (class $05)
    dw JoeLiftNoPower ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw JoeLiftNoPower ; Selected action SelActionMove (class $05)

C2Act5_5B:
    dw LookJoeRearDoor ; Selected action SelActionLook (class $05)
    dw OpenJoeRearDoor ; Selected action SelActionOpen (class $05)
    dw CloseJoeRearDoor ; Selected action SelActionClose (class $05)
    dw UseJoeRearDoor ; Selected action SelActionMove (class $05)

C2Act5_5C:
    dw LookJoeBarDoor ; Selected action SelActionLook (class $05)
    dw OpenJoeBarDoor ; Selected action SelActionOpen (class $05)
    dw CloseJoeBarDoor ; Selected action SelActionClose (class $05)
    dw UseJoeBarDoor ; Selected action SelActionMove (class $05)

C2Act5_5D:
    dw LookJoeLadies ; Selected action SelActionLook (class $05)
    dw DoorCannotOpen ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_5E:
    dw LookJoeMens ; Selected action SelActionLook (class $05)
    dw DoorCannotOpen ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_5F:
    dw LookJoeCellarDoor ; Selected action SelActionLook (class $05)
    dw OpenJoeCellarDoor ; Selected action SelActionOpen (class $05)
    dw CloseJoeCellarDoor ; Selected action SelActionClose (class $05)
    dw UseJoeCellarDoor ; Selected action SelActionMove (class $05)

C2Act5_60:
    dw LookJoeStairs ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseJoeStairs ; Selected action SelActionMove (class $05)

C2Act5_61:
    dw LookJoeShelfWay ; Selected action SelActionLook (class $05)
    dw OpenJoeShelves ; Selected action SelActionOpen (class $05)
    dw CloseJoeShelves ; Selected action SelActionClose (class $05)
    dw UseJoeShelfWay ; Selected action SelActionMove (class $05)

C2Act5_62:
    dw LookClosedDoor ; Selected action SelActionLook (class $05)
    dw OpenSceneDoor ; Selected action SelActionOpen (class $05)
    dw CloseSceneDoor ; Selected action SelActionClose (class $05)
    dw UseJoeCasinoWay ; Selected action SelActionMove (class $05)

C2Act5_63:
    dw LiftInnerDoorReply ; Selected action SelActionLook (class $05)
    dw JoeLiftNoPower ; Selected action SelActionOpen (class $05)
    dw DoorIsClosed ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_64:
    dw LookJoeUpperDoor ; Selected action SelActionLook (class $05)
    dw DoorLockedReply ; Selected action SelActionOpen (class $05)
    dw DoorIsClosed ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_65:
    dw LookPoliceDoor ; Selected action SelActionLook (class $06)
    dw OpenSceneDoor ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw CloseSceneDoor ; Selected action SelActionClose (class $06)
    dw BreakPoliceDoor ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UsePoliceEntry ; Selected action SelActionMove (class $06)

C2Act5_66:
    dw LookSugarDoor ; Selected action SelActionLook (class $05)
    dw OpenSugarDoor ; Selected action SelActionOpen (class $05)
    dw CloseSugarDoor ; Selected action SelActionClose (class $05)
    dw UseSugarDoor ; Selected action SelActionMove (class $05)

C2Act5_67:
    dw LookKeyedEntry ; Selected action SelActionLook (class $05)
    dw DoorLockedReply ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_68:
    dw LookMorgueEntry ; Selected action SelActionLook (class $06)
    dw OpenMorgueEntry ; Selected action SelActionOpen (class $06)
    dw DoorNoEffect ; Selected action SelActionUse (class $06)
    dw SceneDropRefusal ; Selected action SelActionPut (class $06)
    dw SceneTakeRefusal ; Selected action SelActionTake (class $06)
    dw CloseMorgueEntry ; Selected action SelActionClose (class $06)
    dw BreakMorgueEntry ; Selected action SelActionHit (class $06)
    dw DoorNoAnswer ; Selected action SelActionTalk (class $06)
    dw UseMorgueEntry ; Selected action SelActionMove (class $06)

C2Act5_69:
    dw LookMorgueDoor ; Selected action SelActionLook (class $05)
    dw OpenMorgueDoor ; Selected action SelActionOpen (class $05)
    dw CloseMorgueDoor ; Selected action SelActionClose (class $05)
    dw UseMorgueDoor ; Selected action SelActionMove (class $05)

C2Act5_6A:
    dw LookLaundryStairs ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseLaundryStairs ; Selected action SelActionMove (class $05)

C2Act5_6B:
    dw LookC2Hamper ; Selected action SelActionLook (class $05)
    dw OpenC2Hamper ; Selected action SelActionOpen (class $05)
    dw CloseC2Hamper ; Selected action SelActionClose (class $05)
    dw UseC2Hamper ; Selected action SelActionMove (class $05)

C2Act5_6C:
    dw LookCleanOffice ; Selected action SelActionLook (class $05)
    dw OpenCleanOffice ; Selected action SelActionOpen (class $05)
    dw CloseCleanOffice ; Selected action SelActionClose (class $05)
    dw UseCleanOffice ; Selected action SelActionMove (class $05)

C2Act5_6D:
    dw LookSecretDoor ; Selected action SelActionLook (class $05)
    dw DoorIsOpen ; Selected action SelActionOpen (class $05)
    dw DoorNoEffect ; Selected action SelActionClose (class $05)
    dw UseSecretDoor ; Selected action SelActionMove (class $05)

C2Act5_6E:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTracksLink ; Selected action SelActionMove (class $05)

C2Act5_6F:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTracksASand1 ; Selected action SelActionMove (class $05)

C2Act5_70:
    dw LookDesert ; Selected action SelActionLook (class $05)
    ; Pointer to $5360; split bytes retain the interior label.
    db LOW(PuzzledSceneReply) ; Selected action SelActionOpen (class $05)
jr_008_44fd:
    db HIGH(PuzzledSceneReply)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTracksASand2 ; Selected action SelActionMove (class $05)

C2Act5_71:
    dw LookDesert ; Selected action SelActionLook (class $05)
    ; Pointer to $5360; split bytes retain the interior label.
    db LOW(PuzzledSceneReply) ; Selected action SelActionOpen (class $05)
jr_008_4505:
    db HIGH(PuzzledSceneReply)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTracksBSand1 ; Selected action SelActionMove (class $05)

C2Act5_72:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw UseTracksBSand2 ; Selected action SelActionMove (class $05)

C2Act5_73:
    dw EndC2Path ; Selected action SelActionLook (class $05)
    dw EndC2Path ; Selected action SelActionOpen (class $05)
    dw EndC2Path ; Selected action SelActionClose (class $05)
    dw EndC2Path ; Selected action SelActionMove (class $05)

C2Act5_74:
    dw LookSecretaryDoor ; Selected action SelActionLook (class $05)
    dw DoorLockedReply ; Selected action SelActionOpen (class $05)
    dw DoorIsClosed ; Selected action SelActionClose (class $05)
    dw DoorNeedsOpen ; Selected action SelActionMove (class $05)

C2Act5_75:
    dw EndC2Path ; Selected action SelActionLook (class $05)
    dw EndC2Path ; Selected action SelActionOpen (class $05)
    dw EndC2Path ; Selected action SelActionClose (class $05)
    dw EndC2Path ; Selected action SelActionMove (class $05)

C2Act5_76:
    dw EndC2Path ; Selected action SelActionLook (class $05)
    dw EndC2Path ; Selected action SelActionOpen (class $05)
    dw EndC2Path ; Selected action SelActionClose (class $05)
    dw EndC2Path ; Selected action SelActionMove (class $05)

C2Act5_77:
    dw EndC2Path ; Selected action SelActionLook (class $05)
    dw EndC2Path ; Selected action SelActionOpen (class $05)
    dw EndC2Path ; Selected action SelActionClose (class $05)
    dw EndC2Path ; Selected action SelActionMove (class $05)

GridRightActs:
C2Act5_78:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw WalkDesert ; Selected action SelActionMove (class $05)

GridLeftActs:
C2Act5_79:
jr_008_4542:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw WalkDesert ; Selected action SelActionMove (class $05)

GridDownActs:
C2Act5_7A:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw WalkDesert ; Selected action SelActionMove (class $05)

GridUpActs:
C2Act5_7B:
    dw LookDesert ; Selected action SelActionLook (class $05)
    dw PuzzledSceneReply ; Selected action SelActionOpen (class $05)
jr_008_4556:
    dw PuzzledSceneReply ; Selected action SelActionClose (class $05)
    dw WalkDesert ; Selected action SelActionMove (class $05)
