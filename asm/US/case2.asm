; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

INCLUDE "c2_start.asm"
INCLUDE "c2_flags.asm"
INCLUDE "c2_scene.asm"
INCLUDE "c2_views.asm"
INCLUDE "c2_marks.asm"
INCLUDE "c2_room.asm"
; BEGIN MODULE c2_room_fx.asm
; Match previous-room records for the scene effect; use $06 if none match.
PickC2Fx:
    call ReadC2Prev
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a

; Scan previous-room four-byte records for the selected object, ignoring its high marker bit.
ScanC2FxRows:

jr_003_4c7b:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl+]
    cp C2RoomRecordEnd
    jr z, DefaultC2RoomFx

    ld a, [hl+]
    and $7f
    cp d
    jr z, SetC2RoomFx

    call NextC2State
    jr ScanC2FxRows

; Store the matching room record effect byte in scene effect state.
SetC2RoomFx:

jr_003_4c93:
    ld a, [hl]
    ld [wSceneFx], a
    ret

; Select scene effect six when the previous room has no matching object record.
DefaultC2RoomFx:


jr_003_4c98:
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    ret


; Advance the room record pointer by four bytes.
NextC2State:
Call_003_4c9e:
    push hl
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, l
    ld [wRoomDataPtr], a
    ld a, h
    ld [wRoomDataPtr+1], a
    pop hl
    ret
; END MODULE c2_room_fx.asm
INCLUDE "c2_cab.asm"
; BEGIN MODULE c2_train_ids.asm

; Return BC as the byte-sized current room minus TrainRoomBase, with B zero; no range check.
TrainRoomIndex:
C2RoomIndex:


Call_003_4d4d:
    ld a, [wRoomId]
    sub TrainRoomBase
    ld c, a
    ld b, $00
    ret

; Read the current train-room state ID used by the fare-view commands.
TrainRoomState:
C2RoomState:


    call TrainRoomIndex
    ld hl, TrainRoomStates
    add hl, bc
    ld a, [hl]
    ret

; Read effect $0b or $0c for the current passenger room.
TrainRoomFx:
C2RoomCode:


    call TrainRoomIndex
    ld hl, TrainRoomFxIds
    add hl, bc
    ld a, [hl]
    ret

; Read the platform room used when leaving the current passenger room.
TrainRoomExit:
C2RoomNext:


    call TrainRoomIndex
    ld hl, TrainExitRooms
    add hl, bc
    ld a, [hl]
    ret


; Read the current passenger room's boarding-door state ID through the original unchecked index.
ReadTrainBoardingDoorState:
TrainRoomStateA:
C2RoomStateA:


    call TrainRoomIndex
    ld hl, TrainBoardingDoorStateByRoom
    add hl, bc
    ld a, [hl]
    ret


; Read the current passenger room's destination-door state ID through the original unchecked index.
ReadTrainDestinationDoorState:
TrainRoomStateB:
C2RoomStateB:


    call TrainRoomIndex
    ld hl, TrainDestinationDoorStateByRoom
    add hl, bc
    ld a, [hl]
    ret

; Read the clearance flag shared by the two passenger rooms of the current train.
TrainPassFlag:
C2RoomFlag:


    call TrainRoomIndex
    ld hl, TrainRoomFlags
    add hl, bc
    ld a, [hl]
    ret
; END MODULE c2_train_ids.asm
INCLUDE "chip_exchange.asm"
INCLUDE "c2_item_map.asm"
; BEGIN MODULE c2_bullets.asm

; Load one inventory round into the first empty chamber: clear its flag and decrement the inventory count.
; Refresh the selected list mode and retain both failure messages.
UseC2Bullet:


    ld a, [wC2Bullets]
    cp $00
    jr nz, C2BulletUseReady

    ld a, $2d
    call ShowMsg0 ; Message Text12Message2D: WHAT ARE YOU / DOING...?[END]
    call ClearResult
    ret


; With inventory available, scan for a set chamber flag (empty chamber).
; On loading success, inventory is reread after the message; no result setter follows the final refresh.
C2BulletUseReady:
jr_003_4f44:
    ld hl, C2BulletIds

; Scan the six chamber flags for the first set bit, then clear it to load that chamber.
C2BulletFindLoaded:
jr_003_4f47:
    ld a, [hl+]
    cp $ff
    jr z, C2BulletNoLoaded

    call ReadItemFlag
    jr z, C2BulletFindLoaded

    dec hl
    ld a, [hl]
    call ClearItemFlag
    ld a, $8e
    call ShowMsg1 ; Message Text15Message0E: YOU LOAD THE GUN.[END]
    call SetResult
    ld a, [wC2Bullets]
    dec a
    ld [wC2Bullets], a
    ld bc, wSelMode
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wOpByte], a
    call RefreshListMode
    ret


; All six chamber flags are clear: the gun is already fully loaded.
C2BulletNoLoaded:
jr_003_4f77:
    ld a, $8f
    call ShowMsg1 ; Message Text15Message0F: THERE ARE ONLY 6 / CHAMBERS IN A .38![END]
    call ClearResult
    ret

; Fire the first loaded chamber: set its clear flag and play cue $10; inventory count is unchanged.
; If all six chamber flags are set (empty), show message $90 and clear the result.
TakeC2Bullet:


    ld hl, C2BulletIds

; Scan for the first clear chamber flag (loaded round).
C2BulletFindEmpty:
jr_003_4f83:
    ld a, [hl+]
    cp $ff
    jr z, C2BulletAllLoaded

    call ReadItemFlag
    jr nz, C2BulletFindEmpty

    dec hl
    ld a, [hl]
    call SetItemFlag
    call SetResult
    ld a, $10
    call PlayAudio
    ret


; All six chamber flags are set: no loaded rounds remain.
C2BulletAllLoaded:
jr_003_4f9b:
    ld a, $90
    call ShowMsg1 ; Message Text15Message10: YOU TAKE AIM, PULL / THE TRIGGER...[PAGE] / AND... CLICK?![PAGE] / HMM, NO BULLETS![END]
    call ClearResult
    ret

; Six item-bitmap chamber flag IDs; set means empty, clear means loaded; $ff ends the scan.
C2BulletIds:
    db C2ChamberRound1, C2ChamberRound2, C2ChamberRound3, C2ChamberRound4, C2ChamberRound5, C2ChamberRound6, $ff
; END MODULE c2_bullets.asm
; BEGIN MODULE c2_counter_step.asm

; Read index and threshold, increment the indexed byte with wrap, and reset it with a set result when the new byte is less than or equal to the threshold.
StepC2Counter:
    call ReadArgs2
    call ClearResult
    ld a, [wArg0]
    ld c, a
    ld b, $00
    ld hl, wC2Counters
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld c, a
    ld a, [wArg1]
    cp c
    ret c

    xor a
    ld [hl], a
    call SetResult
    ret
; END MODULE c2_counter_step.asm
; BEGIN MODULE c2_cash.asm

; Subtract the byte in wArg0 from 16-bit Case II cash; commit only without borrow.
SpendC2Cash:
SpendC2Word:


Call_003_4fca:
    ld a, [wC2Cash]
    ld hl, wArg0
    sub [hl]
    ld a, [wC2Cash+1]
    sbc $00
    jr c, C2CashInsufficient

    ld a, [wC2Cash]
    ld hl, wArg0
    sub [hl]
    ld [wC2Cash], a
    ld a, [wC2Cash+1]
    sbc $00
    ld [wC2Cash+1], a
    call SetResult
    ret


; Clear the result when cash is below the requested amount.
C2CashInsufficient:
jr_003_4fee:
    call ClearResult
    ret

; Compare 16-bit Case II cash with the byte in wTrainFare and set result bit 0 on sufficient cash.
TestC2Cash:
TestC2Word:


    ld a, [wC2Cash]
    ld hl, wTrainFare
    sub [hl]
    ld a, [wC2Cash+1]
    sbc $00
    jr c, C2CashInsufficient

    call SetResult
    ret
; END MODULE c2_cash.asm
INCLUDE "change_ops.asm"
; BEGIN MODULE c2_text_anim.asm

; Preserve wArg0; in Case II, advance the mob-war text animation when C2TextAnim is set.
StepC2WarText:
StepC2TextObj:


    ld a, [wArg0]
    push af
    ld a, [wCaseId]
    cp $00
    jr z, C2WarTextRestoreArg

    ld a, C2TextAnim
    call ReadObjFlag
    jr z, C2WarTextRestoreArg

    call DrawWarText
    pop af
    ld [wArg0], a
    ret


; Restore wArg0 when the animation is skipped.
C2WarTextRestoreArg:
jr_003_50ab:
    pop af
    ld [wArg0], a
    ret
; END MODULE c2_text_anim.asm
; BEGIN MODULE c2_put_group.asm

; Save the active list and packed selection, set the first group pointer, and dispatch the put mode.
BeginC2Put:


    ld a, [wChangeMode]
    ld [wPutList], a
    ld a, [wListPacked]
    ld [wPutValue], a
    ld a, $3b
    ld [wPutPtr], a
    ld a, $c5
    ld [wPutPtr+1], a
    ld a, [wPutMode]
    rst RST_00

C2PutCalls:
    dw PutC2Washer, PutC2Trash1, PutC2Trash2, PutC2Desk, CheckC2Put

; Advance the little-endian group pointer by eight with carry.
NextPutGroup:

Call_003_50d4:
    ld a, $08
    ld hl, wPutPtr
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret

; Advance three times to the desk record, then use the shared placement scan.
PutC2Desk:
PutC2Group3:
    call NextPutGroup

; Advance twice to the second trash-can record, then use the shared placement scan.
PutC2Trash2:
PutC2Group2:
    call NextPutGroup

; Advance to the first trash-can record, then use the shared six-slot placement scan.
PutC2Trash1:
PutC2Group1:
    call NextPutGroup

; Use the washer record, scan its six item slots, confirm placement, and refresh the pending list.
; Capacity is checked before the allowlist; the group header is not tested here.
PutC2Washer:
PutC2Group0:
    ld de, $0001

; Scan the selected group item slots.
C2PutFindOpenSlot:
jr_003_50ec:
    ld a, [wPutPtr]
    ld l, a
    ld a, [wPutPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, C2PutStoreInGroup

    inc e
    ld a, $07
    cp e
    jr nz, C2PutFindOpenSlot

    ld a, $f2
    call ShowMsg1 ; Message Text15Message72: YOU CAN'T TAKE ANYMORE.[END]
    ret


; Confirm placement and write the packed item to the open slot.
; Position, pointer and value are reloaded after confirmation and its UI/list helpers.
C2PutStoreInGroup:
jr_003_5106:
    ld a, e
    ld [wPutPos], a
    call CheckC2Put
    cp $00
    ret z

    ld a, [wPutPos]
    ld e, a
    ld d, $00
    ld a, [wPutPtr]
    ld l, a
    ld a, [wPutPtr+1]
    ld h, a
    add hl, de
    ld a, [wPutValue]
    ld [hl], a
    ld a, [wPendingLast]
    cp $ff
    call nz, RefreshC2Put
    ret
; END MODULE c2_put_group.asm
INCLUDE "c2_put_confirm.asm"
; BEGIN MODULE c2_put_allowed.asm

; Packed list values accepted outside mode three; $ff ends the list.
C2PutAllowed:
    db C2ItemTowel, C2ItemBoxingClipping, C2ItemEmptyPack, C2ItemPillow, C2Paper1
    db C2ItemVegasHallPlant, C2ItemVegasLobbyPot, C2ItemVegasLobbyAshtray, C2ItemVegasHall2Plant
    db C2ItemVegasHall3Plant, C2ItemStationNewspaper3, C2ItemVinnyLetter, C2Bottle
    db C2ItemCrackedLamp, C2Key2, C2ItemJuiceCan, C2Key3, C2ItemPekingDuck, C2ItemPencil
    db C2ItemSugarTissue, C2ItemSugarPillow, C2ItemSugarPerfume, C2ItemSugarNewspaper, C2ItemDress
    db C2ItemSugarLaundry, C2Key5, C2ItemBondwellLicense, C2ItemDetergent, C2ItemVentiniHatRack
    db C2DartBase, C2Opener, C2ItemSandwich, C2DeskMat, C2ItemCompanyList, C2MorgueTag1, C2Peel
    db C2ListItemEnvelope2, C2ListItemLunchBox, C2ListItemMoldyBox, C2ListItemBox0F
    db C2ListItemSoapBox, C2ListItemPaperBag, $ff
; END MODULE c2_put_allowed.asm
; BEGIN MODULE c2_item_tbl.asm

; Packed list ID, category; $ff ends the table.
C2ListItemKinds:
    db C2ItemTenDollars1, C2ItemKindTenDollars
    db C2ItemOneDollar1, C2ItemKindOneDollar
    db C2ItemOneDollar2, C2ItemKindOneDollar
    db C2ItemTenDollars2, C2ItemKindTenDollars
jr_003_51f3:
    db C2ItemTenDollars3, C2ItemKindTenDollars
    db C2ItemCoin, C2ItemKindTenDollars
    db C2ItemQuarter1, C2ItemKindQuarter
    db C2ItemQuarter2, C2ItemKindQuarter
    db C2ItemQuarter3, C2ItemKindQuarter
    db C2ItemBullet1, C2ItemKindBullet
    db C2ItemBullet2, C2ItemKindBullet
    db C2ItemBullet3, C2ItemKindBullet
    db C2ItemBullet4, C2ItemKindBullet
    db C2ItemBullet5
jr_003_5206:
    db C2ItemKindBullet
    db C2ItemBullet6, C2ItemKindBullet
    db C2ItemBattery, C2ItemKindCell
    db $ff
; END MODULE c2_item_tbl.asm
; BEGIN MODULE c2_train_id_tbl.asm
; Six sixteen-byte tables, indexed by passenger room $1b..$2a.

TrainRoomStates:
C2StateIds:
    db C2StateTrain6AFareView, C2StateTrain6BFareView, C2StateTrain7AFareView, C2StateTrain7BFareView
    db C2StateTrain8AFareView, C2StateTrain8BFareView, C2StateTrain9AFareView, C2StateTrain9BFareView
    db C2StateTrain2AFareView, C2StateTrain2BFareView
jr_003_5216:
    db C2StateTrain3AFareView, C2StateTrain3BFareView, C2StateTrain4AFareView, C2StateTrain4BFareView
    db C2StateTrain5AFareView, C2StateTrain5BFareView

TrainRoomFxIds:
C2RoomCodes:
    db $0b, $0c, $0b, $0c, $0b, $0c, $0b, $0c, $0b, $0c, $0b, $0c, $0b, $0c, $0b, $0c

TrainExitRooms:
C2NextRooms:
    db RoomVegasPlatform6, RoomVegasPlatform6, RoomVegasPlatform7, RoomVegasPlatform7, RoomVegasPlatform8, RoomVegasPlatform8, RoomVegasPlatform9, RoomVegasPlatform9, RoomChicagoPlatform2, RoomChicagoPlatform2, RoomChicagoPlatform3, RoomChicagoPlatform3, RoomChicagoPlatform4, RoomChicagoPlatform4, RoomChicagoPlatform5, RoomChicagoPlatform5


; Boarding-door state IDs indexed by passenger room; both sides share their train state.
TrainBoardingDoorStateByRoom:
TrainRoomStatesA:
C2StateIdsA:
    db C2StateTrain6BoardingDoorOpen, C2StateTrain6BoardingDoorOpen, C2StateTrain7BoardingDoorOpen, C2StateTrain7BoardingDoorOpen
    db C2StateTrain8BoardingDoorOpen, C2StateTrain8BoardingDoorOpen, C2StateTrain9BoardingDoorOpen, C2StateTrain9BoardingDoorOpen
    db C2StateTrain2BoardingDoorOpen, C2StateTrain2BoardingDoorOpen, C2StateTrain3BoardingDoorOpen, C2StateTrain3BoardingDoorOpen
jr_003_5248:
    db C2StateTrain4BoardingDoorOpen, C2StateTrain4BoardingDoorOpen, C2StateTrain5BoardingDoorOpen, C2StateTrain5BoardingDoorOpen


; Destination-door state IDs indexed by passenger room; both sides share their train state.
TrainDestinationDoorStateByRoom:
TrainRoomStatesB:
C2StateIdsB:
    db C2StateTrain6DestinationDoorOpen, C2StateTrain6DestinationDoorOpen, C2StateTrain7DestinationDoorOpen, C2StateTrain7DestinationDoorOpen
    db C2StateTrain8DestinationDoorOpen, C2StateTrain8DestinationDoorOpen, C2StateTrain9DestinationDoorOpen, C2StateTrain9DestinationDoorOpen
    db C2StateTrain2DestinationDoorOpen, C2StateTrain2DestinationDoorOpen, C2StateTrain3DestinationDoorOpen, C2StateTrain3DestinationDoorOpen
    db C2StateTrain4DestinationDoorOpen, C2StateTrain4DestinationDoorOpen, C2StateTrain5DestinationDoorOpen, C2StateTrain5DestinationDoorOpen

TrainRoomFlags:
C2FlagIds:
    db C2Train6PassGranted, C2Train6PassGranted, C2Train7PassGranted, C2Train7PassGranted
    db C2Train8PassGranted, C2Train8PassGranted, C2Train9PassGranted, C2Train9PassGranted
    db C2Train2PassGranted, C2Train2PassGranted, C2Train3PassGranted, C2Train3PassGranted
    db C2Train4PassGranted, C2Train4PassGranted, C2Train5PassGranted, C2Train5PassGranted
; END MODULE c2_train_id_tbl.asm
; BEGIN MODULE c2_effect.asm

; Save the current audio byte and scene ID, hide the text window, and enter the case-two scene effect.
SaveC2Effect:

Call_003_526c:
Jump_003_526c:
    ld a, [wAudioState]
    ld [wFxCue], a
    call HideTextWindow
    ld a, [wSceneId]
    ld [wFxScene], a

; Save both scratch index low bytes, select the effect scene and optional object, then restore those low bytes.
ShowC2Effect:

Call_003_527b:
Jump_003_527b:
    ldh a, [hItemSlot]
    push af
    ldh a, [hChangePos]
    push af
    ld a, $ff
    ld [wRoomCueHold], a
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    ld a, [wFxId]
    ld l, a
    ld h, $00
    ld bc, C2EffectScenes
    add hl, bc
    ld a, [hl]
    ld [wSceneId], a
    call ShowScene

; Play cue $1a only for the policeman effect before selecting the effect object.
C2FxCheckPoliceCue:
jr_003_529c:
    ld a, [wFxId]
    cp FxPoliceman
    jr nz, C2FxSelectObject

    ld a, $1a
    call PlayAudio

; Select the effect object and draw it unless the table returns $ff.
C2FxSelectObject:
jr_003_52a8:
    xor a
    ld [wRoomCueHold], a
    ld a, [wFxId]
    ld l, a
    ld h, $00
    ld bc, C2EffectObjs
    add hl, bc
    ld a, [hl]
    ld [wObjList], a
    ld [wDrawObj], a
    cp $ff
    jr z, C2FxRestoreScratch

    call DrawEffectObj
    call SubmitOam

; Restore the saved change and item-slot low bytes before returning.
C2FxRestoreScratch:
jr_003_52c7:
    pop af
    ldh [hChangePos], a
    pop af
    ldh [hItemSlot], a
    ret

; Run case-two scene selection, restore the saved scene and audio cue, and refresh room objects.
; Submit wFxCue unchanged; a saved base state can still contain bit seven.
RestoreC2Effect:


Call_003_52ce:
    call PickC2Scene
    ld a, [wFxScene]
    ld [wSceneId], a
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    call ShowScene
    call RefreshObjs
    ld a, [wFxCue]
    call PlayAudio
    ret
; END MODULE c2_effect.asm
; BEGIN MODULE c2_effect_tbl.asm

C2EffectScenes:
    db C2SceneHitman ; Effect $00.
    db C2SceneHitman ; Effect $01.
    db C2SceneHitman ; Effect $02.
    db C2SceneHitman ; Effect $03.
    db C2SceneHitman ; Effect $04.
    db C2SceneHitman ; Effect $05.
    db SceneGoons ; Effect $06.
    db SceneDog ; Effect $07.
    db ScenePoliceman ; Effect $08.
    db SceneHandcuffs ; Effect $09.
    db SceneAceGrave ; Effect $0a.
    db SceneConductor1 ; Effect $0b.
    db SceneConductor2 ; Effect $0c.
    db C2SceneHitman ; Effect $0d.
    db SceneBouncer ; Effect $0e.
    db SceneMirage ; Effect $0f.
    db SceneStogie ; Effect $10.
    db SceneVegasNews2 ; Effect $11.
    db SceneLuckyDoor ; Effect $12.
    db SceneCleaners ; Effect $13.
    db SceneVegasNews1 ; Effect $14.

C2EffectObjs:
    db $55, $56, $57, $58, $59, $5a, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $30, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff
; END MODULE c2_effect_tbl.asm
INCLUDE "c2_desert.asm"
INCLUDE "c2_shop.asm"
; BEGIN MODULE c2_menu.asm

; Poll confirmation, cancellation, and held direction buttons; keep the selection between zero and its stored maximum.
ChooseC2Menu:

Call_003_549d:
jr_003_549d:
    call ClearResult
    call PollJoy
    ld a, [wJoyPress]
    and $01
    jr z, C2MenuCancelKey

    ld a, $19
    call PlayAudio
    ret

; Check the cancel button and return with result bit zero set.
C2MenuCancelKey:


jr_003_54b0:
    ld a, [wJoyPress]
    and $02
    jr z, C2MenuDir

    ld a, $2f
    call PlayAudio
    call SetResult
    ret

; Read held direction buttons and select the next or previous menu row.
C2MenuDir:


jr_003_54c0:
    ld a, [wJoyHeld]
    sla a
    jr c, C2MenuNext

    sla a
    jr c, C2MenuPrev

    jr ChooseC2Menu

; Advance one row unless the selection is already at the stored maximum.
C2MenuNext:

jr_003_54cd:
    ld a, [wC2MenuPick]
    ld hl, wC2MenuMax
    cp [hl]
    jr nc, ChooseC2Menu

    inc a
    ld [wC2MenuPick], a
    ld a, $19
    call PlayAudio

; Redraw the menu cursor, wait eight ticks, and resume input polling.
C2MenuRedraw:

jr_003_54df:
    call DrawC2Menu
    ld a, $08
    call WaitTicks
    jr ChooseC2Menu

; Move back one row unless the selection is already zero.
C2MenuPrev:

jr_003_54e9:
    ld a, [wC2MenuPick]
    cp $00
    jr z, ChooseC2Menu

    dec a
    ld [wC2MenuPick], a
    ld a, $19
    call PlayAudio
    jr C2MenuRedraw

; Select cursor coordinates from the menu mode, draw its sprite and room objects, then submit OAM.
DrawC2Menu:

Call_003_54fb:
    ld a, [wC2MenuMode]
    call SetC2MenuPos
    call DrawC2MenuMark
    call DrawRoomObjs
    call SubmitOam
    ret
; END MODULE c2_menu.asm
; BEGIN MODULE c2_menu_pos.asm

; Dispatch the menu mode through its two original coordinate handlers.
SetC2MenuPos:


Call_003_550b:
    rst RST_00

C2MenuPosCalls:
    dw C2MenuPos3
    dw C2MenuPos2

; Select one of three regional Y positions and set the regional cursor X.
C2MenuPos3:
    ld a, [wC2MenuPick]
    ld l, a
    ld h, $00
    ld bc, C2MenuYs3
    add hl, bc
    ld a, [hl]
    ldh [hSpriteY], a
    ld a, $28
    ldh [hSpriteX], a
    ret

C2MenuYs3:
    db $60, $68, $70

; Select one of two regional Y positions and set the regional cursor X.
C2MenuPos2:
    ld a, [wC2MenuPick]
    ld l, a
    ld h, $00
    ld bc, C2MenuYs2
    add hl, bc
    ld a, [hl]
    ldh [hSpriteY], a
    ld a, $28
    ldh [hSpriteX], a
    ret

C2MenuYs2:
    db $67, $6f
; END MODULE c2_menu_pos.asm
; BEGIN MODULE c2_choice.asm

; Ask whether Ace knows blackjack rules and branch on the selected answer.
Ask21Rules:

RunC2Choice:
    ld a, $48
    call ShowMsg3 ; Message Text18Message48: [OBJECT_WRAM:37C5] ASKS,[PAGE] / "DO YOU KNOW THE /  RULES OF /  BLACKJACK?" /       ...
    ld a, $01
    ld [wC2MenuMode], a
    ld [wC2MenuMax], a
    xor a
    ld [wC2MenuPick], a
    call DrawC2Menu
    call ChooseC2Menu
    ld a, [wC2MenuPick]
    cp $00
    jr nz, Explain21Rules

; Explain that blackjack requires chips obtained at the cashier.
ShowChipHint:

ShowC2Choice46:

Call_003_5557:
    ld a, $46
    jp ShowMsg3 ; Message Text18Message46: "WHEN YOU WANT TO / TRY YOUR LUCK, / YOU GOTTA USE / CHIPS![PAGE] / YOU CAN BUY CHIPS...

; Show blackjack rules and the chip hint, then resume the text UI.
Explain21Rules:


jr_003_555c:
    call ScriptHoldText
    ld a, $91
    call ShowMsg0 ; Message Text13Message11: "THE OBJECT IS FORYOUR CARDS TO ADD / UP TO 21, WITHOUT / GOING OVER.[PAGE] / FIRST, ...
    call ShowChipHint
    jp ResumeTextUI
; END MODULE c2_choice.asm
; BEGIN MODULE c2_menu_mark.asm

; Draw sprite $86 at the menu coordinates.
DrawC2MenuMark:


Call_003_556a:
    ld a, $86
    jp DrawSprite
; END MODULE c2_menu_mark.asm
; BEGIN MODULE c2_pal.asm

; Choose the Case II palette from scene and gameplay state, then stage both sets.
LoadC2Pal:
Call_003_556f:
    ld a, [wRoomCueHold]
    cp $00
    jr nz, C2PalUseScene

    ld a, [wStateResult]
    and $40
    jr nz, C2PalUseScene

    call FindC2TimedPal
    ld a, [wStateResult]
    and $01
    jr nz, C2PalUseScene

    ld a, C2LampFlag
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C2PalCheckLampAge

    ld a, [wRoomId]
    cp RoomJoeOffice
    jr z, C2PalUseTimed

    cp RoomJoeRearHallway
    jr z, C2PalUseTimed

    ld a, $49
    jr C2PalStageSelected

; Check whether the active lamp has reached its dimming step.
C2PalCheckLampAge:
jr_003_55a2:
    ld a, [wC2LampTick]
    cp $1d
    jr c, C2PalUseScene

; Use the room-specific timed palette.
C2PalUseTimed:
jr_003_55a9:
    ld a, [wC2TimedPal]
    jr C2PalStageSelected

; Use the current scene palette.
C2PalUseScene:
jr_003_55ae:
    ld a, [wSceneId]

; Stage the selected background and object palettes.
C2PalStageSelected:
jr_003_55b1:
    ld [wScenePalId], a
    call StagePals
    ret
; END MODULE c2_pal.asm
; BEGIN MODULE c2_pal_noop.asm

; Return without changing registers; retain the following unused return.
C2PalNoop:


Call_003_55b8:
    ret


    ret
; END MODULE c2_pal_noop.asm
; BEGIN MODULE c2_events.asm

; Run the original event checks in order; return when state bit six is set, except between the final two checks.
StepC2Events:


    call TestC2Exit
    ret nz

    call StepC2Time
    call TestC2Exit
    ret nz

    call CheckC2Watch
    call TestC2Exit
    ret nz

    call StepC2End
    call TestC2Exit
    ret nz

    call StepC2Lamp
    call TestC2Exit
    ret nz

    call StepC2Heat
    call TestC2Exit
    ret nz

    call StepC2Goons
    call TestC2Exit
    ret nz

    call StepC2Hunt
    call TestC2Exit
    ret nz

    call StepC2Hamper
    call TestC2Exit
    ret nz

    call StepC2Guard
    call TestC2Exit
    ret nz

    call StepC2Doors
    call StepC2BedDoor
    ret

; Return A = state bit six and leave Z set only when the bit is clear.
TestC2Exit:


Call_003_5604:
    ld a, [wStateResult]
    and $40
    ret
; END MODULE c2_events.asm
; BEGIN MODULE c2_evidence.asm

; Set the result when Bondwell's letter, Siegel's diary, and McMurphy's note are all among the seven scanned desk bytes.
TestDeskProof:
TestC2Required:


Call_003_560a:
    ld bc, C2ProofIds

; Check the next required item against the desk contents.
DeskProofNextRequired:
jr_003_560d:
    ld a, [bc]
    ld hl, wDeskItems

; Compare the required item with the next desk slot.
DeskProofScanNext:
jr_003_5611:
    cp [hl]
    jr z, DeskProofFound

    inc hl
    ld e, a
    ld a, DeskEndLo
    cp l
    ld a, e
    jr nz, DeskProofScanNext

    jp ClearResult


; Advance to the next required evidence item.
DeskProofFound:
jr_003_561f:
    inc bc
    ld a, ProofEndLo
    cp c
    jr nz, DeskProofNextRequired

    jp SetResult

C2ProofIds:
C2Required:
    db C2BondLetter, C2SiegelDiary, C2McMNote

; Set the result when neither the payment demand nor the ledger occurs among the seven scanned desk bytes.
TestDeskClean:
TestC2Absent:

Call_003_562b:
    ld bc, C2BadProof

; Check the next forbidden item against the desk contents.
DeskCleanNextForbidden:
jr_003_562e:
    ld a, [bc]
    ld hl, wDeskItems

; Compare the forbidden item with the next desk slot.
DeskCleanScanNext:
jr_003_5632:
    cp [hl]
    jp z, ClearResult

    inc hl
    ld e, a
    ld a, DeskEndLo
    cp l
    ld a, e
    jr nz, DeskCleanScanNext

    inc bc
    ld a, BadProofEndLo
    cp c
    jr nz, DeskCleanNextForbidden

    jp SetResult

C2BadProof:
C2Forbidden:
    db C2PayNote, C2Ledger
; END MODULE c2_evidence.asm
INCLUDE "c2_end_timer.asm"
; BEGIN MODULE c2_escape_gate.asm

; Require the cigar-ring flag and both desk tests before the ending; the train caller separately checks the ending flag.
GateTrainEnd:
GateC2Final:


Jump_003_5758:
    ld a, C2RingFlag
    call ReadObjFlag
    ret z

    call TestDeskClean
    ld a, [wStateResult]
    and $01
    ret z

    call TestDeskProof
    ld a, [wStateResult]
    and $01
    ret z

    jr WinCase2

; Set the saved Case II ending event mask.
MarkC2End:
SetC2Event5:

Call_003_5772:
    ld a, [wC2EventBits]
    or EvtEnd
    ld [wC2EventBits], a
    ret
; END MODULE c2_escape_gate.asm
; BEGIN MODULE c2_ending.asm

; After escape, show the planted-evidence mob war and Chicago epilogue, play the credits, then remain in the ending loop.
WinCase2:
PlayC2Final:


Jump_003_577b:
jr_003_577b:
    xor a
    call PlayAudio
    ld a, $d3
    call ShowMsg1 ; Message Text15Message53: YOU ARE NOT / FOLLOWED AS YOU / LEAVE THE CITY.[PAGE] / YOUR PLAN MIGHT / HAVE ACTUAL...
    ld a, FxVegasNews2
    call SwitchC2Fx
    ld a, $d5
    call ShowMsg1 ; Message Text15Message55: MEANWHILE, BACK / IN THE CITY OF / LAS VEGAS...[END]
    ld a, $09
    call PlayAudio
    ld a, FxLuckyDoor
    call SwitchC2Fx
    ld a, $d8
    call ShowMsg1 ; Message Text15Message58: GANG KINGPIN / ANTHONY MALONE / NOTICES SOMETHING / DIFFERENT ABOUT / HIS DESK IN HIS...
    ld a, FxCleaners
    call SwitchC2Fx
    ld a, $28
    call PlayAudio
    call PlayMobWar
    ld a, $09
    call PlayAudio
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a
    ld a, C2TextAnim
    call SetObjFlag
    ; Mode-one END clears clipping only when result bit 3 is clear.
    ld a, $e7
    call ShowMsg1 ; Message Text15Message67: AT THE SAME TIME, / MOBSTER DANIEL / VENTINI DISCOVERS / A TELLTALE CIGAR / RING IN H...
    ld a, C2TextAnim
    call ClearObjFlag
    ld a, FxLuckyDoor
    call SwitchC2Fx
    ld a, $ab
    call SetObjFlag
    call AnimateWarMarks
    ; Starting this message enables text clipping again.
    ld a, $e8
    call ShowMsg1 ; Message Text15Message68: THE GANG WAR / EXPLODES ACROSS / THE QUIET OF THE / DESERT CITY.[END]
    ld a, $ab
    call ClearObjFlag
    ld a, $02
    call PlayAudio
    ld a, FxVegasNews1
    call SwitchC2Fx
    ld a, $78
    call WaitTicks
    ld a, $eb
    call ShowMsg1 ; Message Text15Message6B: THE NEWSPAPERS / TRUMPET THE BIG / NEWS OF THE LAST / FEW DAYS...[PAGE] / "-GREAT LAS...
    call ResumeTextUI
    ld a, $78
    call WaitTicks
    call PlayEndCredits

; Remain in the final ending loop.
C2EndingHold:
jr_003_57fb:
    jr C2EndingHold
; END MODULE c2_ending.asm
; BEGIN MODULE c2_escape_test.asm

; Clear readiness; set it only when the ending and cigar-ring flags are set, the desk has all three proof items, and neither conflicting item.
TestEscapePlan:
TestC2Final:

Call_003_57fd:
    xor a
    ld [wC2EscapeReady], a
    ld a, C2EndFlag
    call ReadObjFlag
    cp $00
    ret z

    ld a, C2RingFlag
    call ReadObjFlag
    ret z

    call TestDeskClean
    ld a, [wStateResult]
    and $01
    ret z

    call TestDeskProof
    ld a, [wStateResult]
    and $01
    ret z

    ld a, $01
    ld [wC2EscapeReady], a
    ret

; In Case II, after at least four consecutive entries into room IDs $62 or higher, test readiness and play the ending when ready.
CheckDesertEnd:
CheckC2Final:


    ld a, [wCaseId]
    cp $00
    ret z

    ld a, [wC2EscapeSteps]
    cp EscapeMinSteps
    ret c

    call TestEscapePlan
    ld a, [wC2EscapeReady]
    cp $01
    ret nz

    jp WinCase2
; END MODULE c2_escape_test.asm
; BEGIN MODULE c2_war_marks.asm

; Write all seven ending marks without rendering between records.
BuildWarMarks:
BuildC2FxObjs:


    xor a
    ld [wWarMarkIndex], a

; Append the next ending mark until all seven are written.
C2WarMarkBuildNext:
jr_003_5843:
    call WriteWarMark
    ld a, [wWarMarkIndex]
    inc a
    ld [wWarMarkIndex], a
    cp WarMarkCount
    jr c, C2WarMarkBuildNext

    ret

; Append seven ending marks; render each addition with the original two six-tick waits and audio cues.
AnimateWarMarks:
AnimateC2FxObjs:


Call_003_5852:
    xor a
    ld [wWarMarkIndex], a

; Render the next ending mark with its waits and audio cues.
C2WarMarkAnimateNext:
jr_003_5856:
    call WriteWarMark
    call RenderObjsCall
    call SubmitOam
    ld a, $06
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $06
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, [wWarMarkIndex]
    inc a
    ld [wWarMarkIndex], a
    cp WarMarkCount
    jr c, C2WarMarkAnimateNext

    ret

; Write one coordinate pair and object WarMarkId at wObjList plus three times the index, followed by $ff.
; The seven-record builders leave their final terminator at $c615.
WriteWarMark:
WriteC2FxObj:


Call_003_587f:
    ld a, [wWarMarkIndex]
    ld l, a
    add a
    add l
    ld e, $00
    ld d, ObjListPage
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [wWarMarkIndex]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, WarMarkPos
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld a, WarMarkId
    ld [de], a
    inc de
    ld a, $ff
    ld [de], a
    ret

; Seven X/Y coordinate pairs.
; At zero scroll, text clipping rejects the last mark's bottom two parts.
WarMarkPos:
C2FxObjPos:
    db $48, $20
    db $38, $24
    db $28, $28
    db $18, $2c
    db $40, $34
    db $30, $38
    db $20, $3c
; END MODULE c2_war_marks.asm
; BEGIN MODULE c2_mob_war.asm

; At sprite position $31, zero, play mob-war animation $67 once and $68 eight times.
PlayMobWar:
PlayC2FinalAnim:

Call_003_58b6:
    ld a, $31
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    ld a, AnimWarStart
    call PlayBankAnim
    ld c, $08

; Play the next repeated mob-war animation frame.
MobWarNextFrame:
jr_003_58c5:
    ld a, $31
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    push bc
    ld a, AnimWarLoop
    call PlayBankAnim
    pop bc
    dec c
    jr nz, MobWarNextFrame

    ret
; END MODULE c2_mob_war.asm
; BEGIN MODULE c2_war_text.asm

; At sprite position $31, zero, step AnimWarLoop and draw room objects.
DrawWarText:
DrawTextWaitObj:


Call_003_58d8:
    ld a, $31
    ldh [hSpriteX], a

jr_003_58dc:
    ld a, $00
    ldh [hSpriteY], a
    ld a, AnimWarLoop
    call StepBankAnim
    call DrawRoomObjs
    ret
; END MODULE c2_war_text.asm
; BEGIN MODULE c2_timed_pal.asm

; For one of seven rooms, store its timed palette and clear the result; for other rooms, set the result.
FindC2TimedPal:


Call_003_58e9:
    ld bc, C2TimedRooms

; Start searching the seven timed-palette rooms.
C2TimedPalStartSearch:
jr_003_58ec:
    ld a, [wRoomId]
    ld e, a
    ld hl, $0000

; Compare the current room with the next timed-palette entry.
C2TimedPalNextRoom:
jr_003_58f3:
    ld a, [bc]
    cp e
    jr z, C2TimedPalFound

    inc bc
    inc l
    ld a, $07
    cp l
    jr nz, C2TimedPalNextRoom

    jp SetResult


; Store the palette for the matching timed room.
C2TimedPalFound:
jr_003_5901:
    call ClearResult
    ld bc, C2TimedPals
    add hl, bc
    ld a, [hl]
    ld [wC2TimedPal], a
    ret

C2TimedRooms:
    db RoomJoeOffice, RoomJoeRearHallway, RoomJoeBar, RoomJoeCellar, RoomJoeChamber, RoomJoeCasino, RoomJoeUpstairsHallway

C2TimedPals:
    db $47, $4a, $43, $44, $45, $46, $48
; END MODULE c2_timed_pal.asm
INCLUDE "c2_lamp.asm"
INCLUDE "c2_debt.asm"
; BEGIN MODULE c2_police.asm

; With the police uniform worn outside Sugar's apartment front, a random value of seven triggers arrest, bail, and Stogie killing Ace.
CheckC2Uniform:
RandomC2RoomFx:


Call_003_5ab7:
    ld a, C2Uniform
    call ReadObjFlag
    ret z

    ld a, [wRoomId]
    cp RoomSugarApartmentFront
    ret z

    call NextRandom
    ldh a, [hRandByte]
    and $07
    xor $07
    ret nz

    call ResetObjScroll
    ld a, FxPoliceman
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $6d
    call ShowMsg2 ; Message Text16Message6D: THE COP, THINKING / YOU ARE A COMRADE,COMES OVER AND / STARTS TO ASK IF / YOU GOT YOU...
    ld a, $3c
    call WaitTicks
    ld a, $09
    call PlayAudio
    ld a, FxHandcuffs
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $fd
    call ShowMsg0 ; Message Text13Message7D: THEY KEEP YOU IN / JAIL, AT THE END / OF THE WEEK, / STOGIE SHOWS UP / AND POSTS BAIL...
    ld a, $3c
    call WaitTicks
    ld a, FxStogie
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $fe
    call ShowMsg0 ; Message Text13Message7E: "I'M GONNA TAKE / YOU SOMEPLACE NICEAND QUIET, ACE," / HE SAYS WITH A / SNICKER. YOU ...
    jp PlayExitEffect

C2FxSkipRooms:
    db RoomVegasCashier, RoomVegasBlackjack, $06, RoomVegasLift1, RoomVegasLift2, RoomVegasLift3, RoomVegasLift4, RoomVegasHamper, RoomVegasVentiniOffice, RoomVegasMaloneOffice, CabAtChicago, RoomVegasHall4, RoomJoeFireEscape, RoomJoeOffice, RoomJoeRearHallway, RoomJoeBar, RoomJoeCellar, RoomJoeChamber, RoomJoeCasino, RoomJoeUpstairsHallway, RoomAdisonApartment, $ff
; END MODULE c2_police.asm
INCLUDE "c2_capture.asm"
; BEGIN MODULE c2_hunt.asm

; After the goons are fooled, in rooms $46..$4a, advance the hunt timer; from step 49 the goons recapture and kill Ace.
StepC2Hunt:
StepC2Flag84Timer:


Call_003_5cb3:
    ld a, C2GoonsFooled
    call ReadObjFlag
    ret z

    ld a, [wRoomId]
    cp RoomHamper
    ret c

    cp RoomSecretOffice + 1
    ret nc

    ld a, [wC2HuntTick]
    inc a
    ld [wC2HuntTick], a
    cp HuntWait
    ret c

; After the hunt threshold, show the goons recapturing Ace and set the saved hunt event.
CaughtC2Hunt:

    call ResetObjScroll
    call BeginGoonsFx
    ld a, $78
    call WaitTicks
    ld a, $9f
    call ShowMsg2 ; Message Text17Message1F: UH-OH! YOU HEAR / FOOTSTEPS![PAGE] / ONE OF THE THUGS / GRABS HOLD OF YOURCOLLAR AND ...
    call ResumeTextUI
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    ld a, [wC2EventBits]
    or EvtHunt
    ld [wC2EventBits], a
    jp PlayExitEffect
; END MODULE c2_hunt.asm
; BEGIN MODULE c2_cue16.asm

; Call the cue-$16 helper, then enter it again by fallthrough.
PlayCue16Twice:


Call_003_5cf9:
    call PlayCue16Wait48

; Play audio $16 and wait forty-eight ticks.
PlayCue16Wait48:

Call_003_5cfc:
    ld a, $16
    call PlayAudio
    ld a, $30
    call WaitTicks
    ret
; END MODULE c2_cue16.asm
INCLUDE "c2_goons.asm"
; BEGIN MODULE c2_heat.asm

; In desert rooms $62/$63 or $66..$a0, advance exposure: warnings at 8/16, mirage at 32, death at 40.
StepC2Heat:
StepC2RangeTimer:


Call_003_5e3d:
    ld a, [wRoomId]
    cp RoomTracksA
    jr z, C2HeatAdvance

    cp RoomTracksB
    jr z, C2HeatAdvance

    cp DesertRoomMin
    ret c

    cp DesertRoomEnd
    ret nc

; Advance desert exposure in the tracked rooms.
C2HeatAdvance:
jr_003_5e4e:
    ld a, [wC2HeatTick]
    inc a
    ld [wC2HeatTick], a
    cp HeatSun
    jr z, WarnDesertSun

    cp HeatDry
    jr z, WarnDesertDry

    cp HeatMirage
    jr z, ShowMirage

    cp HeatLimit
    jr z, DieInDesert

    ret

; Warn that the desert sun beats down mercilessly.
WarnDesertSun:


jr_003_5e66:
    ld a, $d8
    jp ShowMsg0 ; Message Text13Message58: THE SUN BEATS DOWNMERCILESSLY ON / YOU.[END]

; Warn about the lack of shade and water.
WarnDesertDry:


jr_003_5e6b:
    ld a, $d9
    jp ShowMsg0 ; Message Text13Message59: NO SHADE, NO / WATER...[PAGE] / YOU SWEAT / PROFUSELY, HOPING / FOR AN END TO THISDES...

; Show the lemonade-stand mirage, restore the scene effect, and resume the room cue.
ShowMirage:


jr_003_5e70:
    call ResetObjScroll
    xor a
    call PlayAudio
    ld a, $db
    call ShowMsg0 ; Message Text13Message5B: "WATER," YOU / CROAK.[PAGE] / IT'S ONLY A MATTEROF TIME BEFORE YOUBECOME BUZZARD / BA...
    ld a, FxMirage
    call BeginC2Fx
    call LoadC2Pal
    call C2PalNoop
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $dc
    call ShowMsg0 ; Message Text13Message5C: COULD IT BE? WHY / YES, IT IS! / ...A LEMONADE / STAND![PAGE] / YOU STAGGER OVER / TO...
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    call RestoreC2Effect
    ld a, $de
    call ShowMsg0 ; Message Text13Message5E: JUST A MIRAGE! / YOU SHOULD HAVE / KNOWN![PAGE] / YOU MUST BE NEAR / THE END OF YOUR ...
    jp RoomCueCall

; Show collapse in the sand, mark the saved heat event, and run the exit effect.
DieInDesert:


jr_003_5ea7:
    ld a, $09
    call PlayAudio
    ld a, $df
    call ShowMsg0 ; Message Text13Message5F: YOU FALL FACE DOWNIN THE SAND. YOU / CAN'T MANAGE / ANOTHER STEP...[PAGE] / YOU LIE F...
    ld a, [wC2EventBits]
    or EvtHeat
    ld [wC2EventBits], a
    jp PlayExitEffect
; END MODULE c2_heat.asm
; BEGIN MODULE c2_doors.asm

; Match one of twelve room/state pairs; if its state is set, advance the door timer and clear that state on step three.
StepC2Doors:
StepC2StateTimer:


Call_003_5ebc:
    ld hl, C2TimerRooms
    ld a, [wRoomId]
    ld e, a
    ld c, $0c

; Compare the next masked room ID in the twelve-entry timer table.
C2DoorFindRoom:
jr_003_5ec5:
    ld a, [hl+]
    and $7f
    cp e
    jr z, C2DoorMatchedRoom

    dec c
    jr nz, C2DoorFindRoom

    ret


; Read the matching state bit and advance the door timer when it is set.
C2DoorMatchedRoom:
jr_003_5ecf:
    ld bc, $000b
    add hl, bc
    ld a, [hl]
    call ReadStateBit
    ret z

    ld a, [wC2DoorTick]
    inc a
    ld [wC2DoorTick], a
    cp $03
    ret nz

    ld bc, $fff4
    add hl, bc
    bit 7, [hl]
    jr nz, C2DoorClearBit

    ld bc, $000c
    add hl, bc
    ld a, [hl]
    call ClearStateView
    ld a, $66
    call ShowMsg1 ; Message Text14Message66: THE ELEVATOR DOOR / IS CLOSED.[END]
    ret


; Clear the matched state bit for a room entry marked with bit seven.
C2DoorClearBit:
jr_003_5ef8:
    ld bc, $000c
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    ret

; Room low seven bits select the paired state ID; bit seven selects ClearStateBit.
C2TimerRooms:
    db RoomVegasHall1, RoomVegasLift1, RoomVegasLobby + $80, RoomVegasHall2, RoomVegasLift2, RoomVegasHall3, RoomVegasLift3, RoomVegasHamper + $80, RoomVegasHall4, RoomVegasLift4, RoomVegasVentiniOffice + $80, RoomVegasMaloneOffice + $80
C2TimerStates:
    db C2StateLift1DoorOpen, C2StateLift1DoorOpen, C2StateLift1DoorOpen, C2StateLift2DoorOpen
    db C2StateLift2DoorOpen, C2StateLift3DoorOpen, C2StateLift3DoorOpen, C2StateLift3DoorOpen
    db C2StateLift4DoorOpen, C2StateLift4DoorOpen, C2StateLift4DoorOpen, C2StateLift4DoorOpen
; END MODULE c2_doors.asm
; BEGIN MODULE c2_bed_door.asm

; In the first-floor hallway, close the bedroom door on timer step two, play cue $12, and clear state bit one.
StepC2BedDoor:
StepC2Room02:

Call_003_5f19:
    ld a, [wRoomId]
    cp RoomVegasHall1
    ret nz

    ld a, [wC2BedTick]
    inc a
    ld [wC2BedTick], a
    cp $02
    ret nz

    ld a, $12
    call PlayAudio
    ld a, $03
    call ShowMsg1 ; Message Text14Message03: A DRAFT FROM / SOMEWHERE SHUTS / THE BEDROOM DOOR / WITH A SLAM.[END]
    ld a, C2StateVegasBedroomDoorOpen
    call ClearStateBit
    ret
; END MODULE c2_bed_door.asm
; BEGIN MODULE c2_fx_begin.asm

; Store the effect ID from A, then enter SaveC2Effect.
BeginC2Fx:


Call_003_5f39:
Jump_003_5f39:
    ld [wFxId], a
    jp SaveC2Effect

; Store the effect ID from A, then enter ShowC2Effect without saving again.
SwitchC2Fx:


Call_003_5f3f:
Jump_003_5f3f:
    ld [wFxId], a
    jp ShowC2Effect

; Play audio nine, then begin the Moose and Spike effect.
BeginGoonsFx:
BeginC2Fx6:


Call_003_5f45:
    ld a, $09
    call PlayAudio
    ld a, FxGoons
    jp BeginC2Fx
; END MODULE c2_fx_begin.asm
; BEGIN MODULE c2_action.asm

; Read the Case II action code for wOpClass and wSelAction.
PickC2Action:


    ld a, [wOpClass]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C2ActionRows
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [wSelAction]
    ld l, a
    ld h, $00
    add hl, bc
    ld a, [hl]
    ld [wActionCode], a
    ret

; Ordinary columns 0-8: look, open, use, put, take, close, hit, talk, move.
C2ActionRows:
    dw C2Act00
    dw C2Act01
    dw C2Act02
    dw C2Act03
    dw C2Act04
    dw C2Act05
    dw C2Act06

C2Act00:
    db $00, $ff, $01, $ff, $ff, $ff, $02, $03, $ff, $ff, $ff

C2Act01:
    db $00, $01, $02, $ff, $ff, $03, $ff, $ff, $ff, $ff, $ff

C2Act02:
    db $00, $01, $02, $ff, $ff, $03, $ff, $ff, $ff, $ff, $ff

C2Act03:
    db $00, $ff, $01, $02, $03, $ff, $ff, $ff, $ff, $ff, $ff

C2Act04:
    db $00, $01, $02, $03, $04, $05, $ff, $ff, $ff, $ff, $ff

C2Act05:
    db $00, $01, $ff, $ff, $ff, $02, $ff, $ff, $03, $ff, $ff

C2Act06:
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $ff
; END MODULE c2_action.asm
INCLUDE "c2_fallback.asm"
INCLUDE "c2_target.asm"
INCLUDE "c2_filter.asm"
; BEGIN MODULE c2_time.asm

; Advance the schedule clock; in rooms $15..$2f rebuild and apply its eight records.
StepC2Time:
StepC2RoomTick:

Call_003_623f:
    ld a, [wC2Time]
    inc a
    ld [wC2Time], a
    ld a, [wRoomId]
    cp RoomVegasStationLobby
    ret c

    cp RoomChicagoStationFront
    ret nc

    call BuildTrains
    call ApplyTrains
    ret
; END MODULE c2_time.asm
INCLUDE "c2_train.asm"
INCLUDE "c2_desert_anim.asm"
INCLUDE "credits.asm"
; BEGIN MODULE credit_scene.asm

; Read the next case/scene pair, load its background and graphics, then increment the scene index.
LoadCreditScene:


Call_003_6fd6:
    ld a, [wCreditIndex]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, CreditScenes
    add hl, bc
    ld a, [hl+]
    ld [wCaseId], a
    ld a, [hl]
    ld [wSceneId], a
    call LoadCreditBg
    ld a, [wCreditIndex]
    inc a
    ld [wCreditIndex], a
    ret

; Fade out, load the next ending scene, then fade in.
NextCreditScene:


Call_003_6ff4:
    call FadeOut
    call LoadCreditScene
    call FadeIn
    ret
; END MODULE credit_scene.asm
; BEGIN MODULE credit_text.asm

; Wait 180 ticks between ending text and scene changes.
CreditWait180:


Call_003_6ffe:
    ld a, $b4
    call WaitTicks
    ret

; Wait forty ticks before ending text.
CreditWait40:


Call_003_7004:
    ld a, $28
    call WaitTicks
    ret

; Wait twenty ticks between ending text entries.
CreditWait20:


Call_003_700a:
    ld a, $14
    call WaitTicks
    ret

; Select the indexed text pointer, reset text coordinates, render room objects, read the text and clear mode bit seven.
; Credit records select map $9800; map coordinates add one to their stored column and row.
DrawCreditText:


Call_003_7010:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, CreditTextPtrs
    add hl, bc
    ld a, [hl+]
    ld [wTextPtr], a
    ld a, [hl]
    ld [wTextPtr+1], a
    xor a
    ld [wTextOriginX], a
    ld [wTextOriginY], a
    ld [wTextCol], a
    ld [wTextRow], a
    ld a, $12
    ld [wTextHeight], a
    ld a, $41
    ld [wTextMode], a
    call DrawRoomObjs
    call SubmitOam
    call ReadTextLoop
    ld a, [wTextMode]
    and $7f
    ld [wTextMode], a
    ret
; END MODULE credit_text.asm
; BEGIN MODULE text_cell_clear.asm

; Initialize X and Y to one and enter the original tile-clearing loop; US advances one row, JP advances two.
ClearTextCells:


    ld a, $01
    ld [wClearCellX], a
    ld [wClearCellY], a

; Queue tile $7f at $9800 plus Y times 32 plus X, then advance until column $13 or row $11.
ClearTextCell:

jr_003_7051:
    ld a, [wClearCellY]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, _SCRN0
    add hl, de
    ld a, [wClearCellX]
    ld e, a
    ld d, $00
    add hl, de
    ld c, l
    ld b, h
    ld hl, ClearCellTile
    call QueueTileRect
    call SubmitMapQueue
    ld a, [wClearCellX]
    inc a
    cp $13
    jr nz, NextClearCell

    ld a, [wClearCellY]
    inc a
    cp $11
    ret z

    ld [wClearCellY], a
    xor a

; Store the next X coordinate and continue clearing cells.
NextClearCell:

jr_003_7085:
    ld [wClearCellX], a
    jr ClearTextCell

ClearCellTile:
    db $01, $01, $7f
; END MODULE text_cell_clear.asm
INCLUDE "credit_data.asm"

; Original zero-filled bank tail.
Bank3Pad:
    ds $0cb2, $00

; End of the original bank.
