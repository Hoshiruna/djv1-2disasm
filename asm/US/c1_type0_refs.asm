; Type zero has 120 item rows, each containing four script pointers.
; Item/action indices are the original zero-based ROM values.

C1Type0Refs:
C1Script00:
    dw C1Act0_00
    dw C1Act0_01
    dw C1Act0_02
    dw C1Act0_03
    dw C1Act0_04
    dw C1Act0_05
jr_006_4131:
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
    dw LookC1CeilLamp1 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_01:
    dw LookC1ToiletRoll ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_02:
    dw LookC1CeilLamp2 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_03:
    dw LookC1Mirror1 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_04:
    dw LookC1Sink1 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_05:
    dw LookC1Puddle1 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1HitObjectReply ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_06:
    dw LookC1OldLamp ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_07:
    dw LookC1Mirror2 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_08:
    dw LookC1Sink2 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_09:
    dw LookC1Puddle2 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1HitObjectReply ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_0A:
    dw LookC1ToiletRoll2 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_0B:
    dw LookC1CrackedWall ; Selected action SelActionLook (class $00)
    dw C1CantDoHere ; Selected action SelActionTalk (class $00)
    dw C1CantDoHere ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_0C:
    dw LookC1BarCounter ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_0D:
    dw LookC1StreetWin ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_0E:
    dw LookC1WallMarks ; Selected action SelActionLook (class $00)
    dw C1CantDoHere ; Selected action SelActionTalk (class $00)
    dw C1CantDoHere ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_0F:
    dw LookC1SpiderWeb ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_10:
    dw LookC1CellarLamp ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_11:
    dw LookC1Barrel ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_12:
    dw LookC1Spigot ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_13:
    dw LookC1RackBottle ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw HitC1RackBottle ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_14:
    dw LookC1BareBulb ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_15:
    dw LookC1Roulette ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_16:
jr_006_42c5:
    dw LookC1SlotMachine ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SlotNeedsCoin ; Selected action SelActionUse (class $00)

C1Act0_17:
    dw LookC1SlotMachine ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SlotNeedsCoin ; Selected action SelActionUse (class $00)

C1Act0_18:
jr_006_42d5:
    dw LookC1BlankButton ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw OpenC1LiftDoor ; Selected action SelActionHit (class $00)
    dw OpenC1LiftDoor ; Selected action SelActionUse (class $00)

C1Act0_19:
    dw LookC1TopButton ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw RideC1LiftTop ; Selected action SelActionHit (class $00)
    dw RideC1LiftTop ; Selected action SelActionUse (class $00)

C1Act0_1A:
    dw LookC1BlankButton ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1LiftToRoom3F ; Selected action SelActionHit (class $00)
    dw C1LiftToRoom3F ; Selected action SelActionUse (class $00)

C1Act0_1B:
    dw LookC1BlankButton ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1LiftToRoom0A ; Selected action SelActionHit (class $00)
    dw C1LiftToRoom0A ; Selected action SelActionUse (class $00)

C1Act0_1C:
    dw LookC1LowButton ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw RideC1LiftSewer ; Selected action SelActionHit (class $00)
    dw RideC1LiftSewer ; Selected action SelActionUse (class $00)

C1Act0_1D:
    dw LookC1LiftButton ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw OpenC1LiftTopDoor ; Selected action SelActionHit (class $00)
    dw OpenC1LiftTopDoor ; Selected action SelActionUse (class $00)

C1Act0_1E:
    dw LookC1OddChair ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_1F:
    dw LookC1LooseHandset ; Selected action SelActionLook (class $00)
    dw C1CantDoHere ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_20:
    dw LookC1OldPhone ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_21:
    dw LookC1PlainWin1 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_22:
    dw LookC1DeskLamp ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_23:
    dw LookC1Typewriter ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_24:
    dw LookC1Phone1 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_25:
    dw LookC1BoxPoster1 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_26:
    ; Pointer to $4766; split bytes retain the interior label.
    db LOW(LookC1BoxPoster2) ; Selected action SelActionLook (class $00)
jr_006_4346:
    db HIGH(LookC1BoxPoster2)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_27:
    dw LookC1AcePoster ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_28:
    dw LookC1PlainWin2 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_29:
    dw LookC1LuxuryCar ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_2A:
    dw LookC1Newsstand ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_2B:
    dw LookC1NewsBoy ; Selected action SelActionLook (class $00)
    dw TalkC1NewsBoy ; Selected action SelActionTalk (class $00)
    dw HitC1NewsBoy ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_2C:
    dw LookC1GunShopWin ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_2D:
    dw LookC1StreetLamp ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_2E:
    dw C1MuggerShoots ; Selected action SelActionLook (class $00)
    dw C1MuggerShoots ; Selected action SelActionTalk (class $00)
    dw HitC1Mugger ; Selected action SelActionHit (class $00)
    dw C1MuggerShoots ; Selected action SelActionUse (class $00)

C1Act0_2F:
    dw C1MuggerRobReply ; Selected action SelActionLook (class $00)
    dw C1MuggerRobReply ; Selected action SelActionTalk (class $00)
    dw C1MuggerRobFight ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_30:
    dw LookC1HighEscape ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_31:
    dw LookC1RustEscape ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_32:
    dw LookC1EscapeDrop ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_33:
    dw LookC1CrackedWall ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_34:
    dw C1LadyShoots ; Selected action SelActionLook (class $00)
    dw C1LadyShoots ; Selected action SelActionTalk (class $00)
    dw HitC1ArmedLady ; Selected action SelActionHit (class $00)
    dw C1LadyShoots ; Selected action SelActionUse (class $00)

C1Act0_35:
    dw LookC1FallenLady ; Selected action SelActionLook (class $00)
    dw C1CantDoHere ; Selected action SelActionTalk (class $00)
    dw C1CantDoHere ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_36:
    dw LookC1Bum ; Selected action SelActionLook (class $00)
    dw TalkC1Bum ; Selected action SelActionTalk (class $00)
    dw HitC1Bum ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_37:
    dw LookC1GasPedal ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_38:
    dw LookC1Brake ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_39:
    dw LookC1Clutch ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_3A:
    dw LookC1Steering ; Selected action SelActionLook (class $00)
jr_006_43e7:
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_3B:
    dw LookC1Ignition ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_3C:
    dw LookC1LuxuryCar2 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_3D:
    dw LookC1WallMarks ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_3E:
    dw LookC1HoodRelease ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1HoodBombDeath ; Selected action SelActionHit (class $00)
    dw C1HoodBombDeath ; Selected action SelActionUse (class $00)

C1Act0_3F:
    dw LookC1Sternwood ; Selected action SelActionLook (class $00)
    dw TalkC1Sternwood ; Selected action SelActionTalk (class $00)
    dw HitC1Sternwood ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_40:
    dw LookC1GunClerk ; Selected action SelActionLook (class $00)
    dw TalkC1GunClerk ; Selected action SelActionTalk (class $00)
    dw C1GunClerkShoots ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_41:
    dw LookC1GunPrice ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_42:
    dw LookC1CabDriver1 ; Selected action SelActionLook (class $00)
    dw TalkC1Cab1 ; Selected action SelActionTalk (class $00)
    dw HitC1CabGlass ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_43:
    dw LookC1FareMeter ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_44:
    dw LookC1FareSlot1 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_45:
    dw C1MedicineImmuneReply ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_46:
    dw LookC1CabDriver2 ; Selected action SelActionLook (class $00)
    dw TalkC1Cab2 ; Selected action SelActionTalk (class $00)
    dw HitC1CabGlass ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_47:
    dw LookC1FareMeter ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_48:
    dw LookC1FareSlot2 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_49:
    dw C1MedicineImmuneReply ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_4A:
    dw LookC1Building ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_4B:
    dw LookC1OuterSlot ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_4C:
    dw LookC1InnerSlot ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_4D:
    dw LookC1Chandelier ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_4E:
    dw LookC1FineChair ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_4F:
    dw LookC1LeatherSofa ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_50:
    dw LookC1Fireplace ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_51:
    dw LookC1Bookcase ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_52:
    dw LookC1RoomArt ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_53:
    dw LookC1LowTable ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_54:
    dw LookC1RoundMirror ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_55:
    dw LookC1CotBed ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_56:
    dw LookC1GrimyWin1 ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_57:
    dw LookC1Bungalow ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_58:
    dw LookC1PlainBuilding ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_59:
    dw LookC1EyeChart ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_5A:
    dw LookC1DrugCabinet ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_5B:
    dw LookC1GrimyWin2 ; Selected action SelActionLook (class $00)
    ; Pointer to $45d8; split bytes retain the interior label.
    db LOW(C1WhoTalkReply) ; Selected action SelActionTalk (class $00)
jr_006_44f0:
    db HIGH(C1WhoTalkReply)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_5C:
    dw LookC1DeadMan ; Selected action SelActionLook (class $00)
    dw C1CantDoHere ; Selected action SelActionTalk (class $00)
    dw C1CantDoHere ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_5D:
    dw C1EmptyView ; Selected action SelActionLook (class $00)
    dw C1SilentAction ; Selected action SelActionTalk (class $00)
    dw C1SilentAction ; Selected action SelActionHit (class $00)
    dw C1SilentAction ; Selected action SelActionUse (class $00)

C1Act0_5E:
    dw LookC1MansionDoor ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw KnockC1Mansion ; Selected action SelActionHit (class $00)
    dw KnockC1Mansion ; Selected action SelActionUse (class $00)

C1Act0_5F:
    dw LookC1Butler ; Selected action SelActionLook (class $00)
    dw TalkC1Butler ; Selected action SelActionTalk (class $00)
    dw HitC1Butler ; Selected action SelActionHit (class $00)
    dw TalkC1Butler ; Selected action SelActionUse (class $00)

C1Act0_60:
    dw LookC1BigChandelier ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_61:
    dw LookC1FineTable ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_62:
    dw LookC1RoomLamp ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_63:
    dw LookC1SternBed ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_64:
    dw LookC1MrSternwood ; Selected action SelActionLook (class $00)
    dw TalkC1MrSternwood ; Selected action SelActionTalk (class $00)
    dw HitC1Sleeper ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_65:
    dw LookC1WallMirror ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_66:
    dw LookC1FineLamp ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_67:
    dw LookC1VickersBed ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_68:
    dw LookC1SleepWoman ; Selected action SelActionLook (class $00)
    dw TalkC1SleepWoman ; Selected action SelActionTalk (class $00)
    dw HitC1Sleeper ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_69:
    dw LookC1Sewage ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_6A:
    dw LookC1Alligator ; Selected action SelActionLook (class $00)
    dw C1AlligatorDeath ; Selected action SelActionTalk (class $00)
    dw C1AlligatorDeath ; Selected action SelActionHit (class $00)
    dw C1AlligatorDeath ; Selected action SelActionUse (class $00)

C1Act0_6B:
    dw LookC1ShadowView ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_6C:
    dw LookC1CrackedWall ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1ActionRefusal ; Selected action SelActionUse (class $00)

C1Act0_6D:
    dw LookC1WallMarks ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_6E:
    dw LookC1WallMarks ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_6F:
    dw C1NothingOddReply ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_70:
    dw LookC1CrackedWall ; Selected action SelActionLook (class $00)
    dw C1CantDoHere ; Selected action SelActionTalk (class $00)
    dw C1CantDoHere ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_71:
    dw LookC1WallMarks ; Selected action SelActionLook (class $00)
    dw C1CantDoHere ; Selected action SelActionTalk (class $00)
    dw C1CantDoHere ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_72:
    dw LookC1OldShelf ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_73:
    dw LookC1Self ; Selected action SelActionLook (class $00)
    dw TalkC1Self ; Selected action SelActionTalk (class $00)
    dw HitC1Self ; Selected action SelActionHit (class $00)
    dw C1CantDoHere ; Selected action SelActionUse (class $00)

C1Act0_74:
    dw LookC1SaleNews ; Selected action SelActionLook (class $00)
    dw C1WhoTalkReply ; Selected action SelActionTalk (class $00)
    dw C1PunchFixture ; Selected action SelActionHit (class $00)
    dw C1SceneQuestion ; Selected action SelActionUse (class $00)

C1Act0_75:
    dw C1MuggerShoots ; Selected action SelActionLook (class $00)
    dw C1MuggerShoots ; Selected action SelActionTalk (class $00)
    dw HitC1Mugger ; Selected action SelActionHit (class $00)
    dw C1MuggerShoots ; Selected action SelActionUse (class $00)

C1Act0_76:
    dw C1MuggerShoots ; Selected action SelActionLook (class $00)
    dw C1MuggerShoots ; Selected action SelActionTalk (class $00)
    dw HitC1Mugger ; Selected action SelActionHit (class $00)
    dw C1MuggerShoots ; Selected action SelActionUse (class $00)

C1Act0_77:
    dw C1MuggerShoots ; Selected action SelActionLook (class $00)
    dw C1MuggerShoots ; Selected action SelActionTalk (class $00)
    dw HitC1Mugger ; Selected action SelActionHit (class $00)
    dw C1MuggerShoots ; Selected action SelActionUse (class $00)
