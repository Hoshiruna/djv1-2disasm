
; Describe a quarter.
LookC1Coin:
; Confirmed script commands; unrecognized command sequences remain raw bytes.

C1Sc3_00:
    ; Show message 0.
    db $00, $07
    ; End script.
    db $ff

; Take seven coins unless already taken, then set flag $8c.
TakeC1Coins:

C1Sc3_01:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Set text name 1.
    db $38, $07
    ; Show message 2.
    db $02, $15
    ; Add to Case I coins.
    db $39, $07
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17

jr_006_5114:
    db C1InitialCoinsTaken
    ; End script.
    db $ff

; Require the coins to be taken, then ask which target to use them on.
UseC1Coins:

C1Sc3_02:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Dispatch coins to slot machines, people, and cab fare slots.
MatchC1CoinTarget:

C1Loc3_1D:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $16
    dw C1CoinSlot1
    db $00, $17
    dw C1CoinSlot2
    db $00, $2b
    dw C1CoinNewsBoy
    db $00, $2e
    dw C1CoinMuggerDeath
    db $00, $75
    ; Target C1CoinMuggerDeath; retain the interior label.
    db $78

jr_006_5131:
    db $51
    db $00, $76
    dw C1CoinMuggerDeath
    db $00, $77
    dw C1CoinMuggerDeath
    db $00, $2f
    dw C1OfferMuggerKnockout
    db $00, $36
    dw C1CoinBumHint
    db $00, $40
    dw C1PayAfterTaking
    db $00, $42
    dw C1CabPaySlotHint
    db $00, $44
    dw C1CoinCab1
    db $00, $46
    dw C1CabPaySlotHint
    db $00, $48
    dw C1CoinCab2
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $fe, $fe
    dw C1ItemNoHere

; Spend one coin and run slot machine effect $00 on success.
C1CoinSlot1:

C1Loc3_1E:
    ; Use one Case I coin.
    db $40
    ; Branch if result bit 0 is set.
    db $04
    dw C1CoinSlotFx
    ; End script.
    db $ff

; Run the first slot machine effect.
C1CoinSlotFx:

C1Loc3_1F:
    ; Run scene effect.
    db $46, $00
    ; End script.
    db $ff

; Spend one coin and show the second slot machine reply on success.
C1CoinSlot2:

C1Loc3_20:
    ; Use one Case I coin.
    db $40
    ; Branch if result bit 0 is clear.
    db $05
    ; Target C1CoinSlotEnd; retain the interior label.
    db $6c

jr_006_5169:
    db $51
    ; Show message 0.
    db $00, $61

; End the second slot machine action.
C1CoinSlotEnd:

C1Loc3_21:
    ; End script.
    db $ff

; Show the seller's request to take an item before paying.
C1PayAfterTaking:

C1Loc3_22:
    ; Show message 1.
    db $01, $e6
    ; End script.
    db $ff

; Use flag $28 to choose the newsboy's warning or the shared payment reply.
C1CoinNewsBoy:

C1Loc3_23:
    ; Test object flag.
    db $16, C1NewspaperPaid
    ; Branch if result bit 0 is clear.
    db $05
    ; Target C1PayAfterTaking; retain the interior label.
    db $6d

jr_006_5174:
    db $51
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

; Show the mugger shooting Ace over the coin offer, then end the action.
C1CoinMuggerDeath:

C1Loc3_24:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $ed
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Test object flag.
    db $16, C1MuggerHit3
    ; Branch if result bit 0 is set.
    db $04
    dw C1MuggerExit95
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Set flag $95 before ending the mugger action.
C1MuggerExit95:

C1Loc3_25:
    ; Set object flag.
    db $17, C1MuggerFatalEncounter
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Spend two coins for the bum's warning and set flag $91 on success.
C1CoinBumHint:

C1Loc3_26:
    ; Spend two Case I coins.
    db $67
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BumNeedsTwoCoins
    ; Show message 2.
    db $02, $e3
    ; Set object flag.
    db $17, C1BumHintHeard
    ; End script.
    db $ff

; Show the bum's request for fifty cents.
C1BumNeedsTwoCoins:

C1Loc3_E8:
    ; Show message 1.
    db $01, $63
    ; End script.
    db $ff

; Explain that cab fares go through the slot in the bulletproof glass.
C1CabPaySlotHint:

C1Loc3_27:
    ; Show message 1.
    db $01, $03
    ; End script.
    db $ff

; Check flags $81/$a9 before accepting coins at the first cab's fare slot.
C1CoinCab1:

C1Loc3_28:
    ; Test object flag.
    db $16, C1BlueCabDebt
    ; Branch if result bit 0 is set.
    db $04
    dw PayC1Cab1Coins
    ; Test object flag.
    db $16, C1CabFarePending
    ; Branch if result bit 0 is set.
    db $04
    dw PayC1Cab1Coins
    ; Show message 2.
    db $02, $6b
    ; End script.
    db $ff

; Spend three coins for cab one and clear flags $81/$a9 after payment.
PayC1Cab1Coins:

C1Loc3_29:
    ; Spend Case I coins.
    db $3c, $03
    ; Branch if result bit 0 is clear.
    db $05
    dw C1NotEnoughCoins
    ; Show message 1.
    db $01, $3c
    ; Clear object flag.
    db $18, C1BlueCabDebt
    ; Clear object flag.
    db $18, C1CabFarePending
    ; End script.
    db $ff

; Check flags $a0/$a9 before accepting coins at the second cab's fare slot.
C1CoinCab2:

C1Loc3_2A:
    ; Test object flag.
    db $16, C1YellowCabDebt
    ; Branch if result bit 0 is set.
    db $04
    dw PayC1Cab2Coins
    ; Test object flag.
    db $16, C1CabFarePending
    ; Branch if result bit 0 is set.
    db $04
    dw PayC1Cab2Coins
    ; Show message 2.
    db $02, $6b
    ; End script.
    db $ff

; Spend three coins for cab two and clear flags $a0/$a9 after payment.
PayC1Cab2Coins:

C1Loc3_2B:
    ; Spend Case I coins.
    db $3c, $03
    ; Branch if result bit 0 is clear.
    db $05
    dw C1NotEnoughCoins
    ; Show message 1.
    db $01, $44
    ; Clear object flag.
    db $18, C1YellowCabDebt
    ; Clear object flag.
    db $18, C1CabFarePending
    ; End script.
    db $ff

; Show the insufficient-coins reply.
C1NotEnoughCoins:

C1Loc3_2C:
    ; Show message 2.
    db $02, $20
    ; End script.
    db $ff

; Require the sunglasses to be taken, then choose their target.
UseC1Sunglasses:

C1Sc3_03:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Dispatch the sunglasses to people or Ace himself.
MatchC1Sunglasses:

C1Loc3_2D:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1ItemMuggerDeath
    db $00, $75
    dw C1ItemMuggerDeath
    db $00, $76
    dw C1ItemMuggerDeath
    db $00, $77
    dw C1ItemMuggerDeath
    db $00, $2f
    dw C1OfferMuggerRobbed
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $00, $73
    dw C1SunglassesTooBig
    db $fe, $fe
    dw C1ItemNoHere

; Choose a target for key one after checking that it has been taken.
UseC1Key1:

C1Sc3_04:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match key one against the office door and other possible locks.
MatchC1Key1:

C1Loc3_2E:
    ; Match alternate item against type, ID and script target rows.
    db $29, $05, $47
    dw C1KeyNoFit
    db $01, $02
    dw C1KeySafeReply
    db $01, $06
    dw C1KeyNoFit
    db $01, $08
    dw C1KeyNoFit
    db $05, $06
    dw C1KeyNoFit
    db $05, $14
    dw C1KeyOfficeDoor
    db $05, $1b
    dw C1KeyNoFit
    db $05, $31
    dw C1KeyNoFit
    db $05, $36
    dw C1KeyNoFit
    db $05, $38
    dw C1KeyNoFit
    db $fe, $fe
    dw C1ItemNoHere

; Show the shared reply for a key that does not fit.
C1KeyNoFit:

C1Loc3_2F:
    ; Show message 1.
    db $01, $a7
    ; End script.
    db $ff

; Explain that the wall safe needs its combination.
C1KeySafeReply:

C1Loc3_30:
    ; Show message 2.
    db $02, $8e
    ; End script.
    db $ff

; Toggle the office door through flag $5b and state $14.
C1KeyOfficeDoor:

C1Loc3_31:
    ; Test object flag.
    db $16, C1OfficeDoorUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw CloseC1OfficeByKey
    ; Show message 2.
    db $02, $91
    ; Set state and refresh.
    db $33, $14
    ; Set object flag.
    db $17, C1OfficeDoorUnlocked
    ; End script.
    db $ff

; Show the closing reply and clear office door state $14 and flag $5b.
CloseC1OfficeByKey:

C1Loc3_32:
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $14
    ; Clear object flag.
    db $18, C1OfficeDoorUnlocked
    ; End script.
    db $ff

; Check flag $aa before choosing a gun for BULLET1.
UseC1Bullet1:

C1Sc3_05:
    ; Test object flag.
    db $16, C1Bullet1UseAllowed
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Reload gun one or two with BULLET1; gun three uses the wrong-caliber reply.
MatchC1Bullet1:

C1Loc3_33:
    ; Match alternate item against type, ID and script target rows.
    db $29, $04, $02
    dw C1ReloadGun1

jr_006_5259:
    db $04, $07
    dw C1ReloadGun2
    db $04, $11
    dw C1BulletNoFit
    db $fe, $fe
    dw C1ItemNoHere

; Try to add a loaded round, consume BULLET1, and report success.
C1ReloadGun1:

C1Loc3_34:
    ; Increment gun 1 ammunition.
    db $4e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunFullReply
    ; Use one BULLET1.
    db $3d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ReloadEnd
    ; Show message 1.
    db $01, $17

; End the reload script after the ammunition-consumption check.
C1ReloadEnd:

C1Loc3_E9:
    ; End script.
    db $ff

; Try to add a loaded round, consume BULLET1, and report success for gun two.
C1ReloadGun2:

C1Loc3_35:
    ; Increment gun 2 ammunition.
    db $58
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunFullReply
    ; Use one BULLET1.
    db $3d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ReloadEnd
    ; Show message 1.
    db $01, $17
    ; End script.
    db $ff

; Explain that the gun's chamber is full.
C1GunFullReply:

C1Loc3_EA:
    ; Show message 1.
    db $01, $18
    ; End script.
    db $ff

; Try to add a loaded round, consume BULLET2, and report success for gun three.
C1ReloadGun3:

C1Loc3_36:
    ; Increment gun 3 ammunition.
    db $50
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunFullReply
    ; Use one BULLET2.
    db $3e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ReloadEnd
    ; Show message 1.
    db $01, $17
    ; End script.
    db $ff

; Explain that the bullet does not fit this gun.
C1BulletNoFit:

C1Loc3_37:
    ; Show message 1.
    db $01, $19
    ; End script.
    db $ff

; Choose a target for key two after checking that it has been taken.
UseC1Key2:

C1Sc3_06:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match key two against the car door, ignition, and other locks.
MatchC1Key2:

C1Loc3_38:
    ; Match alternate item against type, ID and script target rows.
    db $29, $05, $47
    dw C1KeyNoFit
    db $01, $02
    dw C1KeySafeReply
    db $01, $06
    dw C1KeyNoFit
    db $01, $08
    dw C1KeyNoFit
    db $05, $06
    dw C1KeyNoFit
    db $05, $14
    dw C1KeyNoFit
    db $05, $1b
    dw C1KeyCarDoor
    db $05, $31
    dw C1KeyNoFit
    db $05, $36
    dw C1KeyNoFit
    db $05, $38
    dw C1KeyNoFit
    db $00, $3b
    dw C1KeyCarExplosion
    db $fe, $fe
    dw C1ItemNoHere

; Run the car explosion sequence and end the action.
C1KeyCarExplosion:

C1Loc3_39:
    ; Finish Case I scene effect.
    db $5a, $08
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $0f
    ; Show message 1.
    db $01, $0e
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Check flag $79, then open or close the car door through flag $5c.
C1KeyCarDoor:

C1Loc3_3A:
    ; Test object flag.
    db $16, C1CarKeyUsedOnce
    ; Branch if result bit 0 is clear.
    db $05
    dw UnlockC1CarByKey
    ; Test object flag.
    db $16, C1CarDoorUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw CloseC1CarByKey
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bb
    ; Show message 2.
    db $02, $12
    ; Set state and refresh.
    db $33, $1b
    ; Set object flag.
    db $17, C1CarDoorUnlocked
    ; End script.
    db $ff

; Show the first unlock reply and set car door state $1b and flags $79/$5c.
UnlockC1CarByKey:

C1Loc3_3B:
    ; Show message 2.
    db $02, $ba
    ; Set state and refresh.
    db $33

jr_006_52ea:
    db $1b
    ; Set object flag.
    db $17, C1CarKeyUsedOnce
    ; Set object flag.
    db $17, C1CarDoorUnlocked
    ; End script.
    db $ff

; Show the closing reply and clear car door state $1b and flag $5c.
CloseC1CarByKey:

C1Loc3_3C:
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $1b
    ; Clear object flag.
    db $18, C1CarDoorUnlocked
    ; End script.
    db $ff

; Choose a target for key four after checking that it has been taken.
UseC1Key4:

C1Sc3_07:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match key four against the trunk and other possible locks.
MatchC1Key4:

C1Loc3_3D:
    ; Match alternate item against type, ID and script target rows.
    db $29, $05, $47
    dw C1KeyTrunk
    db $01, $02
    dw C1KeySafeReply
    db $01, $06
    dw C1KeyNoFit
    db $01, $08
    dw C1KeyNoFit
    db $05, $06
    dw C1KeyNoFit
    db $05, $14
    dw C1KeyNoFit
    db $05, $1b
    dw C1KeyNoFit
    db $05, $31
    dw C1KeyNoFit
    db $05, $36
    dw C1KeyNoFit
    db $05, $38
    dw C1KeyNoFit
    db $fe, $fe
    dw C1ItemNoHere

; Check flags $5d/$75 and choose the trunk opening or closing reply.
C1KeyTrunk:

C1Loc3_3E:
    ; Test object flag.
    db $16, C1TrunkUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw CloseC1TrunkByKey
    ; Test object flag.
    db $16, C1TrunkIntroSeen
    ; Branch if result bit 0 is set.
    db $04
    dw OpenC1TrunkByKey
    ; Show message 2.
    db $02, $f7
    ; Set state and refresh.
    db $33, $47
    ; Set object flag.
    db $17, C1TrunkUnlocked
    ; Set object flag.
    db $17, C1TrunkIntroSeen
    ; End script.
    db $ff

; Show the closing reply and clear trunk state $47 and flag $5d.
CloseC1TrunkByKey:

C1Loc3_3F:
    ; Set text name 0.
    db $1e, $7c
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $47
    ; Clear object flag.
    db $18, C1TrunkUnlocked
    ; End script.
    db $ff

; Show the repeat opening reply and set trunk state $47 and flag $5d.
OpenC1TrunkByKey:

C1Loc3_40:
    ; Set text name 0.
    db $1e, $7c
    ; Set text name 1.
    db $1f, $bb
    ; Show message 2.
    db $02, $12
    ; Set state and refresh.
    db $33, $47
    ; Set object flag.
    db $17

jr_006_5356:
    db C1TrunkUnlocked
    ; End script.
    db $ff

; Require the item to be taken, then choose a person to offer it to.
OfferC1Item:

C1Sc3_08:
    ; Test selected attribute bit 0.
    db $07

jr_006_5359:
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match the shared item offer against muggers, the woman, or the butler.
MatchC1ItemOffer:

C1Loc3_41:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1ItemMuggerDeath
    db $00, $75
    dw C1ItemMuggerDeath
    db $00, $76
    dw C1ItemMuggerDeath
    db $00, $77
    dw C1ItemMuggerDeath
    db $00, $2f
    dw C1OfferMuggerRobbed
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $fe, $fe
    dw C1ItemNoHere

; Choose a target for the flour after checking its taken attribute.
UseC1Flour:

C1Sc3_09:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match flour against people or Ace himself.
MatchC1Flour:

C1Loc3_42:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1ItemMuggerDeath
    db $00, $75
    dw C1ItemMuggerDeath
    db $00, $76
    dw C1ItemMuggerDeath
    db $00, $77
    dw C1ItemMuggerDeath
    db $00, $2f
    dw C1OfferMuggerRobbed
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $00, $73
    dw C1TasteFlour
    db $fe, $fe
    dw C1ItemNoHere

; Show the flour-tasting reply without removing the item.
C1TasteFlour:

C1Loc3_43:
    ; Show message 1.
    db $01, $b1
    ; End script.
    db $ff

; Choose a target for Ofreeall item $33 after checking its taken attribute.
UseC1Ofreeall33:

C1Sc3_0A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Ofreeall item $33 against the medicine tool.
MatchC1Ofreeall33:

C1Loc3_44:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadOfreeall33
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $33 into an empty medicine tool, set its item state, and remove it from the list.
C1LoadOfreeall33:

C1Loc3_45:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $33
    ; End script.
    db $ff

; Choose a target for Ofreeall item $5a after checking its taken attribute.
UseC1Ofreeall5A:

C1Sc3_0B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Ofreeall item $5a against the medicine tool.
MatchC1Ofreeall5A:

C1Loc3_46:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadOfreeall5A
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $5a into an empty medicine tool, set its item state, and remove it from the list.
C1LoadOfreeall5A:

C1Loc3_47:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $5a
    ; End script.
    db $ff

; Choose a target for Bisodiumitis item $35 after checking its taken attribute.
UseC1Bisodiumitis35:

C1Sc3_0C:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Bisodiumitis item $35 against the medicine tool.
MatchC1Bisodiumitis35:

C1Loc3_48:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadBisodiumitis35
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $35 into an empty medicine tool, set its item state, and remove it from the list.
C1LoadBisodiumitis35:

C1Loc3_49:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $35
    ; End script.
    db $ff

; Choose a target for Bisodiumitis item $5b after checking its taken attribute.
UseC1Bisodiumitis5B:

C1Sc3_0D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Bisodiumitis item $5b against the medicine tool.
MatchC1Bisodiumitis5B:

C1Loc3_4A:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadBisodiumitis5B
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $5b into an empty medicine tool, set its item state, and remove it from the list.
C1LoadBisodiumitis5B:

C1Loc3_4B:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $5b
    ; End script.
    db $ff

; Choose a target for Bisodiumitis item $5c after checking its taken attribute.
UseC1Bisodiumitis5C:

C1Sc3_0E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Bisodiumitis item $5c against the medicine tool.
MatchC1Bisodiumitis5C:

C1Loc3_4C:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadBisodiumitis5C
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $5c into an empty medicine tool, set its item state, and remove it from the list.
C1LoadBisodiumitis5C:

C1Loc3_4D:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $5c
    ; End script.
    db $ff

; Choose a target for the sausage after checking its taken attribute.
UseC1Sausage:

C1Sc3_0F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match the sausage against people or Ace himself.
MatchC1Sausage:

C1Loc3_4E:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1ItemMuggerDeath
    db $00, $75
    dw C1ItemMuggerDeath
    db $00, $76
    dw C1ItemMuggerDeath
    db $00, $77
    dw C1ItemMuggerDeath
    db $00, $2f
    dw C1OfferMuggerRobbed
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $00, $73
    dw C1TasteSausage
    db $fe, $fe
    dw C1ItemNoHere

; Show the reaction to eating leftovers without removing the sausage.
C1TasteSausage:

C1Loc3_4F:
    ; Show message 2.
    db $02, $d9
    ; End script.
    db $ff

; Describe the gold lighter marked J.S.
LookC1Lighter:

C1Sc3_10:
    ; Show message 0.
    db $00, $06
    ; End script.
    db $ff

; Take the lighter after checking its taken bit and inventory capacity.
TakeC1Lighter:

C1Sc3_11:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $01
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d

; End a pickup; inventory-full branches also return here.
C1TakeEnd:

C1Loc3_50:
    ; End script.
    db $ff

; Take the gum in US or cigarettes in JP after the inventory checks.
TakeC1GumCigs:

C1Sc3_12:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $02
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the handkerchief after the inventory checks.
TakeC1Hanky:

C1Sc3_13:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $03
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the sunglasses after the inventory checks.
TakeC1Sunglasses:

C1Sc3_14:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $04
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take key one after the inventory checks.
TakeC1Key1:

C1Sc3_15:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $05
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the access card after the inventory checks.
TakeC1Card:

C1Sc3_16:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $06
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the twenty-dollar bill after the inventory checks.
TakeC1Bill20:

C1Sc3_17:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $07
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take bill $54 using the shared twenty-dollar name and set flag $99.
TakeC1Bill20Alt:

C1Sc3_18:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $07
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1AltBillTaken
    ; End script.
    db $ff

; Spend one coin for BULLET1, then check flag $8d to initialize or extend its count.
BuyC1Bullet1:

C1Sc3_19:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Use one Case I coin.
    db $40
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BuyBullet1End
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 1.
    db $38, $01
    ; Show message 2.
    db $02, $16
    ; Set text name 0.
    db $1e, $c6
    ; Show message 2.
    db $02, $1a
    ; Clear scene object for current item.
    db $6c
    ; Test object flag.
    db $16, C1Bullet1Listed
    ; Branch if result bit 0 is set.
    db $04
    dw C1BuyBullet1Add
    ; Add BULLET1 amount.
    db $56, $01
    ; Set object flag.
    db $17, C1Bullet1UseAllowed
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1Bullet1Listed
    ; End script.
    db $ff

; Add one round through the BULLET1 pickup routine and set the taken attribute.
C1BuyBullet1Add:

C1Loc3_51:
    ; Pick BULLET1 amount.
    db $3a, $01
    ; Set selected attribute bit 0.
    db $08

; End the BULLET1 purchase, including the failed coin-spend path.
C1BuyBullet1End:

C1Loc3_52:
    ; End script.
    db $ff

; Spend one coin for BULLET2, then check flag $8e to initialize or extend its count.
BuyC1Bullet2:

C1Sc3_1A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Use one Case I coin.
    db $40
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BuyBullet2End
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 1.
    db $38, $01
    ; Show message 2.
    db $02, $16
    ; Set text name 0.
    db $1e, $c6
    ; Show message 2.
    db $02, $1a
    ; Clear scene object for current item.
    db $6c
    ; Test object flag.
    db $16, C1Bullet2Listed
    ; Branch if result bit 0 is set.
    db $04
    dw C1BuyBullet2Add
    ; Add one BULLET2.
    db $57
    ; Set object flag.
    db $17, C1Bullet2UseAllowed
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1Bullet2Listed
    ; End script.
    db $ff

; Add one round through the BULLET2 pickup routine and set the taken attribute.
C1BuyBullet2Add:

C1Loc3_53:
    ; Pick BULLET2.
    db $3b
    ; Set selected attribute bit 0.
    db $08

; End the BULLET2 purchase, including the failed coin-spend path.
C1BuyBullet2End:

C1Loc3_54:
    ; End script.
    db $ff

; Take six BULLET1 rounds; flag $8d selects the existing-count path.
TakeC1SixBullets:

C1Sc3_1B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Show message 2.
    db $02, $1e
    ; Test object flag.
    db $16, C1Bullet1Listed
    ; Branch if result bit 0 is set.
    db $04
    dw C1AddSixBullets
    ; Add BULLET1 amount.
    db $56, $06
    ; Set object flag.
    db $17, C1Bullet1UseAllowed
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1Bullet1Listed
    ; Set object flag.
    db $17, C1SixBulletsTaken
    ; End script.
    db $ff

; Add six rounds through the BULLET1 pickup routine and set flag $96.
C1AddSixBullets:

C1Loc3_00:
    ; Pick BULLET1 amount.
    db $3a, $06
    ; Set selected attribute bit 0.
    db $08
    ; Set object flag.
    db $17, C1SixBulletsTaken
    ; End script.
    db $ff

; End this pickup action without changing an item or showing text.
C1NoPickupAction:

C1Sc3_1C:
    ; End script.
    db $ff

; Take key two after the inventory checks.
TakeC1Key2:

C1Sc3_1D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $0b
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the pencil after the inventory checks.
TakeC1Pencil:

C1Sc3_1E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $0c
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take key three after the inventory checks.
TakeC1Key3:

C1Sc3_1F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $0d
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take NOTE1 after the inventory checks and set flag $90.
TakeC1Note1:

C1Sc3_20:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $0e
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1Note1Taken
    ; End script.
    db $ff

; Take key four after the inventory checks and set flag $9d.
TakeC1Key4:

C1Sc3_21:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $0f
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1Key4Taken
    ; End script.
    db $ff

; Take the bill after the inventory checks.
TakeC1Bill:

C1Sc3_22:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $10
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take NOTE2 after the inventory checks.
TakeC1Note2:

C1Sc3_23:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $11
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the map after the inventory checks.
TakeC1Map:

C1Sc3_24:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $12
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the snapshot after the inventory checks.
TakeC1Snapshot:

C1Sc3_25:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $13
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the makeup kit after the inventory checks.
TakeC1Cosmetic:

C1Sc3_26:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $14
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take key five after the inventory checks.
TakeC1Key5:

C1Sc3_27:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $15
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the bookmark after the inventory checks and set flag $8f.
TakeC1Bookmark:

C1Sc3_28:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $16
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1BookmarkTaken
    ; End script.
    db $ff

; Take FILE1 after the inventory checks.
TakeC1File1:

C1Sc3_29:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $17
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take FILE2 after the inventory checks.
TakeC1File2:

C1Sc3_2A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $18
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take FILE3 after the inventory checks.
TakeC1File3:

C1Sc3_2B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $19
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take FILE4 after the inventory checks.
TakeC1File4:

C1Sc3_2C:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $1a
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take FILE5 after the inventory checks.
TakeC1File5:

C1Sc3_2D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $1b
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take FILE6 after the inventory checks.
TakeC1File6:

C1Sc3_2E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $1c
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take FILE7 after the inventory checks.
TakeC1File7:

C1Sc3_2F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $1d
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take LETTER1 after the inventory checks and set flag $97.
TakeC1Letter1:

C1Sc3_30:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $1e
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1Letter1Taken
    ; End script.
    db $ff

; Take the first powder after the inventory checks.
TakeC1Sugar:

C1Sc3_31:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $1f
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the second powder after the inventory checks.
TakeC1Flour:

C1Sc3_32:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $20
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the tissue after the inventory checks.
TakeC1Tissue:

C1Sc3_33:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $21
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take LETTER2 after the inventory checks and set flag $98.
TakeC1Letter2:

C1Sc3_34:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $22
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1Letter2Taken
    ; End script.
    db $ff

; Take the candy after the inventory checks.
TakeC1Candy:

C1Sc3_35:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $23
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the memo pad after the inventory checks.
TakeC1Memo:

C1Sc3_36:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $24
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the ballpoint pen after the inventory checks.
TakeC1Pen:

C1Sc3_37:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $25
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the reading glasses after the inventory checks.
TakeC1Glasses:

C1Sc3_38:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $26
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the seltzer glass after the inventory checks.
TakeC1Seltzer:

C1Sc3_39:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $27
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take MEDS2 after the inventory checks.
TakeC1Meds2:

C1Sc3_3A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $29
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the gag after the inventory checks and set flag $87.
TakeC1Gag:

C1Sc3_3B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $2c
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1GagRemoved
    ; End script.
    db $ff

; Take the magazine after the inventory checks.
TakeC1Magazine:

C1Sc3_3C:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $2e
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the photo after the inventory checks.
TakeC1Photo:

C1Sc3_3D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $2f
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the earrings after the inventory checks.
TakeC1Earring:

C1Sc3_3E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $30
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take NOTE3 after the inventory checks.
TakeC1Note3:

C1Sc3_3F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $31
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take NOTE4 after the inventory checks.
TakeC1Note4:

C1Sc3_40:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $32
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take MEDS5 after the inventory checks.
TakeC1Meds5:

C1Sc3_41:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $34
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the Bicarbonate vial after the inventory checks; its item ID is $36.
TakeC1Bicarbonate:

C1Sc3_42:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $36
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the sausage after the inventory checks.
TakeC1Sausage:

C1Sc3_43:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $37
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the plate after the inventory checks.
TakeC1Plate:

C1Sc3_44:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $38
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the frying pan after the inventory checks.
TakeC1FryingPan:

C1Sc3_45:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $39
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the pitcher after the inventory checks.
TakeC1Pitcher:

C1Sc3_46:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $3a
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Require the item to be taken, then ask where to leave it.
PlaceC1Item:

C1Sc3_47:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNeedsTaken
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

; Check the chosen room object and dispatch item placement; warn if it remains unresolved.
C1ItemPlaceTarget:

C1Loc3_55:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceEnd

; Warn that leaving the item may cause trouble later.
C1PlaceCaution:

C1Loc3_EE:
    ; Show message 2.
    db $02, $7d

; End the general item placement script.
C1PlaceEnd:

C1Loc3_EF:
    ; End script.
    db $ff

; Check flag $aa before choosing where to leave BULLET1.
PlaceC1Bullet1:

C1Sc3_48:
    ; Test object flag.
    db $16, C1Bullet1UseAllowed
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNeedsTaken
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

; Check the BULLET1 placement target and show the caution on the remaining path.
C1Bullet1PlaceTarget:

C1Loc3_56:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceEnd
    ; Show message 2.
    db $02, $7d
    ; End script.
    db $ff

; Check flag $ab before choosing where to leave BULLET2.
PlaceC1Bullet2:

C1Sc3_49:
    ; Test object flag.
    db $16, C1Bullet2UseAllowed
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNeedsTaken
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

; Check the BULLET2 placement target and show the caution on the remaining path.
C1Bullet2PlaceTarget:

C1Loc3_57:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceEnd
    ; Show message 2.
    db $02, $7d
    ; End script.
    db $ff

; Require FILE5 to be taken before choosing where to leave it.
PlaceC1File5:

C1Sc3_4A:
    ; Test selected attribute bit 0.
    db $07

jr_006_580c:
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNeedsTaken
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

; After the placement checks, require flag $a5 to finish and set flag $a3.
C1File5PlaceTarget:

C1Loc3_58:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceEnd
    ; Test object flag.
    db $16, C1File5Examined
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution

jr_006_581f:
    ; Finish Case I item placement.
    db $5b
    ; Set object flag.
    db $17, C1File5Disposed
    ; End script.
    db $ff

; Explain that an item must be taken before it can be left elsewhere.
C1PlaceNeedsTaken:

C1Sc3_4B:
    ; Show message 2.
    db $02, $56
    ; End script.
    db $ff

; Show the reply for an unsuitable placement target.
C1PlaceNoHere:

C1Loc3_EB:
    ; Show message 2.
    db $02, $57
    ; End script.
    db $ff

; Choose a placement target for an item whose placement calls the finish routine.
PlaceC1CheckedItem:

C1Sc3_4C:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNeedsTaken
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

; Check the room object and placement dispatch before finishing the item placement.
C1CheckedPlaceTarget:

C1Loc3_59:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05

jr_006_5832:
    dw C1PlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CheckedPlaceEnd
    ; Finish Case I item placement.
    db $5b

; End the placement script used by items with finish checks.
C1CheckedPlaceEnd:

C1Loc3_F0:
    ; End script.
    db $ff

; Require NOTE1 to be taken before choosing where to leave it.
PlaceC1Note1:

C1Sc3_4D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNeedsTaken
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

; After the placement checks, require flag $a7 to finish and set flag $a4.
C1Note1PlaceTarget:

C1Loc3_5A:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CheckedPlaceEnd
    ; Test object flag.
    db $16, C1Note1Examined
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Finish Case I item placement.
    db $5b
    ; Set object flag.
    db $17, C1Note1Disposed
    ; End script.
    db $ff

; Require the bill to be taken before choosing where to leave it.
PlaceC1Bill:

C1Sc3_4E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNeedsTaken
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

; After the placement checks, require flag $7d to finish; otherwise show the caution.
C1BillPlaceTarget:

C1Loc3_5B:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CheckedPlaceEnd
    ; Test object flag.
    db $16, C1BillRouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Require NOTE2 to be taken before choosing where to leave it.
PlaceC1Note2:

C1Sc3_4F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNeedsTaken
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

; After the placement checks, require flag $7b to finish; otherwise show the caution.
C1Note2PlaceTarget:

C1Loc3_5C:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNoHere

jr_006_5873:
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CheckedPlaceEnd
    ; Test object flag.
    db $16, C1Note2RouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Require the map to be taken before choosing where to leave it.
PlaceC1Map:

C1Sc3_50:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNeedsTaken
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

; After the placement checks, require flag $a6 to finish and set flag $a2.
C1MapPlaceTarget:

C1Loc3_5D:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05

jr_006_588b:
    dw C1CheckedPlaceEnd

jr_006_588d:
    ; Test object flag.
    db $16, C1MapExamined
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Finish Case I item placement.
    db $5b
    ; Set object flag.
    db $17, C1MapDisposed
    ; End script.
    db $ff

; Require the photo to be taken before choosing where to leave it.
PlaceC1Photo:

C1Sc3_51:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNeedsTaken
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

; After the placement checks, require flag $7c to finish; otherwise show the caution.
C1PhotoPlaceTarget:

C1Loc3_5E:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceNoHere

jr_006_58a1:
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CheckedPlaceEnd
    ; Test object flag.
    db $16, C1PhotoRouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Require the lighter to be taken, then choose what to light.
UseC1Lighter:

C1Sc3_52:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match the lighter against burnable items; JP also has a cigarette target.
MatchC1Lighter:

C1Loc3_5F:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $03
    ; Target BurnC1Hanky; retain the interior label.
    db $2d

jr_006_58b7:
    db $59
    db $03, $0e
    dw BurnC1Note1
    db $03, $10
    dw BurnC1Bill
    db $03, $11
    dw BurnC1Note2
    db $03, $12
    dw BurnC1Map
    db $03, $13
    dw BurnC1Snapshot
    db $03, $16
    ; Target BurnC1Bookmark; retain the interior label.
    db $9c

jr_006_58cf:
    db $59
    db $03, $17
    dw BurnC1File1
    db $03, $18
    dw BurnC1File2
    db $03, $19
    dw BurnC1File3
    db $03, $1a
    dw BurnC1File4
    db $03, $1b
    dw BurnC1File5
    db $03, $1c
    dw BurnC1File6
    db $03, $1d
    dw BurnC1File7
    db $03, $1e
    dw C1BurnDecline
    db $03, $21
    dw BurnC1Tissue
    db $03, $22
    dw BurnC1Letter2
    db $03, $24
    dw C1BurnDecline
    db $03, $2b
    dw BurnC1Newspaper
    db $03, $2c
    dw BurnC1Gag
    db $03, $2e
    dw BurnC1Magazine
    db $03, $2f
    dw BurnC1Photo
    db $03, $31
    dw C1BurnDecline
    db $03, $32
    dw BurnC1Note4
    db $04, $05
    dw BurnC1Envelope1
    db $04, $08
    dw C1BurnDecline
    db $04, $0a
    dw BurnC1Envelope2
    db $04, $0d
    dw BurnC1Envelope3
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Resume text.
    db $45
    ; End script.
    db $ff

; Explain that an item must be taken before it can be burned.
C1BurnNeedsTaken:

C1Loc3_60:
    ; Show message 2.
    db $02, $2a
    ; End script.
    db $ff

; Burn the handkerchief and remove it from the carried list.
BurnC1Hanky:

C1Loc3_61:
    ; Test item flag.
    db $52, $03
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $03
    ; Set text name 0.
    db $1e, $03
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Show the shared item-action reply: cannot do that here in US.
C1ItemNoHere:

C1Sc3_53:
    ; Show message 2.
    db $02, $37
    ; End script.
    db $ff

; Explain that the empty vial is not worth keeping.
C1EmptyVialReply:

C1Sc3_54:
    ; Show message 1.
    db $01, $93
    ; End script.
    db $ff

; Show the decision to leave this item unburned for now.
C1BurnDecline:

C1Loc3_62:
    ; Show message 2.
    db $02, $50
    ; End script.
    db $ff

; Require flag $a7 before burning NOTE1, then set flag $a4.
BurnC1Note1:

C1Loc3_63:
    ; Test item flag.
    db $52, $0e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Test object flag.
    db $16, C1Note1Examined
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Set item state.
    db $53, $0e
    ; Set text name 0.
    db $1e, $0e
    ; Show message 2.
    db $02

jr_006_5952:
    db $10
    ; Drop selected list item.
    db $49
    ; Set object flag.
    db $17, C1Note1Disposed
    ; End script.
    db $ff

; Require flag $7d before burning the bill.
BurnC1Bill:

C1Loc3_64:
    ; Test item flag.
    db $52, $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Test object flag.
    db $16, C1BillRouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Set item state.
    db $53, $10
    ; Set text name 0.
    db $1e, $10
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Require flag $7b before burning NOTE2.
BurnC1Note2:

C1Loc3_65:
    ; Test item flag.
    db $52, $11
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Test object flag.
    db $16, C1Note2RouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Set item state.
    db $53, $11
    ; Set text name 0.
    db $1e, $11
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Require flag $a6 before burning the map, then set flag $a2.
BurnC1Map:

C1Loc3_66:
    ; Test item flag.
    db $52, $12
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Test object flag.
    db $16, C1MapExamined
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Set item state.
    db $53, $12
    ; Set text name 0.
    db $1e, $12
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; Set object flag.
    db $17, C1MapDisposed
    ; End script.
    db $ff

; Burn the snapshot and remove it from the carried list.
BurnC1Snapshot:

C1Loc3_67:
    ; Test item flag.
    db $52, $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $13
    ; Set text name 0.
    db $1e, $13
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn the bookmark and remove it from the carried list.
BurnC1Bookmark:

C1Loc3_68:
    ; Test item flag.
    db $52, $16
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $16
    ; Set text name 0.
    db $1e, $16
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn FILE1 and remove it from the carried list.
BurnC1File1:

C1Loc3_69:
    ; Test item flag.
    db $52, $17
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $17
    ; Set text name 0.
    db $1e, $17
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn FILE2 and remove it from the carried list.
BurnC1File2:

C1Loc3_6A:
    ; Test item flag.
    db $52, $18
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $18
    ; Set text name 0.
    db $1e

jr_006_59be:
    db $18
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49

jr_006_59c2:
    ; End script.
    db $ff

; Burn FILE3 and remove it from the carried list.
BurnC1File3:

C1Loc3_6B:
    ; Test item flag.
    db $52, $19
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $19
    ; Set text name 0.
    db $1e, $19
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn FILE4 and remove it from the carried list.
BurnC1File4:

C1Loc3_6C:
    ; Test item flag.
    db $52, $1a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $1a
    ; Set text name 0.
    db $1e, $1a
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49

jr_006_59dc:
    ; End script.
    db $ff

; Require flag $a5 before burning FILE5, then set flag $a3.
BurnC1File5:

C1Loc3_6D:
    ; Test item flag.
    db $52, $1b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Test object flag.
    db $16, C1File5Examined
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Set item state.
    db $53, $1b
    ; Set text name 0.
    db $1e, $1b
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; Set object flag.
    db $17, C1File5Disposed
    ; End script.
    db $ff

; Burn FILE6 and remove it from the carried list.
BurnC1File6:

C1Loc3_6E:
    ; Test item flag.
    db $52, $1c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $1c
    ; Set text name 0.
    db $1e, $1c
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn FILE7 and remove it from the carried list.
BurnC1File7:

C1Loc3_6F:
    ; Test item flag.
    db $52, $1d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $1d
    ; Set text name 0.
    db $1e, $1d
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn the tissue and remove it from the carried list.
BurnC1Tissue:

C1Loc3_70:
    ; Test item flag.
    db $52, $21
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $21
    ; Set text name 0.
    db $1e, $21
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn LETTER2 and remove it from the carried list.
BurnC1Letter2:

C1Loc3_71:
    ; Test item flag.
    db $52, $22
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $22
    ; Set text name 0.
    db $1e, $22
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn the newspaper and remove it from the carried list.
BurnC1Newspaper:

C1Loc3_72:
    ; Test item flag.
    db $52, $2b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $2b
    ; Set text name 0.
    db $1e, $2b
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn the gag and remove it from the carried list.
BurnC1Gag:

C1Loc3_73:
    ; Test item flag.
    db $52, $2c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $2c
    ; Set text name 0.
    db $1e, $2c
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn the magazine and remove it from the carried list.
BurnC1Magazine:

C1Loc3_74:
    ; Test item flag.
    db $52, $2e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $2e
    ; Set text name 0.
    db $1e, $2e
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Require flag $7c before burning the photo.
BurnC1Photo:

C1Loc3_75:
    ; Test item flag.
    db $52, $2f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Test object flag.
    db $16, C1PhotoRouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Set item state.
    db $53, $2f
    ; Set text name 0.
    db $1e, $2f
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Burn NOTE4 and remove it from the carried list.
BurnC1Note4:

C1Loc3_76:
    ; Test item flag.
    db $52, $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Set item state.
    db $53, $32
    ; Set text name 0.
    db $1e, $32
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Require property $05 and flag $7d before burning envelope one.
BurnC1Envelope1:

C1Loc3_77:
    ; Test property 4 bit 0.
    db $5d, $05
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Test object flag.
    db $16, C1BillRouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Set property 4 bit 1.
    db $54, $05
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Require property $0a and flag $97 before burning envelope two.
BurnC1Envelope2:

C1Loc3_78:
    ; Test property 4 bit 0.
    db $5d, $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Test object flag.
    db $16, C1Letter1Taken
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Set property 4 bit 1.
    db $54, $0a
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Require property $0d and flag $98 before burning envelope three.
BurnC1Envelope3:

C1Loc3_79:
    ; Test property 4 bit 0.
    db $5d, $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BurnNeedsTaken
    ; Test object flag.
    db $16, C1Letter2Taken
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EvidenceCaution
    ; Set property 4 bit 1.
    db $54, $0d
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

; Explain that an item must be taken before it can be used.
C1UseNeedsTaken:

C1Sc3_55:
    ; Show message 2.
    db $02, $52
    ; End script.
    db $ff

; Require the access card to be taken, then choose its target.
UseC1Card:

C1Sc3_56:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match the access card against the outer and inner lift slots.
MatchC1Card:

C1Loc3_7A:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $4b
    dw C1CardDoor
    db $00, $4c
    dw C1CardLift
    db $fe, $fe
    dw C1ItemNoHere

; Toggle state $2f; opening sets flags $59/$ac, closing clears $59.
C1CardDoor:

C1Loc3_7B:
    ; Test state bit.
    db $2e, $2f
    ; Branch if result bit 0 is set.
    db $04
    dw CloseC1CardDoor
    ; Show message 1.
    db $01, $4e
    ; Set state and refresh.
    db $33, $2f
    ; Set object flag.
    db $17, C1CardLiftDoorOpen
    ; Set object flag.
    db $17, C1AccessCardUsed
    ; End script.
    db $ff

; Show the closing reply and clear state $2f and flag $59.
CloseC1CardDoor:

C1Loc3_7C:
    ; Show message 1.
    db $01, $4f
    ; Clear state and refresh.
    db $34, $2f
    ; Clear object flag.
    db $18, C1CardLiftDoorOpen
    ; End script.
    db $ff

; Travel to room $29, or take the return path when already there.
C1CardLift:

C1Loc3_7D:
    ; Test current room.
    db $19, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1CardLiftReturn
    ; Clear state and refresh.
    db $34, $30
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $52
    ; Show message 2.
    db $02, $42
    ; Set current room.
    db $35, $29
    ; Set state and refresh.
    db $33, $2f
    ; End script.
    db $ff

; Run the return lift sequence, set room $41, and refresh state $30.
C1CardLiftReturn:

C1Loc3_7E:
    ; Clear state and refresh.
    db $34, $2f
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $52
    ; Show message 2.
    db $02, $41
    ; Show message 2.
    db $02, $42
    ; Set current room.
    db $35, $41
    ; Set state and refresh.
    db $33, $30
    ; End script.
    db $ff

; Require key three to be taken, then choose its target.
UseC1Key3:

C1Sc3_57:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match key three against door $06 and the other possible locks.
MatchC1Key3:

C1Loc3_7F:
    ; Match alternate item against type, ID and script target rows.
    db $29, $05

jr_006_5af7:
    db $47
    dw C1KeyNoFit
    db $01, $02
    dw C1KeySafeReply
    db $01, $06
    dw C1KeyNoFit
    db $01, $08
    dw C1KeyNoFit
    db $05, $06
    dw C1Key3Door
    db $05, $14
    dw C1KeyNoFit
    db $05, $1b
    dw C1KeyNoFit
    db $05, $31
    dw C1KeyNoFit
    db $05, $36
    dw C1KeyNoFit
    db $05, $38
    dw C1KeyNoFit
    db $fe, $fe
    dw C1ItemNoHere

; Toggle door state $06 and flag $5a.
C1Key3Door:

C1Loc3_80:
    ; Test object flag.
    db $16, C1Door06Unlocked
    ; Branch if result bit 0 is set.
    db $04

jr_006_5b25:
    dw CloseC1Key3Door
    ; Show message 0.
    db $00, $45
    ; Set state and refresh.
    db $33, $06
    ; Set object flag.
    db $17, C1Door06Unlocked
    ; End script.
    db $ff

; Show the closing reply and clear door state $06 and flag $5a.
CloseC1Key3Door:

C1Loc3_81:
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $06
    ; Clear object flag.
    db $18, C1Door06Unlocked
    ; End script.
    db $ff

; Require key five to be taken, then choose its target.
UseC1Key5:

C1Sc3_58:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match key five against doors $36/$38, the shadow, and other locks.
MatchC1Key5:

C1Loc3_82:
    ; Match alternate item against type, ID and script target rows.
    db $29, $05, $47
    dw C1KeyNoFit
    db $01, $02
    dw C1KeySafeReply
    db $01, $06
    ; Target C1KeyNoFit; retain the interior label.
    db $2f

jr_006_5b4c:
    db $52
    db $01, $08
    dw C1KeyNoFit
    db $05, $06
    dw C1KeyNoFit
    db $05, $14
    dw C1KeyNoFit
    db $05, $1b
    dw C1KeyNoFit
    db $05, $31
    dw C1KeyNoFit
    db $05, $36
    dw C1Key5Door1
    db $05, $38
    dw C1Key5Door2
    db $00, $6b
    dw C1Key5ShadowTarget
    db $fe, $fe
    dw C1ItemNoHere

; Toggle door state $36 and flag $5f.
C1Key5Door1:

C1Loc3_83:
    ; Test object flag.
    db $16, C1DoctorDoorUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw CloseC1Key5Door1
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bb
    ; Show message 2.
    db $02, $91
    ; Set state and refresh.
    db $33, $36
    ; Set object flag.
    db $17, C1DoctorDoorUnlocked
    ; End script.
    db $ff

; Show the closing reply and clear door state $36 and flag $5f.
CloseC1Key5Door1:

C1Loc3_84:
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $36
    ; Clear object flag.
    db $18, C1DoctorDoorUnlocked
    ; End script.
    db $ff

; Select door $38 in the alternate slot before entering its key action.
C1Key5ShadowTarget:

C1Loc3_85:
    ; Set alternate item type and ID.
    db $6b, $05, $38

; Toggle door $38; opening with flag $16 clear runs the fatal sequence.
C1Key5Door2:

C1Loc3_86:
    ; Test object flag.
    db $16, C1ShadowDoorUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw CloseC1Key5Door2
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bb
    ; Show message 2.
    db $02, $91
    ; Set state and refresh.
    db $33, $38
    ; Set object flag.
    db $17, C1ShadowDoorUnlocked
    ; Test object flag.
    db $16, C1ShadowShot
    ; Branch if result bit 0 is set.
    db $04
    dw C1Key5DoorEnd
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Set state bit.
    db $2f

jr_006_5ba6:
    db $3a
    ; Move to the room argument if the selected state permits.
    db $06, $30
    ; Wait sixty ticks.
    db $68
    ; Wait sixty ticks.
    db $68
    ; Show message 2.
    db $02, $25
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $88
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02

jr_006_5bb4:
    db $62
    ; Set exit flag and end this action.
    db $48

; End the door-opening action when flag $16 is set.
C1Key5DoorEnd:

C1Loc3_87:
    ; End script.
    db $ff

; Show the closing reply and clear door state $38 and flag $5e.
CloseC1Key5Door2:

C1Loc3_88:
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $38
    ; Clear object flag.
    db $18, C1ShadowDoorUnlocked
    ; End script.
    db $ff

; Choose a target for the sugar after checking its taken attribute.
UseC1Sugar:

C1Sc3_59:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match sugar against people or Ace himself.
MatchC1Sugar:

C1Loc3_89:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1ItemMuggerDeath
    db $00, $75
    dw C1ItemMuggerDeath
    db $00, $76
    dw C1ItemMuggerDeath
    db $00, $77

jr_006_5bd8:
    dw C1ItemMuggerDeath
    db $00, $2f
    dw C1OfferMuggerRobbed
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $00, $73
    dw C1TasteSugar
    db $fe, $fe
    dw C1ItemNoHere

; Show the sugar-tasting reply without removing the item.
C1TasteSugar:

C1Loc3_8A:
    ; Show message 1.
    db $01, $b0
    ; End script.
    db $ff

; Choose a target for the candy after checking its taken attribute.
UseC1Candy:

C1Sc3_5A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match candy against people or Ace himself.
MatchC1Candy:

C1Loc3_8B:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1ItemMuggerDeath
    db $00, $75
    dw C1ItemMuggerDeath
    db $00, $76
    dw C1ItemMuggerDeath
    db $00, $77
    dw C1ItemMuggerDeath
    db $00, $2f
    dw C1OfferMuggerRobbed
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $00, $73
    dw C1EatCandy
    db $fe, $fe
    dw C1ItemNoHere

; Show Ace eating the chocolate and remove item $23 from the list.
C1EatCandy:

C1Loc3_8C:
    ; Show message 2.
    db $02, $53
    ; Drop list value.
    db $55, $23
    ; End script.
    db $ff

; Choose a target for the reading glasses after checking their taken attribute.
UseC1Glasses:

C1Sc3_5B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match reading glasses against people or Ace, sharing the too-large reply with sunglasses.
MatchC1Glasses:

C1Loc3_8D:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1ItemMuggerDeath
    db $00, $75
    dw C1ItemMuggerDeath
    db $00, $76
    dw C1ItemMuggerDeath
    db $00, $77
    dw C1ItemMuggerDeath
    db $00, $2f
    dw C1OfferMuggerRobbed
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $00, $73
    dw C1SunglassesTooBig
    db $fe, $fe
    dw C1ItemNoHere

; Explain that the selected glasses are too large to wear.
C1SunglassesTooBig:

C1Loc3_8E:
    ; Show message 0.
    db $00, $0c
    ; End script.
    db $ff

; Choose a target for the seltzer glass after checking its taken attribute.
UseC1Seltzer:

C1Sc3_5C:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match seltzer against people or Ace himself.
MatchC1Seltzer:

C1Loc3_8F:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1ItemMuggerDeath
    db $00, $75
    dw C1ItemMuggerDeath
    db $00, $76
    dw C1ItemMuggerDeath
    db $00, $77
    dw C1ItemMuggerDeath
    db $00, $2f
    dw C1OfferMuggerRobbed
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $00, $73
    dw C1DrinkSeltzer
    db $fe, $fe
    dw C1ItemNoHere

; Drink the seltzer and set flag $b6; subsequent uses select the empty-glass reply.
C1DrinkSeltzer:

C1Loc3_90:
    ; Test object flag.
    db $16, C1SeltzerDrunk
    ; Branch if result bit 0 is set.
    db $04
    dw C1SeltzerEmptyReply
    ; Set object flag.
    db $17, C1SeltzerDrunk
    ; Show message 0.
    db $00, $44
    ; End script.
    db $ff

; Show the empty-glass reply when attempting to drink again.
C1SeltzerEmptyReply:

C1Loc3_91:
    ; Show message 0.
    db $00, $05
    ; End script.
    db $ff

; Choose a target for Medrezine item $29 after checking its taken attribute.
UseC1Medrezine29:

C1Sc3_5D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Medrezine item $29 against the medicine tool.
MatchC1Medrezine29:

C1Loc3_92:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadMedrezine29
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $29 into an empty medicine tool, set its item state, and remove it from the list.
C1LoadMedrezine29:

C1Loc3_93:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $29
    ; End script.
    db $ff

; Choose a target for Medrezine item $58 after checking its taken attribute.
UseC1Medrezine58:

C1Sc3_5E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Medrezine item $58 against the medicine tool.
MatchC1Medrezine58:

C1Loc3_94:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadMedrezine58
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $58 into an empty medicine tool, set its item state, and remove it from the list.
C1LoadMedrezine58:

C1Loc3_95:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $58
    ; End script.
    db $ff

; Choose a target for Medrezine item $59 after checking its taken attribute.
UseC1Medrezine59:

C1Sc3_5F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Medrezine item $59 against the medicine tool.
MatchC1Medrezine59:

C1Loc3_96:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadMedrezine59
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $59 into an empty medicine tool, set its item state, and remove it from the list.
C1LoadMedrezine59:

C1Loc3_97:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $59
    ; End script.
    db $ff

; Explain that the capsules or syringe already contain a dose of medicine.
C1MedToolFullReply:

C1Loc3_98:
    ; Show message 0.
    db $00, $7e
    ; End script.
    db $ff

; Check flag $ab before choosing a gun for BULLET2.
UseC1Bullet2:

C1Sc3_60:
    ; Test object flag.
    db $16, C1Bullet2UseAllowed
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Reload gun three with BULLET2; guns one and two use the wrong-caliber reply.
MatchC1Bullet2:

C1Loc3_99:
    ; Match alternate item against type, ID and script target rows.
    db $29, $04, $02
    dw C1BulletNoFit
    db $04, $07
    dw C1BulletNoFit
    db $04, $11
    dw C1ReloadGun3
    db $fe, $fe
    dw C1ItemNoHere

; Show the puzzled reply used when a pickup is refused.
C1TakeRefuse:

C1Loc3_01:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

; Choose a target for Bicarbonate item $36 after checking its taken attribute.
UseC1Bicarbonate36:

C1Sc3_61:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Bicarbonate item $36 against the medicine tool.
MatchC1Bicarbonate36:

C1Loc3_9A:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadBicarbonate36
    db $fe, $fe
    dw C1ItemNoHere

; Load item $36 into an empty medicine tool, set its item state, and remove it from the list.
C1LoadBicarbonate36:

C1Loc3_9B:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $36
    ; End script.
    db $ff

; Choose a target for Chemopapain item $34 after checking its taken attribute.
UseC1Chemopapain34:

C1Sc3_62:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Chemopapain item $34 against the medicine tool.
MatchC1Chemopapain34:

C1Loc3_9C:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadChemopapain34
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $34 into an empty medicine tool, set its item state, and remove it from the list.
C1LoadChemopapain34:

C1Loc3_9D:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $34
    ; End script.
    db $ff

; Describe gum in US or Lucky Strike cigarettes in JP, then resume text.
LookC1GumCigs:

C1Sc3_63:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 0.
    db $00, $0e
    ; Resume text.
    db $45
    ; End script.
    db $ff

; Require the gum or cigarettes to be taken, then choose their target.
UseC1GumCigs:

C1Sc3_64:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Dispatch the gum in US or cigarettes in JP to people or Ace himself.
MatchC1GumCigs:

C1Loc3_9E:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1ItemMuggerDeath
    db $00, $75
    dw C1ItemMuggerDeath
    db $00, $76
    dw C1ItemMuggerDeath
    db $00, $77
    dw C1ItemMuggerDeath
    db $00, $2f
    dw C1OfferMuggerRobbed
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $00, $73
    dw C1UseGumCigsSelf
    db $fe, $fe
    dw C1ItemNoHere

; Show Ace chewing gum or lighting a cigarette, then remove item $02 from the list.
C1UseGumCigsSelf:

C1Loc3_9F:
    ; Show message 0.
    db $00, $15
    ; Drop list value.
    db $55, $02
    ; End script.
    db $ff

; Describe the handkerchief marked J.S.
LookC1Hanky:

C1Sc3_65:
    ; Show message 0.
    db $00, $0f
    ; End script.
    db $ff

; Describe the dark sunglasses.
LookC1Sunglasses:

C1Sc3_66:
    ; Show message 0.
    db $00, $10
    ; End script.
    db $ff

; Describe the key marked OFFICE.
LookC1Key1:

C1Sc3_67:
    ; Show message 0.
    db $00, $11
    ; End script.
    db $ff

; Describe the access card; flag $ac selects the short apartment-card reply.
LookC1Card:

C1Sc3_68:
    ; Test object flag.
    db $16, C1AccessCardUsed
    ; Branch if result bit 0 is set.
    db $04
    dw C1CardShortView
    ; Show message 0.
    db $00, $0b
    ; End script.
    db $ff

; Identify the apartment access card.
C1CardShortView:

C1Loc3_02:
    ; Show message 2.
    db $02, $24
    ; End script.
    db $ff

; Describe the twenty-dollar bill.
LookC1Bill20:

C1Sc3_69:
    ; Show message 2.
    db $02, $ed
    ; End script.
    db $ff

; Choose a target for the alternate twenty-dollar bill, item $54.
UseC1Bill20Alt:

C1Sc3_6A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Dispatch the alternate twenty-dollar bill to people and cab fare slots.
MatchC1Bill20Alt:

C1Loc3_A0:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2b
    dw C1CoinNewsBoy
    db $00, $2e
    dw C1BillAltMugger
    db $00, $75
    dw C1BillAltMugger
    db $00, $76
    dw C1BillAltMugger
    db $00, $77
    dw C1BillAltMugger
    db $00, $2f
    dw C1BillAltMugger2
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $36
    dw C1BillBumReply
    db $00, $40
    dw C1PayAfterTaking
    db $00, $42
    dw C1CabPaySlotHint
    db $00, $44
    dw C1BillCab1
    db $00, $46
    dw C1CabPaySlotHint
    db $00, $48
    dw C1BillCab2
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $fe, $fe
    dw C1ItemNoHere

; Pay the mugger with item $54; flags $05/$06/$07 choose the return room.
C1BillAltMugger:

C1Loc3_A1:
    ; Test object flag.
    db $16, C1MuggerHit3
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillAltRoom13
    ; Test object flag.
    db $16, C1MuggerHit2
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillAltRoom12
    ; Test object flag.
    db $16, C1MuggerHit1
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillAltRoom14
    ; Show message 1.
    db $01, $ec
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, C1MuggerPaid
    ; Set first item type and ID.
    db $5c, $05, $19
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $11
    ; Show message 2.
    db $02, $b9
    ; End script.
    db $ff

; Remove bill $54, restore the door target, and return to room $14.
C1BillAltRoom14:

C1Loc3_A2:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, C1MuggerPaid
    ; Set first item type and ID.
    db $5c, $05, $1d
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $14
    ; Show message 2.
    db $02, $d0
    ; End script.
    db $ff

; Remove bill $54, restore the door target, and return to room $12.
C1BillAltRoom12:

C1Loc3_A3:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, C1MuggerPaid
    ; Set first item type and ID.
    db $5c, $05, $17
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $12
    ; Show message 2.
    db $02, $c2
    ; End script.
    db $ff

; Remove bill $54, restore the door target, and return to room $13.
C1BillAltRoom13:

C1Loc3_A4:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, C1MuggerPaid
    ; Set first item type and ID.
    db $5c, $05, $1c
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $13
    ; Show message 2.
    db $02, $cf
    ; End script.
    db $ff

; Remove bill $54 after the second mugger accepts it, then restore the alley.
C1BillAltMugger2:

C1Loc3_A5:
    ; Show message 1.
    db $01, $e1
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Clear attribute bit 0.
    db $09

; Set flag $2b, restore door $16, and return to the alley in room $16.
C1PaidMugger2Exit:

C1Loc3_EC:
    ; Set object flag.
    db $17, C1OtherMuggerPaid
    ; Set first item type and ID.
    db $5c, $05, $16
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $16
    ; Show message 2.
    db $02, $d1
    ; End script.
    db $ff

; Require the twenty-dollar bill to be taken, then choose its target.
UseC1Bill20:

C1Sc3_6B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Dispatch bill $07 to people and cab fare slots.
MatchC1Bill20:

C1Loc3_A6:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2b
    dw C1CoinNewsBoy
    db $00, $2e
    dw C1BillMugger
    db $00, $75
    dw C1BillMugger
    db $00, $76
    dw C1BillMugger
    db $00, $77
    dw C1BillMugger
    db $00, $2f
    dw C1BillMugger2
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $36
    dw C1BillBumReply
    db $00, $40
    dw C1PayAfterTaking
    db $00, $42
    dw C1CabPaySlotHint
    db $00, $44
    dw C1BillCab1
    db $00, $46
    dw C1CabPaySlotHint
    db $00, $48
    dw C1BillCab2
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $fe, $fe
    dw C1ItemNoHere

; Pay the mugger with item $07; flags $05/$06/$07 choose the return room.
C1BillMugger:

C1Loc3_A7:
    ; Test object flag.
    db $16, C1MuggerHit3
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillRoom13
    ; Test object flag.
    db $16, C1MuggerHit2
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillRoom12
    ; Test object flag.
    db $16, C1MuggerHit1
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillRoom14
    ; Show message 1.
    db $01, $ec
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, C1MuggerPaid
    ; Set first item type and ID.
    db $5c, $05, $19
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $11
    ; Show message 2.
    db $02

jr_006_5e9d:
    db $b9
    ; End script.
    db $ff

; Remove bill $07 and return to room $14; flag $7a selects its cab description.
C1BillRoom14:

C1Loc3_A8:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, C1MuggerPaid
    ; Set first item type and ID.
    db $5c, $05, $1d
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $14
    ; Test object flag.
    db $16, C1PeoriaStopKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BillBlueCabView
    ; Show message 2.
    db $02, $d0
    ; End script.
    db $ff

; Remove bill $07, restore the door target, and return to room $12.
C1BillRoom12:

C1Loc3_A9:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, C1MuggerPaid
    ; Set first item type and ID.
    db $5c, $05, $17
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $12

jr_006_5ec7:
    ; Show message 2.
    db $02, $c2
    ; End script.
    db $ff

; Remove bill $07, restore the door target, and return to room $13.
C1BillRoom13:

C1Loc3_AA:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, C1MuggerPaid
    ; Set first item type and ID.
    db $5c, $05, $1c
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $13
    ; Show message 2.
    db $02, $cf
    ; End script.
    db $ff

; Describe the blue cab on Peoria Street, add quick-list value $a3, and set flag $7a.
C1BillBlueCabView:

C1Loc3_ED:
    ; Set text name 0.
    db $1e, $b1
    ; Show message 2.
    db $02, $0b
    ; Add quick-list value.
    db $42, $a3
    ; Set object flag.
    db $17, C1PeoriaStopKnown
    ; End script.
    db $ff

; Remove bill $07 after the second mugger accepts it, then jump to the alley restoration.
C1BillMugger2:

C1Loc3_AB:
    ; Show message 1.
    db $01, $e1
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Clear attribute bit 0.
    db $09
    ; Jump to script.
    db $1c
    dw C1PaidMugger2Exit
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show the woman shooting Ace and end the action through the death sequence.
C1OfferWomanDeath:

C1Loc3_AC:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 2.
    db $02, $e6
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show the bum's reaction to the twenty-dollar bill.
C1BillBumReply:

C1Loc3_AD:
    ; Show message 2.
    db $02, $e1
    ; End script.
    db $ff

; Check flag $a9 before offering the bill at the first cab fare slot.
C1BillCab1:

C1Loc3_AE:
    ; Test object flag.
    db $16, C1CabFarePending
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillCabCheck
    ; Show message 2.
    db $02, $6b
    ; End script.
    db $ff

; With at most two coins choose the free-ride reply; otherwise report no change.
C1BillCabCheck:

C1Loc3_AF:
    ; Test Case I coins against limit.
    db $4a, $00
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillCabFreeRide
    ; Test Case I coins against limit.
    db $4a, $01
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillCabFreeRide
    ; Test Case I coins against limit.
    db $4a, $02
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillCabFreeRide
    ; Show message 0.
    db $00, $18
    ; End script.
    db $ff

; Show the free-ride reply, clear flags $81/$a9, and set $82.
C1BillCabFreeRide:

C1Loc3_B0:
    ; Show message 0.
    db $00, $0a
    ; Clear object flag.
    db $18, C1BlueCabDebt
    ; Clear object flag.
    db $18, C1CabFarePending
    ; Set object flag.
    db $17, C1CabFarePaid
    ; End script.
    db $ff

; Check flag $a9 before offering the bill at the second cab fare slot.
C1BillCab2:

C1Loc3_B1:
    ; Test object flag.
    db $16, C1CabFarePending
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillCabCheck
    ; Show message 2.
    db $02, $6b
    ; End script.
    db $ff

; Show the butler dismissing Ace, restore door $49, and return to room $31.
C1ButlerOfferRefuse:

C1Loc3_B2:
    ; Show message 2.
    db $02, $35
    ; Set first item type and ID.
    db $5c, $05, $49
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $31
    ; Show message 1.
    db $01, $aa
    ; End script.
    db $ff

; Describe the .38 bullet used by BULLET1 items.
LookC1Bullet1:

C1Sc3_6C:
    ; Show message 0.
    db $00, $09
    ; End script.
    db $ff

; End the shared item action without changing an item or showing text.
C1ItemNoAction:

C1Sc3_6D:
    ; End script.
    db $ff

; Describe US capsules or the JP syringe through its loaded medicine ID and flags $7e/$26.
LookC1MedTool:

C1Sc3_6E:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolMedrezineView
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolOfreeallView
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolChemopapainView
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolBisodiumitisView
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolBicarbonateView
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolPentothalView
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolPentothalView
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolPentothalView
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolMedrezineView
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    ; Target C1ToolMedrezineView; retain the interior label.
    db $87

jr_006_5f6a:
    db $5f
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolOfreeallView
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    ; Target C1ToolBisodiumitisView; retain the interior label.
    db $96

jr_006_5f74:
    db $5f
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1ToolBisodiumitisView
    ; Test object flag.
    db $16, $7e
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolEmptyView
    ; Test object flag.
    db $16, C1File4Read
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolEmptyView
    ; Show message 0.
    db $00, $78
    ; End script.
    db $ff

; Identify Medrezine in the medicine tool.
C1ToolMedrezineView:

C1Loc3_16:
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

; Identify Ofreeall in the medicine tool.
C1ToolOfreeallView:

C1Loc3_17:
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

; Identify Chemopapain in the medicine tool.
C1ToolChemopapainView:

C1Loc3_18:
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

; Identify Bisodiumitis in the medicine tool.
C1ToolBisodiumitisView:

C1Loc3_19:
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

; Identify Bicarbonate in the medicine tool.
C1ToolBicarbonateView:

C1Loc3_1A:
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

; Identify Pentothal in the medicine tool.
C1ToolPentothalView:

C1Loc3_1B:
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

; Describe the empty capsules in US or empty syringe in JP.
C1MedToolEmptyView:

C1Loc3_1C:
    ; Show message 2.
    db $02, $80
    ; End script.
    db $ff

; Take the medicine tool, or retrieve its contents when its taken attribute is already set.
TakeC1MedTool:

C1Sc3_6F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolReturnContents
    ; Test object flag.
    db $16, C1MedToolTakenOnce
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolTakeAgain
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Show message 0.
    db $00, $7b
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, C1MedToolTakenOnce
    ; End script.
    db $ff

; Take the medicine tool after flag $24 is already set, subject to inventory capacity.
C1MedToolTakeAgain:

C1Loc3_03:
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $0a
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Check inventory capacity, return the loaded medicine, and report whether any was present.
C1MedToolReturnContents:

C1Loc3_04:
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Return held item to list.
    db $61
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolNoContents
    ; Show message 2.
    db $02, $22
    ; End script.
    db $ff

; Explain that no medicine remains in the tool.
C1MedToolNoContents:

C1Loc3_B3:
    ; Show message 2.
    db $02, $23
    ; End script.
    db $ff

; Require the medicine tool to be taken, then choose its target.
UseC1MedTool:

C1Sc3_70:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Dispatch medicine-tool use to people or Ace; unsupported medicine-vial targets use the fallback.
MatchC1MedTool:

C1Loc3_B4:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2b
    dw C1MedToolManRefuse
    db $00, $2e
    dw C1ItemMuggerDeath
    db $00, $75
    dw C1ItemMuggerDeath
    db $00, $76
    dw C1ItemMuggerDeath
    db $00, $77
    dw C1ItemMuggerDeath
    db $00, $2f
    dw C1OfferMuggerRobbed
    db $00, $34
    dw C1OfferWomanDeath
    db $00, $35
    dw C1MedFallenLady
    db $00, $36
    dw C1MedBumRefuse
    db $00, $3f
    dw C1MedMrsSternwood
    db $00, $40
    dw C1MedToolManRefuse
    db $00, $42
    dw C1MedCabGlass
    db $00, $46
    dw C1MedCabGlass
    db $00, $5f
    dw C1ButlerOfferRefuse
    db $00, $64
    dw C1MedMrSternwood
    db $00, $68
    dw C1MedSleepWoman
    db $00, $73
    dw C1MedAce
    db $03, $28
    dw C1ItemNoHere
    db $03, $29
    dw C1ItemNoHere
    db $03, $2a
    dw C1ItemNoHere
    db $03, $33
    dw C1ItemNoHere
    db $03, $34
    dw C1ItemNoHere
    db $03, $35
    dw C1ItemNoHere
    db $03, $55
    dw C1ItemNoHere
    db $03, $56
    dw C1ItemNoHere
    db $03, $57
    dw C1ItemNoHere
    db $03, $58
    dw C1ItemNoHere
    db $03, $59
    dw C1ItemNoHere
    db $03, $5a
    dw C1ItemNoHere
    db $03, $5b
    dw C1ItemNoHere
    db $03, $5c
    dw C1ItemNoHere
    db $fe, $fe
    dw C1ItemNoHere

; Show the man's glare that makes Ace abandon medicine-tool use.
C1MedToolManRefuse:

C1Loc3_B5:
    ; Show message 2.
    db $02

jr_006_605e:
    db $ca
    ; End script.
    db $ff

; Run the mugger shooting sequence for an unsuccessful item offer.
C1ItemMuggerDeath:

C1Loc3_B6:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $f0
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Test object flag.
    db $16, C1MuggerHit3
    ; Branch if result bit 0 is set.
    db $04
    dw C1MuggerExit95
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show the mugger's punch, draw room $16, and report that nothing is missing.
C1OfferMuggerKnockout:

C1Loc3_B7:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $e3
    ; Draw room directly.
    db $69, $16
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5
    ; Show message 1.
    db $01, $e9
    ; End script.
    db $ff

; Show the mugger's punch, clear Ace's cash, and report the theft.
C1OfferMuggerRobbed:

C1Loc3_B8:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $e4
    ; Clear Case I cash and draw room $16.
    db $63
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5
    ; Show message 1.
    db $01, $e7
    ; End script.
    db $ff

; Dispatch medicine-tool use on the fallen woman by the loaded medicine ID.
C1MedFallenLady:

C1Loc3_B9:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1FallenLadyMedrezine
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedWomanOfreeall
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedWomanChemopapain
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedWomanBicarbonate
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1FallenLadyMedrezine
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    dw C1FallenLadyMedrezine
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedWomanOfreeall
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

; Show the woman's immunity to Medrezine and clear the loaded medicine.
C1FallenLadyMedrezine:

C1Loc3_BA:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $0e
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; Show the woman's immunity to Ofreeall and clear the loaded medicine.
C1MedWomanOfreeall:

C1Loc3_BB:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $0e
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; Show the woman's immunity to Chemopapain and clear the loaded medicine.
C1MedWomanChemopapain:

C1Loc3_BC:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $0e
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; Show the shared decision not to use the medicine here; retain its loaded ID.
C1MedToolDecline:

C1Loc3_BD:
    ; Show message 2.
    db $02, $7c
    ; End script.
    db $ff

; Show the woman's immunity to Bicarbonate and clear the loaded medicine.
C1MedWomanBicarbonate:

C1Loc3_BE:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $0e
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; Dispatch medicine-tool use on Mrs. Sternwood by the loaded medicine ID.
C1MedMrsSternwood:

C1Loc3_BF:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrsSternwoodMedrezine
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedWomanOfreeall
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedWomanChemopapain
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedWomanBicarbonate
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrsSternwoodPentothal
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrsSternwoodPentothal
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrsSternwoodPentothal
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrsSternwoodMedrezine
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrsSternwoodMedrezine
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedWomanOfreeall
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

; Show the adverse Medrezine reaction, clear the medicine, and set flag $86.
C1MrsSternwoodMedrezine:

C1Loc3_C0:
    ; Show message 2.
    db $02, $fd
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, C1MrsMedrezineGiven
    ; End script.
    db $ff

; With $87 set and $85 clear, reveal her address, add quick-list value $a4, set $85, and clear the medicine.
C1MrsSternwoodPentothal:

C1Loc3_C1:
    ; Test object flag.
    db $16, C1GagRemoved
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MrsSternwoodGagged
    ; Test object flag.
    db $16, C1MrsPentothalUsed
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Show message 2.
    db $02, $f8
    ; Add quick-list value.
    db $42, $a4
    ; Set object flag.
    db $17, C1MrsPentothalUsed
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; Explain that the gag prevents understanding her speech; retain the medicine.
C1MrsSternwoodGagged:

C1Loc3_C2:
    ; Show message 2.
    db $02, $f9
    ; End script.
    db $ff

; Explain that the swaying bum cannot be given the medicine.
C1MedBumRefuse:

C1Loc3_C3:
    ; Show message 2.
    db $02, $e2
    ; End script.
    db $ff

; Explain that the cab's bulletproof glass prevents medicine-tool use.
C1MedCabGlass:

C1Loc3_C4:
    ; Show message 1.
    db $01, $40
    ; End script.
    db $ff

; Dispatch medicine-tool use on Mr. Sternwood by the loaded medicine ID.
C1MedMrSternwood:

C1Loc3_C5:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrSternwoodMedrezine
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleeperOfreeall
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleeperChemopapain
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleeperBicarbonate
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrSternwoodPentothal
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrSternwoodPentothal
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrSternwoodPentothal
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrSternwoodMedrezine
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrSternwoodMedrezine
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleeperOfreeall
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

; Show the sleeping man's adverse Medrezine reaction, clear the medicine, and set flag $88.
C1MrSternwoodMedrezine:

C1Loc3_C6:
    ; Show message 1.
    db $01, $c8
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, C1MrMedrezineGiven
    ; End script.
    db $ff

; Show the caution used by evidence placement checks.
C1EvidenceCaution:

C1Loc3_C7:
    ; Show message 2.
    db $02, $7d
    ; End script.
    db $ff

; Show the sleeper's painful Ofreeall reaction and clear the medicine.
C1SleeperOfreeall:

C1Loc3_C8:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $19
    ; Show message 1.
    db $01, $79
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; Show no visible effect on the sleeper and clear Chemopapain.
C1SleeperChemopapain:

C1Loc3_C9:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $19
    ; Show message 0.
    db $00, $7d
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; Show no visible effect on the sleeper and clear Bicarbonate.
C1SleeperBicarbonate:

C1Loc3_CA:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $19
    ; Show message 0.
    db $00, $7d
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; With flag $89 clear, reveal the man's account, clear Pentothal, and set $89.
C1MrSternwoodPentothal:

C1Loc3_CB:
    ; Test object flag.
    db $16, C1MrPentothalUsed
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Show message 1.
    db $01, $c6
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, C1MrPentothalUsed
    ; End script.
    db $ff

; Dispatch medicine-tool use on the sleeping woman by the loaded medicine ID.
C1MedSleepWoman:

C1Loc3_CC:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleepWomanMedrezine
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleeperOfreeall
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleeperChemopapain
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleeperBicarbonate
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleepWomanPentothal
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleepWomanPentothal
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleepWomanPentothal
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleepWomanMedrezine
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleepWomanMedrezine
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1SleeperOfreeall
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

; Show the sleeping woman's adverse reaction, clear Medrezine, and set flag $8a.
C1SleepWomanMedrezine:

C1Loc3_CD:
    ; Show message 1.
    db $01, $da
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, C1SleepMedrezineGiven
    ; End script.
    db $ff

; With flag $8b clear, reveal the woman's account, clear Pentothal, and set $8b.
C1SleepWomanPentothal:

C1Loc3_CE:
    ; Test object flag.
    db $16, C1SleepPentothalUsed
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Show message 1.
    db $01, $d6
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, C1SleepPentothalUsed
    ; End script.
    db $ff

; Dispatch medicine-tool use on Ace by the loaded medicine ID.
C1MedAce:

C1Loc3_CF:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceMedrezineDeath
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceOfreeall
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceChemopapain
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceBisodiumitis
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceBicarbonate
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedToolDecline
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceMedrezineDeath
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceMedrezineDeath
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceOfreeall
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceBisodiumitis
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceBisodiumitis
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

; Show the fatal Medrezine reaction, clear the medicine, and end the action through the death sequence.
C1AceMedrezineDeath:

C1Loc3_D0:
    ; Show message 0.
    db $00, $7f
    ; Clear held item.
    db $4d
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show Ace's regional Ofreeall reaction and clear the medicine.
C1AceOfreeall:

C1Loc3_D1:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $b6
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; Show Ace's Chemopapain reaction and clear the medicine.
C1AceChemopapain:

C1Loc3_D2:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $b7
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; Show Ace's Bicarbonate reaction and clear the medicine.
C1AceBicarbonate:

C1Loc3_D3:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $19
    ; Show message 1.
    db $01, $07
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

; Use flags $71/$2c to choose the memory-recovery stage; the final path sets flag $25.
C1AceBisodiumitis:

C1Loc3_D4:
    ; Test object flag.
    db $16, C1BisodiumitisStage1Done
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BisodiumitisStage1
    ; Test object flag.
    db $16, C1BisodiumitisStage2Done
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BisodiumitisStage2
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $19
    ; Run scene effect.
    db $46, $04
    ; Show message 1.
    db $01, $8c
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, C1MemoryRecovered
    ; End script.
    db $ff

; Run effect $03, clear the medicine, and set flag $71.
C1BisodiumitisStage1:

C1Loc3_D5:
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $19
    ; Run scene effect.
    db $46, $03
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, C1BisodiumitisStage1Done
    ; End script.
    db $ff

; Run effect $01, clear the medicine, and set flag $2c.
C1BisodiumitisStage2:

C1Loc3_D6:
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $19
    ; Run scene effect.
    db $46, $01
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, C1BisodiumitisStage2Done
    ; End script.
    db $ff

; Describe key two.
LookC1Key2:

C1Sc3_71:
    ; Show message 2.
    db $02, $d5
    ; End script.
    db $ff

; Describe the pencil.
LookC1Pencil:

C1Sc3_72:
    ; Show message 2.
    db $02, $88
    ; End script.
    db $ff

; Require the pencil to be taken, then choose its target.
UseC1Pencil:

C1Sc3_73:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match the pencil against the memo pad.
MatchC1Pencil:

C1Loc3_D7:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $24
    dw C1PencilRevealMemo
    db $fe, $fe
    dw C1ItemNoHere

; Shade the memo's indentations and set flag $78.
C1PencilRevealMemo:

C1Loc3_D8:
    ; Show message 1.
    db $01, $d4
    ; Set object flag.
    db $17, C1MemoWritingRevealed
    ; End script.
    db $ff

; Describe key three.
LookC1Key3:

C1Sc3_74:
    ; Show message 2.
    db $02, $89
    ; End script.
    db $ff

; Describe key four.
LookC1Key4:

C1Sc3_75:
    ; Show message 2.
    db $02, $31
    ; End script.
    db $ff

; Set flag $a7 and describe the IOU; flag $a5 selects the follow-up.
LookC1Note1:

C1Sc3_76:
    ; Set object flag.
    db $17, C1Note1Examined
    ; Test object flag.
    db $16, C1File5Examined
    ; Branch if result bit 0 is set.
    db $04
    dw C1Note1AfterFile5
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $8d
    ; Show message 1.
    db $01, $df
    ; End script.
    db $ff

; Describe the IOU with the alternate reaction selected by flag $a5.
C1Note1AfterFile5:

C1Loc3_05:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $8d
    ; Show message 1.
    db $01, $de
    ; End script.
    db $ff

; Describe the pharmacy invoice; flags $25/$7d select the follow-up path.
LookC1Bill:

C1Sc3_77:
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is set.
    db $04
    dw C1BillShortView
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $9e
    ; Test object flag.
    db $16, C1BillRouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BillAddressHint
    ; Resume text.
    db $45
    ; End script.
    db $ff

; Show the invoice's familiar-address reply, add quick-list value $a2, and set flag $7d.
C1BillAddressHint:

C1Loc3_06:
    ; Show message 2.
    db $02, $9f
    ; Add quick-list value.
    db $42, $a2
    ; Set object flag.
    db $17, C1BillRouteKnown
    ; End script.
    db $ff

; Describe the pharmacy invoice without the additional address reply.
C1BillShortView:

C1Loc3_07:
    ; Show message 2.
    db $02, $9e
    ; End script.
    db $ff

; Read the vehicle registration; add quick-list value $a0 and set $7b only on the first read.
LookC1Note2:

C1Sc3_78:
    ; Show message 1.
    db $01, $09
    ; Test object flag.
    db $16, C1Note2RouteKnown
    ; Branch if result bit 0 is set.
    db $04
    dw C1Note2ViewEnd
    ; Add quick-list value.
    db $42, $a0
    ; Set object flag.
    db $17, C1Note2RouteKnown

; End the vehicle registration view.
C1Note2ViewEnd:

C1Loc3_08:
    ; End script.
    db $ff

; Set flag $a6 and choose the map description through flags $9f/$25/$7a.
LookC1Map:

C1Sc3_79:
    ; Set object flag.
    db $17, C1MapExamined
    ; Test object flag.
    db $16, C1MemoReadForMap
    ; Branch if result bit 0 is set.
    db $04
    dw C1MapAfterMemo
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is set.
    db $04
    dw C1MapShortView
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $0b
    ; Show message 1.
    db $01, $3f
    ; Test object flag.
    db $16, C1PeoriaStopKnown
    ; Branch if result bit 0 is set.
    db $04
    dw C1MapViewEnd
    ; Add quick-list value.
    db $42, $a3
    ; Set object flag.
    db $17, C1PeoriaStopKnown

; End the map view after its optional blue-cab quick-list update.
C1MapViewEnd:

C1Loc3_09:
    ; End script.
    db $ff

; Show the map explanation selected after reading the revealed memo; retain the older alias.
C1MapAfterMemo:

; Describe the map with the route recognition selected by flag $9f.
C1MapAfterFile4:

C1Loc3_0A:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $0b
    ; Show message 1.
    db $01, $65
    ; End script.
    db $ff

; Show the map's street description without its longer written-message reply.
C1MapShortView:

C1Loc3_0B:
    ; Show message 1.
    db $01, $0b
    ; End script.
    db $ff

; Run effect $09 for the snapshot's view action.
LookC1Snapshot:

C1Sc3_7A:
    ; Run scene effect.
    db $46, $09
    ; End script.
    db $ff

; Describe the makeup kit.
LookC1Cosmetic:

C1Sc3_7B:
    ; Show message 2.
    db $02, $ec
    ; End script.
    db $ff

; Describe key five.
LookC1Key5:

C1Sc3_7C:
    ; Show message 1.
    db $01, $6d
    ; End script.
    db $ff

; Read the bookmark.
LookC1Bookmark:

C1Sc3_7D:
    ; Show message 1.
    db $01, $70
    ; End script.
    db $ff

; Read FILE1.
LookC1File1:

C1Sc3_7E:
    ; Show message 1.
    db $01, $7e
    ; End script.
    db $ff

; Read FILE2.
LookC1File2:

C1Sc3_7F:
    ; Show message 1.
    db $01, $7f
    ; End script.
    db $ff

; Read the medical record in FILE3.
LookC1File3:

C1Sc3_80:
    ; Show message 1.
    db $01, $80
    ; End script.
    db $ff

; Read the medicine index; flags $71/$26 choose its shorter reply.
LookC1File4:

C1Sc3_81:
    ; Test object flag.
    db $16, C1BisodiumitisStage1Done
    ; Branch if result bit 0 is set.
    db $04
    dw C1File4ShortView
    ; Test object flag.
    db $16, C1File4Read
    ; Branch if result bit 0 is set.
    db $04
    dw C1File4ShortView
    ; Show message 1.
    db $01, $81
    ; Set object flag.
    db $17, C1File4Read
    ; End script.
    db $ff

; Show the shorter medicine-index reply.
C1File4ShortView:

C1Loc3_0C:
    ; Show message 2.
    db $02, $46
    ; End script.
    db $ff

; Read the kidnapping instructions and set flags $1b/$a5.
LookC1File5:

C1Sc3_82:
    ; Show message 1.
    db $01, $99
    ; Set object flag.
    db $17, C1File5Read
    ; Set object flag.
    db $17, C1File5Examined
    ; End script.
    db $ff

; Read FILE6 about Sugar Shack and Siegel, preserving each region's account.
LookC1File6:

C1Sc3_83:
    ; Show message 1.
    db $01, $97
    ; End script.
    db $ff

; Read FILE7 about the blackmail case, preserving each region's account.
LookC1File7:

C1Sc3_84:
    ; Show message 1.
    db $01, $98
    ; End script.
    db $ff

; Read the ransom demand in LETTER1.
LookC1Letter1:

C1Sc3_85:
    ; Show message 1.
    db $01, $9d
    ; End script.
    db $ff

; Describe the first powder, identified as sugar.
LookC1Sugar:

C1Sc3_86:
    ; Show message 1.
    db $01, $b0
    ; End script.
    db $ff

; Describe the second powder, identified as flour.
LookC1Flour:

C1Sc3_87:
    ; Show message 1.
    db $01, $b1
    ; End script.
    db $ff

; Describe the tissue.
LookC1Tissue:

C1Sc3_88:
    ; Show message 1.
    db $01, $c2
    ; End script.
    db $ff

; Read LETTER2.
LookC1Letter2:

C1Sc3_89:
    ; Show message 1.
    db $01, $c4
    ; End script.
    db $ff

; Describe the candy.
LookC1Candy:

C1Sc3_8A:
    ; Show message 1.
    db $01, $c5
    ; End script.
    db $ff

; Describe the memo pad; flag $78 selects the recovered timetable.
LookC1Memo:

C1Sc3_8B:
    ; Test object flag.
    db $16, C1MemoWritingRevealed
    ; Branch if result bit 0 is set.
    db $04
    dw C1MemoTimetableView
    ; Show message 1.
    db $01, $d2
    ; End script.
    db $ff

; Read the recovered timetable and set flags $1a/$9f.
C1MemoTimetableView:

C1Loc3_0D:
    ; Show message 1.
    db $01, $d5
    ; Set object flag.
    db $17, C1MemoTimetableRead
    ; Set object flag.
    db $17, C1MemoReadForMap
    ; End script.
    db $ff

; Describe the ballpoint pen.
LookC1Pen:

C1Sc3_8C:
    ; Show message 1.
    db $01, $d1
    ; End script.
    db $ff

; Require the ballpoint pen to be taken, then choose its target.
UseC1Pen:

C1Sc3_8D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match the pen against the memo pad.
MatchC1Pen:

C1Loc3_D9:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $24
    dw C1PenMemoReply
    db $fe, $fe
    dw C1ItemNoHere

; With flag $78 clear, show the regional reply for trying the pen on the memo.
C1PenMemoReply:

C1Loc3_DA:
    ; Test object flag.
    db $16, C1MemoWritingRevealed
    ; Branch if result bit 0 is set.
    db $04
    dw C1ItemNoHere
    ; Show message 1.
    db $01, $d3
    ; End script.
    db $ff

; Describe the reading glasses.
LookC1Glasses:

C1Sc3_8E:
    ; Show message 1.
    db $01, $d0
    ; End script.
    db $ff

; Describe the seltzer glass; flag $b6 selects its empty description.
LookC1Seltzer:

C1Sc3_8F:
    ; Test object flag.
    db $16, C1SeltzerDrunk
    ; Branch if result bit 0 is set.
    db $04
    dw C1SeltzerView2
    ; Show message 0.
    db $00, $40
    ; End script.
    db $ff

; Describe the empty seltzer glass.
C1SeltzerView2:

C1Loc3_0E:
    ; Show message 0.
    db $00, $05
    ; End script.
    db $ff

; Describe the empty Pentothal vial; flag $26 selects the shorter named reply.
LookC1Meds1:

C1Sc3_90:
    ; Test object flag.
    db $16, C1File4Read
    ; Branch if result bit 0 is set.
    db $04
    dw C1PentothalEmptyView
    ; Show message 0.
    db $00, $75
    ; End script.
    db $ff

; Name Pentothal and describe its empty vial.
C1PentothalEmptyView:

C1Loc3_0F:
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $07
    ; End script.
    db $ff

; Describe the Medrezine vial; flag $26 selects the shorter named reply.
LookC1Meds2:

C1Sc3_91:
    ; Test object flag.
    db $16, C1File4Read
    ; Branch if result bit 0 is set.
    db $04
    dw C1MedrezineView
    ; Show message 0.
    db $00, $76
    ; End script.
    db $ff

; Name Medrezine and describe its vial.
C1MedrezineView:

C1Loc3_10:
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

; Describe the empty Diethanol vial; flag $26 selects the shorter named reply.
LookC1Diethanol:

C1Sc3_92:
    ; Test object flag.
    db $16, C1File4Read
    ; Branch if result bit 0 is set.
    db $04
    dw C1DiethanolEmptyView
    ; Show message 0.
    db $00, $77
    ; End script.
    db $ff

; Name Diethanol and describe its empty vial.
C1DiethanolEmptyView:

C1Loc3_11:
    ; Set text name 0.
    db $1e, $2a
    ; Show message 2.
    db $02, $07
    ; End script.
    db $ff

; Require flag $28 before reading the newspaper's headline.
LookC1Newspaper:

C1Sc3_93:
    ; Test object flag.
    db $16, C1NewspaperPaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1NewspaperHeadline
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

; Read the newspaper headline about Pearl Harbor.
C1NewspaperHeadline:

C1Loc3_12:
    ; Show message 2.
    db $02, $bf
    ; End script.
    db $ff

; Spend one coin on the first purchase, show the newsboy's warning, and continue into the pickup tail.
BuyC1Newspaper:

C1Sc3_94:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test object flag.
    db $16, C1NewspaperPaid
    ; Branch if result bit 0 is set.
    db $04
    dw TakeC1PaidNewspaper
    ; Use one Case I coin.
    db $40
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BuyNewspaperEnd
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Set text name 0.
    db $1e, $2b
    ; Show message 2.
    db $02, $04
    ; Append selected item to list.
    db $1d
    ; Show message 2.
    db $02, $c4
    ; Show message 2.
    db $02, $c5
    ; Set object flag.
    db $17, C1NewspaperPaid

; End the newspaper purchase when the coin-spend check fails.
C1BuyNewspaperEnd:

C1Loc3_DB:
    ; End script.
    db $ff

; Take the paid newspaper; the first purchase also falls through this tail.
TakeC1PaidNewspaper:

C1Loc3_13:
    ; Set text name 0.
    db $1e, $2b
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Describe the gag.
LookC1Gag:

C1Sc3_95:
    ; Show message 2.
    db $02, $f5
    ; End script.
    db $ff

; Describe the BULLET2 ammunition.
LookC1Bullet2:

C1Sc3_96:
    ; Show message 1.
    db $01, $13
    ; End script.
    db $ff

; Describe the magazine.
LookC1Magazine:

C1Sc3_97:
    ; Show message 1.
    db $01, $5a
    ; End script.
    db $ff

; Describe the photo; flag $74 selects the recognized-woman reply, and $7c tracks the address hint.
LookC1Photo:

C1Sc3_98:
    ; Test object flag.
    db $16, C1SleepWomanSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1PhotoKnownView
    ; Show message 1.
    db $01, $5c
    ; Test object flag.
    db $16, C1PhotoRouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PhotoAddressHint
    ; End script.
    db $ff

; Recognize the sleeping woman in the photo and check whether to add its address hint.
C1PhotoKnownView:

C1Loc3_14:
    ; Show message 2.
    db $02, $44
    ; Test object flag.
    db $16, C1PhotoRouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PhotoAddressHint
    ; End script.
    db $ff

; Add quick-list value $a1 and set flag $7c.
C1PhotoAddressHint:

C1Loc3_15:
    ; Add quick-list value.
    db $42, $a1
    ; Set object flag.
    db $17, C1PhotoRouteKnown
    ; End script.
    db $ff

; Describe the earrings using the regional text.
LookC1Earring:

C1Sc3_99:
    ; Show message 1.
    db $01, $6c
    ; End script.
    db $ff

; Read the note with its series of numbers.
LookC1Note3:

C1Sc3_9A:
    ; Show message 1.
    db $01, $6a
    ; End script.
    db $ff

; Choose a target for NOTE3, the paper bearing 33-24-36.
UseC1Note3:

C1Sc3_9B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match NOTE3 against the telephone or wall safe.
MatchC1Note3:

C1Loc3_DC:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $24
    dw C1NoteNotPhoneNumber
    db $01, $02
    dw C1Note3Safe
    db $fe, $fe
    dw C1ItemNoHere

; Explain that these numbers do not appear to be a telephone number.
C1NoteNotPhoneNumber:

C1Loc3_DD:
    ; Show message 2.
    db $02, $61
    ; End script.
    db $ff

; Swap slots, check whether the safe is open, and otherwise open state $4a and set flag $1c.
C1Note3Safe:

C1Loc3_DE:
    ; Swap operation slots.
    db $60
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1NoteSafeAlreadyOpen
    ; Show message 2.
    db $02, $8f
    ; Set state and refresh.
    db $33, $4a
    ; Set property 1 bit 2.
    db $2c, $02
    ; Keep selected change.
    db $26
    ; Set object flag.
    db $17, C1WallSafeUnlocked
    ; End script.
    db $ff

; Show the wall safe's already-open reply.
C1NoteSafeAlreadyOpen:

C1Loc3_DF:
    ; Set text name 0.
    db $1e, $d2
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

; Read the note with the numbers 25, 03, and 45.
LookC1Note4:

C1Sc3_9C:
    ; Show message 1.
    db $01, $69
    ; End script.
    db $ff

; Choose a target for NOTE4, the paper bearing 25-03-45.
UseC1Note4:

C1Sc3_9D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match NOTE4 against the telephone or wall safe.
MatchC1Note4:

C1Loc3_E0:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $24
    dw C1NoteNotPhoneNumber
    db $01, $02
    dw C1Note4WrongCombination
    db $fe, $fe
    dw C1ItemNoHere

; Show the wrong-combination reply without opening the safe.
C1Note4WrongCombination:

C1Loc3_E1:
    ; Show message 2.
    db $02, $90
    ; End script.
    db $ff

; Describe the sliced sausage.
LookC1Sausage:

C1Sc3_9E:
    ; Show message 1.
    db $01, $b6
    ; End script.
    db $ff

; Describe the patterned plate.
LookC1Plate:

C1Sc3_9F:
    ; Show message 1.
    db $01, $b4
    ; End script.
    db $ff

; Describe the frying pan and run effect $02.
LookC1FryingPan:

C1Sc3_A0:
    ; Show message 1.
    db $01, $b3
    ; Run scene effect.
    db $46, $02
    ; End script.
    db $ff

; Describe the empty water pitcher.
LookC1Pitcher:

C1Sc3_A1:
    ; Show message 1.
    db $01, $b5
    ; End script.
    db $ff

; Name Pentothal and describe its filled vial.
LookC1Pentothal:

C1Sc3_A2:
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

; Take a filled Pentothal item after the inventory checks.
TakeC1Pentothal:

C1Sc3_A3:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $28
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Choose a target for Pentothal item $55 after checking its taken attribute.
UseC1Pentothal55:

C1Sc3_A4:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Pentothal item $55 against the medicine tool.
MatchC1Pentothal55:

C1Loc3_E2:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadPentothal55
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $55 into an empty medicine tool, set its item state, and remove it from the list.
C1LoadPentothal55:

C1Loc3_E3:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $55
    ; End script.
    db $ff

; Choose a target for Pentothal item $56 after checking its taken attribute.
UseC1Pentothal56:

C1Sc3_A5:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Pentothal item $56 against the medicine tool.
MatchC1Pentothal56:

C1Loc3_E4:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadPentothal56
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $56 into an empty medicine tool, set its item state, and remove it from the list.
C1LoadPentothal56:

C1Loc3_E5:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $56
    ; End script.
    db $ff

; Choose a target for Pentothal item $57 after checking its taken attribute.
UseC1Pentothal57:

C1Sc3_A6:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1UseNeedsTaken
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

; Match Pentothal item $57 against the medicine tool.
MatchC1Pentothal57:

C1Loc3_E6:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1LoadPentothal57
    db $fe, $fe
    dw C1ItemNoHere
    ; Unreferenced byte pattern: swap operation slots.
    db $60

; Load item $57 into an empty medicine tool, set its item state, and remove it from the list.
C1LoadPentothal57:

C1Loc3_E7:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MedToolFullReply
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $57
    ; End script.
    db $ff

; Take MEDS4 after the inventory checks.
TakeC1Meds4:

C1Sc3_A7:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $33
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Name Ofreeall and describe its vial.
LookC1Ofreeall:

C1Sc3_A8:
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

; Take MEDS6 after the inventory checks.
TakeC1Meds6:

C1Sc3_A9:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1TakeEnd
    ; Set text name 0.
    db $1e, $35
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Name Chemopapain and describe its vial.
LookC1Chemopapain:

C1Sc3_AA:
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

; Name Bisodiumitis and describe its vial.
LookC1Bisodiumitis:

C1Sc3_AB:
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

; Name Bicarbonate and describe its vial.
LookC1Bicarbonate:

C1Sc3_AC:
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff
