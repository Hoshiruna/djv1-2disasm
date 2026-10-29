
; Show the original trench coat description.
LookC2Trench:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C2Sc4_00:
    ; Show message 0.
    db $00, $13 ; Message Text12Message13: よごれと しわで ヨレヨレになった / トレンチコートだ。[END]
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

Jump_007_6866:
    ; Show message 3.
    db $2c, $25 ; Message Text18Message25: [OBJECT_WRAM:37C5]の ポケットを / あけた。[END]
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

; Show the original already-open pocket reply.
C2PocketIsOpen:

C2Loc4_00:
    ; Show message 3.
    db $2c, $27 ; Message Text18Message27: [OBJECT_WRAM:37C5]の ポケットは / あいている。[END]
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
    db $32, $02, C2GroupLaundryWasher
    dw MatchPackWasher
    db $00, C2TargetSelf
    dw MatchPackSelf
    db $00, C2TargetNoHit
    dw UsePackArea

jr_007_687b:
    db $00, C2TargetMorgueClerk
    dw UsePackMan
    db $00, C2TargetTrainConductor
    dw UsePackConductor
    db $00, C2TargetTrainYoungWoman
    dw UsePackPassenger
    db $00, C2TargetTrainChattyWoman
    dw UsePackPassenger
    db $00, C2TargetSugarHobo
    dw UsePackHobo
    db $00, C2TargetTrainSeatMan
    dw UsePackPerson
    db $00, C2TargetHotelCashier
    dw UsePackCashier
    db $00, C2TargetVegasSeller
    dw UsePackPerson
    db $00, C2TargetVegasClaimAttendant
    dw UsePackClaimClerk
    db $00, C2TargetChicagoNewsSeller
    dw UsePackNewsSeller
    db $00, C2TargetChicagoNewsDog
    dw MatchGunDog
    db $00, C2TargetCabDriver
    dw UsePackDriver
    db $07, $46
    dw MatchGunCabTarget
    db $07, $48
    dw MatchGunCabTarget
    db $05, C2TargetCottageCab
    dw MatchGunCabTarget
    db $05, C2TargetJoeFrontCab
    dw MatchGunCabTarget
    db $05, C2TargetMorgueCab
    dw MatchGunCabTarget
    db $00, C2TargetVegasStationArch1
    dw MatchGunArch1
    db $00, C2TargetVegasStationArch2
    dw MatchGunArch2
    db $00, C2TargetChicagoStationArch1
    dw MatchGunChiWin1
    db $00, C2TargetChicagoStationArch2
    dw MatchGunChiWin2
    db $00, C2TargetJoeFrontWindow
    dw MatchGunJoeWin1
    db $00, C2TargetJoeBarFrontWindow
    dw MatchGunJoeWin2
    db $00, C2TargetSugarPeepWindow
    dw MatchGunPeepWin
    db $00, C2TargetCleanersHallWindow
    dw MatchGunGoonsWin
    db $00, C2TargetCleanersFrontWindow
    dw MatchGunCleanWin
    db $00, C2TargetPoliceWindow1
    dw MatchPoliceGun1
    db $00, C2TargetPoliceWindow2
    dw MatchPoliceGun2
    db $01, C2ContainerJoeSafe
    dw MatchGunBounce
    db $03, C2Bottle
    dw MatchGunBottle
    db $05, C2TargetCasinoFrontDoor
    dw MatchCasinoGun
    db $05, C2TargetCleanersEntrance
    dw MatchGoonsGun
    db $05, C2TargetVegasStationEntrance
    dw MatchVegasStnGun
    db $05, C2TargetChicagoStationEntrance
    dw MatchChiStnGun
    db $05, C2TargetAdisonBuildingEntrance
    dw MatchHomeEntGun
    db $05, C2TargetJoeBarFrontDoor
    dw MatchJoeFrontGun
    db $05, C2TargetPoliceStationDoor
    dw MatchPoliceDoor
    db $05, C2TargetMorgueEntranceDoor
    dw MatchMorgueGun
    db $01, C2ContainerSugarWardrobe
    dw MatchWardMirror
    db $05, C2TargetJoeRearDoor
    dw MatchGunJoeLock
    db $05, C2TargetSugarApartmentDoor
    dw MatchGunSugLock
    db $02, C2GroupMaloneDesk
    dw MatchDeskStore
    db $fe, $fe
    dw MatchGunFallback

; Match the grouped item placed in the washing machine.
MatchPackWasher:

C2Loc4_02:
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemDirtyLinens
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
    db $02, $c7 ; Message Text17Message47: ぬがなければ いれられない。[END]
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
    db $00, $27 ; Message Text12Message27: トレンチコートを きた。 / ほのかに タバコの においがする。[END]
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
    db $2c, $12 ; Message Text18Message12: [OBJECT_WRAM:37C5]を ぬいだ。[END]

; Dispatch the original room-dependent reactions to taking clothes off.
CheckClothesRoom:

C2Loc4_86:
    ; Test room argument and branch on equality.
    db $25, RoomVegasCashier
    dw CashierDressRoute
    ; Test room argument and branch on equality.
    db $25, RoomVegasBlackjack
    dw DealerDressRoute
    ; Test room argument and branch on equality.
    db $25, RoomVegasStationLobby
    dw StationDressCue
    ; Test room argument and branch on equality.
    db $25, RoomVegasLuggageClaim
    dw StationDressCue
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform6
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform7
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25

jr_007_69a2:
    db RoomVegasPlatform8
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform9
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform2
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform3
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform4
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform5
    dw DressPoliceRoute
    ; Test room argument and branch on equality.
    db $25, RoomChicagoStationLobby
    dw NewsSellerAlarm
    ; Test room argument and branch on equality.
    db $25, RoomMorgueReception
    dw MorgueDressRoute
    ; Test room argument and branch on equality.
    db $25, RoomTrain6A
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain6B
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain7A
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain7B
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain8A
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain8B
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain9A
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain9B
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain2A
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25

jr_007_69e6:
    db RoomTrain2B
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain3A
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25

jr_007_69ee:
    db RoomTrain3B
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain4A
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain4B
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain5A
    dw TrainDressAlarm
    ; Test room argument and branch on equality.
    db $25, RoomTrain5B
    dw TrainDressAlarm
    ; End script.
    db $ff

; Enter the original police arrest sequence in bank eight.
DressPoliceRoute:

C2Loc4_0E:
    ; Jump to script in bank $08.
    db $7d
    dw PoliceArrest
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
    db $2c, $29 ; Message Text18Message29: [OBJECT_WRAM:37C5]は おれが ふくを / ぬぎはじめたので / ビックリしたようだ。[PAGE] / とつぜん おおごえを はりあげ / たすけを よん...
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
    db $00, $28 ; Message Text12Message28: ズボンを はいた。[END]
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
    db $01, $95 ; Message Text15Message15: コートを きた。 / この コートも いいな。[END]
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
    ; Fire one loaded Case II chamber.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Hold text.
    db $2e

jr_007_6a4f:
    ; Show message 1.
    db $01, $91 ; Message Text15Message11: ロシアンルーレットは おもしろいな。じつに スリルがある・・・。[END]
    ; Show message 1.
    db $01, $92 ; Message Text15Message12: たまは おれの あたまを / かんつうした。[PAGE] / あぶないので よいこは ぜったい / まねを しないように・・・![END]
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
    db $2c, $47 ; Message Text18Message47: でんとうを とらなければ できない。[END]
    ; End script.
    db $ff

; Select the gun reply or retain the room 42 vacuum and original fallback checks.
UsePackArea:

C2Loc4_1B:
    ; Test packed item argument and branch on equality.
    db $46, C2Gun
    dw FireC2Away
    ; Test room argument and branch on inequality.
    db $55, RoomSugarApartment
    dw NoC2PackEffect
    ; Test packed item argument and branch on equality.
    db $46, C2Vacuum
    dw VacuumNoPlugReply
    ; Jump to script.
    db $07
    dw TiedItemFallback

; Explain that the vacuum does not work and has no plug.
VacuumNoPlugReply:

C2Loc4_1C:
    ; Show message 2.
    db $02, $67 ; Message Text16Message67: そうじきが うごかない。 / おかしなことに プラグが ない。[END]
    ; End script.
    db $ff

; Check the bullet slot before the untargeted shot reply.
FireC2Away:

C2Loc4_1D:
    ; Fire one loaded Case II chamber.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack

; Show the original reply after the untargeted shot.
ShowShotAway:

C2Loc4_85:
    ; Show message 0.
    db $00 ; Message Text12Message45: たまは どこかへ とんでいって / しまった。[END]

jr_007_6a78:
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
    db $00, $07 ; Message Text12Message07: おとこは くびを よこにふって / いった。[PAGE] / 「ありがとう・・・。 /  でも ほどこしを うけるほど /  こまっていないよ!」[END]
    ; End script.
    db $ff

; Select the flashlight reaction before the shared gun fallback.
UsePackMan:

C2Loc4_1F:
    ; Test packed item argument and branch on equality.
    db $46, C2Lamp

jr_007_6a87:
    dw LightManFace

; Match the gun before the original person shooting path.
MatchPackGun:

C2Loc4_20:
jr_007_6a89:
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
    db $2c, $10 ; Message Text18Message10: えいがで けいかんが はんにんに / はくじょうさせるとき するように / あかりを [OBJECT_WRAM:37C5]の かおに / むけて あてた。[PAGE] /...
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
    db $2c, $10 ; Message Text18Message10: えいがで けいかんが はんにんに / はくじょうさせるとき するように / あかりを [OBJECT_WRAM:37C5]の かおに / むけて あてた。[PAGE] /...
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

jr_007_6abd:
    db C2LampFlag
    dw NoC2PackEffect
    ; Set text name 0.
    db $30, $b6
    ; Show message 3.
    db $2c, $10 ; Message Text18Message10: えいがで けいかんが はんにんに / はくじょうさせるとき するように / あかりを [OBJECT_WRAM:37C5]の かおに / むけて あてた。[PAGE] /...
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
    db $2c, $10 ; Message Text18Message10: えいがで けいかんが はんにんに / はくじょうさせるとき するように / あかりを [OBJECT_WRAM:37C5]の かおに / むけて あてた。[PAGE] /...
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
    db $2c, $05 ; Message Text18Message05: おんなは いっしゅん おどろいたが / さしだした [OBJECT_WRAM:37C5]をみて / ニコリと わらった。[PAGE] / 「すばらしい プレゼントを / ...
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
    db $02, $e5 ; Message Text17Message65: おとこは ねむっているので / はんのうがない。[END]
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
    db $01, $26 ; Message Text14Message26: 「ありがとうございます。 /  でも おかねを いただかないと /  しんぶんは おわたしできません。」[END]
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
    db $2c, $10 ; Message Text18Message10: えいがで けいかんが はんにんに / はくじょうさせるとき するように / あかりを [OBJECT_WRAM:37C5]の かおに / むけて あてた。[PAGE] /...
    ; End script.
    db $ff

; Check the bullet slot, show the old man attack text, and enter the dog ending.
ShootOldMan:

C2Loc4_2C:
    ; Fire one loaded Case II chamber.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Show message 1.
    db $01, $28 ; Message Text14Message28: ろうじんを ころしてしまった!![PAGE] / それを みていた ちゅうじつな / いぬが きゅうに おれに / とびかかってきた![END]
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

jr_007_6b16:
    dw NoC2PackEffect

; Check the bullet slot before the dog dodges the attack.
ShootC2Dog:

C2Loc4_2E:
    ; Fire one loaded Case II chamber.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Show message 1.
    db $01, $27 ; Message Text14Message27: このいぬは よく くんれんされているようだ。[PAGE] / おれの こうげきを すんなりと / かわすとは![END]
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
    db $01, $50 ; Message Text14Message50: うんてんしゅは よろこんでくれた。 / だが うけとらずに こういった。[PAGE] / 「ありがとう。 /  でも いまのところ まにあって /  いるんだ。」[END]
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
    db $2c, $10 ; Message Text18Message10: えいがで けいかんが はんにんに / はくじょうさせるとき するように / あかりを [OBJECT_WRAM:37C5]の かおに / むけて あてた。[PAGE] /...
    ; End script.
    db $ff

; Check the bullet slot and show the shot ricocheting off the glass.
ShootCabGlass:

C2Loc4_31:
    ; Fire one loaded Case II chamber.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $4b ; Message Text14Message4B: おれは ピストルを つかった。[END]
    ; Set text name 0.
    db $30, $ba
    ; Play audio.
    db $3e, $11
    ; Show message 3.
    db $2c, $15 ; Message Text18Message15: [OBJECT_WRAM:37C5]に たまが あたって / はねかえった。[PAGE] / あぶない! / もうすこしで おれに あたる / ところだった・・・。[END]
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
    db $01, $3b ; Message Text14Message3B: いや まてよ! / うんてんしゅを おこらせたら / タクシーに のれなくなる・・・。[END]
    ; End script.
    db $ff

; Show the cab protection reply for the matched target.
ProtectCabTarget:

C2Loc4_34:
    ; Show message 1.
    db $01, $3c ; Message Text14Message3C: いや そんなことはできない。 / ゆうじんの くるまだ![END]
    ; End script.
    db $ff

; Check the bullet slot and run the original murder ending.
ShootC2Person:

C2Loc4_35:
    ; Fire one loaded Case II chamber.
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
    db $00, $2b ; Message Text12Message2B: おれは ピストルの トリガーを ひきひとを ころしてしまった![END]
    ; Wait sixty ticks.
    db $7e
    ; Run scene effect.
    db $39, FxHandcuffs
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 2.
    db $02, $9a ; Message Text17Message1A: さつじんの つみで おれを / まっていたのは でんきイスだった。[PAGE] / でんきイスに しばりつけられて / おれは ばくぜんと かんがえていた。[PAGE] ...
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
    db $2c, $1c ; Message Text18Message1C: [OBJECT_WRAM:37C5]を てにいれた。[END]
    ; Hide object.
    db $2a, C2VisIdBathTrench
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
    db $2c, $26 ; Message Text18Message26: [OBJECT_WRAM:37C5]の ポケットを / しめた。[END]
    ; Jump to script.
    db $07

jr_007_6b80:
    dw EndC2PackClose

; Show the original already-closed pocket reply.
C2PocketIsClosed:

C2Loc4_81:
    ; Show message 3.
    db $2c, $28 ; Message Text18Message28: [OBJECT_WRAM:37C5]の ポケットは / しまっている。[END]
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
    ; Fire one loaded Case II chamber.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    db $2c, $15 ; Message Text18Message15: [OBJECT_WRAM:37C5]に たまが あたって / はねかえった。[PAGE] / あぶない! / もうすこしで おれに あたる / ところだった・・・。[END]
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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

jr_007_6c81:
    dw NoC2PackEffect

; Check the bullet slot before the building entrance glass breaking script.
ShootHomeEntry:

C2Loc4_59:
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    ; Fire one loaded Case II chamber.
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
    db $01, $dc ; Message Text15Message5C: ドアの カギに ねらいを さだめて / トリガーを ひいた。[END]
    ; Set selected state and refresh.
    db $21
    ; Show message 1.
    db $01, $dd ; Message Text15Message5D: わーお! / みごと カギに めいちゅう! / カギが ふっとんだ。[PAGE] / ハッ ハッ! / おれの うでも たいしたもんだ。[END]
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
    ; Fire one loaded Case II chamber.
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
    db $01, $dc ; Message Text15Message5C: ドアの カギに ねらいを さだめて / トリガーを ひいた。[END]
    ; Show object.
    db $29, C2VisIdSugarApartmentDoorOpen
    ; Refresh room objects.
    db $2b
    ; Set state and refresh without cue.
    db $22, C2StateSugarDoorUnlocked
    ; Set selected attribute bit 2.
    db $1e
    ; Show message 1.
    db $01, $dd ; Message Text15Message5D: わーお! / みごと カギに めいちゅう! / カギが ふっとんだ。[PAGE] / ハッ ハッ! / おれの うでも たいしたもんだ。[END]
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
    ; Fire one loaded Case II chamber.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Pack
    ; Show message 0.
    db $00, $45 ; Message Text12Message45: たまは どこかへ とんでいって / しまった。[END]
    ; End script.
    db $ff

; Allow the shot only with hands free and retain the tied-hands reply.
CheckTiedGun:

C2Loc4_69:
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw FireFallbackGun
    ; Show message 2.
    db $02, $be ; Message Text17Message3E: そんなことは できない。 / ロープで しばられている。[END]
    ; End script.
    db $ff

; Show the original pants description.
LookC2Pants:

C2Sc4_05:
    ; Show message 0.
    db $00, $14 ; Message Text12Message14: しわだらけの グレーの ズボンだ。 / ポケットが ついている。[END]
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
    db $2c, $1c ; Message Text18Message1C: [OBJECT_WRAM:37C5]を てにいれた。[END]
    ; Hide object.
    db $2a, C2VisIdBathPants
    ; Set object flag.
    db $09, C2PantsTaken
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original worn leather wallet description.
LookC2Wallet1:

C2Sc4_07:
    ; Show message 0.
    db $00, $15 ; Message Text12Message15: つかいふるされた かわせいの / さいふだ。[END]
    ; End script.
    db $ff

; Read the folded clipping headline and discover the Peoria cab stop once.
ReadC2News1:

C2Sc4_08:
    ; Show message 0.
    db $00, $1b ; Message Text12Message1B: ごく さいきんの しんぶんの / きりぬきだ。 / みだしは・・・[PAGE] / 「エース・ハーディング むざい! /  しりつたんていが みずから /  むじつを し...
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
    db $2c, $02 ; Message Text18Message02: [OBJECT_WRAM:37C5]を あけた。[END]
    ; Keep selected change.
    db $27
    ; Test object flag and branch when set.
    db $08, C2ClipFound
    dw EndC2Pack
    ; Show message 0.
    db $00, $29 ; Message Text12Message29: しんぶんを ひろげると ふるい / しんぶんの きりぬきが はさんで / あった。[END]
    ; Set object flag.
    db $09, C2ClipFound
    ; End script.
    db $ff

; Show the original suitcase initials description.
LookC2Suitcase:

C2Sc4_0A:
    ; Show message 0.
    db $00, $17 ; Message Text12Message17: ありふれた スーツケースだ。 / きんの もじで 「T・B」と / イニシャルが はいっている。[END]
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
    db $2c, $02 ; Message Text18Message02: [OBJECT_WRAM:37C5]を あけた。[END]
    ; Test object flag and branch when set.
    db $08, C2SuitcaseTaken
    dw EndSuitcaseOpen
    ; Hide object.
    db $2a, C2VisIdClaimSuitcaseClosed
    ; Show object.
    db $29, C2VisIdClaimSuitcaseOpen
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
    db $2c ; Message Text18Message1C: [OBJECT_WRAM:37C5]を てにいれた。[END]

Jump_007_6d66:
    db $1c
    ; Set object flag.
    db $09, C2SuitcaseTaken
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw TakeOpenSuitcase
    ; Hide object.
    db $2a, C2VisIdClaimSuitcaseClosed

Call_007_6d6e:
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Hide the open suitcase object and finish pickup.
TakeOpenSuitcase:

C2Loc4_6B:
    ; Hide object.
    db $2a, C2VisIdClaimSuitcaseOpen
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
    db $2c, $03 ; Message Text18Message03: [OBJECT_WRAM:37C5]を しめた。[END]
    ; Test object flag and branch when set.
    db $08, C2SuitcaseTaken
    dw EndSuitcaseClose
    ; Hide object.
    db $2a, C2VisIdClaimSuitcaseOpen
    ; Show object.
    db $29, C2VisIdClaimSuitcaseClosed
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
    db $00, $1e ; Message Text12Message1E: うわーっ! / ずいぶん よごれものを / ためこんだなあ・・・。[END]
    ; Test object flag and branch when set.
    db $08, C2LaundrySearched
    dw EndC2Pack
    ; Show message 0.
    db $00, $24 ; Message Text12Message24: もしかしたら このなかに / 112000ドルが かくされて / いるかも しれないな・・・。[END]
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
    db $2c, $02 ; Message Text18Message02: [OBJECT_WRAM:37C5]を あけた。[END]
    ; Keep selected change.
    db $27
    ; Play audio.
    db $3e, $08
    ; Show message 1.
    db $01, $5a ; Message Text14Message5A: なかには ふうとうと いちまいの / きょうみぶかい しゃしんがあった。[PAGE] / その しゃしんには シーゲルと / おれの しらないおとこが / クリーニングて...
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the original first envelope description.
LookC2Envelope1:

C2Sc4_10:
    ; Show message 0.
    db $00, $25 ; Message Text12Message25: どこにでも うっている しろい / ふうとうだ。 / あてなには こうかいてある・・・。[PAGE] / 「ラッキーダイスホテル /      アンソニー・マロンさま」[...
    ; End script.
    db $ff

; Show the original second envelope description.
LookC2Envelope2:

C2Sc4_11:
    ; Show message 1.
    db $01, $5b ; Message Text14Message5B: おれあてに なっている。[END]
    ; End script.
    db $ff

; Describe the spare coat with the original pocket inspection flag.
LookC2Coat:

C2Sc4_12:
    ; Test object flag and branch when set.
    db $08, C2CoatPocketSeen
    dw CoatAfterInspect
    ; Show message 1.
    db $01, $6e ; Message Text14Message6E: コートだ。 / ふしぎなことに ストージーは てを / ふれていないようだ。[PAGE] / たしか ポケットに あれを / いれていたはずだが・・・。[END]
    ; End script.
    db $ff

; Show the original coat description after its pocket inspection flag was set.
CoatAfterInspect:

C2Loc4_6C:
    ; Show message 1.
    db $01, $6f ; Message Text14Message6F: よびの コートだ。[END]
    ; End script.
    db $ff

; Record the coat pocket inspection and use the common pocket-opening script.
; The inspection flag is set before the shared already-open and pending-capacity checks.
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
    db $2c, $1c ; Message Text18Message1C: [OBJECT_WRAM:37C5]を てにいれた。[END]
    ; Hide object.
    db $2a, C2VisIdAdisonSpareCoat
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original gun description according to flag 4B.
LookC2Gun:

C2Sc4_15:
    ; Test object flag and branch when set.
    db $08, C2GunLoadAttempted
    dw GunAfterBullet
    ; Show message 1.
    db $01, $70 ; Message Text14Message70: 38スぺシャルだ。 / ・・・たまが はいっていない。[PAGE] / たまを いれなければ やくに / たたないぞ![END]
    ; End script.
    db $ff

; Show the original gun description after flag 4B was set.
GunAfterBullet:

C2Loc4_6D:
    ; Show message 1.
    db $01, $71 ; Message Text14Message71: 38スぺシャルだ。 / やすいけど やくに たつんだ。[END]
    ; End script.
    db $ff

; Show the original battery-operated flashlight description.
LookC2Lamp:

C2Sc4_16:
    ; Show message 1.
    db $01, $72 ; Message Text14Message72: かいちゅうでんとうだ。 / でんち・・・ きれてないかな?[END]
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
    db $2c, $1c ; Message Text18Message1C: [OBJECT_WRAM:37C5]を てにいれた。[END]
    ; Hide object.
    db $2a, C2VisIdAdisonFlashlight
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original night-table drawer description.
LookC2Drawer:

C2Sc4_18:
    ; Show message 1.
    db $01, $73 ; Message Text14Message73: ふだんは きょうだいに おさまって / いるはずの ひきだしだ。[END]
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
    db $2c, $1c ; Message Text18Message1C: [OBJECT_WRAM:37C5]を てにいれた。[END]
    ; Hide object.
    db $2a, C2VisIdAdisonDrawer
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original cardboard box description.
LookC2Box1:

C2Sc4_1A:
    ; Show message 1.
    db $01, $74 ; Message Text14Message74: ふつうの はこだ。[END]
    ; End script.
    db $ff

; Show the original moldy box description.
LookMoldyBox:

C2Sc4_1B:
    ; Show message 1.
    db $01, $cd ; Message Text15Message4D: かびくさい ダンボールばこだ。[END]
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
    db $2c, $1c ; Message Text18Message1C: [OBJECT_WRAM:37C5]を てにいれた。[END]
    ; Hide object.
    db $2a, C2VisIdJoeMoldyBox
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original small cardboard box description.
LookC2Box3:

C2Sc4_1D:
    ; Show message 1.
    db $01, $cf ; Message Text15Message4F: ちいさな だんボールばこだ。[END]
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
    db $02, $57 ; Message Text16Message57: そうじきだ。 / シュガーは これで どこを / そうじしているのだろう?[END]
    ; Set object flag.
    db $09, C2VacSeen
    ; End script.
    db $ff

; Show the original vacuum reply after it was opened.
VacuumAfterOpen:

C2Loc4_6E:
    ; Show message 2.
    db $02, $5a ; Message Text16Message5A: シュガーの そうじきだ。[END]
    ; End script.
    db $ff

; Show the original repeated vacuum description.
VacuumAgain:

C2Loc4_6F:
    ; Show message 2.
    db $02, $58 ; Message Text16Message58: そうじきだ。 / なかの ゴミが かんたんに / すてられるように なっている。[END]
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
    db $02, $5b ; Message Text16Message5B: ゴミの はいった そうじきの / ふくろだ。[PAGE] / でも このへやを そうじして でた / ゴミとは かんがえられないな。[PAGE] / シュガーが きれいず...
    ; End script.
    db $ff

; Show the original torn vacuum bag description.
LookTornVacBag:

C2Loc4_70:
    ; Show message 2.
    db $02, $5c ; Message Text16Message5C: そうじきの ふくろが やぶれている。[END]
    ; End script.
    db $ff

; Use the original opening path only after the bag was torn.
OpenC2VacBag:

C2Sc4_21:
    ; Test object flag and branch when set.
    db $08, C2VacBagTorn
    dw OpenC2Pack
    ; Show message 2.
    db $02, $5e ; Message Text16Message5E: ゴミぶくろは かたい そざいで / できているらしく やぶれない![END]
    ; End script.
    db $ff

; Read the original envelope three note addressed to Sugar.
LookC2Envelope3:

C2Sc4_22:
    ; Show message 2.
    db $02, $5d ; Message Text16Message5D: ふうとうだ。 / おもてに なぐりがきがしてある。[PAGE] / 「シュガー・・・。 /  わたしが やられたときは /  けいさつほんぶちょうに /  このてがみを ...
    ; End script.
    db $ff

; Read the original Bondwell label on box 2.
LookC2Box2:

C2Sc4_23:
    ; Show message 2.
    db $02, $81 ; Message Text17Message01: 「トーマス・ボンドウェル」と / かかれた かみが はりつけられているはこだ。[END]
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
    db $55, RoomMorgueReception
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
    db $2c, $02 ; Message Text18Message02: [OBJECT_WRAM:37C5]を あけた。[END]
    ; Test object flag and branch when set.
    db $08, C2Box2Taken
    dw EndBox2Open
    ; Hide object.
    db $2a, C2VisIdMorgueBox2Closed
    ; Show object.
    db $29, C2VisIdMorgueBox2Open
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
    db $2c, $41 ; Message Text18Message41: じむいんは いった。[PAGE] / 「これは したいの もちものだ! /  けいかんいがいは さわっては /  いけない!」[END]
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
    db $55, RoomMorgueReception
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
    db $2c, $1c ; Message Text18Message1C: [OBJECT_WRAM:37C5]を てにいれた。[END]
    ; Set object flag.
    db $09, C2Box2Taken
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw TakeOpenBox2
    ; Hide object.
    db $2a, C2VisIdMorgueBox2Closed
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Hide the original open box 2 object and finish pickup.
TakeOpenBox2:

C2Loc4_75:
    ; Hide object.
    db $2a, C2VisIdMorgueBox2Open
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
    db $2c, $03 ; Message Text18Message03: [OBJECT_WRAM:37C5]を しめた。[END]
    ; Test object flag and branch when set.
    db $08, C2Box2Taken
    dw EndC2PackClose
    ; Hide object.
    db $2a, C2VisIdMorgueBox2Open
    ; Show object.
    db $29, C2VisIdMorgueBox2Closed
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw EndC2PackClose

; Describe the fine leather wallet and retain its regional initials.
LookC2Wallet2:

C2Sc4_27:
    ; Show message 2.
    db $02, $82 ; Message Text17Message02: じょうしつの かわせいの さいふだ。「T・B」と イニシャルが / はいっている。[END]
    ; End script.
    db $ff

; Read the original laundry detergent label.
LookC2SoapBox:

C2Sc4_28:
    ; Show message 2.
    db $02, $ba ; Message Text17Message3A: 「ぎょうむよう せんざい」と / かいてある はこだ。[END]
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
    db $02, $be ; Message Text17Message3E: そんなことは できない。 / ロープで しばられている。[END]
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
    db $2c, $1c ; Message Text18Message1C: [OBJECT_WRAM:37C5]を てにいれた。[END]
    ; Hide object.
    db $2a, C2VisIdLaundrySoapBox
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Describe the original brown paper bag.
LookC2PaperBag:

C2Sc4_2B:
    ; Show message 0.
    db $00, $ae ; Message Text13Message2E: ちゃいろの かみぶくろだ。 / あぶらの しみが できている。[END]
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
    db $32, $02, C2GroupLaundryWasher
    dw PutPackWasher
    db $02, C2GroupSecretOfficeBin
    dw PutPackTrash1
    db $02, C2GroupJoeFoodTrash
    dw PutPackTrash2
    db $02, C2GroupMaloneDesk
    dw MatchDeskStore
    db $00, C2TargetNoHit
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
    db $2c, $03 ; Message Text18Message03: [OBJECT_WRAM:37C5]を しめた。[END]

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
    db $2c, $1c ; Message Text18Message1C: [OBJECT_WRAM:37C5]を てにいれた。[END]
    ; Jump to script.
    db $07
    dw AddC2PackEnd

; Show the original already-open grouped-item reply.
C2PackIsOpen:

C2Loc4_7D:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $19 ; Message Text18Message19: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Show the original already-closed grouped-item reply.
C2PackIsClosed:

C2Loc4_84:
    ; Show message 3.
    db $2c, $1a ; Message Text18Message1A: [OBJECT_WRAM:37C5]は しまっている。[END]
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
    db $00, $2c ; Message Text12Message2C: なにも おこらない。[END]
    ; End script.
    db $ff

; Show the original grouped-item pickup rejection.
RejectC2Pack:

C2Loc4_7F:
    ; Show message 0.
    db $00, $2d ; Message Text12Message2D: おれ・・・。 / なにを しているのだろう・・・。[END]
    ; End script.
    db $ff

; Show the original opening caption and keep the selected change.
OpenC2PackNow:

C2Loc4_80:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02 ; Message Text18Message02: [OBJECT_WRAM:37C5]を あけた。[END]
    ; Keep selected change.
    db $27
    ; End script.
    db $ff
