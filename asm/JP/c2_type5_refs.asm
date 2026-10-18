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
    db $46
jr_008_404d:
    db $42
    ; Pointer to C2Act5_27; split bytes retain the interior label.
    db $4e
jr_008_404f:
    db $42
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
    db $6e
jr_008_40c3:
    db $44
    ; Pointer to C2Act5_62; split bytes retain the interior label.
    db $76
jr_008_40c5:
    db $44
    ; Pointer to C2Act5_63; split bytes retain the interior label.
    db $7e
jr_008_40c7:
    db $44
    ; Pointer to C2Act5_64; split bytes retain the interior label.
    db $86
jr_008_40c9:
    db $44
    ; Pointer to C2Act5_65; split bytes retain the interior label.
    db $8e
jr_008_40cb:
    db $44
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
    dw LookClosedDoor
    dw OpenVegasBathDoor
    dw CloseVegasBathDoor
    dw UseVegasBathDoor

C2Act5_01:
    dw LookVegasRoomDoor
    dw OpenVegasRoomDoor
    dw CloseVegasRoomDoor
    dw UseVegasRoomDoor

C2Act5_02:
    dw LookClosedDoor
    dw OpenSceneDoor
    dw CloseSceneDoor
    dw UseVegasLobbyDoor

C2Act5_03:
    dw LookQuietGuestDoor
    dw DoorLockedReply
    dw DoorIsClosed
    dw DoorNeedsOpen

C2Act5_04:
    dw LookVegasLift1
    dw OpenVegasLift1
    dw DoorNoEffect
    dw UseVegasLift1

C2Act5_05:
    dw LookCashierWay
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseCashierWay

C2Act5_06:
    dw LookCasinoDoor
    dw OpenCasinoDoor
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw CloseCasinoDoor
    dw BreakCasinoDoor
    dw DoorNoAnswer
    dw UseCasinoDoor

C2Act5_07:
    dw LookDealerWay
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseDealerWay

C2Act5_08:
    dw LookVegasLift2
    dw LookVegasLift2
    dw LookVegasLift2
    dw LookVegasLift2

C2Act5_09:
    dw LookVegasLift2
    dw OpenTimedLiftDoor
    dw DoorNoEffect
    dw UseVegasLift2

C2Act5_0A:
    dw LookGuestDoor2
    dw DoorLockedReply
    dw DoorIsClosed
    dw DoorNeedsOpen

C2Act5_0B:
    dw LookGuestDoor3
    dw DoorLockedReply
    dw DoorIsClosed
    dw DoorNeedsOpen

C2Act5_0C:
    dw LookVegasLift3
    dw OpenVegasLift3
    dw DoorNoEffect
    dw UseVegasLift3

C2Act5_0D:
    dw LookVegasLid
    dw OpenVegasLid
    dw CloseVegasLid
    dw UseVegasHamper

C2Act5_0E:
    dw LookVegasLift4
    dw OpenVegasLift4
    dw DoorNoEffect
    dw UseVegasLift4

C2Act5_0F:
    dw LookVentiniDoor
    dw OpenVentiniDoor
    dw CloseVentiniDoor
    dw UseVentiniDoor

C2Act5_10:
    dw LookMaloneDoor
    dw OpenSceneDoor
    dw CloseSceneDoor
    dw UseMaloneDoor

C2Act5_11:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseHotelDesert

C2Act5_12:
    dw LookHotelStationWay
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseHotelTracks

C2Act5_13:
    dw StreetWayReply
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseHotelStationWay

C2Act5_14:
    dw LookLaundryDoor
    dw OpenLaundryDoor
    dw CloseLaundryDoor
    dw UseLaundryDoor

C2Act5_15:
    dw LookCleanEntry
    dw OpenCleanEntry
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw CloseCleanEntry
    dw BreakGoonsDoor
    dw DoorNoAnswer
    dw UseCleanEntry

C2Act5_16:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseOutskirtsTracks

C2Act5_17:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseOutskirtsSand1

C2Act5_18:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseOutskirtsSand2

C2Act5_19:
    dw LookEntrance
    dw OpenVegasDoor
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw CloseVegasDoor
    dw BreakVegasDoor
    dw DoorNoAnswer
    dw UseVegasDoor

C2Act5_1A:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseStationSand1

C2Act5_1B:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseStationSand2

C2Act5_1C:
    dw LookLuggageWay
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseLuggageWay

C2Act5_1D:
    dw LookPlatform6Way
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    ; Pointer to $49d3; split bytes retain the interior label.
    db $d3
jr_008_4205:
    db $49

C2Act5_1E:
    dw LookPlatform7Way
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UsePlatform7Way

C2Act5_1F:
    dw LookPlatform8Way
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UsePlatform8Way

C2Act5_20:
    dw LookPlatform9Way
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UsePlatform9Way

C2Act5_21:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain6Door

C2Act5_22:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain6Door2

C2Act5_23:
    dw LookTrainExit
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw TryTrainExit

C2Act5_24:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain7Door1

C2Act5_25:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain7Door2

C2Act5_26:
    dw LookTrainExit
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw TryTrainExit

C2Act5_27:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain8Door1

C2Act5_28:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain8Door2

C2Act5_29:
    dw LookTrainExit
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw TryTrainExit

C2Act5_2A:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain9Door1

C2Act5_2B:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain9Door2

C2Act5_2C:
    dw LookTrainExit
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw TryTrainExit

C2Act5_2D:
    dw LookCarPassage
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTrain6Pass

C2Act5_2E:
    dw LookCarPassage
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTrain7Pass

C2Act5_2F:
    dw LookCarPassage
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTrain8Pass

C2Act5_30:
    dw LookCarPassage
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTrain9Pass

C2Act5_31:
    dw LookCarPassage
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTrain2Pass

C2Act5_32:
    dw LookCarPassage
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTrain3Pass

C2Act5_33:
    dw LookCarPassage
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTrain4Pass

C2Act5_34:
    dw LookCarPassage
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTrain5Pass

C2Act5_35:
    dw LookPlatform2Way
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UsePlatform2Way

C2Act5_36:
    dw LookPlatform3Way
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UsePlatform3Way

C2Act5_37:
    dw LookPlatform4Way
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UsePlatform4Way

C2Act5_38:
    dw LookPlatform5Way
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UsePlatform5Way

C2Act5_39:
    dw LookChiDoor
    dw OpenChiDoor
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw CloseChiDoor
    dw BreakChiDoor
    dw DoorNoAnswer
    dw UseChiDoor

C2Act5_3A:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain2Door1

C2Act5_3B:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain2Door2

C2Act5_3C:
    dw LookTrainExit
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw TryTrainExit

C2Act5_3D:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain3Door1

C2Act5_3E:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain3Door2

C2Act5_3F:
    dw LookTrainExit
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw TryTrainExit

C2Act5_40:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain4Door1

C2Act5_41:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain4Door2

C2Act5_42:
    dw LookTrainExit
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw TryTrainExit

C2Act5_43:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain5Door1

C2Act5_44:
    dw LookTrainDoor
    dw TryTrainDoor
    dw DoorNoEffect
    dw UseTrain5Door2

C2Act5_45:
    dw LookTrainExit
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw TryTrainExit

C2Act5_46:
    dw LookCabChicago
    dw DoorIsOpen
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw DoorNoEffect
    dw RefuseCabDamage
    dw DoorNoAnswer
    dw UseCabChicago

C2Act5_47:
    dw LookCabDoor
    dw CabDoorJammed
    dw DoorIsClosed
    dw DoorNeedsOpen

C2Act5_48:
    dw LookCabAdison
    dw DoorIsOpen
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw DoorNoEffect
    dw RefuseCabDamage
    dw DoorNoAnswer
    dw UseCabAdison

C2Act5_49:
    ; Pointer to $4d8a; split bytes retain the interior label.
    db $8a
jr_008_437d:
    db $4d
    dw DoorIsOpen
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw DoorNoEffect
    dw RefuseCabDamage
    dw DoorNoAnswer
    dw UseCabCottage

C2Act5_4A:
    dw LookCabPeoria
    dw DoorIsOpen
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw DoorNoEffect
    dw RefuseCabDamage
    dw DoorNoAnswer
    dw UseCabPeoria

C2Act5_4B:
    dw LookCabMorgue
    dw DoorIsOpen
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw DoorNoEffect
    dw RefuseCabDamage
    dw DoorNoAnswer
    dw UseCabMorgue

C2Act5_4C:
    dw LookHomeEntry
    dw OpenHomeEntry
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw CloseHomeEntry
    dw BreakHomeEntry
    dw DoorNoAnswer
    dw UseHomeEntry

C2Act5_4D:
    dw LookHomeDoor
    dw OpenHomeDoor
    dw CloseHomeDoor
    dw UseHomeDoor

C2Act5_4E:
    dw LookNeighborDoor1
    dw DoorLockedReply
    dw DoorIsClosed
    dw DoorNeedsOpen

C2Act5_4F:
    dw LookNeighborDoor2
    dw DoorLockedReply
    dw DoorIsClosed
    dw DoorNeedsOpen

C2Act5_50:
    dw QuietPlaceReply
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UsePoliceWay

C2Act5_51:
    dw LookJoeAlleyWay
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseJoeAlleyWay

C2Act5_52:
    dw LookManhole
    dw OpenManholeReply
    dw ManholeClosed
    dw ManholeClosed

C2Act5_53:
    dw LookKeyedEntry
    dw DoorLockedReply
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw DoorIsClosed
    dw BreakJoeFront
    dw DoorNoAnswer
    dw DoorNeedsOpen

C2Act5_54:
    dw LookWorksBarrier
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw WorksBlocked

C2Act5_55:
    dw LookJoeFireEscape
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseJoeFireEscape

C2Act5_56:
    dw LookJoeRearWay
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseJoeRearWay

C2Act5_57:
    dw LookRearManhole
    dw OpenManholeReply
    dw DoorNoEffect
    dw DoorNeedsOpen

C2Act5_58:
    dw LookJoeOfficeWin
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseJoeOfficeWin

C2Act5_59:
    dw JoeEscapeUp
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw JoeLadderBlocked

C2Act5_5A:
    dw LiftInnerDoorReply
    dw JoeLiftNoPower
    dw PuzzledSceneReply
    dw JoeLiftNoPower

C2Act5_5B:
    dw LookJoeRearDoor
    dw OpenJoeRearDoor
    dw CloseJoeRearDoor
    dw UseJoeRearDoor

C2Act5_5C:
    dw LookJoeBarDoor
    dw OpenJoeBarDoor
    dw CloseJoeBarDoor
    dw UseJoeBarDoor

C2Act5_5D:
    dw LookJoeLadies
    dw DoorCannotOpen
    dw DoorNoEffect
    dw DoorNeedsOpen

C2Act5_5E:
    dw LookJoeMens
    dw DoorCannotOpen
    dw DoorNoEffect
    dw DoorNeedsOpen

C2Act5_5F:
    dw LookJoeCellarDoor
    dw OpenJoeCellarDoor
    dw CloseJoeCellarDoor
    dw UseJoeCellarDoor

C2Act5_60:
    dw LookJoeStairs
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseJoeStairs

C2Act5_61:
    dw LookJoeShelfWay
    dw OpenJoeShelves
    dw CloseJoeShelves
    dw UseJoeShelfWay

C2Act5_62:
    dw LookClosedDoor
    dw OpenSceneDoor
    dw CloseSceneDoor
    dw UseJoeCasinoWay

C2Act5_63:
    dw LiftInnerDoorReply
    dw JoeLiftNoPower
    dw DoorIsClosed
    dw DoorNeedsOpen

C2Act5_64:
    dw LookJoeUpperDoor
    dw DoorLockedReply
    dw DoorIsClosed
    dw DoorNeedsOpen

C2Act5_65:
    dw LookPoliceDoor
    dw OpenSceneDoor
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw CloseSceneDoor
    dw BreakPoliceDoor
    dw DoorNoAnswer
    dw UsePoliceEntry

C2Act5_66:
    dw LookSugarDoor
    dw OpenSugarDoor
    dw CloseSugarDoor
    dw UseSugarDoor

C2Act5_67:
    dw LookKeyedEntry
    dw DoorLockedReply
    dw DoorNoEffect
    dw DoorNeedsOpen

C2Act5_68:
    dw LookMorgueEntry
    dw OpenMorgueEntry
    dw DoorNoEffect
    dw SceneDropRefusal
    dw SceneTakeRefusal
    dw CloseMorgueEntry
    dw BreakMorgueEntry
    dw DoorNoAnswer
    dw UseMorgueEntry

C2Act5_69:
    dw LookMorgueDoor
    dw OpenMorgueDoor
    dw CloseMorgueDoor
    dw UseMorgueDoor

C2Act5_6A:
    dw LookLaundryStairs
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseLaundryStairs

C2Act5_6B:
    dw LookC2Hamper
    dw OpenC2Hamper
    dw CloseC2Hamper
    dw UseC2Hamper

C2Act5_6C:
    dw LookCleanOffice
    dw OpenCleanOffice
    dw CloseCleanOffice
    dw UseCleanOffice

C2Act5_6D:
    dw LookSecretDoor
    dw DoorIsOpen
    dw DoorNoEffect
    dw UseSecretDoor

C2Act5_6E:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTracksLink

C2Act5_6F:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTracksASand1

C2Act5_70:
    dw LookDesert
    ; Pointer to $5360; split bytes retain the interior label.
    db $60
jr_008_44fd:
    db $53
    dw PuzzledSceneReply
    dw UseTracksASand2

C2Act5_71:
    dw LookDesert
    ; Pointer to $5360; split bytes retain the interior label.
    db $60
jr_008_4505:
    db $53
    dw PuzzledSceneReply
    dw UseTracksBSand1

C2Act5_72:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw UseTracksBSand2

C2Act5_73:
    dw EndC2Path
    dw EndC2Path
    dw EndC2Path
    dw EndC2Path

C2Act5_74:
    dw LookSecretaryDoor
    dw DoorLockedReply
    dw DoorIsClosed
    dw DoorNeedsOpen

C2Act5_75:
    dw EndC2Path
    dw EndC2Path
    dw EndC2Path
    dw EndC2Path

C2Act5_76:
    dw EndC2Path
    dw EndC2Path
    dw EndC2Path
    dw EndC2Path

C2Act5_77:
    dw EndC2Path
    dw EndC2Path
    dw EndC2Path
    dw EndC2Path

GridRightActs:
C2Act5_78:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw WalkDesert

GridLeftActs:
C2Act5_79:
jr_008_4542:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw WalkDesert

GridDownActs:
C2Act5_7A:
    dw LookDesert
    dw PuzzledSceneReply
    dw PuzzledSceneReply
    dw WalkDesert

GridUpActs:
C2Act5_7B:
    dw LookDesert
    dw PuzzledSceneReply
jr_008_4556:
    dw PuzzledSceneReply
    dw WalkDesert
