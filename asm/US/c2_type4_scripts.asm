
; Show the original trench coat description.
LookC2Trench:
; Confirmed script commands; unrecognized command sequences remain raw bytes.

C2Sc4_00:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

; Open the selected clothing pocket and keep its original change.
OpenC2Pocket:

C2Sc4_01:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2PocketIsOpen
    ; Show message 3.
    db $2c, $25
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

; Show the original already-open pocket reply.
C2PocketIsOpen:

C2Loc4_00:
    ; Show message 3.
    db $2c, $27
    ; End script.
    db $ff

; Choose the alternate target for the original carried-item use action.
UsePackOnTarget:

C2Sc4_02:
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Dispatch the carried-item use action through the original target rows.
MatchPackUse:

C2Loc4_01:
    ; Match alternate item against type, ID and script target rows.
    db $32, $02, $00
    dw MatchPackWasher
    db $00, $a6
    dw MatchPackSelf
    db $00, $a7
    dw UsePackArea
    db $00, $83

jr_007_687b:
    dw UsePackMan
    db $00, $43
    dw UsePackConductor
    db $00, $46
    dw UsePackPassenger
    db $00, $44
    dw UsePackPassenger
    db $00, $7a
    dw UsePackHobo
    db $00, $45
    dw UsePackPerson
    db $00, $17
    dw UsePackCashier
    db $00, $37
    dw UsePackPerson
    db $00, $3c
    dw UsePackClaimClerk
    db $00, $4f
    dw UsePackNewsSeller
    db $00, $50
    dw MatchGunDog
    db $00, $55
    dw UsePackDriver
    db $07, $46
    dw MatchGunCabTarget
    db $07, $48
    dw MatchGunCabTarget
    db $05, $49
    dw MatchGunCabTarget
    db $05, $4a
    dw MatchGunCabTarget
    db $05, $4b
    dw MatchGunCabTarget
    db $00, $2e
    dw MatchGunArch1
    db $00, $2f
    dw MatchGunArch2
    db $00, $52
    dw MatchGunChiWin1
    db $00, $53
    dw MatchGunChiWin2
    db $00, $60
    dw MatchGunJoeWin1
    db $00, $68
    dw MatchGunJoeWin2
    db $00, $78
    dw MatchGunPeepWin
    db $00, $90
    dw MatchGunGoonsWin
    db $00, $98
    dw MatchGunCleanWin
    db $00, $ab
    dw MatchPoliceGun1
    db $00, $ac
    dw MatchPoliceGun2
    db $01, $06
    dw MatchGunBounce
    db $03, $1e
    dw MatchGunBottle
    db $05, $06
    dw MatchCasinoGun
    db $05, $15
    dw MatchGoonsGun
    db $05, $19
    dw MatchVegasStnGun
    db $05, $39
    dw MatchChiStnGun
    db $05, $4c
    dw MatchHomeEntGun
    db $05, $53
    dw MatchJoeFrontGun
    db $05, $65
    dw MatchPoliceDoor
    db $05, $68
    dw MatchMorgueGun
    db $01, $09
    dw MatchWardMirror
    db $05, $5b
    dw MatchGunJoeLock
    db $05, $66
    dw MatchGunSugLock
    db $02, $03
    dw MatchDeskStore
    db $fe, $fe
    dw MatchGunFallback

; Match the grouped item placed in the washing machine.
MatchPackWasher:

C2Loc4_02:
    ; Test packed item argument and branch on equality.
    db $46, $85
    dw PutPackWasher
    ; Test packed item argument and branch on equality.
    db $46, C2Trench
    dw WashC2Trench
    ; Test packed item argument and branch on equality.
    db $46, C2Pants
    dw WashC2Pants
    ; Test packed item argument and branch on equality.
    db $46, C2Coat
    dw WashC2Coat
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Allow the trench coat in the washer only when it is not worn.
WashC2Trench:

C2Loc4_03:
    ; Test object flag and branch when clear.
    db $54, C2TrenchWorn
    dw PutPackWasher

; Show the reply for trying to wash clothing while wearing it.
NeedClothesOff:

C2Loc4_04:
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

; Allow the pants in the washer only when they are not worn.
WashC2Pants:

C2Loc4_05:
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    dw PutPackWasher
    ; Jump to script.
    db $07
    dw NeedClothesOff

; Allow the spare coat in the washer only when it is not worn.
WashC2Coat:

C2Loc4_06:
    ; Test object flag and branch when clear.
    db $54, C2CoatWorn
    dw PutPackWasher
    ; Jump to script.
    db $07
    dw NeedClothesOff

; Match the original grouped item used on the self target.
MatchPackSelf:

C2Loc4_07:
    ; Test packed item argument and branch on equality.
    db $46, C2Trench
    dw WearC2Trench
    ; Test packed item argument and branch on equality.
    db $46, C2Pants
    dw WearC2Pants
    ; Test packed item argument and branch on equality.
    db $46, C2Coat
    dw WearC2Coat
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp
    dw UseLampSelf
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootC2Self
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Wear or remove the trench coat through the original clothing restrictions.
WearC2Trench:

C2Loc4_08:
    ; Test object flag and branch when set.
    db $08, C2TrenchWorn
    dw RemoveC2Trench
    ; Test object flag and branch when set.
    db $08, C2CoatWorn
    dw NeedCoatOff
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw NeedUniformOff
    ; Show message 0.
    db $00, $27
    ; Set object flag.
    db $09, C2TrenchWorn
    ; End script.
    db $ff

; Enter the original morgue clothing alarm in bank eight.
MorgueDressRoute:

C2Loc4_09:
    ; Jump to script in bank $08.
    db $7d
    dw MorgueDressAlarm
    db $08

; Enter the original dealer clothing response in bank eight.
DealerDressRoute:

C2Loc4_0A:
    ; Jump to script in bank $08.
    db $7d
    dw DealerDressName
    db $08

; Enter the original cashier clothing response in bank eight.
CashierDressRoute:

C2Loc4_0B:
    ; Jump to script in bank $08.
    db $7d
    dw CashierDressCue
    db $08

; Clear the original trench worn flag before shared removal.
RemoveC2Trench:

C2Loc4_0C:
    ; Clear object flag.
    db $0a, C2TrenchWorn

; Show the original clothing removal caption and check the room.
ShowClothesOff:

C2Loc4_0D:
    ; Hold text.
    db $2e
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $12

; Dispatch the original room-dependent reactions to taking clothes off.
CheckClothesRoom:

C2Loc4_86:
    ; Test room argument and branch on equality.
    db $25, $04
    dw CashierDressRoute
    ; Test room argument and branch on equality.
    db $25, $05
    dw DealerDressRoute
    ; Test room argument and branch on equality.
    db $25, $15
    dw StationDressCue
    ; Test room argument and branch on equality.
    db $25, $16
    ; Target StationDressCue; retain the interior label.
    db $04

jr_007_6996:
    db $6a
    ; Test room argument and branch on equality.
    db $25, $17
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, $18
    ; Target DressPoliceRoute; retain the interior label.
    db $00

jr_007_699e:
    db $6a
    ; Test room argument and branch on equality.
    db $25, $19
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, $1a
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, $2c
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, $2d
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, $2e
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, $2f
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, $2b
    dw NewsSellerAlarm
    ; Test room argument and branch on equality.
    db $25, $44
    dw MorgueDressRoute

jr_007_69bf:
    ; Test room argument and branch on equality.
    db $25, $1b
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $1c
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $1d
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $1e
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $1f
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $20
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $21
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $22
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $23
    ; Target TrainDressAlarm; retain the interior label.
    db $0c

jr_007_69e2:
    db $6a
    ; Test room argument and branch on equality.
    db $25, $24
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $25
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25

jr_007_69ec:
    db $26
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $27
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $28
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $29
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, $2a
    dw TrainDressAlarm
    ; End script.
    db $ff

; Enter the original police arrest sequence in bank eight.
DressPoliceRoute:

C2Loc4_0E:
    ; Jump to script in bank $08.
    db $7d
    ; Target PoliceArrest; retain the interior label.
    db $7b

jr_007_6a02:
    db $49
    db $08

; Prepare the man name before the shared clothing alarm caption.
StationDressCue:

C2Loc4_0F:
    ; Set text name 0.
    db $30, $b5
    ; Hold text.
    db $2e

; Show the prepared character clothing alarm and enter the police route.
ClothesAlarmReply:

C2Loc4_10:
    ; Show message 3.
    db $2c, $29
    ; Jump to script.
    db $07
    dw DressPoliceRoute

; Retain the clearance-dependent train character effect before the clothing alarm.
TrainDressAlarm:

C2Loc4_11:
    ; Hold text.
    db $2e
    ; Branch when the current train clearance flag is clear.
    db $5f
    dw ConductorDressCue
    ; Run the current passenger-room effect.
    db $63

; Prepare the conductor name before the shared clothing alarm caption.
ConductorDressCue:

C2Loc4_12:
    ; Set text name 0.
    db $30, $d9
    ; Jump to script.
    db $07
    dw ClothesAlarmReply

; Suppress the seller's undressing alarm after the departure flag is set.
NewsSellerAlarm:

C2Loc4_13:
    ; Test object flag and branch when set.
    db $08, C2NewsLeft
    dw EndC2Pack
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $b8
    ; Jump to script.
    db $07
    dw ClothesAlarmReply

; Wear or remove the pants through the original uniform restriction.
WearC2Pants:

C2Loc4_14:
    ; Test object flag and branch when set.
    db $08, C2PantsWorn
    dw RemoveC2Pants
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw NeedUniformOff
    ; Show message 0.
    db $00, $28
    ; Set object flag.
    db $09, C2PantsWorn
    ; End script.
    db $ff

; Clear the original pants worn flag and use shared clothing removal.
RemoveC2Pants:

C2Loc4_15:
    ; Clear object flag.
    db $0a, C2PantsWorn
    ; Jump to script.
    db $07
    dw ShowClothesOff

; Wear or remove the spare coat while preserving original outfit conflicts.
WearC2Coat:

C2Loc4_16:
    ; Test object flag and branch when set.
    db $08, C2CoatWorn
    dw RemoveC2Coat
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw NeedUniformOff
    ; Test object flag and branch when set.
    db $08, C2TrenchWorn
    dw NeedTrenchOff
    ; Show message 1.
    db $01, $95
    ; Set object flag.
    db $09, C2CoatWorn
    ; End script.
    db $ff

; Clear the coat-worn flag and use shared clothing removal.
RemoveC2Coat:

C2Loc4_17:
    ; Clear object flag.
    db $0a, C2CoatWorn
    ; Jump to script.
    db $07
    dw ShowClothesOff

; Check the bullet slot before the original self-shot ending.
ShootC2Self:

C2Loc4_18:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Hold text.
    db $2e

jr_007_6a4d:
    ; Show message 1.
    db $01, $91
    ; Show message 1.
    db $01, $92
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Check that the flashlight is held before toggling it.
UseLampSelf:

C2Loc4_19:
    ; Select operation slot 0.
    db $35
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw NeedLampTaken
    ; Select operation slot 1.
    db $36
    ; Jump to script.
    db $07
    dw ToggleC2Lamp

; Restore operation slot 1 and show the flashlight pickup reply.
NeedLampTaken:

C2Loc4_1A:
    ; Select operation slot 1.
    db $36
    ; Show message 3.
    db $2c, $47
    ; End script.
    db $ff

; Select the gun reply or retain the room 42 vacuum and original fallback checks.
UsePackArea:

C2Loc4_1B:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw FireC2Away
    ; Test room argument and branch on inequality.
    db $55, $42
    dw NoC2PackEffect
    ; Test packed item argument and branch on equality.
    db $46, $90
    dw VacuumNoPlugReply
    ; Jump to script.
    db $07
    dw TiedItemFallback

; Explain that the vacuum does not work and has no plug.
VacuumNoPlugReply:

C2Loc4_1C:
    ; Show message 2.
    db $02, $67
    ; End script.
    db $ff

; Check the bullet slot before the untargeted shot reply.
FireC2Away:

C2Loc4_1D:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack

; Show the original reply after the untargeted shot.
ShowShotAway:

C2Loc4_85:
    ; Show message 0.
    db $00

jr_007_6a76:
    db $45
    ; End script.
    db $ff

; Select flashlight or gun use on the person, otherwise show the original gift refusal.
UsePackPerson:

C2Loc4_1E:
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp
    dw LightManFace
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootC2Person
    ; Show message 0.
    db $00, $07
    ; End script.
    db $ff

; Select the flashlight reaction before the shared gun fallback.
UsePackMan:

C2Loc4_1F:
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp

jr_007_6a85:
    dw LightManFace

; Match the gun before the original person shooting path.
MatchPackGun:

C2Loc4_20:
jr_007_6a87:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootC2Person
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the flashlight flags and show the man reaction.
LightManFace:

C2Loc4_21:
    ; Test object flag and branch when clear.
    db $54, C2LampReady
    dw NoC2PackEffect
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw NoC2PackEffect
    ; Set text name 0.
    db $30, $b5
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

; Select the conductor flashlight reaction or retain the shared gun fallback.
UsePackConductor:

C2Loc4_22:
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp
    dw LightConductor
    ; Jump to script.
    db $07
    dw MatchPackGun

; Check the flashlight flags and show the conductor reaction.
LightConductor:

C2Loc4_23:
    ; Test object flag and branch when clear.
    db $54, C2LampReady
    dw NoC2PackEffect
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw NoC2PackEffect
    ; Set text name 0.
    db $30, $d9
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

; Retain the shared passenger flashlight reaction and gun fallback.
UsePackPassenger:

C2Loc4_24:
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp
    dw LightWomanFace
    ; Jump to script.
    db $07
    dw MatchPackGun

; Check the flashlight flags and show the woman reaction.
LightWomanFace:

C2Loc4_25:
    ; Test object flag and branch when clear.
    db $54, C2LampReady
    dw NoC2PackEffect
    ; Test object flag and branch when clear.
    db $54

jr_007_6abb:
    db C2LampFlag
    dw NoC2PackEffect
    ; Set text name 0.
    db $30, $b6
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

; Select the hobo flashlight reaction or the shared gun fallback.
UsePackHobo:

C2Loc4_26:
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp
    dw LightHoboFace
    ; Jump to script.
    db $07
    dw MatchPackGun

; Check the flashlight flags and show the hobo reaction.
LightHoboFace:

C2Loc4_27:
    ; Test object flag and branch when clear.
    db $54, C2LampReady
    dw NoC2PackEffect
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw NoC2PackEffect
    ; Set text name 0.
    db $30, $b3
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

; Select flashlight or gun use on the cashier, otherwise use the named-item gift reply.
UsePackCashier:

C2Loc4_28:
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp
    dw LightWomanFace
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootC2Person
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $05
    ; End script.
    db $ff

; Select flashlight or gun use on the claim clerk, otherwise show the original refusal.
UsePackClaimClerk:

C2Loc4_29:
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp
    dw LightManFace
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootC2Person
    ; Show message 2.
    db $02, $e5
    ; End script.
    db $ff

; Select flashlight, gun or the original reply for the newspaper seller.
UsePackNewsSeller:

C2Loc4_2A:
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp
    dw LightOldMan
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootOldMan
    ; Show message 1.
    db $01, $26
    ; End script.
    db $ff

; Check the flashlight flags and show the old man reaction.
LightOldMan:

C2Loc4_2B:
    ; Test object flag and branch when clear.
    db $54, C2LampReady
    dw NoC2PackEffect
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw NoC2PackEffect
    ; Set text name 0.
    db $30, $b8
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

; Check the bullet slot, show the old man attack text, and enter the dog ending.
ShootOldMan:

C2Loc4_2C:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Show message 1.
    db $01, $28
    ; Jump to script.
    db $07
    dw DieFromC2Dog

; Match the gun used on the dog.
MatchGunDog:

C2Loc4_2D:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootC2Dog
    ; Jump to script.
    db $07

jr_007_6b14:
    dw NoC2PackEffect

; Check the bullet slot before the dog dodges the attack.
ShootC2Dog:

C2Loc4_2E:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Show message 1.
    db $01, $27
    ; End script.
    db $ff

; Dispatch the flashlight, gun, or gift reply for the driver.
UsePackDriver:

C2Loc4_2F:
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp
    dw LightDriver
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootCabGlass
    ; Show message 1.
    db $01, $50
    ; End script.
    db $ff

; Check the flashlight flags and show the driver reaction.
LightDriver:

C2Loc4_30:
    ; Test object flag and branch when clear.
    db $54, C2LampReady
    dw NoC2PackEffect
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw NoC2PackEffect
    ; Set text name 0.
    db $30, $da
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

; Check the bullet slot and show the shot ricocheting off the glass.
ShootCabGlass:

C2Loc4_31:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $4b
    ; Set text name 0.
    db $30, $ba
    ; Play audio.
    db $3e, $11
    ; Show message 3.
    db $2c, $15
    ; End script.
    db $ff

; Match the gun before the original cab-target refusal without loading a bullet slot.
MatchGunCabTarget:

C2Loc4_32:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw CabTargetRefusal
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Choose the original cab refusal for the matched target.
CabTargetRefusal:

C2Loc4_33:
    ; Test object flag and branch when set.
    db $08, C2GabbyMet
    dw ProtectCabTarget
    ; Show message 1.
    db $01, $3b
    ; End script.
    db $ff

; Show the cab protection reply for the matched target.
ProtectCabTarget:

C2Loc4_34:
    ; Show message 1.
    db $01, $3c
    ; End script.
    db $ff

; Check the bullet slot and run the original murder ending.
ShootC2Person:

C2Loc4_35:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Run scene effect.
    db $39, FxPoliceman
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $2b
    ; Wait sixty ticks.
    db $7e
    ; Run scene effect.
    db $39, FxHandcuffs
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 2.
    db $02, $9a
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Hide the trench coat object and mark it taken.
TakeC2Trench:

C2Sc4_03:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Pack
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $01
    ; Set object flag.
    db $09, C2TrenchTaken
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Close the selected clothing pocket through the original shared cleanup.
CloseC2Pocket:

C2Sc4_04:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2PocketIsClosed
    ; Show message 3.
    db $2c, $26
    ; Jump to script.
    db $07
    dw EndC2PackClose

; Show the original already-closed pocket reply.
C2PocketIsClosed:

C2Loc4_81:
    ; Show message 3.
    db $2c, $28
    ; End script.
    db $ff

; Match the gun used on the first arched-window record.
MatchGunArch1:

C2Loc4_36:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootArchWin1
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before breaking the first arched window.
ShootArchWin1:

C2Loc4_37:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04

jr_007_6b8c:
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakArchWin1

; Match the gun used on the second arched-window record.
MatchGunArch2:

C2Loc4_38:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootArchWin2
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before breaking the second arched window.
ShootArchWin2:

C2Loc4_39:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakArchWin2

; Match the gun used on the first Chicago arched window.
MatchGunChiWin1:

C2Loc4_3A:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootChiWindow1
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before the first Chicago window breaking script.
ShootChiWindow1:

C2Loc4_3B:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakChiWindow1

; Match the gun used on the second Chicago arched window.
MatchGunChiWin2:

C2Loc4_3C:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootChiWindow2
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before the second Chicago window breaking script.
ShootChiWindow2:

C2Loc4_3D:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakChiWindow2

; Match the gun used on the first front-window record.
MatchGunJoeWin1:

C2Loc4_3E:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootJoeWindow1
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before the original no-effect window reply.
ShootJoeWindow1:

C2Loc4_3F:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw JoeWindowNoHit

; Match the gun used on the second front-window record.
MatchGunJoeWin2:

C2Loc4_40:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootJoeWindow2
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before the original window breaking path.
ShootJoeWindow2:

C2Loc4_41:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakJoeWindow

; Match the gun for the peeping window attack.
MatchGunPeepWin:

C2Loc4_42:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootPeepWindow
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before entering the window breaking script.
ShootPeepWindow:

C2Loc4_43:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakPeepWindow

; Match the gun for the window whose break alerts the goons.
MatchGunGoonsWin:

C2Loc4_44:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootGoonsGlass
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before entering the goon window breaking script.
ShootGoonsGlass:

C2Loc4_45:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakGoonsGlass

; Match the gun used on the cleaners window.
MatchGunCleanWin:

C2Loc4_46:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootCleanWindow
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before breaking the cleaners window.
ShootCleanWindow:

C2Loc4_47:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakCleanWindow

; Match the gun for the first police window.
MatchPoliceGun1:

C2Loc4_48:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootPoliceWin1
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before breaking the first police window.
ShootPoliceWin1:

C2Loc4_49:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakPoliceWin1

; Match the gun for the second police window.
MatchPoliceGun2:

C2Loc4_4A:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootPoliceWin2
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before breaking the second police window.
ShootPoliceWin2:

C2Loc4_4B:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakPoliceWin2

; Match the gun for the selected object ricochet route.
MatchGunBounce:

C2Loc4_4C:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw GunRicochet
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot, render the effect, and show the ricochet reply.
GunRicochet:

C2Loc4_4D:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Wait while rendering objects.
    db $47, $10
    ; Play audio.
    db $3e, $11
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $15
    ; End script.
    db $ff

; Match the gun used on the bottle.
MatchGunBottle:

C2Loc4_4E:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootC2Bottle
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before breaking the bottle.
ShootC2Bottle:

C2Loc4_4F:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakC2Bottle

; Match the gun used on the casino entrance.
MatchCasinoGun:

C2Loc4_50:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootCasinoDoor
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before entering the casino door breaking script.
ShootCasinoDoor:

C2Loc4_51:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script in bank $08.
    db $7d
    dw BreakCasinoDoor
    db $08

; Match the gun used on the door to the goons' guarded room.
MatchGoonsGun:

C2Loc4_52:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootGoonsDoor
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before entering the guarded room door breaking script.
ShootGoonsDoor:

C2Loc4_53:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script in bank $08.
    db $7d
    dw BreakGoonsDoor
    db $08

; Match the gun used on the Vegas station entrance.
MatchVegasStnGun:

C2Loc4_54:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootVegasDoor
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before the Vegas station door breaking script.
ShootVegasDoor:

C2Loc4_55:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script in bank $08.
    db $7d
    dw BreakVegasDoor
    db $08

; Match the gun used on the Chicago station entrance.
MatchChiStnGun:

C2Loc4_56:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootChiStnDoor
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before the station door breaking script.
ShootChiStnDoor:

C2Loc4_57:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script in bank $08.
    db $7d
    dw BreakChiDoor
    db $08

; Match the gun used on the apartment building entrance.
MatchHomeEntGun:

C2Loc4_58:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootHomeEntry
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before the building entrance glass breaking script.
ShootHomeEntry:

C2Loc4_59:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script in bank $08.
    db $7d
    dw BreakHomeEntry
    db $08

; Match the gun used on the Joe front entrance.
MatchJoeFrontGun:

C2Loc4_5A:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootJoeFront
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before the Joe front glass breaking script.
ShootJoeFront:

C2Loc4_5B:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script in bank $08.
    db $7d
    dw BreakJoeFront
    db $08

; Match the gun used on the police station entrance.
MatchPoliceDoor:

C2Loc4_5C:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootPoliceDoor
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before entering the police door breaking script.
ShootPoliceDoor:

C2Loc4_5D:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script in bank $08.
    db $7d
    dw BreakPoliceDoor
    db $08

; Match the gun used on the morgue front entrance.
MatchMorgueGun:

C2Loc4_5E:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootMorgueEntry
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before the morgue front glass breaking script.
ShootMorgueEntry:

C2Loc4_5F:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script in bank $08.
    db $7d
    dw BreakMorgueEntry
    db $08

; Match the gun used on the wardrobe mirror.
MatchWardMirror:

C2Loc4_60:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootWardMirror
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot before entering the wardrobe mirror breaking script.
ShootWardMirror:

C2Loc4_61:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Jump to script.
    db $07
    dw BreakWardMirror

; Match the gun used on Joe's rear door.
MatchGunJoeLock:

C2Loc4_62:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootJoeLock
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot and original open-door gate before breaking Joe's lock.
ShootJoeLock:

C2Loc4_63:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ShowShotAway
    ; Test object flag and branch when set.
    db $08, C2JoeLockGone
    dw NoC2PackEffect
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $dc
    ; Set selected state and refresh.
    db $21
    ; Show message 1.
    db $01, $dd
    ; Set object flag.
    db $09, C2JoeLockGone
    ; End script.
    db $ff

; Match the gun used on Sugar's door.
MatchGunSugLock:

C2Loc4_64:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw ShootSugarLock
    ; Jump to script.
    db $07
    dw NoC2PackEffect

; Check the bullet slot and original door gates before breaking Sugar's lock.
ShootSugarLock:

C2Loc4_65:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ShowShotAway
    ; Test object flag and branch when set.
    db $08, C2SugLockGone
    dw NoC2PackEffect
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $dc
    ; Show object.
    db $29, $46
    ; Refresh room objects.
    db $2b
    ; Set state and refresh without cue.
    db $22, $66
    ; Set selected attribute bit 2.
    db $1e
    ; Show message 1.
    db $01, $dd
    ; Set object flag.
    db $09, C2SugLockGone
    ; End script.
    db $ff

; Match the gun in the original unmatched-target path or retain the tied-item fallback.
MatchGunFallback:

C2Loc4_66:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw CheckGunUseRoom
    ; Jump to script.
    db $07
    dw TiedItemFallback

; Use the hands check in the laundry, otherwise continue to the shot.
CheckGunUseRoom:

C2Loc4_67:
    ; Test room argument and branch on equality.
    db $25, RoomLaundry
    dw CheckTiedGun

; Load a bullet slot and show the original untargeted-shot reply if it succeeds.
FireFallbackGun:

C2Loc4_68:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Show message 0.
    db $00, $45
    ; End script.
    db $ff

; Allow the shot only with hands free and retain the tied-hands reply.
CheckTiedGun:

C2Loc4_69:
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw FireFallbackGun
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

; Show the original pants description.
LookC2Pants:

C2Sc4_05:
    ; Show message 0.
    db $00, $14
    ; End script.
    db $ff

; Hide the pants object and mark them taken.
TakeC2Pants:

C2Sc4_06:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Pack
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $02
    ; Set object flag.
    db $09, C2PantsTaken
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original worn leather wallet description.
LookC2Wallet1:

C2Sc4_07:
    ; Show message 0.
    db $00, $15
    ; End script.
    db $ff

; Read the folded clipping headline and discover the Peoria cab stop once.
ReadC2News1:

C2Sc4_08:
    ; Show message 0.
    db $00, $1b
    ; Test object flag and branch when set.
    db $08, C2PeoriaKnown
    dw EndC2Pack
    ; Add quick-list value.
    db $44, CabPeoria
    ; Set object flag.
    db $09, C2PeoriaKnown
    ; End script.
    db $ff

; Open the original newspaper and show the old clipping discovery once.
OpenC2News1:

C2Sc4_09:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2PackIsOpen
    ; Hold text.
    db $2e
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Keep selected change.
    db $27
    ; Test object flag and branch when set.
    db $08, C2ClipFound
    dw EndC2Pack
    ; Show message 0.
    db $00, $29
    ; Set object flag.
    db $09, C2ClipFound
    ; End script.
    db $ff

; Show the original suitcase initials description.
LookC2Suitcase:

C2Sc4_0A:
    ; Show message 0.
    db $00, $17
    ; End script.
    db $ff

; Open the suitcase and retain its original object swap when it has not been taken.
OpenC2Suitcase:

C2Sc4_0B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2PackIsOpen
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Test object flag and branch when set.
    db $08, C2SuitcaseTaken
    dw EndSuitcaseOpen
    ; Hide object.
    db $2a, $1d
    ; Show object.
    db $29, $21
    ; Refresh room objects.
    db $2b

; Keep the selected suitcase change and end.
EndSuitcaseOpen:

C2Loc4_6A:
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

; Mark the suitcase taken and hide the original open or closed object.
TakeC2Suitcase:

C2Sc4_0C:
    ; Test selected attribute bit 1.
    db $1a
    ; Branch if result bit 0 is set.
    db $03
    dw TakeC2Pack
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Pack
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Set object flag.
    db $09, C2SuitcaseTaken
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw TakeOpenSuitcase
    ; Hide object.
    db $2a, $1d
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Hide the open suitcase object and finish pickup.
TakeOpenSuitcase:

C2Loc4_6B:
    ; Hide object.
    db $2a, $21
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Close the suitcase and restore the closed object when it has not been taken.
CloseC2Suitcase:

C2Sc4_0D:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2PackIsClosed
    ; Show message 3.
    db $2c, $03
    ; Test object flag and branch when set.
    db $08, C2SuitcaseTaken
    dw EndSuitcaseClose
    ; Hide object.
    db $2a, $21
    ; Show object.
    db $29, $1d
    ; Refresh room objects.
    db $2b

; Clear the selected open bit and remove the suitcase change.
EndSuitcaseClose:

C2Loc4_82:
    ; Clear selected attribute bit 2.
    db $1f
    ; Remove selected change.
    db $38
    ; End script.
    db $ff

; Describe the original dirty linens and show the cash hint before the first search.
LookC2Laundry2:

C2Sc4_0E:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $1e
    ; Test object flag and branch when set.
    db $08, C2LaundrySearched
    dw EndC2Pack
    ; Show message 0.
    db $00, $24
    ; End script.
    db $ff

; Open the linens and show the original envelope and photo discovery once.
OpenC2Laundry2:

C2Sc4_0F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2PackIsOpen
    ; Test object flag and branch when set.
    db $08, C2LaundrySearched
    dw OpenC2PackNow
    ; Set object flag.
    db $09, C2LaundrySearched
    ; Hold text.
    db $2e
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Keep selected change.
    db $27
    ; Play audio.
    db $3e, $08
    ; Show message 1.
    db $01, $5a
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the original first envelope description.
LookC2Envelope1:

C2Sc4_10:
    ; Show message 0.
    db $00, $25
    ; End script.
    db $ff

; Show the original second envelope description.
LookC2Envelope2:

C2Sc4_11:
    ; Show message 1.
    db $01, $5b
    ; End script.
    db $ff

; Describe the spare coat with the original pocket inspection flag.
LookC2Coat:

C2Sc4_12:
    ; Test object flag and branch when set.
    db $08, C2CoatPocketSeen
    dw CoatAfterInspect
    ; Show message 1.
    db $01, $6e
    ; End script.
    db $ff

; Show the original coat description after its pocket inspection flag was set.
CoatAfterInspect:

C2Loc4_6C:
    ; Show message 1.
    db $01, $6f
    ; End script.
    db $ff

; Record the coat pocket inspection and use the common pocket-opening script.
OpenC2Coat:

C2Sc4_13:
    ; Set object flag.
    db $09, C2CoatPocketSeen
    ; Jump to script.
    db $07
    dw OpenC2Pocket

; Hide the original spare coat object and finish pickup.
TakeC2Coat:

C2Sc4_14:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Pack
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $33
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original gun description according to flag 4B.
LookC2Gun:

C2Sc4_15:
    ; Test object flag and branch when set.
    db $08, $4b
    dw GunAfterBullet
    ; Show message 1.
    db $01, $70
    ; End script.
    db $ff

; Show the original gun description after flag 4B was set.
GunAfterBullet:

C2Loc4_6D:
    ; Show message 1.
    db $01, $71
    ; End script.
    db $ff

; Show the original battery-operated flashlight description.
LookC2Lamp:

C2Sc4_16:
    ; Show message 1.
    db $01, $72
    ; End script.
    db $ff

; Hide the original flashlight object and finish pickup.
TakeC2Lamp:

C2Sc4_17:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Pack
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $34
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original night-table drawer description.
LookC2Drawer:

C2Sc4_18:
    ; Show message 1.
    db $01, $73
    ; End script.
    db $ff

; Hide the original drawer object and finish pickup.
TakeC2Drawer:

C2Sc4_19:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Pack
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $35
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original cardboard box description.
LookC2Box1:

C2Sc4_1A:
    ; Show message 1.
    db $01, $74
    ; End script.
    db $ff

; Show the original moldy box description.
LookMoldyBox:

C2Sc4_1B:
    ; Show message 1.
    db $01, $cd
    ; End script.
    db $ff

; Hide the original moldy box object and finish pickup.
TakeMoldyBox:

C2Sc4_1C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Pack
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $3e
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original small cardboard box description.
LookC2Box3:

C2Sc4_1D:
    ; Show message 1.
    db $01, $cf
    ; End script.
    db $ff

; Describe the vacuum according to its original opened and seen flags.
LookC2Vacuum:

C2Sc4_1E:
    ; Test object flag and branch when set.
    db $08, C2VacOpened
    dw VacuumAfterOpen
    ; Test object flag and branch when set.
    db $08, C2VacSeen
    dw VacuumAgain
    ; Show message 2.
    db $02, $57
    ; Set object flag.
    db $09, C2VacSeen
    ; End script.
    db $ff

; Show the original vacuum reply after it was opened.
VacuumAfterOpen:

C2Loc4_6E:
    ; Show message 2.
    db $02, $5a
    ; End script.
    db $ff

; Show the original repeated vacuum description.
VacuumAgain:

C2Loc4_6F:
    ; Show message 2.
    db $02, $58
    ; End script.
    db $ff

; Mark the vacuum opened before using the original grouped-item opening path.
OpenC2Vacuum:

C2Sc4_1F:
    ; Set object flag.
    db $09, C2VacOpened
    ; Jump to script.
    db $07
    dw OpenC2Pack

; Describe the vacuum bag according to its torn flag.
LookC2VacBag:

C2Sc4_20:
    ; Test object flag and branch when set.
    db $08, C2VacBagTorn
    dw LookTornVacBag
    ; Show message 2.
    db $02, $5b
    ; End script.
    db $ff

; Show the original torn vacuum bag description.
LookTornVacBag:

C2Loc4_70:
    ; Show message 2.
    db $02, $5c
    ; End script.
    db $ff

; Use the original opening path only after the bag was torn.
OpenC2VacBag:

C2Sc4_21:
    ; Test object flag and branch when set.
    db $08, C2VacBagTorn
    dw OpenC2Pack
    ; Show message 2.
    db $02, $5e
    ; End script.
    db $ff

; Read the original envelope three note addressed to Sugar.
LookC2Envelope3:

C2Sc4_22:
    ; Show message 2.
    db $02, $5d
    ; End script.
    db $ff

; Read the original Bondwell label on box 2.
LookC2Box2:

C2Sc4_23:
    ; Show message 2.
    db $02, $81
    ; End script.
    db $ff

; Open box 2 subject to its original room and uniform checks.
OpenC2Box2:

C2Sc4_24:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2PackIsOpen
    ; Test attribute bit 0 and branch when set.
    db $17
    dw OpenC2PackNow
    ; Test room argument and branch on inequality.
    db $55, $44
    dw OpenBox2Now
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw Box2Blocked

; Show the opening caption and swap the original box objects when needed.
OpenBox2Now:

C2Loc4_71:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Test object flag and branch when set.
    db $08, C2Box2Taken
    dw EndBox2Open
    ; Hide object.
    db $2a, $4b
    ; Show object.
    db $29, $4c
    ; Refresh room objects.
    db $2b

; Keep the selected box change and end the original script.
EndBox2Open:

C2Loc4_72:
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

; Show the original blocked box interaction reply.
Box2Blocked:

C2Loc4_73:
    ; Show message 3.
    db $2c, $41
    ; End script.
    db $ff

; Take box 2 subject to the original attribute, room and uniform checks.
TakeC2Box2:

C2Sc4_25:
    ; Test selected attribute bit 1.
    db $1a
    ; Branch if result bit 0 is set.
    db $03
    dw TakeC2Pack
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Pack
    ; Test room argument and branch on inequality.
    db $55, $44
    dw TakeBox2Now
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw Box2Blocked

; Mark box 2 taken and hide the appropriate object.
TakeBox2Now:

C2Loc4_74:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Set object flag.
    db $09, C2Box2Taken
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw TakeOpenBox2
    ; Hide object.
    db $2a, $4b
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Hide the original open box 2 object and finish pickup.
TakeOpenBox2:

C2Loc4_75:
    ; Hide object.
    db $2a, $4c
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Close box 2 and restore its closed object if it has not been taken.
CloseC2Box2:

C2Sc4_26:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2PackIsClosed
    ; Show message 3.
    db $2c, $03
    ; Test object flag and branch when set.
    db $08, C2Box2Taken
    dw EndC2PackClose
    ; Hide object.
    db $2a, $4c
    ; Show object.
    db $29, $4b
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw EndC2PackClose

; Describe the fine leather wallet and retain its regional initials.
LookC2Wallet2:

C2Sc4_27:
    ; Show message 2.
    db $02, $82
    ; End script.
    db $ff

; Read the original laundry detergent label.
LookC2SoapBox:

C2Sc4_28:
    ; Show message 2.
    db $02, $ba
    ; End script.
    db $ff

; Require free hands in the laundry room before opening the detergent box.
OpenC2SoapBox:

C2Sc4_29:
    ; Test room argument and branch on inequality.
    db $55, RoomLaundry
    dw OpenSoapBoxNow
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw OpenSoapBoxNow
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

; Use the original detergent box opening or already-open reply.
OpenSoapBoxNow:

C2Loc4_76:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2PackIsOpen
    ; Jump to script.
    db $07
    dw OpenC2PackNow

; Hide the original detergent box object and finish pickup.
TakeC2SoapBox:

C2Sc4_2A:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Pack
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $50
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Describe the original brown paper bag.
LookC2PaperBag:

C2Sc4_2B:
    ; Show message 0.
    db $00, $ae
    ; End script.
    db $ff

; Choose an alternate target for the original grouped item.
UseC2Pack:

C2Sc4_2C:
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Match the grouped item target against the original rows.
MatchC2Pack:

C2Loc4_77:
    ; Match alternate item against type, ID and script target rows.
    db $32, $02, $00
    dw PutPackWasher
    db $02, $01
    dw PutPackTrash1
    db $02, $02
    dw PutPackTrash2
    db $02, $03
    dw MatchDeskStore
    db $00, $a7
    dw PutPackDirect
    db $fe, $fe
    dw NoC2PackEffect

; Place the original grouped item in the washer.
PutPackWasher:

C2Loc4_78:
    ; Place the item in the washer.
    db $65, GrpWasher
    ; End script.
    db $ff

; Place the original grouped item in the first trash can.
PutPackTrash1:

C2Loc4_79:
    ; Place the item in the first trash can.
    db $65, GrpTrash1
    ; End script.
    db $ff

; Place the original grouped item in the second trash can.
PutPackTrash2:

C2Loc4_7A:
    ; Place the item in the second trash can.
    db $65, GrpTrash2
    ; End script.
    db $ff

; Confirm original direct placement without a container record.
PutPackDirect:

C2Loc4_7B:
    ; Confirm direct placement without a group record.
    db $65, PutDirect
    ; End script.
    db $ff

; End the original grouped-item script.
EndC2Pack:

C2Loc4_7C:
    ; End script.
    db $ff

; Use the original grouped-item open or already-open paths.
OpenC2Pack:

C2Sc4_2D:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2PackIsOpen
    ; Jump to script.
    db $07
    dw OpenC2PackNow

; Close the selected grouped item and remove its original change.
CloseC2Pack:

C2Sc4_2E:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2PackIsClosed
    ; Show message 3.
    db $2c, $03

; Clear the selected open bit and remove the selected change.
EndC2PackClose:

C2Loc4_83:
    ; Clear selected attribute bit 2.
    db $1f
    ; Remove selected change.
    db $38
    ; End script.
    db $ff

; Show the original pickup caption and append the selected item.
TakeC2Pack:

C2Sc4_2F:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Pack
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original already-open grouped-item reply.
C2PackIsOpen:

C2Loc4_7D:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $19
    ; End script.
    db $ff

; Show the original already-closed grouped-item reply.
C2PackIsClosed:

C2Loc4_84:
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff

; Append the selected item and end the script.
AddC2PackEnd:

C2Loc4_7E:
    ; Append selected item to list.
    db $26
    ; End script.
    db $ff

; Show the original no-effect grouped-item reply.
NoC2PackEffect:

C2Sc4_30:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff

; Show the original grouped-item pickup rejection.
RejectC2Pack:

C2Loc4_7F:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

; Show the original opening caption and keep the selected change.
OpenC2PackNow:

C2Loc4_80:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Keep selected change.
    db $27
    ; End script.
    db $ff
