; Type 0 has 170 four-pointer rows and three nine-pointer rows.

C2Type0Refs:
    dw C2Act0_00
    dw C2Act0_01
    dw C2Act0_02
    dw C2Act0_03
    dw C2Act0_04
    dw C2Act0_05
    dw C2Act0_06
    dw C2Act0_07
    dw C2Act0_08
    dw C2Act0_09
    dw C2Act0_0A
    dw C2Act0_0B
    dw C2Act0_0C
    dw C2Act0_0D
    dw C2Act0_0E
    dw C2Act0_0F
    dw C2Act0_10
    dw C2Act0_11
    dw C2Act0_12
    dw C2Act0_13
    dw C2Act0_14
    dw C2Act0_15
    dw C2Act0_16
    dw C2Act0_17
    dw C2Act0_18
    dw C2Act0_19
    dw C2Act0_1A
    dw C2Act0_1B
    dw C2Act0_1C
    dw C2Act0_1D
    dw C2Act0_1E
    dw C2Act0_1F
    dw C2Act0_20
    dw C2Act0_21
    dw C2Act0_22
    dw C2Act0_23
    dw C2Act0_24
    dw C2Act0_25
    dw C2Act0_26
    dw C2Act0_27
    dw C2Act0_28
    dw C2Act0_29
    dw C2Act0_2A
    dw C2Act0_2B
    dw C2Act0_2C
    dw C2Act0_2D
    dw C2Act0_2E
    dw C2Act0_2F
    dw C2Act0_30
    dw C2Act0_31
    dw C2Act0_32
    dw C2Act0_33
    dw C2Act0_34
    dw C2Act0_35
    dw C2Act0_36
    dw C2Act0_37
    dw C2Act0_38
    dw C2Act0_39
    dw C2Act0_3A
    dw C2Act0_3B
    dw C2Act0_3C
    dw C2Act0_3D
    dw C2Act0_3E
    dw C2Act0_3F
    dw C2Act0_40
    dw C2Act0_41
    dw C2Act0_42
    dw C2Act0_43
    dw C2Act0_44
    dw C2Act0_45
    dw C2Act0_46
    dw C2Act0_47
    dw C2Act0_48
    dw C2Act0_49
    dw C2Act0_4A
    dw C2Act0_4B
    dw C2Act0_4C
    dw C2Act0_4D
    dw C2Act0_4E
    dw C2Act0_4F
    dw C2Act0_50
    dw C2Act0_51
    dw C2Act0_52
    dw C2Act0_53
    dw C2Act0_54
    dw C2Act0_55
    dw C2Act0_56
    dw C2Act0_57
    dw C2Act0_58
    dw C2Act0_59
    dw C2Act0_5A
    dw C2Act0_5B
    dw C2Act0_5C
    dw C2Act0_5D
    dw C2Act0_5E
    dw C2Act0_5F
    dw C2Act0_60
    dw C2Act0_61
    dw C2Act0_62
    dw C2Act0_63
    dw C2Act0_64
    dw C2Act0_65
    dw C2Act0_66
    dw C2Act0_67
    dw C2Act0_68
    dw C2Act0_69
    dw C2Act0_6A
    dw C2Act0_6B
    dw C2Act0_6C
    dw C2Act0_6D
    dw C2Act0_6E
    dw C2Act0_6F
    dw C2Act0_70
    dw C2Act0_71
    dw C2Act0_72
    dw C2Act0_73
    dw C2Act0_74
    dw C2Act0_75
    dw C2Act0_76
    dw C2Act0_77
    dw C2Act0_78
    dw C2Act0_79
    dw C2Act0_7A
    dw C2Act0_7B
    dw C2Act0_7C
    dw C2Act0_7D
    dw C2Act0_7E
    dw C2Act0_7F
    dw C2Act0_80
    dw C2Act0_81
    dw C2Act0_82
    dw C2Act0_83
    dw C2Act0_84
    dw C2Act0_85
    dw C2Act0_86
    dw C2Act0_87
    dw C2Act0_88
    dw C2Act0_89
    dw C2Act0_8A
    dw C2Act0_8B
    dw C2Act0_8C
    dw C2Act0_8D
    dw C2Act0_8E
    dw C2Act0_8F
    dw C2Act0_90
    dw C2Act0_91
    dw C2Act0_92
    dw C2Act0_93
    dw C2Act0_94
    dw C2Act0_95
    dw C2Act0_96
    dw C2Act0_97
    dw C2Act0_98
    ; Pointer to C2Act0_99; split bytes retain the interior label.
    db LOW(C2Act0_99)
jr_007_4133:
    db HIGH(C2Act0_99)
    ; Pointer to C2Act0_9A; split bytes retain the interior label.
    db LOW(C2Act0_9A)
jr_007_4135:
    db HIGH(C2Act0_9A)
    ; Pointer to C2Act0_9B; split bytes retain the interior label.
    db LOW(C2Act0_9B)
jr_007_4137:
    db HIGH(C2Act0_9B)
    dw C2Act0_9C
    dw C2Act0_9D
    dw C2Act0_9E
    dw C2Act0_9F
    dw C2Act0_A0
    dw C2Act0_A1
    dw C2Act0_A2
    dw C2Act0_A3
    dw C2Act0_A4
    dw C2Act0_A5
    dw C2Act0_A6
    dw C2Act0_A7
    dw C2Act0_A8
    dw C2Act0_A9
    dw C2Act0_AA
    dw C2Act0_AB
    dw C2Act0_AC

C2Act0_00:
    dw LookC2Tub ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_01:
    dw LookColdTap ; Selected action SelActionLook (class $01)
    dw OpenColdTap ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
    dw CloseColdTap ; Selected action SelActionClose (class $01)

C2Act0_02:
    dw LookHotTap ; Selected action SelActionLook (class $01)
    dw OpenHotTap ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
jr_007_4170:
    dw CloseHotTap ; Selected action SelActionClose (class $01)

C2Act0_03:
    dw LookBathMirror ; Selected action SelActionLook (class $00)
jr_007_4174:
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
jr_007_4176:
    dw BreakBathMirror ; Selected action SelActionHit (class $00)
jr_007_4178:
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_04:
    dw LookTowelRod ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_05:
    dw LookC2Sink ; Selected action SelActionLook (class $00)
    dw UseSinkTarget ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_06:
    dw LookGrimyWindow ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw BreakGrimyGlass ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_07:
    dw LookRoomCurtain ; Selected action SelActionLook (class $01)
    dw OpenRoomCurtain ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
    dw CloseRoomCurtain ; Selected action SelActionClose (class $01)

C2Act0_08:
    dw LookRoomMirror ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw BreakRoomMirror ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_09:
    dw LookC2Bed ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_0A:
    dw LookRoomArt ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_0B:
    dw LookHotelTable ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_0C:
    dw LookLitLamp ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_0D:
    dw LookTackyLamp ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_0E:
    dw LookC2LiftButton ; Selected action SelActionLook (class $00)
    dw CallVegasLift1 ; Selected action SelActionUse (class $00)
    dw CallVegasLift1 ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_0F:
    dw ReadCasinoSign ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_10:
    dw LookShowdownArt ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_11:
    dw LookRedChair ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_12:
    dw LookC2Chair ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_13:
    dw LookCoffeeTable ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_14:
    dw ReadCashierSign ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_15:
    dw ShowChipPrice ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_16:
    dw LookCashCounter ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_17:
    dw LookCashierLady ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw PunchC2Cashier ; Selected action SelActionHit (class $00)
    dw TalkC2Cashier ; Selected action SelActionTalk (class $00)

C2Act0_18:
    dw LookBJTable ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_19:
    dw EndC2Scene ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_1A:
    dw ReadRudyTag ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_1B:
    dw LookC2Rudy ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw PunchC2Dealer ; Selected action SelActionHit (class $00)
    dw AskC2Dealer ; Selected action SelActionTalk (class $00)

C2Act0_1C:
    dw LookC2Tub ; Selected action SelActionLook (class $00)
    dw LookC2Tub ; Selected action SelActionUse (class $00)
    dw LookC2Tub ; Selected action SelActionHit (class $00)
    dw LookC2Tub ; Selected action SelActionTalk (class $00)

C2Act0_1D:
    dw LookC2Tub ; Selected action SelActionLook (class $00)
    dw LookC2Tub ; Selected action SelActionUse (class $00)
    dw LookC2Tub ; Selected action SelActionHit (class $00)
    dw LookC2Tub ; Selected action SelActionTalk (class $00)

C2Act0_1E:
    dw ReadCasinoAd ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_1F:
    dw LookLiftPanel ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_20:
    dw LookLift1Btn ; Selected action SelActionLook (class $00)
    dw TravelLift1 ; Selected action SelActionUse (class $00)
    dw TravelLift1 ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_21:
    dw LookLift2Btn ; Selected action SelActionLook (class $00)
    dw TravelLift2 ; Selected action SelActionUse (class $00)
    dw TravelLift2 ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_22:
    dw LookLift3Btn ; Selected action SelActionLook (class $00)
    dw TravelLift3 ; Selected action SelActionUse (class $00)
    dw TravelLift3 ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_23:
    dw LookHotelArt1 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_24:
    dw LookHotelArt2 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_25:
    dw LookPalmShade ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_26:
    dw LookEntryPalm ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_27:
    dw ReadHotelAwning ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_28:
    dw LookCactusThorn ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_29:
    dw LookDesertTree ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_2A:
    dw LookHotRock ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_2B:
    dw LookAnimalSkull ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_2C:
    dw LookDesertGrass ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_2D:
    dw LookDesertCactus ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_2E:
    dw LookArchWin1 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw BreakArchWin1 ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_2F:
    dw LookArchWin2 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw BreakArchWin2 ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_30:
    dw ReadVegasSign ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_31:
    dw LookWoodBench ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_32:
    dw ReadPlatform6 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_33:
    dw ReadPlatform7 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_34:
    dw ReadPlatform8 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_35:
    dw ReadPlatform9 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_36:
    dw ReadBaggageSign ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_37:
    dw LookC2Seller ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw PunchC2Person ; Selected action SelActionHit (class $00)
    dw TalkC2Seller ; Selected action SelActionTalk (class $00)

C2Act0_38:
    dw ViewTrains6To9 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_39:
    dw ViewTrains6To9 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_3A:
    dw ReadClaimSign ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_3B:
    dw LookScheduleBox ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_3C:
    dw LookAttendant ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw PunchC2Person ; Selected action SelActionHit (class $00)
    dw TalkAttendant ; Selected action SelActionTalk (class $00)

C2Act0_3D:
    dw LookCeilPlatform ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    ; Pointer to $4985; split bytes retain the interior label.
    db LOW(C2SceneNoEffect) ; Selected action SelActionHit (class $00)
Call_007_4347:
Jump_007_4347:
    db HIGH(C2SceneNoEffect)
Call_007_4348:
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_3E:
    dw LookC2Train ; Selected action SelActionLook (class $00)
    ; Pointer to $4943; split bytes retain the interior label.
    db LOW(C2SceneQuestion) ; Selected action SelActionUse (class $00)
Jump_007_434d:
    db HIGH(C2SceneQuestion)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_3F:
    dw LookTrainSeats ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_40:
    dw LookTrainShade ; Selected action SelActionLook (class $01)
    dw TrainShadeNoOpen ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
    dw ShadeClosedReply ; Selected action SelActionClose (class $01)

C2Act0_41:
    dw LookTrainWindow ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_42:
    dw ReadTrainDest ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_43:
    dw LookC2Conductor ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw PunchC2Conductor ; Selected action SelActionHit (class $00)
    dw TalkC2Conductor ; Selected action SelActionTalk (class $00)

C2Act0_44:
    dw LookChattyWoman ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw PunchC2Conductor ; Selected action SelActionHit (class $00)
    dw TalkChattyWoman ; Selected action SelActionTalk (class $00)

C2Act0_45:
    dw LookSeatMan ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw PunchC2Conductor ; Selected action SelActionHit (class $00)
    dw TalkSeatMan ; Selected action SelActionTalk (class $00)

C2Act0_46:
    dw LookYoungWoman ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw PunchC2Conductor ; Selected action SelActionHit (class $00)
    dw TalkYoungWoman ; Selected action SelActionTalk (class $00)

C2Act0_47:
    dw ReadPlatform2 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_48:
    dw ReadPlatform3 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_49:
    dw ReadPlatform4 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_4A:
    dw ReadPlatform5 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_4B:
    dw LookOldBench ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_4C:
    dw ViewTrains2To5 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_4D:
    dw ViewTrains2To5 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_4E:
    dw LookNewsStand ; Selected action SelActionLook (class $01)
    dw TryNewsShutter ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
    dw NewsShutterClose ; Selected action SelActionClose (class $01)

C2Act0_4F:
    dw LookNewsSeller ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw DogDefendsNews ; Selected action SelActionHit (class $00)
    dw TalkNewsSeller ; Selected action SelActionTalk (class $00)

C2Act0_50:
    dw LookNewsDog ; Selected action SelActionLook (class $06)
    dw C2SceneQuestion ; Selected action SelActionOpen (class $06)
    dw UseDogTarget ; Selected action SelActionUse (class $06)
    dw SceneDropReply ; Selected action SelActionPut (class $06)
    dw PetC2Dog ; Selected action SelActionTake (class $06)
    dw C2SceneQuestion ; Selected action SelActionClose (class $06)
    dw DieFromC2Dog ; Selected action SelActionHit (class $06)
    dw TalkC2Dog ; Selected action SelActionTalk (class $06)
    dw C2SceneQuestion ; Selected action SelActionMove (class $06)

C2Act0_51:
    dw LookChiStnSign ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_52:
    dw LookChiWindow1 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw BreakChiWindow1 ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_53:
    dw LookChiWindow2 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw BreakChiWindow2 ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_54:
    dw LookCabMirror ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_55:
    dw LookGabby ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw GabbyPunchReply ; Selected action SelActionHit (class $00)
    dw TalkGabby ; Selected action SelActionTalk (class $00)

C2Act0_56:
    dw LookCabMeter ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_57:
    dw LookCabPoster ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_58:
    dw LookVacancySign ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_59:
    dw LookSpiderWeb ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_5A:
    dw LookLockMarks ; Selected action SelActionLook (class $01)
    dw C2LockedReply ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
    dw MailClosedReply ; Selected action SelActionClose (class $01)

C2Act0_5B:
    dw LookDentedMail ; Selected action SelActionLook (class $01)
    dw C2LockedReply ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
    dw MailClosedReply ; Selected action SelActionClose (class $01)

C2Act0_5C:
    dw LookC2ElkHead ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_5D:
    dw LookOMalleyPhoto ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_5E:
    dw LookHomeCouch ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_5F:
    dw LookHomeCurtain ; Selected action SelActionLook (class $01)
    dw OpenHomeCurtain ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
    dw CloseHomeCurtain ; Selected action SelActionClose (class $01)

C2Act0_60:
    dw LookJoeWindow1 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw JoeWindowNoHit ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_61:
    dw LookC2Lamppost ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_62:
    dw LookC2Lamppost ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_63:
    dw LookNailedBoards ; Selected action SelActionLook (class $06)
    dw C2SceneQuestion ; Selected action SelActionOpen (class $06)
    dw C2SceneQuestion ; Selected action SelActionUse (class $06)
    dw SceneDropReply ; Selected action SelActionPut (class $06)
    dw NeedPullBoard ; Selected action SelActionTake (class $06)
    dw C2SceneQuestion ; Selected action SelActionClose (class $06)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $06)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $06)
    dw C2SceneQuestion ; Selected action SelActionMove (class $06)

C2Act0_64:
    dw LookSpiderWeb ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_65:
    dw LookDustWeb ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_66:
    dw LookDustCounter ; Selected action SelActionLook (class $01)
    dw C2SceneQuestion ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
    dw C2SceneQuestion ; Selected action SelActionClose (class $01)

C2Act0_67:
    dw LookFlyWeb ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_68:
    dw LookJoeWindow2 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw BreakJoeWindow ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_69:
    dw LookCleanBottle ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw HitWineBottle ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_6A:
    dw LookWineCask ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_6B:
    dw LookWineSpigot ; Selected action SelActionLook (class $01)
    dw OpenWineTap ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
    dw CloseWineTap ; Selected action SelActionClose (class $01)

C2Act0_6C:
    dw LookBottleRack ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_6D:
    dw LookBareBulb ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_6E:
    dw LookRoulette ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_6F:
    dw LookSplinterBoard ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw PunchLooseBoard ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_70:
    dw LookBoardWindow ; Selected action SelActionLook (class $06)
    dw C2SceneQuestion ; Selected action SelActionOpen (class $06)
    dw C2SceneQuestion ; Selected action SelActionUse (class $06)
    dw SceneDropReply ; Selected action SelActionPut (class $06)
    dw NeedPullBoard ; Selected action SelActionTake (class $06)
    dw C2SceneQuestion ; Selected action SelActionClose (class $06)
    dw KnockLooseBoard ; Selected action SelActionHit (class $06)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $06)
    dw WindowBoarded ; Selected action SelActionMove (class $06)

C2Act0_71:
    dw LookFireEscape ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_72:
    dw LookBoardGap ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_73:
    dw LookOpenShade ; Selected action SelActionLook (class $01)
    dw ShadeIsOpen ; Selected action SelActionOpen (class $01)
    dw C2SceneQuestion ; Selected action SelActionUse (class $01)
    dw ShadeBrokenReply ; Selected action SelActionClose (class $01)

C2Act0_74:
    dw LookAcePoster ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_75:
    dw LookBoxer1 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_76:
    dw LookBoxer2 ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_77:
    dw LookStreetLamp ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_78:
    dw LookPeepWindow ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw BreakPeepWindow ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_79:
    dw LookBarWindow ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_7A:
    dw LookC2Hobo ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw PunchC2Hobo ; Selected action SelActionHit (class $00)
    dw TalkC2Hobo ; Selected action SelActionTalk (class $00)

C2Act0_7B:
    dw LookSugarLamp ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_7C:
    dw LookSugarBed ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneHitReply ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_7D:
    dw LookSugarTable ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_7E:
    dw ReadMorgueSign ; Selected action SelActionLook (class $00)
    dw C2SceneQuestion ; Selected action SelActionUse (class $00)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_7F:
    dw ReadMorgueBoard ; Selected action SelActionLook (class $00)
    ; Pointer to $4943; split bytes retain the interior label.
    db LOW(C2SceneQuestion) ; Selected action SelActionUse (class $00)
jr_007_4573:
    db HIGH(C2SceneQuestion)
    dw C2SceneNoEffect ; Selected action SelActionHit (class $00)
    dw C2SceneQuestion ; Selected action SelActionTalk (class $00)

C2Act0_80:
    dw LookMorgueDesk ; Selected action SelActionLook (class $01)
    dw MorgueDeskBlocked ; Selected action SelActionOpen (class $01)
    dw SceneQuestion2 ; Selected action SelActionUse (class $01)
    dw DeskCloseReply ; Selected action SelActionClose (class $01)

C2Act0_81:
    dw LookMorgueGate ; Selected action SelActionLook (class $01)
    dw OpenMorgueGate ; Selected action SelActionOpen (class $01)
    dw SceneQuestion2 ; Selected action SelActionUse (class $01)
    dw CloseMorgueGate ; Selected action SelActionClose (class $01)

C2Act0_82:
    dw ReadStaffSign ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_83:
    dw LookMorgueClerk ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw PunchMorgueClerk ; Selected action SelActionHit (class $00)
    dw TalkMorgueClerk ; Selected action SelActionTalk (class $00)

C2Act0_84:
    dw ReadPlate1 ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_85:
    dw ReadPlate2 ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_86:
    dw LookMorgueBody ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw NoSceneAnswer ; Selected action SelActionTalk (class $00)

C2Act0_87:
    dw LookScarBody ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw NoSceneAnswer ; Selected action SelActionTalk (class $00)

C2Act0_88:
    dw LookColdDrawer ; Selected action SelActionLook (class $01)
    dw OpenDrawer1 ; Selected action SelActionOpen (class $01)
    dw SceneQuestion2 ; Selected action SelActionUse (class $01)
    dw CloseDrawer1 ; Selected action SelActionClose (class $01)

C2Act0_89:
    dw LookMorgueRows ; Selected action SelActionLook (class $01)
    dw OpenDrawer2 ; Selected action SelActionOpen (class $01)
    dw SceneQuestion2 ; Selected action SelActionUse (class $01)
    dw CloseDrawer2 ; Selected action SelActionClose (class $01)

C2Act0_8A:
    dw ReadDrawerSign ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_8B:
    dw LookHamper ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_8C:
    dw LookDustWeb2 ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_8D:
    dw LookC2Rope ; Selected action SelActionLook (class $00)
    dw UseC2Rope ; Selected action SelActionUse (class $00)
    dw CheckHandsHit ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_8E:
    dw LookTiedHands ; Selected action SelActionLook (class $00)
    dw C2HandsTied ; Selected action SelActionUse (class $00)
    dw CheckHandsHit ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_8F:
    dw LookNailCrate ; Selected action SelActionLook (class $00)
    dw UseNailCrate ; Selected action SelActionUse (class $00)
    dw PunchNailCrate ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_90:
    dw LookCleanHallWin ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw BreakGoonsGlass ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_91:
    dw ReadCleanPrices ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_92:
    dw LookLaundryDesk ; Selected action SelActionLook (class $01)
    dw OpenCleanCounter ; Selected action SelActionOpen (class $01)
    dw SceneQuestion2 ; Selected action SelActionUse (class $01)
    dw CloseCleanCounter ; Selected action SelActionClose (class $01)

C2Act0_93:
    dw LookDartBoard ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw HitDartBoard ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_94:
    dw LookOfficeDrape ; Selected action SelActionLook (class $01)
    dw OpenOfficeDrape ; Selected action SelActionOpen (class $01)
    dw SceneQuestion2 ; Selected action SelActionUse (class $01)
    dw CloseOfficeDrape ; Selected action SelActionClose (class $01)

C2Act0_95:
    dw LookSunWindow ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw BreakSunWindow ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_96:
    ; Pointer to $4ebe; split bytes retain the interior label.
    db LOW(LookLeatherChair) ; Selected action SelActionLook (class $00)
Call_007_4629:
Jump_007_4629:
    db HIGH(LookLeatherChair)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_97:
    dw ReadCleanSign ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_98:
    dw LookCleanWindow ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw BreakCleanWindow ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_99:
    dw LookDryTree ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    ; Pointer to $4f47; split bytes retain the interior label.
    db LOW(SceneQuestion2) ; Selected action SelActionTalk (class $00)
jr_007_4647:
    db HIGH(SceneQuestion2)

C2Act0_9A:
    dw LookCleanGlass ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw BreakCleanGlass ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_9B:
    dw LookSwivelChair ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_9C:
    dw LookCityWindow ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    ; Pointer to $515b; split bytes retain the interior label.
    db LOW(BreakCityWin) ; Selected action SelActionHit (class $00)
Call_007_465d:
    db HIGH(BreakCityWin)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_9D:
    dw LookVegasWindow ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw BreakVegasWin1 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_9E:
    dw LookThinBlinds ; Selected action SelActionLook (class $01)
    dw OpenThinBlinds ; Selected action SelActionOpen (class $01)
    dw SceneQuestion2 ; Selected action SelActionUse (class $01)
    dw CloseThinBlinds ; Selected action SelActionClose (class $01)

C2Act0_9F:
    dw LookWhiteBlinds ; Selected action SelActionLook (class $01)
    dw OpenWhiteBlinds ; Selected action SelActionOpen (class $01)
    dw SceneQuestion2 ; Selected action SelActionUse (class $01)
    dw CloseWhiteBlinds ; Selected action SelActionClose (class $01)

C2Act0_A0:
    dw LookOfficeChair ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_A1:
    dw LookFishPhoto ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_A2:
    dw LookMobPhoto ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_A3:
    dw LookVegasWindow ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw BreakVegasWin2 ; Selected action SelActionHit (class $00)
    ; Pointer to $4f47; split bytes retain the interior label.
    db LOW(SceneQuestion2) ; Selected action SelActionTalk (class $00)
jr_007_4697:
    db HIGH(SceneQuestion2)

C2Act0_A4:
    dw LookSilkCurtain ; Selected action SelActionLook (class $01)
    ; Pointer to $5295; split bytes retain the interior label.
    db LOW(OpenSilkCurtain) ; Selected action SelActionOpen (class $01)
jr_007_469b:
    db HIGH(OpenSilkCurtain)
    dw SceneQuestion2 ; Selected action SelActionUse (class $01)
    dw CloseSilkCurtain ; Selected action SelActionClose (class $01)

C2Act0_A5:
    dw LookSwivelChair2 ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_A6:
    dw LookC2Self ; Selected action SelActionLook (class $00)
    dw CheckHandsForUse ; Selected action SelActionUse (class $00)
    dw SceneQuestion2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_A7:
    dw LookEmptyPlace ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_A8:
    dw LookStickyWeb ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_A9:
    dw LookStickyWeb ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_AA:
    dw ReadPoliceSign ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw SceneNoEffect2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_AB:
jr_007_46d0:
    dw LookCleanGlass ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw BreakPoliceWin1 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)

C2Act0_AC:
    dw LookArchWindow ; Selected action SelActionLook (class $00)
    dw SceneQuestion2 ; Selected action SelActionUse (class $00)
    dw BreakPoliceWin2 ; Selected action SelActionHit (class $00)
    dw SceneQuestion2 ; Selected action SelActionTalk (class $00)
