; Type zero has 120 item rows, each containing four script pointers.
; Item/action indices are the original zero-based ROM values.

C1Type0Refs:
C1Script00:
    dw C1Act0_00
    dw C1Act0_01
    dw C1Act0_02
    dw C1Act0_03
    dw C1Act0_04
jr_006_412f:
    dw C1Act0_05
    dw C1Act0_06
    dw C1Act0_07
    dw C1Act0_08
    dw C1Act0_09
    dw C1Act0_0A
    dw C1Act0_0B
    dw C1Act0_0C
    dw C1Act0_0D
    dw C1Act0_0E
    dw C1Act0_0F
    dw C1Act0_10
    dw C1Act0_11
    dw C1Act0_12
    dw C1Act0_13
    dw C1Act0_14
    dw C1Act0_15
jr_006_4151:
    dw C1Act0_16
    dw C1Act0_17
    dw C1Act0_18
    dw C1Act0_19
    dw C1Act0_1A
jr_006_415b:
    dw C1Act0_1B
    dw C1Act0_1C
    dw C1Act0_1D
    dw C1Act0_1E
    dw C1Act0_1F
    dw C1Act0_20
    dw C1Act0_21
    dw C1Act0_22
    dw C1Act0_23
    dw C1Act0_24
    dw C1Act0_25
    dw C1Act0_26
    dw C1Act0_27
    dw C1Act0_28
    dw C1Act0_29
    dw C1Act0_2A
    dw C1Act0_2B
    dw C1Act0_2C
    dw C1Act0_2D
    dw C1Act0_2E
    dw C1Act0_2F
    dw C1Act0_30
    dw C1Act0_31
    dw C1Act0_32
    dw C1Act0_33
    dw C1Act0_34
    dw C1Act0_35
    dw C1Act0_36
    dw C1Act0_37
    dw C1Act0_38
    dw C1Act0_39
    dw C1Act0_3A
    dw C1Act0_3B
    dw C1Act0_3C
    dw C1Act0_3D
    dw C1Act0_3E
    dw C1Act0_3F
    dw C1Act0_40
    dw C1Act0_41
    dw C1Act0_42
    dw C1Act0_43
    dw C1Act0_44
    dw C1Act0_45
    dw C1Act0_46
    dw C1Act0_47
    dw C1Act0_48
    dw C1Act0_49
    dw C1Act0_4A
    dw C1Act0_4B
    dw C1Act0_4C
    dw C1Act0_4D
    dw C1Act0_4E
    dw C1Act0_4F
    dw C1Act0_50
    dw C1Act0_51
    dw C1Act0_52
    dw C1Act0_53
    dw C1Act0_54
    dw C1Act0_55
    dw C1Act0_56
    dw C1Act0_57
    dw C1Act0_58
    dw C1Act0_59
    dw C1Act0_5A
    dw C1Act0_5B
    dw C1Act0_5C
    dw C1Act0_5D
    dw C1Act0_5E
    dw C1Act0_5F
    dw C1Act0_60
    dw C1Act0_61
    dw C1Act0_62
    dw C1Act0_63
    dw C1Act0_64
    dw C1Act0_65
    dw C1Act0_66
    dw C1Act0_67
    dw C1Act0_68
    dw C1Act0_69
    dw C1Act0_6A
    dw C1Act0_6B
    dw C1Act0_6C
    dw C1Act0_6D
    dw C1Act0_6E
    dw C1Act0_6F
    dw C1Act0_70
    dw C1Act0_71
    dw C1Act0_72
    dw C1Act0_73
    dw C1Act0_74
    dw C1Act0_75
    dw C1Act0_76
    dw C1Act0_77

C1Act0_00:
    dw LookC1CeilLamp1
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_01:
    dw LookC1ToiletRoll
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_02:
    dw LookC1CeilLamp2
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_03:
    dw LookC1Mirror1
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_04:
    dw LookC1Sink1
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_05:
    dw LookC1Puddle1
    dw C1WhoTalkReply
    dw C1HitObjectReply
    dw C1SceneQuestion

C1Act0_06:
    dw LookC1OldLamp
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_07:
    dw LookC1Mirror2
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_08:
    dw LookC1Sink2
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_09:
    dw LookC1Puddle2
    dw C1WhoTalkReply
    dw C1HitObjectReply
    dw C1ActionRefusal

C1Act0_0A:
    dw LookC1ToiletRoll2
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_0B:
    dw LookC1CrackedWall
    dw C1CantDoHere
    dw C1CantDoHere
    dw C1CantDoHere

C1Act0_0C:
    dw LookC1BarCounter
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_0D:
    dw LookC1StreetWin
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_0E:
    dw LookC1WallMarks
    dw C1CantDoHere
    dw C1CantDoHere
    dw C1CantDoHere

C1Act0_0F:
    dw LookC1SpiderWeb
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_10:
    dw LookC1CellarLamp
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_11:
    dw LookC1Barrel
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_12:
    dw LookC1Spigot
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_13:
    dw LookC1RackBottle
    dw C1WhoTalkReply
    dw HitC1RackBottle
    dw C1SceneQuestion

C1Act0_14:
    dw LookC1BareBulb
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_15:
    dw LookC1Roulette
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_16:
jr_006_42c5:
    dw LookC1SlotMachine
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SlotNeedsCoin

C1Act0_17:
    dw LookC1SlotMachine
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SlotNeedsCoin

C1Act0_18:
jr_006_42d5:
    dw LookC1BlankButton
    dw C1WhoTalkReply
    dw OpenC1LiftDoor
    dw OpenC1LiftDoor

C1Act0_19:
    dw LookC1TopButton
    dw C1WhoTalkReply
    dw RideC1LiftTop
    dw RideC1LiftTop

C1Act0_1A:
    dw LookC1BlankButton
    dw C1WhoTalkReply
    dw C1LiftToRoom3F
    dw C1LiftToRoom3F

C1Act0_1B:
    dw LookC1BlankButton
    dw C1WhoTalkReply
    dw C1LiftToRoom0A
    dw C1LiftToRoom0A

C1Act0_1C:
    dw LookC1LowButton
    dw C1WhoTalkReply
    dw RideC1LiftSewer
    dw RideC1LiftSewer

C1Act0_1D:
    dw LookC1LiftButton
    dw C1WhoTalkReply
    dw OpenC1LiftTopDoor
    dw OpenC1LiftTopDoor

C1Act0_1E:
    dw LookC1OddChair
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_1F:
    dw LookC1LooseHandset
    dw C1CantDoHere
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_20:
    dw LookC1OldPhone
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_21:
    dw LookC1PlainWin1
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_22:
    dw LookC1DeskLamp
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_23:
    dw LookC1Typewriter
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_24:
    dw LookC1Phone1
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_25:
    dw LookC1BoxPoster1
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_26:
    ; Pointer to $4766; split bytes retain the interior label.
    db LOW(LookC1BoxPoster2)
jr_006_4346:
    db HIGH(LookC1BoxPoster2)
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_27:
    dw LookC1AcePoster
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_28:
    dw LookC1PlainWin2
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_29:
    dw LookC1LuxuryCar
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_2A:
    dw LookC1Newsstand
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_2B:
    dw LookC1NewsBoy
    dw TalkC1NewsBoy
    dw HitC1NewsBoy
    dw C1CantDoHere

C1Act0_2C:
    dw LookC1GunShopWin
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_2D:
    dw LookC1StreetLamp
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_2E:
    dw C1MuggerShoots
    dw C1MuggerShoots
    dw HitC1Mugger
    dw C1MuggerShoots

C1Act0_2F:
    dw C1MuggerRobReply
    dw C1MuggerRobReply
    dw C1MuggerRobFight
    dw C1CantDoHere

C1Act0_30:
    dw LookC1HighEscape
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_31:
    dw LookC1RustEscape
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_32:
    dw LookC1EscapeDrop
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_33:
    dw LookC1CrackedWall
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_34:
    dw C1LadyShoots
    dw C1LadyShoots
    dw HitC1ArmedLady
    dw C1LadyShoots

C1Act0_35:
    dw LookC1FallenLady
    dw C1CantDoHere
    dw C1CantDoHere
    dw C1CantDoHere

C1Act0_36:
    dw LookC1Bum
    dw TalkC1Bum
    dw HitC1Bum
    dw C1CantDoHere

C1Act0_37:
    dw LookC1GasPedal
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_38:
    dw LookC1Brake
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_39:
    dw LookC1Clutch
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_3A:
    dw LookC1Steering
jr_006_43e7:
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_3B:
    dw LookC1Ignition
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_3C:
    dw LookC1LuxuryCar2
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_3D:
    dw LookC1WallMarks
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_3E:
    dw LookC1HoodRelease
    dw C1WhoTalkReply
    dw C1HoodBombDeath
    dw C1HoodBombDeath

C1Act0_3F:
    dw LookC1Sternwood
    dw TalkC1Sternwood
    dw HitC1Sternwood
    dw C1CantDoHere

C1Act0_40:
    dw LookC1GunClerk
    dw TalkC1GunClerk
    dw C1GunClerkShoots
    dw C1CantDoHere

C1Act0_41:
    dw LookC1GunPrice
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_42:
    dw LookC1CabDriver1
    dw TalkC1Cab1
    dw HitC1CabGlass
    dw C1CantDoHere

C1Act0_43:
    dw LookC1FareMeter
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_44:
    dw LookC1FareSlot1
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_45:
    dw C1MedicineImmuneReply
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_46:
    dw LookC1CabDriver2
    dw TalkC1Cab2
    dw HitC1CabGlass
    dw C1CantDoHere

C1Act0_47:
    dw LookC1FareMeter
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_48:
    dw LookC1FareSlot2
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_49:
    dw C1MedicineImmuneReply
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_4A:
    dw LookC1Building
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_4B:
    dw LookC1OuterSlot
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_4C:
    dw LookC1InnerSlot
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_4D:
    dw LookC1Chandelier
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_4E:
    dw LookC1FineChair
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_4F:
    dw LookC1LeatherSofa
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_50:
    dw LookC1Fireplace
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_51:
    dw LookC1Bookcase
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_52:
    dw LookC1RoomArt
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_53:
    dw LookC1LowTable
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_54:
    dw LookC1RoundMirror
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_55:
    dw LookC1CotBed
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_56:
    dw LookC1GrimyWin1
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_57:
    dw LookC1Bungalow
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_58:
    dw LookC1PlainBuilding
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_59:
    dw LookC1EyeChart
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_5A:
    dw LookC1DrugCabinet
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_5B:
    dw LookC1GrimyWin2
    ; Pointer to $45d8; split bytes retain the interior label.
    db LOW(C1WhoTalkReply)
jr_006_44f0:
    db HIGH(C1WhoTalkReply)
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_5C:
    dw LookC1DeadMan
    dw C1CantDoHere
    dw C1CantDoHere
    dw C1CantDoHere

C1Act0_5D:
    dw C1EmptyView
    dw C1SilentAction
    dw C1SilentAction
    dw C1SilentAction

C1Act0_5E:
    dw LookC1MansionDoor
    dw C1WhoTalkReply
    dw KnockC1Mansion
    dw KnockC1Mansion

C1Act0_5F:
    dw LookC1Butler
    dw TalkC1Butler
    dw HitC1Butler
    dw TalkC1Butler

C1Act0_60:
    dw LookC1BigChandelier
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_61:
    dw LookC1FineTable
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_62:
    dw LookC1RoomLamp
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_63:
    dw LookC1SternBed
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_64:
    dw LookC1MrSternwood
    dw TalkC1MrSternwood
    dw HitC1Sleeper
    dw C1CantDoHere

C1Act0_65:
    dw LookC1WallMirror
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_66:
    dw LookC1FineLamp
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_67:
    dw LookC1VickersBed
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_68:
    dw LookC1SleepWoman
    dw TalkC1SleepWoman
    dw HitC1Sleeper
    dw C1CantDoHere

C1Act0_69:
    dw LookC1Sewage
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_6A:
    dw LookC1Alligator
    dw C1AlligatorDeath
    dw C1AlligatorDeath
    dw C1AlligatorDeath

C1Act0_6B:
    dw LookC1ShadowView
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_6C:
    dw LookC1CrackedWall
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1ActionRefusal

C1Act0_6D:
    dw LookC1WallMarks
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_6E:
    dw LookC1WallMarks
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_6F:
    dw C1NothingOddReply
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_70:
    dw LookC1CrackedWall
    dw C1CantDoHere
    dw C1CantDoHere
    dw C1CantDoHere

C1Act0_71:
    dw LookC1WallMarks
    dw C1CantDoHere
    dw C1CantDoHere
    dw C1CantDoHere

C1Act0_72:
    dw LookC1OldShelf
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1CantDoHere

C1Act0_73:
    dw LookC1Self
    dw TalkC1Self
    dw HitC1Self
    dw C1CantDoHere

C1Act0_74:
    dw LookC1SaleNews
    dw C1WhoTalkReply
    dw C1PunchFixture
    dw C1SceneQuestion

C1Act0_75:
    dw C1MuggerShoots
    dw C1MuggerShoots
    dw HitC1Mugger
    dw C1MuggerShoots

C1Act0_76:
    dw C1MuggerShoots
    dw C1MuggerShoots
    dw HitC1Mugger
    dw C1MuggerShoots

C1Act0_77:
    dw C1MuggerShoots
    dw C1MuggerShoots
    dw HitC1Mugger
    dw C1MuggerShoots
