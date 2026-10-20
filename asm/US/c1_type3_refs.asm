; Type 3 has 93 item rows, each containing 4 script pointers.

C1Type3Refs:
    dw C1Act3_00
    dw C1Act3_01
    dw C1Act3_02
    dw C1Act3_03
    dw C1Act3_04
    dw C1Act3_05
    dw C1Act3_06
    dw C1Act3_07
    dw C1Act3_08
    ; Pointer to C1Act3_09; split bytes retain the interior label.
    db LOW(C1Act3_09)
jr_006_4d75:
    db HIGH(C1Act3_09)
    dw C1Act3_0A
    dw C1Act3_0B
    dw C1Act3_0C
    dw C1Act3_0D
    dw C1Act3_0E
    dw C1Act3_0F
    dw C1Act3_10
    dw C1Act3_11
    dw C1Act3_12
    dw C1Act3_13
    dw C1Act3_14
    dw C1Act3_15
    dw C1Act3_16
    dw C1Act3_17
    dw C1Act3_18
    dw C1Act3_19
    dw C1Act3_1A
    dw C1Act3_1B
    dw C1Act3_1C
    dw C1Act3_1D
    dw C1Act3_1E
    dw C1Act3_1F
    dw C1Act3_20
    dw C1Act3_21
    dw C1Act3_22
    dw C1Act3_23
    dw C1Act3_24
    dw C1Act3_25
    dw C1Act3_26
    dw C1Act3_27
    dw C1Act3_28
    dw C1Act3_29
    dw C1Act3_2A
    dw C1Act3_2B
    dw C1Act3_2C
    dw C1Act3_2D
    dw C1Act3_2E
    dw C1Act3_2F
    dw C1Act3_30
    dw C1Act3_31
    dw C1Act3_32
    dw C1Act3_33
    dw C1Act3_34
    dw C1Act3_35
    dw C1Act3_36
    dw C1Act3_37
    dw C1Act3_38
    dw C1Act3_39
    dw C1Act3_3A
    dw C1Act3_3B
    dw C1Act3_3C
    dw C1Act3_3D
    dw C1Act3_3E
    dw C1Act3_3F
    dw C1Act3_40
    dw C1Act3_41
    dw C1Act3_42
    dw C1Act3_43
    dw C1Act3_44
    dw C1Act3_45
    dw C1Act3_46
    dw C1Act3_47
    dw C1Act3_48
    dw C1Act3_49
    dw C1Act3_4A
    dw C1Act3_4B
    dw C1Act3_4C
    dw C1Act3_4D
    dw C1Act3_4E
    dw C1Act3_4F
    dw C1Act3_50
    dw C1Act3_51
    dw C1Act3_52
    dw C1Act3_53
    dw C1Act3_54
    dw C1Act3_55
    dw C1Act3_56
    dw C1Act3_57
    dw C1Act3_58
    dw C1Act3_59
    dw C1Act3_5A
    dw C1Act3_5B
    dw C1Act3_5C

C1Act3_00:
    dw LookC1Coin
    dw TakeC1Coins
    dw PlaceC1Item
    dw UseC1Coins

C1Act3_01:
    dw LookC1Lighter
    dw TakeC1Lighter
    dw PlaceC1Item
    dw UseC1Lighter

C1Act3_02:
    dw LookC1GumCigs
    dw TakeC1GumCigs
    dw PlaceC1CheckedItem
    dw UseC1GumCigs

C1Act3_03:
    dw LookC1Hanky
    dw TakeC1Hanky
    dw PlaceC1CheckedItem
    dw OfferC1Item

C1Act3_04:
    dw LookC1Sunglasses
    dw TakeC1Sunglasses
    dw PlaceC1CheckedItem
    dw UseC1Sunglasses

C1Act3_05:
    ; Pointer to $5d76; split bytes retain the interior label.
    db LOW(LookC1Key1)
Call_006_4e45:
    db HIGH(LookC1Key1)
    dw TakeC1Key1
    dw PlaceC1Item
    dw UseC1Key1

C1Act3_06:
    dw LookC1Card
    dw TakeC1Card
    dw PlaceC1Item
    dw UseC1Card

C1Act3_07:
    dw LookC1Bill20
    dw TakeC1Bill20
    dw PlaceC1Item
    dw UseC1Bill20

C1Act3_08:
    dw LookC1Bullet1
    dw C1ItemNoHere
    dw PlaceC1Bullet1
    dw UseC1Bullet1

C1Act3_09:
    dw C1ItemNoAction
    dw C1NoPickupAction
    dw C1ItemNoAction
    dw C1ItemNoHere

C1Act3_0A:
    dw LookC1MedTool
    dw TakeC1MedTool
    dw PlaceC1Item
    dw UseC1MedTool

C1Act3_0B:
    dw LookC1Key2
    dw TakeC1Key2
    dw PlaceC1Item
    dw UseC1Key2

C1Act3_0C:
    dw LookC1Pencil
    dw TakeC1Pencil
    dw PlaceC1Item
    dw UseC1Pencil

C1Act3_0D:
    dw LookC1Key3
    dw TakeC1Key3
    dw PlaceC1Item
    dw UseC1Key3

C1Act3_0E:
    dw LookC1Note1
    dw TakeC1Note1
    dw PlaceC1Note1
    dw C1ItemNoHere

C1Act3_0F:
    dw LookC1Key4
    dw TakeC1Key4
    dw PlaceC1Item
    dw UseC1Key4

C1Act3_10:
    dw LookC1Bill
    dw TakeC1Bill
    dw PlaceC1Bill
    dw C1ItemNoHere

C1Act3_11:
    dw LookC1Note2
    dw TakeC1Note2
    dw PlaceC1Note2
    dw C1ItemNoHere

C1Act3_12:
    dw LookC1Map
    dw TakeC1Map
    dw PlaceC1Map
    dw C1ItemNoHere

C1Act3_13:
    dw LookC1Snapshot
    dw TakeC1Snapshot
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_14:
    dw LookC1Cosmetic
    dw TakeC1Cosmetic
    dw PlaceC1CheckedItem
    dw OfferC1Item

C1Act3_15:
    ; Pointer to $6344; split bytes retain the interior label.
    db LOW(LookC1Key5)
jr_006_4ec5:
    db HIGH(LookC1Key5)
    dw TakeC1Key5
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item)
jr_006_4ec9:
    db HIGH(PlaceC1Item)
    dw UseC1Key5

C1Act3_16:
    dw LookC1Bookmark
    dw TakeC1Bookmark
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_17:
    dw LookC1File1
    dw TakeC1File1
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_18:
    dw LookC1File2
    dw TakeC1File2
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_19:
    dw LookC1File3
    dw TakeC1File3
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_1A:
    dw LookC1File4
    dw TakeC1File4
    dw PlaceC1Item
    dw C1ItemNoHere

C1Act3_1B:
    dw LookC1File5
    dw TakeC1File5
    dw PlaceC1File5
    dw C1ItemNoHere

C1Act3_1C:
    dw LookC1File6
    dw TakeC1File6
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_1D:
    dw LookC1File7
    dw TakeC1File7
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_1E:
    dw LookC1Letter1
    dw TakeC1Letter1
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item)
jr_006_4f11:
    db HIGH(PlaceC1Item)
    dw C1ItemNoHere

C1Act3_1F:
    dw LookC1Sugar
    dw TakeC1Sugar
    dw PlaceC1CheckedItem
    dw UseC1Sugar

C1Act3_20:
    dw LookC1Flour
    dw TakeC1Flour
    dw PlaceC1CheckedItem
    dw UseC1Flour

C1Act3_21:
    dw LookC1Tissue
    dw TakeC1Tissue
    dw PlaceC1CheckedItem
    dw OfferC1Item

C1Act3_22:
    dw LookC1Letter2
    dw TakeC1Letter2
    dw PlaceC1Item
    dw C1ItemNoHere

C1Act3_23:
    dw LookC1Candy
    dw TakeC1Candy
    dw PlaceC1CheckedItem
    dw UseC1Candy

C1Act3_24:
    dw LookC1Memo
    dw TakeC1Memo
    dw PlaceC1Item
    dw C1ItemNoHere

C1Act3_25:
    dw LookC1Pen
jr_006_4f46:
    dw TakeC1Pen
    dw PlaceC1CheckedItem
    dw UseC1Pen

C1Act3_26:
    dw LookC1Glasses
    dw TakeC1Glasses
    dw PlaceC1CheckedItem
    dw UseC1Glasses

C1Act3_27:
    dw LookC1Seltzer
    dw TakeC1Seltzer
    dw PlaceC1CheckedItem
    dw UseC1Seltzer

C1Act3_28:
    dw LookC1Meds1
    dw C1EmptyVialReply
    dw C1PlaceNeedsTaken
    dw C1ItemNoHere

C1Act3_29:
    dw LookC1Meds2
    dw TakeC1Meds2
    dw PlaceC1Item
    dw UseC1Medrezine29

C1Act3_2A:
    dw LookC1Diethanol
    dw C1EmptyVialReply
    dw C1PlaceNeedsTaken
    dw C1ItemNoHere

C1Act3_2B:
    dw LookC1Newspaper
    dw BuyC1Newspaper
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_2C:
    dw LookC1Gag
    dw TakeC1Gag
    dw PlaceC1CheckedItem
    dw OfferC1Item

C1Act3_2D:
    dw LookC1Bullet2
    dw C1ItemNoHere
    dw PlaceC1Bullet2
    dw UseC1Bullet2

C1Act3_2E:
    dw LookC1Magazine
    dw TakeC1Magazine
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_2F:
    dw LookC1Photo
    dw TakeC1Photo
    dw PlaceC1Photo
    dw C1ItemNoHere

C1Act3_30:
    dw LookC1Earring
    dw TakeC1Earring
    dw PlaceC1CheckedItem
    dw OfferC1Item

C1Act3_31:
    dw LookC1Note3
    dw TakeC1Note3
    dw PlaceC1Item
    dw UseC1Note3

C1Act3_32:
    dw LookC1Note4
    dw TakeC1Note4
    dw PlaceC1Item
    dw UseC1Note4

C1Act3_33:
    dw LookC1Ofreeall
    dw TakeC1Meds4
    dw PlaceC1Item
    dw UseC1Ofreeall33

C1Act3_34:
    dw LookC1Chemopapain
    dw TakeC1Meds5
    dw PlaceC1Item
    dw UseC1Chemopapain34

C1Act3_35:
    dw LookC1Bisodiumitis
    dw TakeC1Meds6
    dw PlaceC1Item
    dw UseC1Bisodiumitis35

C1Act3_36:
    dw LookC1Bicarbonate
    dw TakeC1Bicarbonate
    dw PlaceC1Item
    dw UseC1Bicarbonate36

C1Act3_37:
    dw LookC1Sausage
    dw TakeC1Sausage
    dw PlaceC1CheckedItem
    dw UseC1Sausage

C1Act3_38:
    dw LookC1Plate
    dw TakeC1Plate
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_39:
    dw LookC1FryingPan
    dw TakeC1FryingPan
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_3A:
    dw LookC1Pitcher
    dw TakeC1Pitcher
    dw PlaceC1CheckedItem
    dw C1ItemNoHere

C1Act3_3B:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_3C:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_3D:
    dw LookC1Bullet1
    dw BuyC1Bullet1
    dw PlaceC1Bullet1
    dw C1UseNeedsTaken

C1Act3_3E:
    dw LookC1Bullet1
    dw BuyC1Bullet1
    dw PlaceC1Bullet1
    dw C1UseNeedsTaken

C1Act3_3F:
    dw LookC1Bullet1
    dw BuyC1Bullet1
    dw PlaceC1Bullet1
    dw C1UseNeedsTaken

C1Act3_40:
    dw LookC1Bullet1
    dw BuyC1Bullet1
    dw PlaceC1Bullet1
    dw C1UseNeedsTaken

C1Act3_41:
    dw LookC1Bullet1
    dw BuyC1Bullet1
    dw PlaceC1Bullet1
    dw C1UseNeedsTaken

C1Act3_42:
    dw LookC1Bullet1
    dw BuyC1Bullet1
    dw PlaceC1Bullet1
    dw C1UseNeedsTaken

C1Act3_43:
    dw LookC1Bullet1
    dw C1ItemNoHere
    dw PlaceC1Bullet1
    dw C1UseNeedsTaken

C1Act3_44:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_45:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_46:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_47:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_48:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_49:
    dw LookC1Bullet1
    dw TakeC1SixBullets
    dw PlaceC1Bullet1
    dw C1UseNeedsTaken

C1Act3_4A:
    dw LookC1Bullet2
    dw BuyC1Bullet2
    dw PlaceC1Bullet2
    dw C1UseNeedsTaken

C1Act3_4B:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_4C:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_4D:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_4E:
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction
    dw C1ItemNoAction

C1Act3_4F:
    dw LookC1Bullet2
    dw BuyC1Bullet2
    dw PlaceC1Bullet2
    dw C1UseNeedsTaken

C1Act3_50:
    ; Pointer to $6413; split bytes retain the interior label.
    db LOW(LookC1Bullet2)
jr_006_509d:
    db HIGH(LookC1Bullet2)
    dw BuyC1Bullet2
    ; Pointer to $57f8; split bytes retain the interior label.
    db LOW(PlaceC1Bullet2)
jr_006_50a1:
    db HIGH(PlaceC1Bullet2)
    ; Pointer to $5aa1; split bytes retain the interior label.
    db LOW(C1UseNeedsTaken)
jr_006_50a3:
    db HIGH(C1UseNeedsTaken)

C1Act3_51:
    ; Pointer to $6413; split bytes retain the interior label.
    db LOW(LookC1Bullet2)
jr_006_50a5:
    db HIGH(LookC1Bullet2)
    dw BuyC1Bullet2
    ; Pointer to $57f8; split bytes retain the interior label.
    db LOW(PlaceC1Bullet2)
jr_006_50a9:
    db HIGH(PlaceC1Bullet2)
    ; Pointer to $5aa1; split bytes retain the interior label.
    db LOW(C1UseNeedsTaken)
jr_006_50ab:
    db HIGH(C1UseNeedsTaken)

C1Act3_52:
    ; Pointer to $6413; split bytes retain the interior label.
    db LOW(LookC1Bullet2)
jr_006_50ad:
    db HIGH(LookC1Bullet2)
    dw BuyC1Bullet2
    ; Pointer to $57f8; split bytes retain the interior label.
    db LOW(PlaceC1Bullet2)
jr_006_50b1:
    db HIGH(PlaceC1Bullet2)
    ; Pointer to $5aa1; split bytes retain the interior label.
    db LOW(C1UseNeedsTaken)
jr_006_50b3:
    db HIGH(C1UseNeedsTaken)

C1Act3_53:
    ; Pointer to $6413; split bytes retain the interior label.
    db LOW(LookC1Bullet2)
jr_006_50b5:
    db HIGH(LookC1Bullet2)
    dw BuyC1Bullet2
    ; Pointer to $57f8; split bytes retain the interior label.
    db LOW(PlaceC1Bullet2)
jr_006_50b9:
    db HIGH(PlaceC1Bullet2)
    ; Pointer to $5aa1; split bytes retain the interior label.
    db LOW(C1UseNeedsTaken)
jr_006_50bb:
    db HIGH(C1UseNeedsTaken)

C1Act3_54:
    ; Pointer to $5d84; split bytes retain the interior label.
    db LOW(LookC1Bill20)
jr_006_50bd:
    db HIGH(LookC1Bill20)
    ; Pointer to $54db; split bytes retain the interior label.
    db LOW(TakeC1Bill20Alt)
jr_006_50bf:
    db HIGH(TakeC1Bill20Alt)
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item)
jr_006_50c1:
    db HIGH(PlaceC1Item)
    ; Pointer to $5d87; split bytes retain the interior label.
    db LOW(UseC1Bill20Alt)
jr_006_50c3:
    db HIGH(UseC1Bill20Alt)

C1Act3_55:
    dw LookC1Pentothal
    dw TakeC1Pentothal
    dw PlaceC1Item
    dw UseC1Pentothal55

C1Act3_56:
    dw LookC1Pentothal
    dw TakeC1Pentothal
    dw PlaceC1Item
    dw UseC1Pentothal56

C1Act3_57:
    ; Pointer to $648c; split bytes retain the interior label.
    db LOW(LookC1Pentothal)
jr_006_50d5:
    db HIGH(LookC1Pentothal)
    ; Pointer to $6491; split bytes retain the interior label.
    db LOW(TakeC1Pentothal)
jr_006_50d7:
    db HIGH(TakeC1Pentothal)
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item)
jr_006_50d9:
    db HIGH(PlaceC1Item)
    dw UseC1Pentothal57

C1Act3_58:
    ; Pointer to $63c9; split bytes retain the interior label.
    db LOW(LookC1Meds2)
jr_006_50dd:
    db HIGH(LookC1Meds2)
    dw TakeC1Meds2
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item)
jr_006_50e1:
    db HIGH(PlaceC1Item)
    ; Pointer to $5ca7; split bytes retain the interior label.
    db LOW(UseC1Medrezine58)
jr_006_50e3:
    db HIGH(UseC1Medrezine58)

C1Act3_59:
    ; Pointer to $63c9; split bytes retain the interior label.
    db LOW(LookC1Meds2)
jr_006_50e5:
    db HIGH(LookC1Meds2)
    dw TakeC1Meds2
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item)
jr_006_50e9:
    db HIGH(PlaceC1Item)
    dw UseC1Medrezine59

C1Act3_5A:
    ; Pointer to $6506; split bytes retain the interior label.
    db LOW(LookC1Ofreeall)
jr_006_50ed:
    db HIGH(LookC1Ofreeall)
    ; Pointer to $64f7; split bytes retain the interior label.
    db LOW(TakeC1Meds4)
jr_006_50ef:
    db HIGH(TakeC1Meds4)
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item)
jr_006_50f1:
    db HIGH(PlaceC1Item)
    dw UseC1Ofreeall5A

C1Act3_5B:
    dw LookC1Bisodiumitis
    dw TakeC1Meds6
    dw PlaceC1Item
    dw UseC1Bisodiumitis5B

C1Act3_5C:
    dw LookC1Bisodiumitis
    dw TakeC1Meds6
    dw PlaceC1Item
    dw UseC1Bisodiumitis5C
