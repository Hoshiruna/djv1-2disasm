; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

; BEGIN MODULE video_init.asm
; Set double speed, install DMA code, clear VRAM, configure video, then enter the original startup continuation.
InitVideo:
    call SetDoubleSpeed
    xor a
    ldh [rSVBK], a
    call InstallOamDma
    ld hl, $8000
    ld bc, $1800
    call ZeroBytes
    call ClearBgMaps
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld a, $00
    ldh [hVideoFlags], a
    ld a, $01
    ldh [rIE], a
    ldh a, [hLcdc]
    ldh [rLCDC], a
    ei
    call InitAudio
    ld hl, wFrameFlags
    set 0, [hl]
    jp MainGame

; If not already double speed, save IE, mask IRQs, prepare KEY1, STOP, then restore IE.
SetDoubleSpeed:


Call_001_4034:
    ldh a, [rKEY1]
    and $80
    ret nz

    ldh a, [rIE]
    ld [wIrqSave], a
    xor a
    ldh [rIE], a
    ld a, $30
    ldh [rP1], a
    ld a, $01
    ldh [rKEY1], a
    stop
    ld a, [wIrqSave]
    ldh [rIE], a
    ret

; Copy the twelve-byte OamDmaCode routine to HRAM $ff80.
InstallOamDma:


Call_001_4051:
    ld c, $80
    ld b, $0c
    ld hl, OamDmaCode

; Copy the next of twelve DMA-routine bytes into HRAM.
InstallOamDmaNextByte:
jr_001_4058:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, InstallOamDmaNextByte

    ret
; END MODULE video_init.asm
INCLUDE "video.asm"
; BEGIN MODULE joy.asm

; Read directions/buttons, store held and newly pressed bits, and test the reset chord.
ReadJoy:

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ld a, [wJoyHeld]
    xor c
    and c
    ld [wJoyPress], a
    ld a, c
    ld [wJoyHeld], a
    and $0f
    cp $0f
    jp z, SoftReset

    ld a, $30
    ldh [rP1], a
    ret
; END MODULE joy.asm
; BEGIN MODULE video_pal.asm

; Upload 64 live OBJ bytes, then 64 live BG bytes; staged buffers are not read.
UploadPals:
Call_001_4172:
    call UploadObjPal
    call UploadBgPal
    ret

; Copy wBgPal to the eight CGB background palettes.
UploadBgPal:
Call_001_4179:
    ld hl, wBgPal
    ld d, PaletteSetByteCount
    ld a, $80
    ldh [rBCPS], a
    ld c, $69
    jr UploadPalNextByte

; Copy wObjPal to the eight CGB object palettes.
UploadObjPal:
Call_001_4186:
    ld hl, wObjPal
    ld d, PaletteSetByteCount
    ld a, $80
    ldh [rOCPS], a
    ld c, $6b

; Write the next of sixty-four palette bytes through the selected CGB data port.
UploadPalNextByte:
jr_001_4191:
    ld a, [hl+]
    ldh [c], a
    dec d
    jr nz, UploadPalNextByte

    ret
; END MODULE video_pal.asm
; BEGIN MODULE timer_init.asm

; Consume video request bit 4, initialize timer registers, and switch IE from VBlank to timer.
StartTimer:


Call_001_4197:
    res 4, a
    ldh [hVideoFlags], a
    ld a, $80
    ldh [rTMA], a
    xor a
    ldh [rTAC], a
    ldh [rTIMA], a
    ld a, $04
    ldh [rTAC], a
    ldh a, [rIE]
    or $04
    and $fe
    ldh [rIE], a
    ret
; END MODULE timer_init.asm
; BEGIN MODULE intro.asm

; Run the region-specific boot-screen resource sequence and its shared display helper.
ShowBoot:


    call DisableLcd
    call LoadExtraUiGfx
    ld a, UiMapIdPublisherLogo
    call DrawBoot
    call DisableLcd
    call LoadBootGfx
    ld a, UiMapIdDeveloperLogo
    call DrawBoot
    call DisableLcd
; Fall through to DrawBoot with the copyright map at index zero.
    xor a

; Load map A and object palette 2, fade in, wait $78 ticks, then fade out.
DrawBoot:

Call_001_41cb:
    call ReadUiMap
    ld a, UiPalIdCommonObjects
    call StageUiObjPal
    call RestoreLcd
    call BlankOam
    call FadeFromWhite
    ld a, $78
    call WaitTicks
    call FadeToWhite
    ret

; Load the title resources, wait for A/Start, fade out, and run the original trailing helper.
ShowTitle:


    call LoadTextSet
    call DisableLcd
    call LoadTitleGfx
    ld a, UiMapIdTitle
    call ReadUiMap
    ld a, UiPalIdCommonObjects
    call StageUiObjPal
    call RestoreLcd
    call BlankOam
    call FadeFromWhite
    call WaitStart
    call FadeToWhite
    call StoreTextSet
    ret

; Run the original title helper and poll new A/Start presses; play audio $19 on exit.
WaitStart:


Call_001_420b:
jr_001_420b:
    call NextRandom
    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jr nz, TitleConfirmStart

    bit 3, a
    jr nz, TitleConfirmStart

    jr WaitStart

; Play cue $19 after a newly pressed A or Start button.
TitleConfirmStart:
jr_001_421e:
    ld a, $19
    call PlayAudio
    ret
; END MODULE intro.asm
INCLUDE "c1_marks.asm"
INCLUDE "c1_room.asm"
; BEGIN MODULE c1_flags.asm

; Set exactly $23 initial state bits and restore caller scratch at hItemSlot/hItemSlot+1.
InitC1Bits:

Call_001_45fa:
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    ld d, $00
    ld hl, C1StartBits

; Set the next initial state bit and stop after the original $23 entries.
C1InitStateBitLoop:

jr_001_4608:
    ld a, [hl+]
    push hl
    push de
    call SetStateBit
    pop de
    pop hl
    inc d
    ld a, d
    cp $23
    jr c, C1InitStateBitLoop

    pop hl
    push af
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    ret

C1StartBits:
    db C1StateBarStairsPassable, C1StateRackSewerLadderPassable, C1StateCasinoLiftPassagePassable, C1StateFireEscape3To2Passable, C1StateFireEscape2ToAlleyPassable, C1StateJoeStreetAlleyPassable, C1StateJoeStreetNewsstandPassable, C1StateJoeStreetPoliceFrontPassable, C1StateJoeStreetCarRearPassable, C1StateNewsstandGunShopPassable, C1StateGunShopPeoriaPassable, C1StatePeoriaCabStopsPassable, C1StateConstructionPitEntryPassable, C1DoorIdBlueCabPeoria, C1DoorIdBlueCabStanford, C1DoorIdBlueCabBungalow
    db C1DoorIdBlueCabOfficeBuilding, C1DoorIdBlueCabEstate, C1DoorIdYellowCabPeoria, C1DoorIdYellowCabStanford, C1DoorIdYellowCabBungalow, C1DoorIdYellowCabOfficeBuilding, C1DoorIdYellowCabEstate, C1StateAceOfficeStairsPassable, C1StateDoctorOfficeHallPassable, C1StateEstateApproachPassable, C1StateMansionStairsPassable, C1StateJoeStreetSewerLadderPassable, C1StateJoeAlleySewerLadderPassable, C1StateJoeStreetSewerJunctionPassable, C1StateRackSewerJunctionPassable, C1StateLiftToRackSewerPassable
    db C1StateDeepestSewerTunnelPassable, C1StateMansionFrontDoorOpen, C1DoorIdLiftSewerExit

; Clear presence for initial absent-object IDs until $ff; restore caller scratch.
InitC1Absent:

Call_001_4643:
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    ld hl, C1StartAbsent

; Clear the next initial presence bit until the $ff terminator.
C1InitAbsentLoop:

jr_001_464f:
    ld a, [hl+]
    cp $ff
    jr z, C1InitAbsentRestore

    push hl
    call ClearObjPresent
    pop hl
    jr C1InitAbsentLoop

; Restore the caller's HRAM item-slot index after initial presence setup.
C1InitAbsentRestore:

jr_001_465b:
    pop hl
    push af

jr_001_465d:
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    ret

C1StartAbsent:
    db C1ObjectStartWashroomMirror, C1ObjectWomenWashroomMirror, C1ObjectBarStreetWindow, C1ObjectPenthouseRoundMirror, C1ObjectGuestBedroomMirror, C1ObjectGunShopWindow, C1ObjectDoctorCabinet, C1ObjectAceCabinet, $ff
; END MODULE c1_flags.asm
INCLUDE "scene_res.asm"
INCLUDE "pal_fade.asm"
INCLUDE "pal_check.asm"
INCLUDE "pal_color.asm"
; BEGIN MODULE room_panel.asm

; Queue a 5-by-5 fill of tile $70 at map address $98cf.
FillRoomPanel:


    ld bc, $98cf
    ld hl, RoomPanelFill
    call QueueFillRect
    ret

RoomPanelFill:
    db $05, $05, $70
; END MODULE room_panel.asm
INCLUDE "list_layout.asm"
INCLUDE "scene_mask.asm"
INCLUDE "c1_target.asm"
INCLUDE "item_prep.asm"
INCLUDE "item_write.asm"
INCLUDE "item_list.asm"
INCLUDE "input_apply.asm"
INCLUDE "select_state.asm"
INCLUDE "list_input.asm"
; BEGIN MODULE list_select.asm

; For an active action and nonzero mode, copy the selected row to the operation slot and save its mode/row.
SelectListRow:


    ld a, [wSelAction]
    cp $ff
    ret z

    ld a, [wChangeMode]
    cp $00
    ret z

    ld hl, wListSel
    ld a, [hl]
    sub InputSelListFirst
    ld [wListRow], a
    call LoadListRow
    ld a, [wStateResult]
    and $02
    jr z, SelectListRowCopy

    ret


; Copy the valid list row into the selected operation slot and draw its mark.
SelectListRowCopy:
jr_001_5cd3:
    ld bc, wListType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl+]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemType
    add hl, bc
    ld [hl], a
    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a

jr_001_5cfa:
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ld a, [wListRow]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wSelRow
    add hl, bc
    ld [hl], a
    ld a, [wChangeMode]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wSelMode
    add hl, bc
    ld [hl], a
    ld bc, wSelRow
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wListMarkRow], a
    call DrawListMark
    ret
; END MODULE list_select.asm
INCLUDE "list_cursor.asm"
INCLUDE "input_wait.asm"
INCLUDE "cursor_move.asm"
; BEGIN MODULE cursor_scroll.asm

; Internal scroll branch: A = next scroll value; draw a frame, then fall through to ScrollCursor.
StepCursorScroll:

jr_001_6124:
    ld [wSpriteScrollY], a
    ld [wScrollY], a
    call DrawCursorRaw
    call DrawRoomObjs
    call SubmitOam

; Use table scroll targets below InputSelRoomFine; room selectors use zero.
ScrollCursor:

Call_001_6133:
    ld a, [wInputSel]
    cp InputSelRoomFine
    jr c, ScrollSelection

    xor a
    jr ScrollCursorCheckTarget

; A = selection; read its scroll target; ignore $ff, animate the two endpoints and assign other targets directly.
ScrollSelection:

Call_001_613d:
jr_001_613d:
    ld e, a
    ld d, $00
    ld hl, CursorScroll
    add hl, de
    ld a, [hl]

; Ignore $ff, animate regional endpoints, and assign other scroll targets directly.
ScrollCursorCheckTarget:
jr_001_6145:
    cp $ff
    ret z

    cp $00
    jr z, ScrollCursorAnimateEndpoint

    cp $58
    jr z, ScrollCursorAnimateEndpoint

    ld [wSpriteScrollY], a
    ld [wScrollY], a
    ret


; Compare the current sprite scroll with the zero or regional bottom endpoint.
ScrollCursorAnimateEndpoint:
jr_001_6157:
    ld b, a
    ld a, [wSpriteScrollY]
    cp b
    ret z

    jr c, ScrollCursorIncrease

    sub $08
    jr StepCursorScroll

; Increase the scroll by eight before drawing and rechecking the selection.
ScrollCursorIncrease:
jr_001_6163:
    add $08
    jr StepCursorScroll
; END MODULE cursor_scroll.asm
; BEGIN MODULE scroll_reset.asm
; Preserve registers while restoring the sprite and hardware Y scroll to zero.
ResetScroll:

    push af
    push bc
    push de
    push hl
    call DrainScroll
    pop hl
    pop de
    pop bc
    pop af
    ret

; Subtract eight from sprite and hardware Y scroll each frame until zero; retain byte wrap.
DrainScroll:


Call_001_6173:
jr_001_6173:
    ld a, [wSpriteScrollY]
    cp $00
    ret z

    sub $08
    ld [wSpriteScrollY], a
    ld [wScrollY], a
    call DrawRoomObjs
    call SubmitOam
    jr DrainScroll
; END MODULE scroll_reset.asm
INCLUDE "list_pick.asm"
; BEGIN MODULE cursor_tables.asm

CursorPos:
    db $10, $80
    db $48, $80
    db $20, $80
    db $90, $80
    db $30, $80
    db $58, $80
    db $80, $80
    db $70, $80
    db $90, $60
    db $80, $18
    db $98, $18
    db $8c, $9c
    db $04, $9c
    db $04, $ac
    db $04, $b4
    db $04, $bc
    db $04, $c4
    db $04, $cc
    db $04, $d4
    db $04, $dc
    db $04, $dc
    db $64, $34
    db $38, $5a
    db $8c, $44

CursorLinks:
    db $02, $03, InputSelPrevPage, InputSelRoomFineStart
    db $05, $04, InputSelPrevPage, InputSelRoomFineStart
    db $04, $00, InputSelPrevPage, InputSelRoomFineStart
    db $00, $06, InputSelNextPage, $08
    db $01, $02, InputSelPrevPage, InputSelRoomFineStart
    db $07, $01, InputSelPrevPage, InputSelRoomFineStart
    db $03, $07, InputSelNextPage, $08
    db $06, $05, InputSelNextPage, $08
    db $ff, InputSelRoomFine, $03, InputSelRoomGrid
    db InputSelAux, InputSelRoomFine, InputSelRoomGrid, $ff
    db $ff, InputSelSelf, InputSelRoomGrid, $ff
    db CursorLinkNextPage, InputSelPrevPage, InputSelListFirst, $07
    db InputSelNextPage, CursorLinkPrevPage, InputSelListFirst, $00
    db CursorLinkNextPage, CursorLinkPrevPage, $0e, InputSelPrevPage
    db CursorLinkNextPage, CursorLinkPrevPage
jr_001_628b:
    db $0f, InputSelListFirst
    db CursorLinkNextPage, CursorLinkPrevPage, $10, $0e
    db CursorLinkNextPage, CursorLinkPrevPage, $11, $0f
    db CursorLinkNextPage, CursorLinkPrevPage, $12, $10
    db CursorLinkNextPage, CursorLinkPrevPage, $13, $11
    db CursorLinkNextPage, CursorLinkPrevPage, $ff
jr_001_62a0:
    db $12
    db CursorLinkNextPage, CursorLinkPrevPage, $ff
jr_001_62a4:
    db $12

ListLinks:
    db $ff, $ff, $ff
jr_001_62a8:
    db $ff
jr_001_62a9:
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff
jr_001_62b4:
    db $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff
jr_001_62bc:
    db $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff
    db $ff, $ff, $0e, $ff
    db $ff, $ff, $0f, InputSelListFirst
    db $ff, $ff, $10, $0e
    db $ff, $ff, $11, $0f
    db $ff, $ff, $12, $10
    db $ff, $ff, $13, $11
    db $ff, $ff, $ff, $12
    db $ff, $ff, $ff, $12

CursorScroll:
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $00, $00, $58, $58, $58, $58, $58
    db $58, $58, $58, $58, $58, $00, $00, $00
; END MODULE cursor_tables.asm
; BEGIN MODULE list_pack.asm

; Encode the selected operation, then save the scratch result in its packed field even if encoding returned early.
PackListItem:
    call EncodeList
    ld a, [wListCode]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListPacked
    add hl, bc
    ld [hl], a
    ret

; Map operation type to a packed prefix and OR the unmasked value; a $ff prefix leaves the scratch result unchanged.
EncodeList:


Call_001_6325:
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld a, [wCaseId]
    cp $00
    jr nz, EncodeListCase2Types

    ld bc, C1PackTypes
    jr EncodeListReadPrefix

; Select the Case II operation-type to packed-prefix table.
EncodeListCase2Types:
jr_001_633f:
    ld bc, C2PackTypes

; Read the selected type prefix and retain the original unmasked value OR.
EncodeListReadPrefix:
jr_001_6342:
    add hl, bc
    ld a, [hl]
    cp ListUnencodablePrefix
    jr z, EncodeListReturn

    add a
    add a
    add a
    add a
    add a
    push af
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    or b
    ld [wListCode], a

; Return after encoding or leave wListCode unchanged for prefix $ff.
EncodeListReturn:
jr_001_635f:
    ret

C1PackTypes:
    db ListUnencodablePrefix, $04, $05, $00
    db $03, ListUnencodablePrefix

C2PackTypes:
    db ListUnencodablePrefix, $05, $06, $00
    db $04, ListUnencodablePrefix, $07
; END MODULE list_pack.asm
; BEGIN MODULE item_name.asm

; Copy operation type/value to list fields, resolve its name and save it in the selected operation slot.
PickItemName:

Call_001_636d:
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListType
    add hl, bc
    ld [hl], a
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListValue
    add hl, bc
    ld [hl], a
    call PickListName
    ld a, [wListName]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wSelName
    add hl, bc
    ld [hl], a
    ret
; END MODULE item_name.asm
INCLUDE "list_text.asm"
; BEGIN MODULE c1_room_fx.asm
; Match the selected item against previous-room records and select its scene effect.
PickC1Fx:

    call ReadC1Prev
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a

; Scan previous-room triples for the selected object ID, ignoring its high marker bit.
ScanC1FxRows:

jr_001_6500:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl+]
    cp C1RoomRecordEnd
    ret z

    ld a, [hl+]
    and $7f
    cp d
    jr z, SetC1RoomFx

    call NextC1State
    jr ScanC1FxRows

; Store the matching room record effect byte in the scene effect state.
SetC1RoomFx:

jr_001_6517:
    ld a, [hl]
    ld [wSceneFx], a
    ret


; Advance the room record pointer by three bytes.
NextC1State:
Call_001_651c:
    push hl
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    inc hl
    inc hl
    ld a, l
    ld [wRoomDataPtr], a
    ld a, h
    ld [wRoomDataPtr+1], a
    pop hl
    ret
; END MODULE c1_room_fx.asm
; BEGIN MODULE c1_scene.asm


; Update room state, then select wSceneId from the room scene list and wSceneVariant.
PickC1Scene:
    call BuildC1Scene
    ld a, [wRoomId]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, C1SceneRefs
    add hl, de
    ld a, [hl+]
    ld [wRoomDataPtr], a
    ld a, [hl]
    ld [wRoomDataPtr+1], a
    ld a, [wSceneVariant]
    ld e, a
    ld d, $00
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    ld [wSceneId], a
    ret


; Build the scene-list offset from the room records and state bits.
BuildC1Scene:
Call_001_655c:
    call ReadC1Room
    xor a
    ld [wSceneVariant], a
    ld d, a
    ld a, [wRoomId]
    ld e, a
    ld hl, C1StateCounts
    add hl, de
    ld a, [hl]
    srl a
    ld [wC1StateCount], a
    cp $00
    ret z

    ld bc, $0000

; Read the next room-state bit and add its weight to the scene variant when set.
C1SceneStateLoop:

jr_001_6578:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    ld a, [hl]
    and $7f
    push bc
    call ReadStateBit
    pop bc
    ld a, [wStateResult]
    and $01
    jr z, C1SceneNextState

    ld a, [wSceneVariant]
    ld d, a
    ld hl, BitMasks
    add hl, bc
    ld a, [hl]
    or d
    ld [wSceneVariant], a

; Advance the three-byte room record and continue until all scene-state bits are tested.
C1SceneNextState:

jr_001_659d:
    call NextC1State
    inc c
    ld a, [wC1StateCount]
    ld l, a
    ld a, c
    cp l
    jr c, C1SceneStateLoop

    ret
; END MODULE c1_scene.asm
INCLUDE "c1_views.asm"
INCLUDE "text_set.asm"
INCLUDE "save.asm"
INCLUDE "save_codec.asm"
INCLUDE "state_snap.asm"

; Original "dejavu" bytes; saved-copy tag readers use only the first four.
SaveTag:
    db $64, $65, $6a, $61, $76, $75
INCLUDE "c1_start.asm"
INCLUDE "c1_filter.asm"
; BEGIN MODULE c1_after_fx.asm

; Fade to the effect UI, mark the case-one exit, show the regional text sequence with its original waits, and fade to white.
ShowC1AfterFx:


    call FadeToWhite
    xor a
    call PlayAudio
    call LoadC1FxUi
    call FadeFromWhite
    ld a, $ff
    ld [wC1Exit], a
    ld a, $3c
    call WaitTicks
    ld a, $00
    ld [wTextCol], a
    ld a, $04
    ld [wTextRow], a
    xor a
    ld [wTextFast], a
    ld [wTextStartX], a
    ld a, $06
    call ShowUiText
    ld a, $f0
    call WaitTicks
    call ClearUiText
    ld a, $00
    ld [wTextCol], a
    ld a, $04
    ld [wTextRow], a
    ld a, $07
    call ShowUiText
    ld a, $f0
    call WaitTicks
    call ClearUiText
    ld a, $00
    ld [wTextCol], a
    ld a, $04
    ld [wTextRow], a
    ld a, $0b
    call ShowUiText
    ld a, $f0
    call WaitTicks
    ld a, $f0
    call WaitTicks
    call FadeToWhite
    ret

; Load the blank text map and closing OBJ palette with the LCD paused, then restore it and blank OAM.
LoadC1FxUi:


Call_001_6ddf:
    call RequestTimer
    call DisableLcd
    ld a, UiMapIdBlankTextPanel
    call ReadUiMap
    ld a, UiPalIdCase1ClosingObjects
    call StageUiObjPal
    call StopTimer
    call RestoreLcd
    call BlankOam
    ret
; END MODULE c1_after_fx.asm
; BEGIN MODULE text_ui.asm

; Select a case-one UI text pointer by A, set the text origin and height, and run the normal text loop.
ShowUiText:


Call_001_6df9:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C1ListTexts
    add hl, bc
    ld a, [hl+]
    ld [wTextPtr], a
    ld a, [hl]
    ld [wTextPtr+1], a
    xor a
    ld [wTextOriginX], a
    ld [wTextOriginY], a
    ld a, $10
    ld [wTextHeight], a
    call SetTextMode1
    call DrawRoomObjs
    call SubmitOam
    call ReadTextLoop
    ret
; END MODULE text_ui.asm
; BEGIN MODULE text_ui_clear.asm

; Clear UI text cell by cell, retaining the initial column offset and regional row step.
ClearUiText:


Call_001_6e22:
    ld a, $01
    ld [wClearCellX], a
    ld [wClearCellY], a

; Queue the next regional blank glyph at the current text-cell coordinates.
ClearUiTextNextCell:
jr_001_6e2a:
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
    ld hl, UiBlankGlyph
    call QueueTileRect
    call SubmitMapQueue
    ld a, [wClearCellX]
    inc a
    cp $13
    jr nz, ClearUiTextStoreColumn

    ld a, [wClearCellY]
    inc a
    cp $11
    ret z

    ld [wClearCellY], a
    xor a

; Store the advanced or reset column before clearing the next UI cell.
ClearUiTextStoreColumn:
jr_001_6e5e:
    ld [wClearCellX], a
    jr ClearUiTextNextCell

; Width, height, blank tile(s).
UiBlankGlyph:
    db $01, $01, $7f
; END MODULE text_ui_clear.asm
INCLUDE "list_labels.asm"
; BEGIN MODULE list_text_tbl.asm

; Case-one labels: sixteen pointers. Case-two labels: thirty-four pointers.
C1ListTexts:
    dw C1Lbl00
    dw C1Lbl01
    dw C1Lbl02
    dw C1Lbl03
    dw C1Lbl04
    dw C1Lbl05
    dw C1Lbl06
    dw C1Lbl07
    dw C1Lbl08
    dw C1Lbl09
    dw C1Lbl0a
    dw C1Lbl0b
    dw C1Lbl0c
    dw C1Lbl0d
    dw C1Lbl0e
    dw C1Lbl0f
; All Case II labels use END; their mode-two reader returns in mode one.
C2ListTexts:
    dw C2Lbl00
    dw C2Lbl01
    dw C2ListCashLabel
    dw C2ListQuartersLabel
    dw C2ListBulletsLabel
    dw C2ListCellsLabel
    dw C2ListChipsLabel
    dw C2Lbl07
    dw C2Lbl08
    dw C2Lbl09
    dw C2Lbl0a
    dw C2Lbl0b
    dw C2Lbl0c
    dw C2Lbl0d
    dw C2Lbl0e
    dw C2Lbl0f
    dw C2Lbl10
    dw C2Lbl11
    dw C2Lbl12
    dw C2Lbl13
    dw C2Lbl14
    dw C2Lbl15
    dw C2Lbl16
    dw C2Lbl17
    dw C2Lbl18
    dw C2Lbl19
    dw C2Lbl1a
    dw C2Lbl1b
    dw C2Lbl1c
    dw C2Lbl1d
    dw C2Lbl1e
    dw C2Lbl1f
    dw C2Lbl20
    dw C2Lbl21
; END MODULE list_text_tbl.asm

; Original zero-filled bank tail.
Bank1Pad:
    ds $005b, $00
jr_001_72bd:
    ds $0d43, $00

; End of the original bank.
