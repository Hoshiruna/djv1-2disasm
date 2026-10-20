; --- c1_fx_scenes.asm ---

C1FxScenes:
    db $97, $8f, $8f, $8f, $98, $8f, $94, $95, $96, $98, $8f, $98, $54, $55, $8d, $53
    db $40, $46, $49, $4c, $92, $93, $57, $90, $8f, $8f, $8f

; --- c1_fx_dispatch.asm ---

; Dispatch the current scene effect index through the original twenty-seven-entry table.
DispatchC1Fx:

Call_002_6f73:
    ld a, [wFxId]
    rst RST_00

C1FxCalls:
    dw C1FxInit
    dw C1FxObj
    dw C1FxObj
    dw C1FxObj
    dw C1FxObj
    dw C1FxObj
    dw C1FxCue20
    dw C1FxCue1A
    dw C1FxCue1F
    dw C1FxFlags
    dw C1FxObjAlt
    dw C1FxObjAlt
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxFinal
    dw C1FxObj
    dw C1FxObj
    dw C1FxObj

; --- c1_fx_handlers.asm ---

; Play audio cue zero and call the original bank-two effect at $6183.
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

; Display the effect object, then choose text from flags $78 and $b2; only the default text branch clears the object.
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

    ld a, $0a
    call ShowText1
    call ClearC1FxObj
    ld a, $3c
    call WaitTicks
    ret


; Show the alternate effect text for the Sternwood-view flag.
C1FxSternwoodReply:
jr_002_703d:
    ld a, $32
    call ShowText2
    ld a, $3c
    call WaitTicks
    ret


; Show the revealed-memo effect text without clearing the effect object.
C1FxRevealedMemoReply:
jr_002_7048:
    ld a, $fc
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

; Show the effect object and message, switch to scene $91, repeat the object, show text $dd, and call the original continuation.
C1FxFinal:


Call_002_706c:
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    call ShowC1FxMsg
    ld a, $3c
    call WaitTicks
    call ClearC1FxObj
    ld a, $91
    ld [wSceneId], a
    ld a, $06
    ld [wSceneFx], a
    call ShowScene
    call DrawC1FxObj
    ld a, $78
    call WaitTicks
    ld a, $dd
    call ShowText2
    ld a, $78
    call WaitTicks
    call C1AfterFxCall
    ret

; --- c1_fx_obj.asm ---

; Select the effect object and its case-one position, build one terminated object record, draw it, and submit OAM.
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
    db $ff, $0b, $0d, $0e, $0f, $11, $ff, $ff, $ff, $10, $0c, $12, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $11, $11, $11

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
    db $00, $00, $95, $01, $83, $01, $bb, $01, $96, $01, $1f, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $a7, $02, $a8, $02, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $f9, $01
    db $15, $01, $1c, $00, $2f, $01

; --- c1_fx_select.asm ---

; Save the current scene, select the indexed case-one effect scene, and clear the object list.
SaveC1FxScene:

    ld a, [wSceneId]
    ld [wFxScene], a
    ld a, [wFxId]
    cp $06
    jr z, ReloadC1FxScene

    cp $07
    jr z, ReloadC1FxScene

    cp $08
    jr z, ReloadC1FxScene

    ld e, a
    ld d, $00
    ld hl, C1FxScenes
    add hl, de
    ld a, [hl]
    ld [wSceneId], a
    ld a, $06
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
    cp $06
    jr z, ReloadC1FxScene

    cp $07
    jr z, ReloadC1FxScene

    cp $08
    jr z, ReloadC1FxScene

    ld e, a
    ld d, $00
    ld hl, C1FxScenes
    add hl, de
    ld a, [hl]
    ld [wSceneId], a
    ld a, $06
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
