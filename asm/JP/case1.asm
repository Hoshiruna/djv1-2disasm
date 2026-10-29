; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

; BEGIN MODULE sprite_refs.asm

SpriteSetRefs:
    dw SpriteSet0
    dw SpriteSet1
    dw SpriteSet2

SpriteSet0:
    dw UiSpritePtrs
    dw SpriteSet0Aux

UiSpritePtrs:
    dw UiCursorSprite

; Shared UI cursor: two horizontal parts using tiles $e7/$e8 and attribute $06.
UiCursorSprite:
UiSprite0:
    db $02, $00, $00, $e7, $06, $00, $08, $e8, $06

SpriteSet0Aux:
    dw SpriteSet1

SpriteSet1:
    dw C1SpriteDefs
    dw C1AnimPtrs
; END MODULE sprite_refs.asm
INCLUDE "c1_sprite_data.asm"
INCLUDE "c1_anim_data.asm"

SpriteSet2:
    dw C2SpriteDefs
    dw C2AnimPtrs
INCLUDE "c2_sprite_data.asm"
INCLUDE "c2_anim_data.asm"
INCLUDE "sprite.asm"
INCLUDE "anim.asm"
; BEGIN MODULE obj_frame.asm
; A = object ID; return the sprite byte in its first animation pair.
PickObjFrame:


Call_002_60c7:
    push af
    ld a, [wCaseId]
    cp $00
    jr nz, ObjFrameCaseIIAnim

    ld bc, C1AnimPtrs
    jr ObjFrameReadAnim

; Select the Case II animation-pointer table.
ObjFrameCaseIIAnim:
jr_002_60d4:
    ld bc, C2AnimPtrs

; Read the selected object first animation frame.
ObjFrameReadAnim:
jr_002_60d7:
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    inc bc
    ld a, [bc]
    ret
; END MODULE obj_frame.asm
INCLUDE "c1_items.asm"
INCLUDE "c1_slots.asm"
INCLUDE "slot_machine.asm"
INCLUDE "audio_test.asm"
; BEGIN MODULE audio_test_data.asm

; Audio-test tens and ones tile-map destinations.
AudioTestMapDestinations:
TestMapAddrs:
    dw AudioTestTensMapAddress, AudioTestOnesMapAddress

; Audio-test decimal digit rectangle pointers, zero through nine.
AudioTestDigitPointers:
TestDigitPtrs:
    dw TestDigit0
    dw TestDigit1
    dw TestDigit2
    dw TestDigit3
    dw TestDigit4
    dw TestDigit5
    dw TestDigit6
    dw TestDigit7
    dw TestDigit8
    dw TestDigit9

TestDigit0:
    db $01, $01, $80, AudioTestDigitAttribute

TestDigit1:
    db $01, $01, $81, AudioTestDigitAttribute

TestDigit2:
    db $01, $01, $82, AudioTestDigitAttribute

TestDigit3:
    db $01, $01, $83, AudioTestDigitAttribute

TestDigit4:
    db $01, $01, $84, AudioTestDigitAttribute

TestDigit5:
    db $01, $01, $85, AudioTestDigitAttribute

TestDigit6:
    db $01, $01, $86, AudioTestDigitAttribute

TestDigit7:
    db $01, $01, $87, AudioTestDigitAttribute

TestDigit8:
    db $01, $01, $88, AudioTestDigitAttribute

TestDigit9:
    db $01, $01, $89, AudioTestDigitAttribute

; Case ID, audio cue; eighteen records.
; Audio-test selection records: stored case ID followed by audio request ID.
AudioTestCuePairs:
TestAudioPairs:
    db $00, $01 ; 01: Case I cue $01
    db $00, $02 ; 02: Case I cue $02
    db $00, $03 ; 03: Case I cue $03
    db $00, $04 ; 04: Case I cue $04
    db $00, $0b ; 05: Case I cue $0b
    db $00, $0c ; 06: Case I cue $0c
    db $00, $0e ; 07: Case I cue $0e
    db $01, $01 ; 08: Case II cue $01
    db $01, $02 ; 09: Case II cue $02
    db $01, $03 ; 10: Case II cue $03
    db $01, $04 ; 11: Case II cue $04
    db $01, $05 ; 12: Case II cue $05
    db $01, $06 ; 13: Case II cue $06
    db $01, $07 ; 14: Case II cue $07
    db $01, $08 ; 15: Case II cue $08
    db $01, $09 ; 16: Case II cue $09
    db $01, $0a ; 17: Case II cue $0a
    db $01, $0c ; 18: Case II cue $0c
; END MODULE audio_test_data.asm
; BEGIN MODULE c1_pairs.asm

; Clear the selected Case I cabinet object presence.
ClearC1Pair:
    ld a, [wCaseId]
    cp $00
    ret nz

    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, C1ClearPairReturn

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp C1ContainerDoctorLockedCabinet
    jr nz, C1ClearPairSecond

    ld a, C1ObjectDoctorCabinet
    call ClearObjPresent
    jr C1ClearPairReturn

; Check the Ace cabinet before clearing its object presence.
C1ClearPairSecond:
jr_002_6532:
    cp C1ContainerAceOfficeCabinet
    jr nz, C1ClearPairReturn

    ld a, C1ObjectAceCabinet
    call ClearObjPresent

; Return after the Case I paired-object clearing checks.
C1ClearPairReturn:
jr_002_653b:
    ret

; Set the selected Case I cabinet object presence.
KeepC1Pair:

    ld a, [wCaseId]
    cp $00
    ret nz

    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, C1KeepPairReturn

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp C1ContainerDoctorLockedCabinet
    jr nz, C1KeepPairSecond

    ld a, C1ObjectDoctorCabinet
    call SetObjPresent
    jr C1KeepPairReturn

; Check the Ace cabinet before setting its object presence.
C1KeepPairSecond:
jr_002_6567:
    cp C1ContainerAceOfficeCabinet
    jr nz, C1KeepPairReturn

    ld a, C1ObjectAceCabinet
    call SetObjPresent

; Return after the Case I paired-object presence checks.
C1KeepPairReturn:
jr_002_6570:
    ret
; END MODULE c1_pairs.asm
INCLUDE "changes.asm"
; BEGIN MODULE c1_room_event.asm

; Require the selected state bit, save state, read the target room, and unwind on a handled event.
TryC1RoomEvent:


    ld a, [wItemId]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr nz, C1RoomEventStateReady

    ld a, $63
    call ShowMsg2 ; Message Text10Message63: あけなければ いどうできない![END]
    pop bc
    jp EndNestedAction


; Save state and read the target room after its state-bit check succeeds.
C1RoomEventStateReady:
jr_002_662e:
    call SaveState
    call ReadC1Arg
    ld a, [wArg0]
    ld [wArg3], a
    call DispatchC1RoomEvt
    ld a, [wStateResult]
    and $01
    ret z

    pop bc
    jp EndNestedAction

; Find the target room in the terminated list, set scene effect six, and dispatch its event.
DispatchC1RoomEvt:


Call_002_6647:
    ld c, $00
    ld a, [wArg3]
    ld b, a
    ld hl, C1RoomEvtIds

; Scan the terminated room-event ID list.
C1RoomEventIdLoop:
jr_002_6650:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr z, C1RoomEventDispatch

    inc c
    jr C1RoomEventIdLoop

; Set scene effect six and dispatch the matching room-event entry.
C1RoomEventDispatch:
jr_002_665a:
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    ld a, c
    rst RST_00

C1RoomEvtCalls:
    dw C1RoomEvt1E
    dw C1RoomEvt20
    dw C1RoomEvt24
    dw C1RoomEvt1F
    dw C1RoomEvt4A
    dw C1RoomEvt4D
    dw C1RoomEvt4B
    dw C1RoomEvt4C
; END MODULE c1_room_event.asm
INCLUDE "c1_room_handlers.asm"
; BEGIN MODULE c1_room_evt_ids.asm

C1RoomEvtIds:
    db C1RoomIdAlleyMuggerEncounter, C1RoomIdArmedWomanEncounter, C1RoomIdAlligatorEncounter, C1RoomIdBumEncounter, C1RoomIdMuggerJoeStreet, C1RoomIdMuggerPeoria, C1RoomIdMuggerNewsstand, C1RoomIdMuggerGunShopStreet, $ff
; END MODULE c1_room_evt_ids.asm
; BEGIN MODULE room_cue.asm

; In case one, skip room $33 and play the table low nibble; in case two, honor the hold byte and preserve the return-Z that tests the earlier room comparison.
PlayRoomCue:
    ld a, [wCaseId]
    cp $00
    jr nz, RoomCueCase2

    ld a, [wRoomId]
    cp $33
    ret z

    ld c, a
    ld b, $00
    ld hl, C1RoomCues
    add hl, bc
    ld a, [hl]
    and $0f
    call PlayAudio
    ret


; Respect the Case II hold byte before choosing a room cue.
RoomCueCase2:
jr_002_68a7:
    ld a, [wRoomCueHold]
    cp $00
    ret nz

    ld a, [wRoomId]
    cp $64
    jr c, RoomCueReadCase2Table

    ld a, $03
    call PlayAudio
    ret


; Read the full table byte while retaining flags from the room-$64 comparison.
RoomCueReadCase2Table:
jr_002_68ba:
    ld l, a
    ld h, $00
    ld bc, C2RoomCues
    add hl, bc
    ld a, [hl]
    ret z

    call PlayAudio
    ret
; END MODULE room_cue.asm
; BEGIN MODULE room_cue_tbl.asm

C1RoomCues:
    db $12, $12, $12, $12, $12, $2c, $03, $03, $03, $03, $12, $2c, $2d, $2c, $2c, $12
    db $12, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $03, $2c, $2c
    db $2c, $2c, $2c, $12, $03, $12, $12, $12, $12, $12, $12, $12, $12, $12, $12, $2c
    db $2c, $2c, $12, $00, $12, $12, $12, $12, $03, $03, $03, $03, $03, $03, $2c, $12
    db $12, $12, $12, $12, $12, $12, $12, $12, $12, $12, $2c, $2c, $2c, $2c, $00, $00

C2RoomCues:
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0d, $0d, $05, $05, $05, $04, $04, $04, $04, $04, $05, $05, $05, $05, $05
    db $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $0d, $0d
    db $0d, $0d, $03, $03
; END MODULE room_cue_tbl.asm
; BEGIN MODULE list_end_inc.asm

; Increment the row byte; a result at or above the regional row count advances the group.
IncListEnd:
    ld a, [wListEndRow]
    inc a
    ld [wListEndRow], a
    cp JpListPageRows
    ret c

    xor a
    ld [wListEndRow], a
    ld a, [wListMax]
    inc a
    ld [wListMax], a
    ret
; END MODULE list_end_inc.asm
INCLUDE "c1_refresh.asm"
INCLUDE "c1_put_check.asm"
; BEGIN MODULE c1_put_finish.asm

; Update first-slot item/property flags and attributes, remove its list entry, show message five with its name, and clear the result.
; Flag/attribute changes precede deletion; the displayed name is read after redraw.
FinishC1Put:


    ld a, [wItemType]
    cp $03
    jr nz, C1FinishPutProperty

    ld a, [wItemId]
    call ClearItemFlag
    ld a, [wOpAttr]
    and OpAttrBit0ClearMask
    or OpAttrBit1Mask
    ld [wOpAttr], a
    ld a, [wItemId]
    call SetItemState
    jr C1FinishPutList

; Clear property-four bit zero and set bit one for the placed property.
C1FinishPutProperty:
jr_002_6b30:
    ld a, [wItemId]
    call ClearProp4Bit0
    ld a, [wOpAttr]
    and OpAttrBit0ClearMask
    or OpAttrBit1Mask
    ld [wOpAttr], a
    ld a, [wItemId]
    call SetProp4Bit1

; Remove the placed item from the selected list and show its name.
C1FinishPutList:
jr_002_6b46:
    ld a, [wSelMode]
    ld [wChangeMode], a
    ld a, [wSelRow]
    ld [wListRow], a
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a
    call DropListEntry
    call RefreshLists
    call DecListEnd
    ld a, [wSelName]
    ld [wTextName0], a
    ld a, $05
    call ShowMsg2 ; Message Text10Message05: [OBJECT_WRAM:37C5]を すてた。[END]
    call ClearResult
    ret
; END MODULE c1_put_finish.asm
; BEGIN MODULE c1_put_object.asm

; Remove the first-slot list entry and item flag, show the hit object and message $58, and retain the item-$2c flag exception.
; The coordinate drop and redraw run before primary item/attribute writes.
DropC1ItemObj:


    ld a, [wSelMode]
    ld [wChangeMode], a
    ld a, [wSelRow]
    ld [wListRow], a
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a
    call DropListEntry
    call RefreshLists
    call DecListEnd
    ld a, [wItemId]
    call ClearItemFlag
    ld a, [wOpAttr]
    and OpAttrBit0ClearMask
    ld [wOpAttr], a
    ld a, [wHitObj]
    call SetObjVisible
    call RefreshObjs
    ld a, $58
    call ShowMsg2 ; Message Text10Message58: もとの ところに もどした。[END]
    call ClearResult
    ld a, [wItemId]
    cp C1ItemGag
    ret nz

    ld a, C1GagRemoved
    call ClearObjFlag
    ret

; Remove the first-slot list entry and property-four bit zero, show the hit object and message $58, then clear the result.
; This clears bit zero of the post-redraw attribute byte and retains its other bits.
DropC1PropObj:


    ld a, [wSelMode]
    ld [wChangeMode], a
    ld a, [wSelRow]
    ld [wListRow], a
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a
    call DropListEntry
    call RefreshLists
    call DecListEnd
    ld a, [wItemId]
    call ClearProp4Bit0
    ld a, [wOpAttr]
    and OpAttrBit0ClearMask
    ld [wOpAttr], a
    ld a, [wHitObj]
    call SetObjVisible
    call RefreshObjs
    ld a, $58
    call ShowMsg2 ; Message Text10Message58: もとの ところに もどした。[END]
    call ClearResult
    ret
; END MODULE c1_put_object.asm
INCLUDE "c1_obj.asm"

C1ObjTile73:
    db $01, $01, $73

C1ObjTile70:
    db $01, $01, $70
; BEGIN MODULE c1_action.asm

; Read the Case I action code for wOpClass and wSelAction.
PickC1Action:
    ld a, [wOpClass]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C1ActionRows
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
C1ActionRows:
    dw C1Act00
    dw C1Act01
    dw C1Act02
    dw C1Act03
    dw C1Act04
    dw C1Act05

C1Act00:
    db $00, $ff, $03, $ff, $ff, $ff, $02, $01, $ff, $ff, $ff

C1Act01:
    db $00, $01, $03, $ff, $ff, $02, $ff, $ff, $ff, $ff, $ff

C1Act02:
    db $00, $01, $03, $ff, $ff, $02, $ff, $ff, $ff, $ff, $ff

C1Act03:
    db $00, $ff, $03, $02, $01, $ff, $ff, $ff, $ff, $ff, $ff

C1Act04:
    db $00, $01, $05, $04, $03, $02, $ff, $ff, $ff, $ff, $ff

C1Act05:
    db $00, $01, $ff, $ff, $ff, $02, $ff, $ff, $03, $ff, $ff
; END MODULE c1_action.asm
; BEGIN MODULE c1_fallback.asm

; Try the three Case I special rules before selecting a fallback reply.
FallbackC1:
    call CheckC1Rooms
    ld a, [wStateResult]
    and $01
    ret nz

    call CheckC1Op12
    ld a, [wStateResult]
    and $01
    ret nz

    call CheckC1Op3f
    ld a, [wStateResult]
    and $01
    ret nz

    ld a, [wOpClass]
    add a
    ld c, a
    ld b, $00
    ld hl, C1ReplyRows
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, [wSelAction]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    inc hl
    ld a, [hl-]
    cp $ff
    jr nz, C1FallbackReplyDispatch

    ret


; Save the reply pointer and dispatch its message stream selector.
C1FallbackReplyDispatch:
jr_002_6d0e:
    push hl
    rst RST_00

C1ReplyCalls:
    dw C1Reply0
    dw C1Reply1
    dw C1Reply2

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 0.
C1Reply0:
    pop hl
    ld a, [hl]
    call ShowMsg0
    ret

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 1.
C1Reply1:


    pop hl
    ld a, [hl]
    call ShowMsg1
    ret

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 2.
C1Reply2:


    pop hl
    ld a, [hl]
    call ShowMsg2
    ret
; END MODULE c1_fallback.asm
INCLUDE "c1_rules.asm"
; BEGIN MODULE c1_reply.asm

C1ReplyRows:
    dw C1Rep00
    dw C1Rep01
    dw C1Rep02
    dw C1Rep03
    dw C1Rep04
    dw C1Rep05

C1Rep00:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $13, $00 ; Fallback action SelActionOpen: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $13, $00 ; Fallback action SelActionPut: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $16, $00 ; Fallback action SelActionTake: Text0CMessage16: とれないようだ。[END]
    db $37, $02 ; Fallback action SelActionClose: Text10Message37: なにを しているんだ おれは?![END]
    db $ff, $ff ; Fallback action SelActionHit: script; no table reply
    db $ff, $ff ; Fallback action SelActionTalk: script; no table reply
    db $14, $00 ; Fallback action SelActionMove: Text0CMessage14: ・・・・・・むりか。[END]
    db $13, $00 ; Fallback action $09: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C1Rep01:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $13, $00 ; Fallback action SelActionPut: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $16, $00 ; Fallback action SelActionTake: Text0CMessage16: とれないようだ。[END]
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $7d, $00 ; Fallback action SelActionHit: Text0CMessage7D: ・・・なにも おこらない。[END]
    db $1b, $00 ; Fallback action SelActionTalk: Text0CMessage1B: だれに はなしかけているんだ?[END]
    db $13, $00 ; Fallback action SelActionMove: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $13, $00 ; Fallback action $09: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C1Rep02:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $13, $00 ; Fallback action SelActionPut: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $16, $00 ; Fallback action SelActionTake: Text0CMessage16: とれないようだ。[END]
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $7d, $00 ; Fallback action SelActionHit: Text0CMessage7D: ・・・なにも おこらない。[END]
    db $1b, $00 ; Fallback action SelActionTalk: Text0CMessage1B: だれに はなしかけているんだ?[END]
    db $13, $00 ; Fallback action SelActionMove: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $13, $00 ; Fallback action $09: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C1Rep03:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $14, $00 ; Fallback action SelActionOpen: Text0CMessage14: ・・・・・・むりか。[END]
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $ff, $ff ; Fallback action SelActionPut: script; no table reply
    db $ff, $ff ; Fallback action SelActionTake: script; no table reply
    db $13, $00 ; Fallback action SelActionClose: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $1a, $00 ; Fallback action SelActionHit: Text0CMessage1A: コン コン! / ・・・・・・なにも おこらない。[END]
    db $13, $00 ; Fallback action SelActionTalk: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $13, $00 ; Fallback action SelActionMove: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $14, $00 ; Fallback action $09: Text0CMessage14: ・・・・・・むりか。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C1Rep04:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $ff, $ff ; Fallback action SelActionPut: script; no table reply
    db $ff, $ff ; Fallback action SelActionTake: script; no table reply
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $1a, $00 ; Fallback action SelActionHit: Text0CMessage1A: コン コン! / ・・・・・・なにも おこらない。[END]
    db $1b, $00 ; Fallback action SelActionTalk: Text0CMessage1B: だれに はなしかけているんだ?[END]
    db $13, $00 ; Fallback action SelActionMove: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $13, $00 ; Fallback action $09: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C1Rep05:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: silent fallback; no table reply
    db $13, $00 ; Fallback action SelActionPut: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $16, $00 ; Fallback action SelActionTake: Text0CMessage16: とれないようだ。[END]
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $1a, $00 ; Fallback action SelActionHit: Text0CMessage1A: コン コン! / ・・・・・・なにも おこらない。[END]
    db $13, $00 ; Fallback action SelActionTalk: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action SelActionMove: script; no table reply
    db $13, $00 ; Fallback action $09: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply
; END MODULE c1_reply.asm
; BEGIN MODULE c1_effect.asm

; Preserve AF and both scratch index low bytes, hide text, run the case-one effect, restore its view, and replay the saved audio byte.
; Submit the saved state byte unchanged, including its base-reload bit.
PlayC1Effect:
    push af
    ldh a, [hItemSlot]
    push af
    ldh a, [hChangePos]
    push af
    ld a, [wAudioState]
    push af
    call HideTextWindow
    call SaveC1FxScene
    call DispatchC1Fx
    call RestoreC1FxView
    pop af
    call PlayAudio
    pop af
    ldh [hChangePos], a
    pop af
    ldh [hItemSlot], a
    pop af
    ret
; END MODULE c1_effect.asm
INCLUDE "c1_fx_core.asm"
; BEGIN MODULE c1_effect_end.asm

; Preserve AF and both scratch index low bytes, hide text, run the case-one end effect, and wait sixty ticks.
FinishC1Effect:


Call_002_71ce:
    push af
    ldh a, [hItemSlot]
    push af
    ldh a, [hChangePos]
    push af
    call HideTextWindow
    call SelectC1FxScene
    call DispatchC1FxEnd
    ld a, $3c
    call WaitTicks
    pop af
    ldh [hChangePos], a
    pop af
    ldh [hItemSlot], a
    pop af
    ret

; Restore the saved scene ID, set scene effect six, redraw it, and refresh room objects.
RestoreC1FxView:


Call_002_71eb:
    ld a, [wFxScene]
    ld [wSceneId], a
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    call ShowScene
    call RefreshObjs
    ret
; END MODULE c1_effect_end.asm
INCLUDE "c1_fx_end.asm"
; BEGIN MODULE obj_add.asm
; Preserve HL/BC/DE while checking and appending the selected object.
AddRoomObj:


    push hl
    push bc
    push de
    call CheckRoomObj
    pop de
    pop bc
    pop hl
    ret
; Append only when both presence and visibility bits are set.
CheckRoomObj:


Call_002_7271:
    ld a, [wDrawObj]
    call ReadObjPresent
    ld a, [wStateResult]
    and $01
    ret z

    ld a, [wDrawObj]
    call ReadObjVisible
    ld a, [wStateResult]
    and $01
    ret z
; Append the selected object position and ID; advance the list write pointer.
; Write one X/Y/ID triple; the builder writes the final X=$ff terminator.
AppendRoomObj:

Call_002_7289:
    ld a, [wDrawObj]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [wCaseId]
    cp $00
    jr nz, ObjAddCaseIIPositions

    ld bc, C1ObjPos
    jr ObjAddStorePosition

; Select the Case II object-position table.
ObjAddCaseIIPositions:
jr_002_729c:
    ld bc, C2ObjPos

; Store the selected object position and ID in the room list.
ObjAddStorePosition:
jr_002_729f:
    add hl, bc
    ld a, l
    ld [wObjPosPtr], a
    ld a, h
    ld [wObjPosPtr+1], a
    ld a, [wObjListPtr]
    ld c, a
    ld a, [wObjListPtr+1]
    ld b, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [wDrawObj]
    ld [bc], a
    inc bc
    ld a, c
    ld [wObjListPtr], a
    ld a, b
    ld [wObjListPtr+1], a
    ret
; END MODULE obj_add.asm
; BEGIN MODULE obj_pos_data.asm
; Case I: 81 X/Y pairs. Case II: 103 X/Y pairs.
; Bathroom positions continue to include the exported scene resource.

C1ObjPos:
    db $13, $1c, $13, $1c, $23, $0b, $52, $48, $52, $48, $40, $28, $30, $28, $38, $30
    db $58, $60, $5c, $07
jr_002_72d8:
    db $26, $18
jr_002_72da:
    db $0c, $30, $0c, $30, $0c, $30, $0e, $30, $0c, $30, $0c, $30, $14, $33, $0c
jr_002_72e9:
    db $30, $58
jr_002_72eb:
    db $60, $0f, $00, $20, $33, $26, $18, $58, $60, $44, $32, $05, $32, $60, $48, $54
jr_002_72fb:
    db $60, $5d, $62, $66, $66, $48
jr_002_7301:
    db $40, $26, $22, $1a, $36, $22, $36, $1a, $46, $22
jr_002_730b:
    db $46, $1a, $56, $22, $56, $52, $36, $5a, $36, $52, $46, $5a, $46, $52, $56, $5a
    db $56, $21, $50, $4d, $30, $04, $38, $0c
jr_002_7323:
    db $38, $14
jr_002_7325:
    db $38, $0f, $14, $1c, $16, $2b, $17, $35
jr_002_732d:
    db $18, $0e
jr_002_732f:
    db $23, $1a, $24, $2a, $24, $33, $25
jr_002_7336:
    db $08, $43, $13
jr_002_7339:
    db $42, $22, $41, $2c
jr_002_733d:
    db $40, $30, $3a, $40, $16, $30
jr_002_7343:
    db $00, $53, $14, $2c, $30, $30, $30, $00
jr_002_734b:
    db $48, $2a, $34, $48, $34, $12, $1c, $20, $1c, $20, $28, $20, $80, $20, $80, $40
    db $80, $40, $80, $60, $78, $60, $78, $10, $80, $10, $80

C2ObjPos:
Case2ObjectPositions:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-objects.positions", $0, $a
jr_002_7370:
    db $4a, $0b, $55, $5f, $69, $06, $4a, $26, $0f
jr_002_7379:
    db $2c
jr_002_737a:
    db $00, $40, $2b, $46
jr_002_737e:
    db $59, $33, $21, $32, $21, $32, $38, $3d, $38, $55, $4b, $0d, $50, $0a, $56, $07
    db $5d, $03, $01, $3d, $62, $41, $28, $08, $43, $4d, $43, $43, $43, $43, $1a, $3c
jr_002_739e:
    db $57, $30, $41, $49, $38, $4d, $38, $45, $38, $3d, $3e, $49, $60, $28, $00
jr_002_73ad:
    db $28, $20, $00, $20, $00
jr_002_73b2:
    db $20, $00
jr_002_73b4:
    db $20, $00
jr_002_73b6:
    db $20, $00
jr_002_73b8:
    db $20, $00
jr_002_73ba:
    db $20, $00
jr_002_73bc:
    db $20, $00
jr_002_73be:
    db $61, $19, $61, $39, $50
jr_002_73c3:
    db $20, $53, $4d, $0c, $30, $00
jr_002_73c9:
    db $00, $2d, $23, $00, $0a, $28, $6a, $59, $5a, $38, $51, $38, $51, $58, $4b, $57
    db $18, $58, $18, $60
jr_002_73dd:
    db $18, $60, $0e, $45, $3a
jr_002_73e2:
    db $31, $4a, $52
jr_002_73e5:
    db $5c, $25, $1e, $3f, $1e, $09
jr_002_73eb:
    db $21, $63, $21, $55, $0a, $03
jr_002_73f1:
    db $0d, $3b, $3f, $33, $37, $4a, $30, $00
jr_002_73f9:
    db $42, $5d, $55, $28, $3c, $29, $3d, $02, $37, $2a, $36, $1d, $30, $3b, $02, $46
    db $2f, $12, $11, $10, $4a, $24, $4a, $0c, $30, $0c, $30, $0c, $30, $0c, $30, $0c
    db $30, $0c, $30, $2a, $11, $58, $28, $10
jr_002_7421:
    db $20, $38
jr_002_7423:
    db $48, $20, $58, $48
jr_002_7427:
    db $38, $10, $30, $60, $40, $00, $60, $48, $50, $41, $69, $24
jr_002_7433:
    db $4a
; END MODULE obj_pos_data.asm
; BEGIN MODULE effect_obj.asm

; Set the object list pointer to wObjList, append the selected object, terminate at list offset three, and fall through to RenderObjList.
BuildEffectObj:
    ld a, $00
    ld [wObjListPtr], a

jr_002_7439:
    ld a, $c6
    ld [wObjListPtr+1], a
    call AppendRoomObj
    ld a, $ff
    ld [wObjList+3], a
; END MODULE effect_obj.asm
; BEGIN MODULE obj_render.asm
; Draw X/Y/object triples until X is $ff; subtract the sprite Y offset.
RenderObjList:
    push hl

; Start rendering the room-object list.
ObjRenderStartList:
jr_002_7447:
    push de
    push bc
    ld hl, wObjList

; Read the next X/Y/object triple, subtract the sprite scroll Y, and draw its object sprite; X $ff ends the list.
DrawNextRoomObj:

jr_002_744c:
    ld a, [hl+]
    cp $ff
    jr z, EndRoomObjDraw

    ldh [hSpriteX], a
    ld a, [hl+]
    push bc
    ld b, a
    ld a, [wSpriteScrollY]
    ld c, a
    ld a, b

; Subtract the sprite scroll offset from the object Y coordinate.
ObjRenderApplyScroll:
jr_002_745b:
    sub c
    pop bc
    ldh [hSpriteY], a
    ld a, [hl+]
    call DrawObjSprite
    jr DrawNextRoomObj

; Restore BC, DE, and HL saved by the object-list renderer.
EndRoomObjDraw:

jr_002_7465:
    pop bc
    pop de
    pop hl
    ret
; END MODULE obj_render.asm
; BEGIN MODULE sel_action.asm

; Initialize an unset action in slot zero and mark it for clearing after action completion.
InitSelAction:


    ld d, a
    ldh a, [hItemSlot]
    cp OpSlotPrimary
    ld a, d
    ret nz

    ld a, [wSelAction]
    cp $ff
    ret nz

    ld a, AutoActionResetPending
    call SetObjFlag
    ld a, [wItemType]

jr_002_747e:
    rst RST_00

SelActionCalls:
    dw SelectLookAction
    dw SelectLookAction
    dw SelectLookAction
    dw SelectLookAction
    dw SelectLookAction
    dw PickOpenOrMoveAction

; Select look for item types $00..$04.
SelectLookAction:
ClearSelAction:

jr_002_748b:
    ld a, SelActionLook
    ld [wSelAction], a
    ret

; Select open or move from the item state bit, retaining the Case I ID exception.
PickOpenOrMoveAction:
PickBitAction:


    ld a, [wCaseId]
    cp $00
    jr nz, DefaultActionReadState

    ld a, [wItemId]
    cp C1DoorIdBlueCabPeoria
    jr c, DefaultActionReadState

    cp C1DoorIdYellowCabEstate
    jr c, SelectMoveAction

; Use the selected room-state bit outside the Case I forced-action range.
DefaultActionReadState:
jr_002_74a3:
    ld a, [wItemId]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr nz, SelectMoveAction

    ld a, SelActionOpen
    ld [wSelAction], a
    ret


; Select move when the state bit or Case I ID exception requires it.
SelectMoveAction:
DefaultActionEight:
jr_002_74b6:
    ld a, SelActionMove
    ld [wSelAction], a
    ret
; END MODULE sel_action.asm
INCLUDE "save_menu.asm"
; BEGIN MODULE restore_prompt.asm

; Show restore confirmation; on answer zero restore state and clear case-two event state, then fade out.
RunRestorePrompt:


    call FadeOut
    call HideTextWindow
    call LoadSaveUi
    call ClearSavePanel
    ld hl, SaveContinueEndPointers
    call PickSaveSpec
    call QueueTileSpec
    call SubmitMapQueue
    ld a, $01
    ld [wSaveMenuRow], a
    call FadeIn
    call ChooseSaveAnswer
    ld a, [wSaveAnswer]
    cp $00
    jr nz, RestorePromptFadeOut

    call RestoreState
    call ClearC2Events

; Fade out after restoring state or declining the restore prompt.
RestorePromptFadeOut:
jr_002_788e:
    call FadeOut
    ret
; END MODULE restore_prompt.asm
; BEGIN MODULE c2_event_clear.asm

; In case two, clear text hold and state bit two, then process each set bit of the live event latch.
ClearC2Events:


Call_002_7892:
    ld a, [wCaseId]
    cp $00
    ret z

    call ClearTextHold
    ld a, [wStateResult]
    and $fb
    ld [wStateResult], a
    ld de, $0000
    ld a, [wC2EventBits]
    ld c, $08

; Visit the next originally latched bit; restore shifted A after its cleanup call.
C2EventScanNextBit:
jr_002_78ab:
    srl a
    jr nc, C2EventAdvanceBit

    push de
    push bc
    push af
    call ClearC2Event
    pop af
    pop bc
    pop de

; Advance to the next Case II event and counter index.
C2EventAdvanceBit:
jr_002_78b8:
    inc de
    dec c
    jr nz, C2EventScanNextBit

    ret

; For E other than seven, read its counter offset and clear that counter; for seven, enter the special room/flag cleanup.
ClearC2Event:


Call_002_78bd:
    ld a, $07
    cp e
    jr z, ClearC2Event7

    ld hl, C2EventCounters
    add hl, de
    ld a, [hl]
    ld c, a
    ld b, $00
    ld hl, wC2Counters
    add hl, bc
    xor a
    ld [hl], a

; Clear the event bitmap bit selected by DE through the fixed-bank clear-mask table.
ClearC2EventBit:

Call_002_78d0:
    ld a, [wC2EventBits]
    ld hl, ClearMasks
    add hl, de
    and [hl]
    ld [wC2EventBits], a
    ret

; Clear event bit seven and object flags $4e/$a8, then select Joe's rear hallway.
; This special event path does not zero the flashlight-age counter.
ClearC2Event7:


jr_002_78dc:
    call ClearC2EventBit
    ld a, C2LampHasCell
    call ClearObjFlag
    ld a, C2LampWeak
    call ClearObjFlag
    ld a, RoomJoeRearHallway
    ld [wRoomId], a
    ret
; END MODULE c2_event_clear.asm
; BEGIN MODULE c2_event_counters.asm

; Latched event bits 0..5 reset these timers; bit 7 uses flashlight cleanup.
; The original six-byte table has no entry for bit 6; leave its following code unchanged.
C2EventCounters:
    db C2HeatIx, C2GoonsIx, C2HuntIx, C2GuardIx, C2DebtIx, C2EndIx
; END MODULE c2_event_counters.asm
INCLUDE "save_records.asm"
INCLUDE "text_refs.asm"
; BEGIN MODULE rng.asm

; Advance the eight-bit random state and combine its low nibble with the incremented-state high nibble.
StepRandom:

    push bc

    ldh a, [hRandState]
    add $01
    ldh [hRandByte], a
    ld c, a
    add a
    add a
    add c
    ldh [hRandState], a
    ldh a, [hRandByte]
    swap a
    and $0f
    ldh [hRandByte], a
    ld c, a
    ldh a, [hRandState]
    swap a
    and $f0
    or c
    ldh [hRandByte], a
    pop bc
    ret
; END MODULE rng.asm

; Original zero-filled bank tail.
Bank2Pad:
    ds $0371, $00
Call_002_7f7f:
    ds $0045, $00
Jump_002_7fc4:
    ds $0009, $00
Call_002_7fcd:
    ds $0004, $00
Call_002_7fd1:
    ds $0005, $00
Call_002_7fd6:
    ds $002a, $00

; End of the original bank.
