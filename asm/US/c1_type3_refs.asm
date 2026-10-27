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
    dw LookC1Coin ; Selected action SelActionLook (class $03)
    dw TakeC1Coins ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Coins ; Selected action SelActionUse (class $03)

C1Act3_01:
    dw LookC1Lighter ; Selected action SelActionLook (class $03)
    dw TakeC1Lighter ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Lighter ; Selected action SelActionUse (class $03)

C1Act3_02:
    dw LookC1GumCigs ; Selected action SelActionLook (class $03)
    dw TakeC1GumCigs ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw UseC1GumCigs ; Selected action SelActionUse (class $03)

C1Act3_03:
    dw LookC1Hanky ; Selected action SelActionLook (class $03)
    dw TakeC1Hanky ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw OfferC1Item ; Selected action SelActionUse (class $03)

C1Act3_04:
    dw LookC1Sunglasses ; Selected action SelActionLook (class $03)
    dw TakeC1Sunglasses ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw UseC1Sunglasses ; Selected action SelActionUse (class $03)

C1Act3_05:
    ; Pointer to $5d76; split bytes retain the interior label.
    db LOW(LookC1Key1) ; Selected action SelActionLook (class $03)
Call_006_4e45:
    db HIGH(LookC1Key1)
    dw TakeC1Key1 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Key1 ; Selected action SelActionUse (class $03)

C1Act3_06:
    dw LookC1Card ; Selected action SelActionLook (class $03)
    dw TakeC1Card ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Card ; Selected action SelActionUse (class $03)

C1Act3_07:
    dw LookC1Bill20 ; Selected action SelActionLook (class $03)
    dw TakeC1Bill20 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Bill20 ; Selected action SelActionUse (class $03)

C1Act3_08:
    dw LookC1Bullet1 ; Selected action SelActionLook (class $03)
    dw C1ItemNoHere ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet1 ; Selected action SelActionPut (class $03)
    dw UseC1Bullet1 ; Selected action SelActionUse (class $03)

C1Act3_09:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1NoPickupAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_0A:
    dw LookC1MedTool ; Selected action SelActionLook (class $03)
    dw TakeC1MedTool ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1MedTool ; Selected action SelActionUse (class $03)

C1Act3_0B:
    dw LookC1Key2 ; Selected action SelActionLook (class $03)
    dw TakeC1Key2 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Key2 ; Selected action SelActionUse (class $03)

C1Act3_0C:
    dw LookC1Pencil ; Selected action SelActionLook (class $03)
    dw TakeC1Pencil ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Pencil ; Selected action SelActionUse (class $03)

C1Act3_0D:
    dw LookC1Key3 ; Selected action SelActionLook (class $03)
    dw TakeC1Key3 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Key3 ; Selected action SelActionUse (class $03)

C1Act3_0E:
    dw LookC1Note1 ; Selected action SelActionLook (class $03)
    dw TakeC1Note1 ; Selected action SelActionTake (class $03)
    dw PlaceC1Note1 ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_0F:
    dw LookC1Key4 ; Selected action SelActionLook (class $03)
    dw TakeC1Key4 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Key4 ; Selected action SelActionUse (class $03)

C1Act3_10:
    dw LookC1Bill ; Selected action SelActionLook (class $03)
    dw TakeC1Bill ; Selected action SelActionTake (class $03)
    dw PlaceC1Bill ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_11:
    dw LookC1Note2 ; Selected action SelActionLook (class $03)
    dw TakeC1Note2 ; Selected action SelActionTake (class $03)
    dw PlaceC1Note2 ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_12:
    dw LookC1Map ; Selected action SelActionLook (class $03)
    dw TakeC1Map ; Selected action SelActionTake (class $03)
    dw PlaceC1Map ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_13:
    dw LookC1Snapshot ; Selected action SelActionLook (class $03)
    dw TakeC1Snapshot ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_14:
    dw LookC1Cosmetic ; Selected action SelActionLook (class $03)
    dw TakeC1Cosmetic ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw OfferC1Item ; Selected action SelActionUse (class $03)

C1Act3_15:
    ; Pointer to $6344; split bytes retain the interior label.
    db LOW(LookC1Key5) ; Selected action SelActionLook (class $03)
jr_006_4ec5:
    db HIGH(LookC1Key5)
    dw TakeC1Key5 ; Selected action SelActionTake (class $03)
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item) ; Selected action SelActionPut (class $03)
jr_006_4ec9:
    db HIGH(PlaceC1Item)
    dw UseC1Key5 ; Selected action SelActionUse (class $03)

C1Act3_16:
    dw LookC1Bookmark ; Selected action SelActionLook (class $03)
    dw TakeC1Bookmark ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_17:
    dw LookC1File1 ; Selected action SelActionLook (class $03)
    dw TakeC1File1 ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_18:
    dw LookC1File2 ; Selected action SelActionLook (class $03)
    dw TakeC1File2 ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_19:
    dw LookC1File3 ; Selected action SelActionLook (class $03)
    dw TakeC1File3 ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_1A:
    dw LookC1File4 ; Selected action SelActionLook (class $03)
    dw TakeC1File4 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_1B:
    dw LookC1File5 ; Selected action SelActionLook (class $03)
    dw TakeC1File5 ; Selected action SelActionTake (class $03)
    dw PlaceC1File5 ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_1C:
    dw LookC1File6 ; Selected action SelActionLook (class $03)
    dw TakeC1File6 ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_1D:
    dw LookC1File7 ; Selected action SelActionLook (class $03)
    dw TakeC1File7 ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_1E:
    dw LookC1Letter1 ; Selected action SelActionLook (class $03)
    dw TakeC1Letter1 ; Selected action SelActionTake (class $03)
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item) ; Selected action SelActionPut (class $03)
jr_006_4f11:
    db HIGH(PlaceC1Item)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_1F:
    dw LookC1Sugar ; Selected action SelActionLook (class $03)
    dw TakeC1Sugar ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw UseC1Sugar ; Selected action SelActionUse (class $03)

C1Act3_20:
    dw LookC1Flour ; Selected action SelActionLook (class $03)
    dw TakeC1Flour ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw UseC1Flour ; Selected action SelActionUse (class $03)

C1Act3_21:
    dw LookC1Tissue ; Selected action SelActionLook (class $03)
    dw TakeC1Tissue ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw OfferC1Item ; Selected action SelActionUse (class $03)

C1Act3_22:
    dw LookC1Letter2 ; Selected action SelActionLook (class $03)
    dw TakeC1Letter2 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_23:
    dw LookC1Candy ; Selected action SelActionLook (class $03)
    dw TakeC1Candy ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw UseC1Candy ; Selected action SelActionUse (class $03)

C1Act3_24:
    dw LookC1Memo ; Selected action SelActionLook (class $03)
    dw TakeC1Memo ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_25:
    dw LookC1Pen ; Selected action SelActionLook (class $03)
jr_006_4f46:
    dw TakeC1Pen ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw UseC1Pen ; Selected action SelActionUse (class $03)

C1Act3_26:
    dw LookC1Glasses ; Selected action SelActionLook (class $03)
    dw TakeC1Glasses ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw UseC1Glasses ; Selected action SelActionUse (class $03)

C1Act3_27:
    dw LookC1Seltzer ; Selected action SelActionLook (class $03)
    dw TakeC1Seltzer ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw UseC1Seltzer ; Selected action SelActionUse (class $03)

C1Act3_28:
    dw LookC1Meds1 ; Selected action SelActionLook (class $03)
    dw C1EmptyVialReply ; Selected action SelActionTake (class $03)
    dw C1PlaceNeedsTaken ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_29:
    dw LookC1Meds2 ; Selected action SelActionLook (class $03)
    dw TakeC1Meds2 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Medrezine29 ; Selected action SelActionUse (class $03)

C1Act3_2A:
    dw LookC1Diethanol ; Selected action SelActionLook (class $03)
    dw C1EmptyVialReply ; Selected action SelActionTake (class $03)
    dw C1PlaceNeedsTaken ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_2B:
    dw LookC1Newspaper ; Selected action SelActionLook (class $03)
    dw BuyC1Newspaper ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_2C:
    dw LookC1Gag ; Selected action SelActionLook (class $03)
    dw TakeC1Gag ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw OfferC1Item ; Selected action SelActionUse (class $03)

C1Act3_2D:
    dw LookC1Bullet2 ; Selected action SelActionLook (class $03)
    dw C1ItemNoHere ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet2 ; Selected action SelActionPut (class $03)
    dw UseC1Bullet2 ; Selected action SelActionUse (class $03)

C1Act3_2E:
    dw LookC1Magazine ; Selected action SelActionLook (class $03)
    dw TakeC1Magazine ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_2F:
    dw LookC1Photo ; Selected action SelActionLook (class $03)
    dw TakeC1Photo ; Selected action SelActionTake (class $03)
    dw PlaceC1Photo ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_30:
    dw LookC1Earring ; Selected action SelActionLook (class $03)
    dw TakeC1Earring ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw OfferC1Item ; Selected action SelActionUse (class $03)

C1Act3_31:
    dw LookC1Note3 ; Selected action SelActionLook (class $03)
    dw TakeC1Note3 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Note3 ; Selected action SelActionUse (class $03)

C1Act3_32:
    dw LookC1Note4 ; Selected action SelActionLook (class $03)
    dw TakeC1Note4 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Note4 ; Selected action SelActionUse (class $03)

C1Act3_33:
    dw LookC1Ofreeall ; Selected action SelActionLook (class $03)
    dw TakeC1Meds4 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Ofreeall33 ; Selected action SelActionUse (class $03)

C1Act3_34:
    dw LookC1Chemopapain ; Selected action SelActionLook (class $03)
    dw TakeC1Meds5 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Chemopapain34 ; Selected action SelActionUse (class $03)

C1Act3_35:
    dw LookC1Bisodiumitis ; Selected action SelActionLook (class $03)
    dw TakeC1Meds6 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Bisodiumitis35 ; Selected action SelActionUse (class $03)

C1Act3_36:
    dw LookC1Bicarbonate ; Selected action SelActionLook (class $03)
    dw TakeC1Bicarbonate ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Bicarbonate36 ; Selected action SelActionUse (class $03)

C1Act3_37:
    dw LookC1Sausage ; Selected action SelActionLook (class $03)
    dw TakeC1Sausage ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw UseC1Sausage ; Selected action SelActionUse (class $03)

C1Act3_38:
    dw LookC1Plate ; Selected action SelActionLook (class $03)
    dw TakeC1Plate ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_39:
    dw LookC1FryingPan ; Selected action SelActionLook (class $03)
    dw TakeC1FryingPan ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_3A:
    dw LookC1Pitcher ; Selected action SelActionLook (class $03)
    dw TakeC1Pitcher ; Selected action SelActionTake (class $03)
    dw PlaceC1CheckedItem ; Selected action SelActionPut (class $03)
    dw C1ItemNoHere ; Selected action SelActionUse (class $03)

C1Act3_3B:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_3C:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_3D:
    dw LookC1Bullet1 ; Selected action SelActionLook (class $03)
    dw BuyC1Bullet1 ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet1 ; Selected action SelActionPut (class $03)
    dw C1UseNeedsTaken ; Selected action SelActionUse (class $03)

C1Act3_3E:
    dw LookC1Bullet1 ; Selected action SelActionLook (class $03)
    dw BuyC1Bullet1 ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet1 ; Selected action SelActionPut (class $03)
    dw C1UseNeedsTaken ; Selected action SelActionUse (class $03)

C1Act3_3F:
    dw LookC1Bullet1 ; Selected action SelActionLook (class $03)
    dw BuyC1Bullet1 ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet1 ; Selected action SelActionPut (class $03)
    dw C1UseNeedsTaken ; Selected action SelActionUse (class $03)

C1Act3_40:
    dw LookC1Bullet1 ; Selected action SelActionLook (class $03)
    dw BuyC1Bullet1 ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet1 ; Selected action SelActionPut (class $03)
    dw C1UseNeedsTaken ; Selected action SelActionUse (class $03)

C1Act3_41:
    dw LookC1Bullet1 ; Selected action SelActionLook (class $03)
    dw BuyC1Bullet1 ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet1 ; Selected action SelActionPut (class $03)
    dw C1UseNeedsTaken ; Selected action SelActionUse (class $03)

C1Act3_42:
    dw LookC1Bullet1 ; Selected action SelActionLook (class $03)
    dw BuyC1Bullet1 ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet1 ; Selected action SelActionPut (class $03)
    dw C1UseNeedsTaken ; Selected action SelActionUse (class $03)

C1Act3_43:
    dw LookC1Bullet1 ; Selected action SelActionLook (class $03)
    dw C1ItemNoHere ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet1 ; Selected action SelActionPut (class $03)
    dw C1UseNeedsTaken ; Selected action SelActionUse (class $03)

C1Act3_44:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_45:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_46:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_47:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_48:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_49:
    dw LookC1Bullet1 ; Selected action SelActionLook (class $03)
    dw TakeC1SixBullets ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet1 ; Selected action SelActionPut (class $03)
    dw C1UseNeedsTaken ; Selected action SelActionUse (class $03)

C1Act3_4A:
    dw LookC1Bullet2 ; Selected action SelActionLook (class $03)
    dw BuyC1Bullet2 ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet2 ; Selected action SelActionPut (class $03)
    dw C1UseNeedsTaken ; Selected action SelActionUse (class $03)

C1Act3_4B:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_4C:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_4D:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_4E:
    dw C1ItemNoAction ; Selected action SelActionLook (class $03)
    dw C1ItemNoAction ; Selected action SelActionTake (class $03)
    dw C1ItemNoAction ; Selected action SelActionPut (class $03)
    dw C1ItemNoAction ; Selected action SelActionUse (class $03)

C1Act3_4F:
    dw LookC1Bullet2 ; Selected action SelActionLook (class $03)
    dw BuyC1Bullet2 ; Selected action SelActionTake (class $03)
    dw PlaceC1Bullet2 ; Selected action SelActionPut (class $03)
    dw C1UseNeedsTaken ; Selected action SelActionUse (class $03)

C1Act3_50:
    ; Pointer to $6413; split bytes retain the interior label.
    db LOW(LookC1Bullet2) ; Selected action SelActionLook (class $03)
jr_006_509d:
    db HIGH(LookC1Bullet2)
    dw BuyC1Bullet2 ; Selected action SelActionTake (class $03)
    ; Pointer to $57f8; split bytes retain the interior label.
    db LOW(PlaceC1Bullet2) ; Selected action SelActionPut (class $03)
jr_006_50a1:
    db HIGH(PlaceC1Bullet2)
    ; Pointer to $5aa1; split bytes retain the interior label.
    db LOW(C1UseNeedsTaken) ; Selected action SelActionUse (class $03)
jr_006_50a3:
    db HIGH(C1UseNeedsTaken)

C1Act3_51:
    ; Pointer to $6413; split bytes retain the interior label.
    db LOW(LookC1Bullet2) ; Selected action SelActionLook (class $03)
jr_006_50a5:
    db HIGH(LookC1Bullet2)
    dw BuyC1Bullet2 ; Selected action SelActionTake (class $03)
    ; Pointer to $57f8; split bytes retain the interior label.
    db LOW(PlaceC1Bullet2) ; Selected action SelActionPut (class $03)
jr_006_50a9:
    db HIGH(PlaceC1Bullet2)
    ; Pointer to $5aa1; split bytes retain the interior label.
    db LOW(C1UseNeedsTaken) ; Selected action SelActionUse (class $03)
jr_006_50ab:
    db HIGH(C1UseNeedsTaken)

C1Act3_52:
    ; Pointer to $6413; split bytes retain the interior label.
    db LOW(LookC1Bullet2) ; Selected action SelActionLook (class $03)
jr_006_50ad:
    db HIGH(LookC1Bullet2)
    dw BuyC1Bullet2 ; Selected action SelActionTake (class $03)
    ; Pointer to $57f8; split bytes retain the interior label.
    db LOW(PlaceC1Bullet2) ; Selected action SelActionPut (class $03)
jr_006_50b1:
    db HIGH(PlaceC1Bullet2)
    ; Pointer to $5aa1; split bytes retain the interior label.
    db LOW(C1UseNeedsTaken) ; Selected action SelActionUse (class $03)
jr_006_50b3:
    db HIGH(C1UseNeedsTaken)

C1Act3_53:
    ; Pointer to $6413; split bytes retain the interior label.
    db LOW(LookC1Bullet2) ; Selected action SelActionLook (class $03)
jr_006_50b5:
    db HIGH(LookC1Bullet2)
    dw BuyC1Bullet2 ; Selected action SelActionTake (class $03)
    ; Pointer to $57f8; split bytes retain the interior label.
    db LOW(PlaceC1Bullet2) ; Selected action SelActionPut (class $03)
jr_006_50b9:
    db HIGH(PlaceC1Bullet2)
    ; Pointer to $5aa1; split bytes retain the interior label.
    db LOW(C1UseNeedsTaken) ; Selected action SelActionUse (class $03)
jr_006_50bb:
    db HIGH(C1UseNeedsTaken)

C1Act3_54:
    ; Pointer to $5d84; split bytes retain the interior label.
    db LOW(LookC1Bill20) ; Selected action SelActionLook (class $03)
jr_006_50bd:
    db HIGH(LookC1Bill20)
    ; Pointer to $54db; split bytes retain the interior label.
    db LOW(TakeC1Bill20Alt) ; Selected action SelActionTake (class $03)
jr_006_50bf:
    db HIGH(TakeC1Bill20Alt)
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item) ; Selected action SelActionPut (class $03)
jr_006_50c1:
    db HIGH(PlaceC1Item)
    ; Pointer to $5d87; split bytes retain the interior label.
    db LOW(UseC1Bill20Alt) ; Selected action SelActionUse (class $03)
jr_006_50c3:
    db HIGH(UseC1Bill20Alt)

C1Act3_55:
    dw LookC1Pentothal ; Selected action SelActionLook (class $03)
    dw TakeC1Pentothal ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Pentothal55 ; Selected action SelActionUse (class $03)

C1Act3_56:
    dw LookC1Pentothal ; Selected action SelActionLook (class $03)
    dw TakeC1Pentothal ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Pentothal56 ; Selected action SelActionUse (class $03)

C1Act3_57:
    ; Pointer to $648c; split bytes retain the interior label.
    db LOW(LookC1Pentothal) ; Selected action SelActionLook (class $03)
jr_006_50d5:
    db HIGH(LookC1Pentothal)
    ; Pointer to $6491; split bytes retain the interior label.
    db LOW(TakeC1Pentothal) ; Selected action SelActionTake (class $03)
jr_006_50d7:
    db HIGH(TakeC1Pentothal)
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item) ; Selected action SelActionPut (class $03)
jr_006_50d9:
    db HIGH(PlaceC1Item)
    dw UseC1Pentothal57 ; Selected action SelActionUse (class $03)

C1Act3_58:
    ; Pointer to $63c9; split bytes retain the interior label.
    db LOW(LookC1Meds2) ; Selected action SelActionLook (class $03)
jr_006_50dd:
    db HIGH(LookC1Meds2)
    dw TakeC1Meds2 ; Selected action SelActionTake (class $03)
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item) ; Selected action SelActionPut (class $03)
jr_006_50e1:
    db HIGH(PlaceC1Item)
    ; Pointer to $5ca7; split bytes retain the interior label.
    db LOW(UseC1Medrezine58) ; Selected action SelActionUse (class $03)
jr_006_50e3:
    db HIGH(UseC1Medrezine58)

C1Act3_59:
    ; Pointer to $63c9; split bytes retain the interior label.
    db LOW(LookC1Meds2) ; Selected action SelActionLook (class $03)
jr_006_50e5:
    db HIGH(LookC1Meds2)
    dw TakeC1Meds2 ; Selected action SelActionTake (class $03)
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item) ; Selected action SelActionPut (class $03)
jr_006_50e9:
    db HIGH(PlaceC1Item)
    dw UseC1Medrezine59 ; Selected action SelActionUse (class $03)

C1Act3_5A:
    ; Pointer to $6506; split bytes retain the interior label.
    db LOW(LookC1Ofreeall) ; Selected action SelActionLook (class $03)
jr_006_50ed:
    db HIGH(LookC1Ofreeall)
    ; Pointer to $64f7; split bytes retain the interior label.
    db LOW(TakeC1Meds4) ; Selected action SelActionTake (class $03)
jr_006_50ef:
    db HIGH(TakeC1Meds4)
    ; Pointer to $57d3; split bytes retain the interior label.
    db LOW(PlaceC1Item) ; Selected action SelActionPut (class $03)
jr_006_50f1:
    db HIGH(PlaceC1Item)
    dw UseC1Ofreeall5A ; Selected action SelActionUse (class $03)

C1Act3_5B:
    dw LookC1Bisodiumitis ; Selected action SelActionLook (class $03)
    dw TakeC1Meds6 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Bisodiumitis5B ; Selected action SelActionUse (class $03)

C1Act3_5C:
    dw LookC1Bisodiumitis ; Selected action SelActionLook (class $03)
    dw TakeC1Meds6 ; Selected action SelActionTake (class $03)
    dw PlaceC1Item ; Selected action SelActionPut (class $03)
    dw UseC1Bisodiumitis5C ; Selected action SelActionUse (class $03)
