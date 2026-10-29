; Change type/value selects a group and a terminated list.
; CASE2 group 2 points to the original writable lists in WRAM.

; Case I list-kind index to value-indexed pointer table.
C1ChangeListsByKind:
C1ChangeRefs:
    db LOW(C1Prop1ChangeLists)
jr_005_5853:
    db HIGH(C1Prop1ChangeLists)
    dw C1Prop4ChangeLists

; Case I property-four value to terminated item-list pointer.
C1Prop4ChangeLists:
C1Changes1:
    dw C1Ch1_00
    dw C1Ch1_01
    dw C1Ch1_02
    dw C1Ch1_03
    dw C1Ch1_04
    dw C1Ch1_05
    dw C1Ch1_06
    dw C1Ch1_07
    dw C1Ch1_08
    dw C1Ch1_09
    dw C1Ch1_0A
    dw C1Ch1_0B
    dw C1Ch1_0C
    dw C1Ch1_0D
    dw C1Ch1_0E
    db LOW(C1Ch1_0F)
jr_005_5875:
    db HIGH(C1Ch1_0F)
    dw C1Ch1_10
    dw C1Ch1_11

C1Ch1_00:
    db C1ItemCoins, C1ItemLighter, C1ItemGumCigs, C1ItemHandkerchief, C1ItemSunglasses
    db C1ListItemWallet, $ff

C1Ch1_01:
    db C1ItemKey1, C1ItemAccessCard, C1ItemTwentyDollarBill, $ff

C1Ch1_02:
    db C1ItemBullet1, $ff

C1Ch1_03:
    db C1ItemNote1, $ff

C1Ch1_04:
    db C1ItemKey4, $ff

C1Ch1_05:
    db C1ItemPharmacyBill, $ff

C1Ch1_06:
    db C1ItemCosmetic, C1ItemTwentyDollarBillAlt, C1ListItemGun2, $ff

C1Ch1_07:
    db C1ItemGun2Bullet, $ff

C1Ch1_08:
    db C1ItemBookmark, $ff

C1Ch1_09:
    db C1ItemAmmoCaseBullets, $ff

C1Ch1_0A:
    db C1ItemLetter1, $ff

C1Ch1_0B:
    db C1ItemSugar, $ff

C1Ch1_0C:
    db C1ItemFlour, $ff

C1Ch1_0D:
    db C1ItemLetter2, $ff

C1Ch1_0E:
    db C1ItemCandy, $ff

C1Ch1_0F:
    db $ff

C1Ch1_10:
    db $ff

C1Ch1_11:
    db C1ItemBullet2, $ff

; Case I property-one value to terminated item-list pointer.
C1Prop1ChangeLists:
C1Changes0:
    dw C1Ch0_00
    dw C1Ch0_01
    dw C1Ch0_02
    dw C1Ch0_03
    dw C1Ch0_04
    dw C1Ch0_05
    dw C1Ch0_06
    dw C1Ch0_07
    dw C1Ch0_08
    dw C1Ch0_09
    dw C1Ch0_0A
    dw C1Ch0_0B
    dw C1Ch0_0C

C1Ch0_00:
    db C1ItemKey2, $ff

C1Ch0_01:
    db C1ItemPencil, C1ItemKey3, $ff

C1Ch0_02:
    db C1ListItemFolder, C1ListItemBox, $ff

C1Ch0_03:
    db C1ListItemEnvelope1, $ff

C1Ch0_04:
    db C1ItemNote2, C1ItemMap, C1ItemSnapshot, $ff

C1Ch0_05:
    db C1ItemKey5, C1ListItemDiary, $ff

C1Ch0_06:
    db C1ItemFile1, C1ItemFile2, C1ItemFile3, C1ItemFile4, $ff

C1Ch0_07:
    db C1ListItemAmmoCase, $ff

C1Ch0_08:
    db C1ItemFile5, C1ItemFile6, C1ItemFile7, $ff

C1Ch0_09:
    db C1ListItemEnvelope2, $ff

C1Ch0_0A:
    db C1ItemTissue, C1ListItemCandyBox, C1ListItemEnvelope3, $ff

C1Ch0_0B:
    db C1ItemMemo, C1ItemBallPen, C1ItemGlasses, $ff

C1Ch0_0C:
    db $ff

; Case II list-kind index to value-indexed pointer table.
C2ChangeListsByKind:
C2ChangeRefs:
    dw C2Prop1ChangeLists
    dw C2Prop4ChangeLists
    dw C2GroupContentChangeLists

; Four Case II pointers to writable group contents after their headers.
C2GroupContentChangeLists:
C2Changes2:
jr_005_58ec:
    dw wGroupData+1
    dw wGroupData+9
    dw wGroupData+17
    dw wGroupData+25

; Case II property-one value to terminated item-list pointer.
C2Prop1ChangeLists:
C2Changes0:
    dw C2Ch0_00
    db LOW(C2Ch0_01)
jr_005_58f7:
    db HIGH(C2Ch0_01)
    dw C2Ch0_02
    dw C2Ch0_03
    dw C2Ch0_00
    dw C2Ch0_05
    dw C2Ch0_00
    dw C2Ch0_07
    dw C2Ch0_08
    dw C2Ch0_09
    dw C2Ch0_0A
    dw C2Ch0_0B
    dw C2Ch0_0C

C2Ch0_00:
    db $ff

C2Ch0_01:
    db C2Paper1, $ff

C2Ch0_02:
    db C2ListItemEnvelope2, $ff

C2Ch0_03:
    db C2ItemSugarCard, C2SiegelDiary, $ff

C2Ch0_05:
    db C2ItemPencil, $ff

C2Ch0_07:
    db C2Key4, $ff

C2Ch0_08:
    db C2ItemBankSlips, $ff

C2Ch0_09:
    db C2ItemPoliceUniform, C2ItemDress, C2ItemSugarLaundry, C2Vacuum, $ff

C2Ch0_0A:
    db C2ListItemBox3, $ff

C2Ch0_0B:
    db C2Key6, C2Ledger, C2Opener, C2ListItemPaperBag, $ff

C2Ch0_0C:
    db C2ItemPhoto4C, C2BondLetter, C2ItemCompanyList, C2ItemRecord2, C2Banana, C2Peel, $ff

; Case II property-four value to terminated item-list pointer.
C2Prop4ChangeLists:
C2Changes1:
    dw C2Ch1_00
    dw C2Ch1_01
    dw C2Ch1_02
    dw C2Ch1_03
    dw C2Ch1_04
    dw C2Ch1_05
    dw C2Ch1_06
    dw C2Ch1_07
    dw C2Ch1_08
    dw C2Ch1_09
    db LOW(C2Ch1_0A)
jr_005_5944:
    db HIGH(C2Ch1_0A)
    dw C2Ch1_0B
    dw C2Ch1_0C
    dw C2Ch1_0D
    dw C2Ch1_0E
    dw C2Ch1_0F
    dw C2Ch1_10
    dw C2Ch1_11
    dw C2Ch1_12
    dw C2Ch1_13
    dw C2Ch1_14
    dw C2Ch1_15
    dw C2Ch1_16
jr_005_595d:
    dw C2Ch1_17

C2Ch1_00:
    db C2ItemEmptyPack, $ff

C2Ch1_01:
    db C2ListItemWallet1, C2Key1, $ff

C2Ch1_02:
    db C2ListItemNewspaper1, C2ItemQuarter1, C2ItemTenDollars1, C2ItemOneDollar1, C2ItemOneDollar2
    db C2ItemHardingLicense, $ff

C2Ch1_03:
    db C2ItemBoxingClipping, $ff

C2Ch1_04:
    db C2ListItemDirtyLinens, $ff

C2Ch1_05:
    db C2Photo, C2Envelope1, $ff

C2Ch1_06:
    db C2FriskLetter, $ff

C2Ch1_07:
    db C2ItemVinnyLetter, $ff

C2Ch1_08:
    db C2Gun, C2ItemTenDollars2, C2ItemQuarter2, C2ItemQuarter3, $ff

C2Ch1_09:
    db C2ChamberRound1, C2ChamberRound2, C2ChamberRound3, C2ChamberRound4, C2ChamberRound5
    db C2ChamberRound6, $ff

C2Ch1_0F:
    db $ff

C2Ch1_0A:
    db C2ItemBattery, $ff

C2Ch1_0B:
    db C2ListItemBulletBox, C2Knife, C2Key2, $ff

C2Ch1_0C:
    db C2ItemBullet1, C2ItemBullet2, C2ItemBullet3, C2ItemBullet4, C2ItemBullet5, C2ItemBullet6, $ff

C2Ch1_0D:
    db $ff

C2Ch1_0E:
    db C2ItemPekingDuck, C2Key3, $ff

C2Ch1_10:
    db C2ListItemVacuumBag, $ff

C2Ch1_11:
    db C2ListItemEnvelope3, $ff

C2Ch1_12:
    db C2McMNote, $ff

C2Ch1_13:
jr_005_599a:
    db C2ListItemWallet2, C2Key5, $ff

C2Ch1_14:
    db C2ItemTenDollars3, C2ItemBondwellLicense, C2ClaimTicket, $ff

C2Ch1_15:
    db C2ItemDetergent, $ff

C2Ch1_16:
    db C2ItemMagnet, $ff

C2Ch1_17:
    db C2ItemSandwich, $ff
