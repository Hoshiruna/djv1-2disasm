; --- c1_fx_scenes.asm ---

C1FxScenes:
    db C1SceneSlotMachine ; C1FxIdSlots ($00)
    db C1SceneHitman ; C1FxIdDogMemory ($01)
    db C1SceneHitman ; C1FxIdMotherMemory ($02)
    db C1SceneHitman ; C1FxIdPriestMemory ($03)
    db C1SceneHitmanAlt ; C1FxIdSuzyMemory ($04)
    db C1SceneHitman ; C1FxIdMirrorReflection ($05)
    db C1SceneSocko ; C1FxIdImpact ($06)
    db C1SceneBlam ; C1FxIdGunshot ($07)
    db C1SceneBoom ; C1FxIdExplosion ($08)
    db C1SceneHitmanAlt ; C1FxIdSnapshot ($09)
    db C1SceneHitman ; C1FxIdPosterUncertain ($0a)
    db C1SceneHitmanAlt ; C1FxIdPosterRecognized ($0b)
    db C1SceneRobbingMugger ; C1FxIdRobbingMugger ($0c)
    db C1SceneArmedWoman ; C1FxIdArmedWomanEncounter ($0d)
    db C1SceneAlligatorEncounter ; C1FxIdAlligatorEncounter ($0e)
    db C1SceneBumEncounter ; C1FxIdBumEncounter ($0f)
    db C1SceneMuggerJoeStreet ; C1FxIdMuggerJoeStreet ($10)
    db C1SceneMuggerNewsstand ; C1FxIdMuggerNewsstand ($11)
    db C1SceneMuggerGunShopStreet ; C1FxIdMuggerGunShopStreet ($12)
    db C1SceneMuggerPeoria ; C1FxIdMuggerPeoria ($13)
    db C1SceneHandcuffs ; C1FxIdArrest ($14)
    db C1SceneAceGrave ; C1FxIdDefeat ($15)
    db C1SceneArmedWomanPortrait ; C1FxIdArmedWomanFires ($16)
    db C1SceneAceClearedNewspaper ; C1FxIdCaseSolved ($17)
    db C1SceneHitman ; C1FxIdHeadacheUpstairs ($18)
    db C1SceneHitman ; C1FxIdHeadacheOffice ($19)
    db C1SceneHitman ; C1FxIdRubberDuckMemory ($1a)

; --- c1_fx_dispatch.asm ---

; Dispatch the current scene effect index through the original twenty-seven-entry table.
DispatchC1Fx:

Call_002_6f73:
    ld a, [wFxId]
    rst RST_00

C1FxCalls:
    dw C1FxPlaySlots ; C1FxIdSlots ($00)
    dw C1FxObj ; C1FxIdDogMemory ($01)
    dw C1FxObj ; C1FxIdMotherMemory ($02)
    dw C1FxObj ; C1FxIdPriestMemory ($03)
    dw C1FxObj ; C1FxIdSuzyMemory ($04)
    dw C1FxObj ; C1FxIdMirrorReflection ($05)
    dw C1FxImpact ; C1FxIdImpact ($06)
    dw C1FxGunshot ; C1FxIdGunshot ($07)
    dw C1FxExplosion ; C1FxIdExplosion ($08)
    dw C1FxShowSnapshot ; C1FxIdSnapshot ($09)
    dw C1FxObjAlt ; C1FxIdPosterUncertain ($0a)
    dw C1FxObjAlt ; C1FxIdPosterRecognized ($0b)
    dw C1FxNone ; C1FxIdRobbingMugger ($0c)
    dw C1FxNone ; C1FxIdArmedWomanEncounter ($0d)
    dw C1FxNone ; C1FxIdAlligatorEncounter ($0e)
    dw C1FxNone ; C1FxIdBumEncounter ($0f)
    dw C1FxNone ; C1FxIdMuggerJoeStreet ($10)
    dw C1FxNone ; C1FxIdMuggerNewsstand ($11)
    dw C1FxNone ; C1FxIdMuggerGunShopStreet ($12)
    dw C1FxNone ; C1FxIdMuggerPeoria ($13)
    dw C1FxNone ; C1FxIdArrest ($14)
    dw C1FxNone ; C1FxIdDefeat ($15)
    dw C1FxNone ; C1FxIdArmedWomanFires ($16)
    dw C1FxCaseSolved ; C1FxIdCaseSolved ($17)
    dw C1FxObj ; C1FxIdHeadacheUpstairs ($18)
    dw C1FxObj ; C1FxIdHeadacheOffice ($19)
    dw C1FxObj ; C1FxIdRubberDuckMemory ($1a)

; --- c1_fx_handlers.asm ---

; Play cue zero, then run the slot-machine game.
C1FxPlaySlots:
C1FxInit:
    xor a
    call PlayAudio
    call PlayC1Slots
    ret

; Play cue $0b, display the effect object and message with the original waits, then clear the object.
C1FxObj:


    ld a, $0b
    call PlayAudio
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    call ShowC1FxMsg
    ld a, $3c
    call WaitTicks
    call ClearC1FxObj
    ret

; Play cue zero, wait sixteen ticks, play cue $20, and wait ninety ticks.
C1FxImpact:
C1FxCue20:


Jump_002_6fce:
    xor a
    call PlayAudio
    ld a, $10
    call WaitTicks
    ld a, $20
    call PlayAudio
    ld a, $5a
    call WaitTicks
    ret

; Play cue zero, wait sixteen ticks, play cue $1a, and wait ninety ticks.
C1FxGunshot:
C1FxCue1A:


Jump_002_6fe2:
    xor a
    call PlayAudio
    ld a, $10
    call WaitTicks
    ld a, $1a
    call PlayAudio
    ld a, $5a
    call WaitTicks
    ret

; Play cue zero, wait sixteen ticks, play cue $1f, and wait one hundred eighty ticks.
C1FxExplosion:
C1FxCue1F:


Jump_002_6ff6:
    xor a
    call PlayAudio
    ld a, $10
    call WaitTicks
    ld a, $1f
    call PlayAudio
    ld a, $b4
    call WaitTicks
    ret

; Show the snapshot object; check revealed-memo, then Sternwood-view flags. Only the default branch clears it.
C1FxShowSnapshot:
C1FxFlags:


    ld a, $0b
    call PlayAudio
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    ld a, C1MemoWritingRevealed
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1FxRevealedMemoReply

    ld a, C1SternwoodViewShown
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1FxSternwoodReply

    ld a, C1FxMsgSnapshotDefault
    call ShowText1
    call ClearC1FxObj
    ld a, $3c
    call WaitTicks
    ret


; Show the alternate effect text for the Sternwood-view flag.
C1FxSternwoodReply:
jr_002_703d:
    ld a, C1FxMsgSnapshotSternwood
    call ShowText2
    ld a, $3c
    call WaitTicks
    ret


; Show the enough-seen reply selected by the revealed-memo flag without clearing the object.
C1FxRevealedMemoReply:
jr_002_7048:
    ld a, C1FxMsgSnapshotEnoughSeen
    call ShowText2
    ld a, $3c
    call WaitTicks
    ret

; Retain the second effect-object/message sequence with cue $0b and its original waits.
C1FxObjAlt:


    ld a, $0b
    call PlayAudio
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    call ShowC1FxMsg
    ld a, $3c
    call WaitTicks
    call ClearC1FxObj

; Return immediately; this entry also ends the preceding object effect.
C1FxNone:
    ret

; Retain the $ff object reads, show the message and certificate scene, then continue to the closing text.
C1FxCaseSolved:
C1FxFinal:


Call_002_706c:
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    call ShowC1FxMsg
    ld a, $3c
    call WaitTicks
    call ClearC1FxObj
    ld a, C1SceneAceInvestigationCertificate
    ld [wSceneId], a
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    call ShowScene
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    ld a, C1FxMsgCaseSolvedClosing
    call ShowText2
    ld a, $78
    call WaitTicks
    call C1AfterFxCall
    ret

; --- c1_fx_obj.asm ---

; Select the effect object and its case-one position, build one terminated object record, draw it, and submit OAM.
; The $ff entry still indexes C1ObjPos; DrawObjSprite also has a later $ff guard.
DrawC1FxObj:


Call_002_70a2:
    ld a, [wFxId]
    ld c, a
    ld b, $00
    ld hl, C1FxObjs
    add hl, bc
    ld a, [hl]
    ld [wC1FxObj], a
    ld [wObjList+2], a
    ld a, [wC1FxObj]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C1ObjPos
    add hl, bc
    ld a, [hl+]
    ld [wObjList], a
    ld a, [hl]
    ld [wObjList+1], a
    ld a, $ff
    ld [wObjList+3], a
    call DrawRoomObjs
    call SubmitOam
    ret

; Read and discard the effect object ID, set the object list start to $ff, and redraw it.
ClearC1FxObj:


Call_002_70d2:
    ld a, [wFxId]
    ld c, a
    ld b, $00
    ld hl, C1FxObjs
    add hl, bc
    ld a, [hl]
    ld a, $ff
    ld [wObjList], a
    call DrawRoomObjs
    ret

C1FxObjs:
    db C1FxObjectSkipSprite ; C1FxIdSlots ($00)
    db C1FxObjectDogMemory ; C1FxIdDogMemory ($01)
    db C1FxObjectMotherMemory ; C1FxIdMotherMemory ($02)
    db C1FxObjectPriestMemory ; C1FxIdPriestMemory ($03)
    db C1FxObjectSuzyMemory ; C1FxIdSuzyMemory ($04)
    db C1FxObjectQuestionMark ; C1FxIdMirrorReflection ($05)
    db C1FxObjectSkipSprite ; C1FxIdImpact ($06)
    db C1FxObjectSkipSprite ; C1FxIdGunshot ($07)
    db C1FxObjectSkipSprite ; C1FxIdExplosion ($08)
    db C1FxObjectSnapshotPortrait ; C1FxIdSnapshot ($09)
    db C1FxObjectBoxerPortrait ; C1FxIdPosterUncertain ($0a)
    db C1FxObjectAcePortrait ; C1FxIdPosterRecognized ($0b)
    db C1FxObjectSkipSprite ; C1FxIdRobbingMugger ($0c)
    db C1FxObjectSkipSprite ; C1FxIdArmedWomanEncounter ($0d)
    db C1FxObjectSkipSprite ; C1FxIdAlligatorEncounter ($0e)
    db C1FxObjectSkipSprite ; C1FxIdBumEncounter ($0f)
    db C1FxObjectSkipSprite ; C1FxIdMuggerJoeStreet ($10)
    db C1FxObjectSkipSprite ; C1FxIdMuggerNewsstand ($11)
    db C1FxObjectSkipSprite ; C1FxIdMuggerGunShopStreet ($12)
    db C1FxObjectSkipSprite ; C1FxIdMuggerPeoria ($13)
    db C1FxObjectSkipSprite ; C1FxIdArrest ($14)
    db C1FxObjectSkipSprite ; C1FxIdDefeat ($15)
    db C1FxObjectSkipSprite ; C1FxIdArmedWomanFires ($16)
    db C1FxObjectSkipSprite ; C1FxIdCaseSolved ($17)
    db C1FxObjectQuestionMark ; C1FxIdHeadacheUpstairs ($18)
    db C1FxObjectQuestionMark ; C1FxIdHeadacheOffice ($19)
    db C1FxObjectQuestionMark ; C1FxIdRubberDuckMemory ($1a)

; --- c1_fx_msg.asm ---

; Select the effect message record with an eight-bit doubled index and dispatch its stream selector while saving the message pointer.
ShowC1FxMsg:

Call_002_7101:
    ld a, [wFxId]
    sla a
    ld c, a
    ld b, $00
    ld hl, C1FxMsgs+1
    add hl, bc
    ld a, [hl-]
    push hl
    rst RST_00

C1FxMsgCalls:
    dw C1FxMsg0, C1FxMsg1, C1FxMsg2

; Pop the saved message pointer and show its byte through message stream zero.
C1FxMsg0:
    pop hl
    ld a, [hl]
    call ShowMsg0
    ret

; Pop the saved message pointer and show its byte through message stream one.
C1FxMsg1:


    pop hl
    ld a, [hl]
    call ShowMsg1
    ret

; Pop the saved message pointer and show its byte through message stream two.
C1FxMsg2:


    pop hl
    ld a, [hl]
    call ShowMsg2
    ret

; --- c1_fx_msgdata.asm ---

; Message ID, stream selector (zero, one, or two).
C1FxMsgs:
    db $00, $00 ; C1FxIdSlots ($00)
    db C1FxMsgDogMemory, $01 ; C1FxIdDogMemory ($01)
    db C1FxMsgMotherMemory, $01 ; C1FxIdMotherMemory ($02)
    db C1FxMsgPriestMemory, $01 ; C1FxIdPriestMemory ($03)
    db C1FxMsgSuzyMemory, $01 ; C1FxIdSuzyMemory ($04)
    db C1FxMsgMirrorReflection, $00 ; C1FxIdMirrorReflection ($05)
    db $00, $00 ; C1FxIdImpact ($06)
    db $00, $00 ; C1FxIdGunshot ($07)
    db $00, $00 ; C1FxIdExplosion ($08)
    db $00, $00 ; C1FxIdSnapshot ($09)
    db C1FxMsgPosterUncertain, $02 ; C1FxIdPosterUncertain ($0a)
    db C1FxMsgPosterRecognized, $02 ; C1FxIdPosterRecognized ($0b)
    db $00, $00 ; C1FxIdRobbingMugger ($0c)
    db $00, $00 ; C1FxIdArmedWomanEncounter ($0d)
    db $00, $00 ; C1FxIdAlligatorEncounter ($0e)
    db $00, $00 ; C1FxIdBumEncounter ($0f)
    db $00, $00 ; C1FxIdMuggerJoeStreet ($10)
    db $00, $00 ; C1FxIdMuggerNewsstand ($11)
    db $00, $00 ; C1FxIdMuggerGunShopStreet ($12)
    db $00, $00 ; C1FxIdMuggerPeoria ($13)
    db $00, $00 ; C1FxIdArrest ($14)
    db $00, $00 ; C1FxIdDefeat ($15)
    db $00, $00 ; C1FxIdArmedWomanFires ($16)
    db C1FxMsgCaseSolved, $01 ; C1FxIdCaseSolved ($17)
    db C1FxMsgHeadacheUpstairs, $01 ; C1FxIdHeadacheUpstairs ($18)
    db C1FxMsgHeadacheOffice, $00 ; C1FxIdHeadacheOffice ($19)
    db C1FxMsgRubberDuckMemory, $01 ; C1FxIdRubberDuckMemory ($1a)

; --- c1_fx_select.asm ---

; Save the current scene, select the indexed case-one effect scene, and clear the object list.
SaveC1FxScene:

    ld a, [wSceneId]
    ld [wFxScene], a
    ld a, [wFxId]
    cp C1FxIdImpact
    jr z, ReloadC1FxScene

    cp C1FxIdGunshot
    jr z, ReloadC1FxScene

    cp C1FxIdExplosion
    jr z, ReloadC1FxScene

    ld e, a
    ld d, $00
    ld hl, C1FxScenes
    add hl, de
    ld a, [hl]
    ld [wSceneId], a
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    call ShowScene
    ld a, $ff
    ld [wObjList], a
    ret

; Save the current scene and select the indexed end-effect scene through the original alternate entry.
SelectC1FxScene:


Call_002_718c:
    ld a, [wSceneId]
    ld [wFxScene], a
    ld a, [wFxId]
    cp C1FxIdImpact
    jr z, ReloadC1FxScene

    cp C1FxIdGunshot
    jr z, ReloadC1FxScene

    cp C1FxIdExplosion
    jr z, ReloadC1FxScene

    ld e, a
    ld d, $00
    ld hl, C1FxScenes
    add hl, de
    ld a, [hl]
    ld [wSceneId], a
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    call ShowScene
    ld a, $ff
    ld [wObjList], a
    ret

; Select the effect scene with ReloadScene for indices six, seven, and eight, then clear the object list.
ReloadC1FxScene:


jr_002_71ba:
    ld e, a
    ld d, $00
    ld hl, C1FxScenes
    add hl, de
    ld a, [hl]
    ld [wSceneId], a
    call ReloadScene
    ld a, $ff
    ld [wObjList], a
    ret
