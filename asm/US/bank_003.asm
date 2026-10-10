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

jr_003_4c7b:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl+]
    cp $ff
    jr z, jr_003_4c98

    ld a, [hl+]
    and $7f
    cp d
    jr z, jr_003_4c93

    call NextC2State
    jr jr_003_4c7b

jr_003_4c93:
    ld a, [hl]
    ld [wSceneFx], a
    ret


jr_003_4c98:
    ld a, $06
    ld [wSceneFx], a
    ret


; Advance the room record pointer by four bytes.
NextC2State:
Call_003_4c9e:
    push hl
    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, l
    ld [$c85e], a
    ld a, h
    ld [$c85f], a
    pop hl
    ret
INCLUDE "c2_room_pick.asm"
INCLUDE "c2_room_ids.asm"


    ld a, $ff
    ld hl, $c58c
    sub [hl]
    cp $32
    jr c, jr_003_4d98

    ld a, $32

jr_003_4d98:
    ld [$c896], a
    call ScriptHoldText
    ld a, $85
    call ShowMsg0
    xor a
    ld [$c5c3], a
    ld a, $35
    call ShowMsg3
    call Call_003_4df2
    ld a, [$c523]
    and $01
    jr z, jr_003_4dba

    call ResumeTextUI
    ret


jr_003_4dba:
    call Call_003_4e93
    call SpendC2Word
    ld a, [$c523]
    and $01
    jr z, jr_003_4de9

    ld a, $37
    call ShowMsg3
    call ResumeTextUI
    ld a, [$c5c3]
    ld hl, $c58c
    add [hl]
    ld [hl], a
    call RefreshLists
    ld a, $04
    call ReadItemFlag
    ret nz

    ld a, $04
    ld [$c8a7], a
    call AddItemList
    ret


jr_003_4de9:
    ld a, $99
    call ShowMsg0
    call ResumeTextUI
    ret


Call_003_4df2:
    call WaitFrame

jr_003_4df5:
    call ClearResult
    call PollJoy
    ld a, [$c188]
    and $01
    jr z, jr_003_4e08

    ld a, $19
    call PlayAudio
    ret


jr_003_4e08:
    ld a, [$c188]
    and $02
    jr z, jr_003_4e18

    ld a, $2f
    call PlayAudio
    call SetResult
    ret


jr_003_4e18:
    ld a, [$c187]
    and $90
    jr nz, jr_003_4e28

    ld a, [$c187]
    and $60
    jr nz, jr_003_4e47

    jr jr_003_4df5

jr_003_4e28:
    ld a, [$c5c3]
    ld hl, $c896
    cp [hl]
    jr z, jr_003_4df5

    inc a
    ld [$c5c3], a

jr_003_4e35:
    ld a, $0a
    ld [$c8e6], a
    call ShowListText
    call SubmitMapQueue
    ld a, $08
    call WaitTicks
    jr jr_003_4df5

jr_003_4e47:
    ld a, [$c5c3]
    cp $01
    jr c, jr_003_4df5

    dec a
    ld [$c5c3], a
    jr jr_003_4e35

    ld a, $32
    ld [$c5c3], a
    ld a, [$c58c]
    cp $32
    jr nc, jr_003_4e63

    ld [$c5c3], a

jr_003_4e63:
    ld a, [$c5c3]
    ld [$c896], a
    ld a, $36
    call ShowMsg3
    call Call_003_4df2
    ld a, [$c523]
    and $01
    ret nz

    call Call_003_4e93
    ld a, $37
    call ShowMsg3
    ld a, [$c58c]
    ld hl, $c5c3
    sub [hl]
    ld [$c58c], a
    ld a, [$c8a7]
    call AddC2Word
    call RefreshLists
    ret


Call_003_4e93:
    ld a, [$c5c3]
    add a
    add a
    ld hl, $c5c3
    add [hl]
    ld [$c8a7], a
    ret
INCLUDE "c2_item_map.asm"
INCLUDE "c2_bullets.asm"
INCLUDE "c2_counter_step.asm"
INCLUDE "c2_word_spend.asm"
INCLUDE "change_ops.asm"
INCLUDE "c2_text_obj.asm"
INCLUDE "c2_put_group.asm"
INCLUDE "c2_put_confirm.asm"
INCLUDE "c2_put_allowed.asm"
INCLUDE "c2_item_tbl.asm"
INCLUDE "c2_room_tbl.asm"
INCLUDE "c2_effect.asm"
INCLUDE "c2_effect_tbl.asm"
    ld c, $40
    ld e, $00
    ld a, [wRoomId]
    ld hl, $5390

jr_003_531d:
    cp [hl]
    jr z, jr_003_5326

    inc hl
    inc e
    dec c
    jr nz, jr_003_531d

    ret


jr_003_5326:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    sub $78
    ld c, a
    ld b, $00
    ld hl, $538c
    add hl, bc
    ld a, [hl]
    add e
    ld c, a
    ld hl, $5390
    add hl, bc
    ld a, [hl]
    push af
    call StoreRoomState
    pop af
    call EnterRoom
    xor a
    call ReadItemFlag
    jr z, jr_003_538b

    ld a, [$c58c]
    cp $00
    jr nz, jr_003_538b

    ld a, [$c58a]
    sub $05
    ld a, [$c58b]
    sbc $00
    jr nc, jr_003_538b

    call NextRandom
    ldh a, [$ffa2]
    and $07
    cp $06
    jr c, jr_003_538b

    ld a, [$c58a]
    add $0a
    ld [$c58a], a
    ld a, $3f
    call ShowMsg3
    xor a
    ld [$c882], a
    call FindListValue
    ld a, [$c534]
    ld [$c865], a
    call RefreshListMode

jr_003_538b:
    ret


    ld bc, $08ff
    ld hl, sp+$66
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    inc de
    ld h, d
    ld h, e
    ld de, $7714
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    call ScriptHoldText
    ld a, $9c
    call ShowMsg0

Jump_003_53d8:
    ld a, $38
    call ShowMsg3
    xor a
    ld [$c5c7], a
    ld [$c895], a
    ld a, $02
    ld [$c896], a
    call Call_003_54fb
    call Call_003_549d
    ld a, [$c523]
    and $01
    jp nz, ClearTextHold

    ld a, [$c895]
    rst RST_00
    ld bc, $6b54
    ld d, h
    ld [hl], a
    ld a, [hl+]
    ld a, [$c58d]
    cp $64
    jr nc, jr_003_5463

    ld a, $32
    ld [$c8a7], a
    call SpendC2Word
    ld a, [$c523]
    and $01
    jr z, jr_003_545b

    ld a, [$c58d]
    add $03
    ld [$c58d], a
    call RefreshLists
    ld a, $03
    call ReadItemFlag
    jr nz, jr_003_5431

    ld a, $03
    ld [$c8a7], a
    call AddItemList

jr_003_5431:
    ld a, $39
    call ShowMsg3
    ld a, $01
    ld [$c5c7], a
    ld [$c896], a
    xor a
    ld [$c895], a
    call Call_003_54fb
    call Call_003_549d
    ld a, [$c523]
    and $01
    jp nz, ClearTextHold

    ld a, [$c895]
    cp $00
    jp nz, ClearTextHold

    jp Jump_003_53d8


jr_003_545b:
    ld a, $9b
    call ShowMsg0
    jp ClearTextHold


jr_003_5463:
    ld a, $4f
    call ShowMsg0
    jp ClearTextHold


    ld a, [$c590]
    cp $78
    jr nc, jr_003_5463

    ld a, $64
    ld [$c8a7], a
    call SpendC2Word
    ld a, [$c523]
    and $01
    jr z, jr_003_545b

    ld a, [$c590]
    add $06
    ld [$c590], a
    call RefreshLists
    ld a, $02
    call ReadItemFlag
    jr nz, jr_003_5431

    ld a, $02
    ld [$c8a7], a
    call AddItemList
    jr jr_003_5431

Call_003_549d:
jr_003_549d:
    call ClearResult
    call PollJoy
    ld a, [$c188]
    and $01
    jr z, jr_003_54b0

    ld a, $19
    call PlayAudio
    ret


jr_003_54b0:
    ld a, [$c188]
    and $02
    jr z, jr_003_54c0

    ld a, $2f
    call PlayAudio
    call SetResult
    ret


jr_003_54c0:
    ld a, [$c187]
    sla a
    jr c, jr_003_54cd

    sla a
    jr c, jr_003_54e9

    jr jr_003_549d

jr_003_54cd:
    ld a, [$c895]
    ld hl, $c896
    cp [hl]
    jr nc, jr_003_549d

    inc a
    ld [$c895], a
    ld a, $19
    call PlayAudio

jr_003_54df:
    call Call_003_54fb
    ld a, $08
    call WaitTicks
    jr jr_003_549d

jr_003_54e9:
    ld a, [$c895]
    cp $00
    jr z, jr_003_549d

    dec a
    ld [$c895], a
    ld a, $19
    call PlayAudio
    jr jr_003_54df

Call_003_54fb:
    ld a, [$c5c7]
    call Call_003_550b
    call Call_003_556a
    call DrawRoomObjs
    call SubmitOam
    ret


Call_003_550b:
    rst RST_00
    db $10
    ld d, l
    dec h
    ld d, l
    ld a, [$c895]
    ld l, a
    ld h, $00
    ld bc, $5522
    add hl, bc
    ld a, [hl]
    ldh [$ff93], a
    ld a, $28
    ldh [$ff92], a
    ret


    ld h, b
    ld l, b
    ld [hl], b
    ld a, [$c895]
    ld l, a
    ld h, $00
    ld bc, $5537
    add hl, bc
    ld a, [hl]
    ldh [$ff93], a
    ld a, $28
    ldh [$ff92], a
    ret


    ld h, a
    ld l, a
    ld a, $48
    call ShowMsg3
    ld a, $01
    ld [$c5c7], a
    ld [$c896], a
    xor a
    ld [$c895], a
    call Call_003_54fb
    call Call_003_549d
    ld a, [$c895]
    cp $00
    jr nz, jr_003_555c

Call_003_5557:
    ld a, $46
    jp ShowMsg3


jr_003_555c:
    call ScriptHoldText
    ld a, $91
    call ShowMsg0
    call Call_003_5557
    jp ResumeTextUI


Call_003_556a:
    ld a, $86
    jp DrawSprite
INCLUDE "c2_pal.asm"
INCLUDE "c2_pal_noop.asm"
INCLUDE "c2_events.asm"
INCLUDE "c2_group_test.asm"
INCLUDE "c2_timed_fx.asm"
INCLUDE "c2_final_gate.asm"
INCLUDE "c2_final.asm"
INCLUDE "c2_final_test.asm"
INCLUDE "c2_fx_objs.asm"
INCLUDE "c2_final_anim.asm"
INCLUDE "text_wait_obj.asm"
INCLUDE "c2_timed_pal.asm"
INCLUDE "c2_pal_timer.asm"
INCLUDE "c2_room_timer.asm"
INCLUDE "c2_room_random.asm"
INCLUDE "c2_room_watch.asm"
INCLUDE "c2_flag_timer.asm"
INCLUDE "c2_cue16.asm"
INCLUDE "c2_three_rooms.asm"
INCLUDE "c2_range_timer.asm"
INCLUDE "c2_state_timer.asm"
INCLUDE "c2_room02.asm"
INCLUDE "c2_fx_begin.asm"
INCLUDE "c2_action.asm"
INCLUDE "c2_fallback.asm"
    ldh a, [$ff9e]
    push af
    call Call_003_60ac
    pop af
    ldh [$ff9e], a
    ret


Call_003_60ac:
    call ReadC2Room
    ld a, [$c8ac]
    sub $30
    srl a
    srl a
    srl a
    ld [$c860], a
    ld a, [$c8ab]
    sub $78
    add a
    and $f0
    push af
    ld a, [$c860]
    ld b, a
    pop af
    or b
    ld [$c860], a

Jump_003_60cf:
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d
    ld a, [$c85e]
    ld c, a
    ld a, [$c85f]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    ld a, [$c85e]
    ld c, a
    ld a, [$c85f]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $7f
    ld c, a
    ld a, [$c860]
    ld b, a
    ld a, c
    cp b
    jr nz, jr_003_614e

    ld a, [$c85e]
    ld c, a
    ld a, [$c85f]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr z, jr_003_6124

    call Call_003_45ac
    ld a, [$c523]
    and $01
    ret nz

jr_003_6124:
    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    inc hl
    ld a, [hl]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c6
    add hl, bc
    ld [hl], a
    ld a, $05
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c5
    add hl, bc
    ld [hl], a
    call InitAction
    ret


jr_003_614e:
    call NextC2State
    jp Jump_003_60cf
INCLUDE "c2_filter.asm"
INCLUDE "c2_room_tick.asm"


    call BuildC2Schedule
    call InitTextBuffer
    call ShowC2SchedHead
    ld a, $14
    ld [$c860], a
    ld a, $20

jr_003_6266:
    ld [$c85a], a
    xor a
    ld [$c85b], a
    ld [$c85c], a
    ld de, $0010
    call Call_003_62cc
    call ClearTextUI
    ret


    call BuildC2Schedule
    call InitTextBuffer
    call ShowC2SchedHead
    ld a, $04
    ld [$c860], a
    ld a, $10
    ld [$c85a], a
    xor a
    ld [$c85b], a
    ld [$c85c], a
    ld de, $0000
    call Call_003_62cc
    call ClearTextUI
    ret
INCLUDE "c2_sched_build.asm"


Call_003_62cc:
jr_003_62cc:
    ld hl, $c55b
    add hl, de
    ld a, [hl+]
    cp $fe
    jr z, jr_003_62ff

    ld [$c85d], a
    ld a, [hl+]
    ld [$c85e], a
    ld a, [hl+]
    ld [$c85f], a
    ld a, [$c85c]
    ld l, a
    ld h, $00
    ld bc, $68c7
    add hl, bc
    ld a, [hl]
    ld [$c669], a
    ld a, $08
    ld [$c8e6], a
    push de
    call ShowListText
    pop de
    ld a, [$c85c]
    inc a
    ld [$c85c], a

jr_003_62ff:
    inc de
    inc de
    inc de
    inc de
    ld a, [$c85a]
    cp e
    jr z, jr_003_6338

    ld a, [$c85c]
    cp $03
    jr c, jr_003_62cc

    ld hl, $c55b
    add hl, de
    ld a, [hl]
    cp $fe
    jr z, jr_003_6338

    ld a, [$c85b]
    cp $00
    jr nz, jr_003_6338

    push de
    call WaitTextConfirm
    call InitTextBuffer
    call ShowC2SchedHead
    pop de
    xor a
    ld [$c85c], a
    ld a, [$c860]
    ld [$c85b], a
    ld e, a
    jr jr_003_62cc

jr_003_6338:
    call WaitTextConfirm
    ret
INCLUDE "c2_sched_clear.asm"
INCLUDE "c2_sched_select.asm"

Call_003_63c7:
    ld de, $0000

jr_003_63ca:
    ld hl, $c55e
    add hl, de
    ld a, [hl]
    cp $fe
    jr z, jr_003_63e2

    push de
    call Call_003_63e7
    pop de

jr_003_63d8:
    inc e
    inc e
    inc e
    inc e
    ld a, $20
    cp e
    jr nz, jr_003_63ca

    ret


jr_003_63e2:
    call Call_003_640d
    jr jr_003_63d8

Call_003_63e7:
    ld hl, $c55e
    add hl, de
    ld a, [hl]
    rst RST_00
    dec c
    ld h, h
    dec c
    ld h, h
    dec c
    ld h, h
    dec c
    ld h, h
    db $10
    ld h, l
    ld b, d
    ld h, h
    ld b, d
    ld h, h
    ld b, d
    ld h, h
    ld b, d
    ld h, h
    ld b, d
    ld h, h
    ld [hl], a
    ld h, h
    cp a
    ld h, h
    cp a
    ld h, h
    cp a
    ld h, h
    ld b, b
    ld h, l
    ld [hl-], a
    ld h, [hl]

Call_003_640d:
    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, $6a18
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, $6a20
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, $6a28
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, $69e0
    add hl, bc
    ld a, [hl]
    push bc
    call ClearObjFlag
    pop bc
    push bc
    call Call_003_6501
    pop bc
    ret


Call_003_6442:
    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, $6a18
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, $6a20
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, $6a28
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, $69e0
    add hl, bc
    ld a, [hl]
    push bc
    call SetObjFlag
    pop bc
    push bc
    call Call_003_64f2
    pop bc
    ret


    call Call_003_6442
    ld a, [wRoomId]
    ld hl, $6a00
    add hl, bc
    cp [hl]
    jr z, jr_003_6493

    ld hl, $6a08
    add hl, bc
    cp [hl]
    jr z, jr_003_6493

    ld hl, $6a10
    add hl, bc
    cp [hl]
    jr z, jr_003_64a9

    ret


jr_003_6493:
    ld hl, $69e8
    add hl, bc
    ld a, [hl]
    call ReadObjFlag
    cp $00
    ret nz

    ld a, $77
    call ShowMsg2
    ld a, $7d
    call ShowMsg2
    ret


jr_003_64a9:
    ld a, $1b
    call PlayAudio
    call ScriptHoldText
    ld a, $30
    call ShowMsg1
    ld a, $2b
    call ShowMsg1
    call ResumeTextUI
    ret


    call Call_003_6442
    ld a, [wRoomId]
    ld hl, $6a00
    add hl, bc
    cp [hl]
    jr z, jr_003_64d4

    ld hl, $6a08
    add hl, bc
    cp [hl]
    jr z, jr_003_64d4

    ret


jr_003_64d4:
    ld hl, $69e8
    add hl, bc
    ld a, [hl]
    push bc
    call ReadObjFlag
    pop bc
    cp $00
    ret nz

    call ScriptHoldText
    ld a, $77
    call ShowMsg2
    ld a, $7e
    call ShowMsg2
    call ResumeTextUI
    ret


Call_003_64f2:
    ld a, [wRoomId]
    ld hl, $6a10
    add hl, bc
    cp [hl]
    ret nz

Call_003_64fb:
    ld a, $a7
    call SetObjVisible
    ret


Call_003_6501:
    ld a, [wRoomId]
    ld hl, $6a10
    add hl, bc
    cp [hl]
    ret nz

    ld a, $a7
    call ClearObjVisible
    ret


    call Call_003_6442
    ld a, [wRoomId]
    ld hl, $6a10
    add hl, bc
    cp [hl]
    ret nz

    call ResetObjScroll
    ld a, $2f
    call ShowMsg1
    ld a, $14
    call PlayAudio
    call Call_000_3853
    ld a, $1e
    call WaitTicks
    ld a, $12
    call PlayAudio
    call RefreshStateView
    call DrawC2Panel
    call RoomCueCall
    ret


    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, $6a18
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld a, [wRoomId]
    ld hl, $6a10
    add hl, bc
    cp [hl]
    jr z, jr_003_65d2

    ld hl, $6a00
    add hl, bc
    cp [hl]
    jr z, jr_003_656a

    ld hl, $6a08
    add hl, bc
    cp [hl]
    jr z, jr_003_656a

    ret


jr_003_656a:
    ld hl, $69e8
    add hl, bc
    ld a, [hl]
    push bc
    call ReadObjFlag
    pop bc
    jp z, Jump_003_6606

    ld hl, $c55c
    add hl, de
    ld a, [hl]
    sub $38
    ld [$c5e3], a
    ld a, [hl]
    cp $e2
    jr c, jr_003_65c7

    push bc
    call TestC2Final
    pop bc
    ld a, [$c5e2]
    cp $01
    jr z, jr_003_65c7

    call Call_003_65cb
    ld a, $e1
    call ShowMsg2
    ld a, $09
    call PlayAudio
    ld a, $10
    ld [$c8e9], a
    call SaveC2Effect
    ld a, $78
    call WaitTicks
    ld a, $e2
    call ShowMsg2
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    call ResumeTextUI
    call PlayExitEffect
    ret


jr_003_65c7:
    call Call_003_65cb
    ret


Call_003_65cb:
    push bc
    ld a, $32
    call ShowMsg1
    pop bc

jr_003_65d2:
    call ResetObjScroll
    push bc
    ld a, $1b
    call PlayAudio
    ld a, $50
    call WaitTicks
    call Call_003_64fb
    pop bc
    push bc
    ld hl, $6a20
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, $6a28
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    ld a, $12
    call PlayAudio
    call RefreshStateView
    ld a, $31
    call ShowMsg1
    ret


Jump_003_6606:
    push bc
    ld hl, $6a30
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, $6a38
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, $6a10
    add hl, bc
    ld a, [hl]
    call EnterRoom
    ld a, $17
    call PlayAudio
    ld a, $74
    call ShowMsg2
    pop bc
    call Call_003_65cb
    ret


    ld c, e
    srl c
    srl c
    ld b, $00
    push bc
    ld hl, $69e8
    add hl, bc
    ld a, [hl]
    call ClearObjFlag
    pop bc
    push bc
    ld hl, $6a18
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, $69e0
    add hl, bc
    ld a, [hl]
    call ClearObjFlag
    pop bc
    ld a, [wRoomId]
    ld hl, $6a10
    add hl, bc
    cp [hl]
    jr z, jr_003_6670

    ld hl, $6a00
    add hl, bc
    cp [hl]
    jr z, jr_003_669d

    ld hl, $6a08
    add hl, bc
    cp [hl]
    jr z, jr_003_669d

    ret


jr_003_6670:
    call ResetObjScroll
    ld a, $a7
    call ClearObjVisible
    ld a, $1b
    call PlayAudio
    ld a, $93
    call ShowMsg0
    ld a, $14
    call PlayAudio
    call Call_000_3861
    call RoomCueCall
    call DrawC2Panel
    ld a, $a2
    call ShowMsg0
    ld a, [wSceneId]
    dec a
    ld [wSceneId], a
    ret


jr_003_669d:
    call ResetObjScroll
    push bc
    ld a, $14
    call PlayAudio
    ld a, $8b
    call ShowMsg2
    call Call_003_66f6
    ld a, $8f
    call ShowMsg2
    ld a, $b4
    call WaitTicks
    call Call_003_6710
    ld a, $95
    call ShowMsg2
    ld a, $a7
    call SetObjVisible
    pop bc
    push bc
    ld hl, $69f8
    add hl, bc
    ld a, [hl]
    ld [$c536], a
    ld hl, $69f0
    add hl, bc
    ld a, [hl]
    call EnterRoom
    ld a, $31
    call SetObjFlag
    call RoomCueCall
    pop bc
    ld a, [$c5e3]
    ld [$c537], a
    ld a, $0d
    call ShowMsg3
    ld a, $34
    call ReadObjFlag
    cp $00
    ret z

    jp GateC2Final


Call_003_66f6:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, jr_003_6707

    call Call_003_6858
    call Call_003_6724
    jr jr_003_670d

jr_003_6707:
    call Call_003_686d
    call Call_003_6789

jr_003_670d:
    pop bc
    pop de
    ret


Call_003_6710:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, jr_003_671e

    call Call_003_6757
    jr jr_003_6721

jr_003_671e:
    call Call_003_67bc

jr_003_6721:
    pop bc
    pop de
    ret


Call_003_6724:
    ld de, $0002

jr_003_6727:
    ld hl, $6897
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    call Call_003_67ee
    ld hl, $68ab
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    push de
    call Call_003_6807
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    inc e
    inc e
    ld a, $0a
    cp e
    jr nz, jr_003_6727

    ret


Call_003_6757:
    ld de, $0006

jr_003_675a:
    ld hl, $6897
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    call Call_003_67ee
    ld hl, $68ab
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    push de
    call Call_003_6807
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    dec e
    dec e
    bit 7, e
    jr z, jr_003_675a

    ret


Call_003_6789:
    ld de, $0002

jr_003_678c:
    ld hl, $68a1
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    call Call_003_67ee
    ld hl, $68b5
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    push de
    call Call_003_6807
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    inc e
    inc e
    ld a, $0a
    cp e
    jr nz, jr_003_678c

    ret


Call_003_67bc:
    ld de, $0006

jr_003_67bf:
    ld hl, $68a1
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    call Call_003_67ee
    ld hl, $68b5
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    push de
    call Call_003_6807
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    dec e
    dec e
    bit 7, e
    jr z, jr_003_67bf

    ret


Call_003_67ee:
    ld bc, $0000

jr_003_67f1:
    ld a, [wSceneBlank]
    ld l, a
    ld a, [$c87e]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld hl, wBgPal
    add hl, bc
    ld [hl], a
    inc c
    ld a, $38
    cp c
    jr nz, jr_003_67f1

    ret


Call_003_6807:
    ld bc, $0000

jr_003_680a:
    ld a, [wSceneBlank]
    ld l, a
    ld a, [$c87e]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld hl, wObjPal
    add hl, bc
    ld [hl], a
    inc c
    ld a, $08
    cp c
    jr nz, jr_003_680a

    ret


    ld de, $0000

jr_003_6823:
    ld a, [wRoomId]
    ld hl, $6a00
    add hl, de
    cp [hl]
    jr z, jr_003_683b

    ld hl, $6a08
    add hl, de
    cp [hl]
    jr z, jr_003_683b

    inc e
    ld a, $08
    cp e
    jr nz, jr_003_6823

    ret


jr_003_683b:
    sla e
    sla e
    ld hl, $c55c
    add hl, de
    ld a, [hl]
    sub $38
    ld [$c537], a
    and $07
    ld e, a
    ld hl, $6882
    add hl, de
    ld a, [hl]
    ld [$c587], a
    ld [$c58e], a
    ret


Call_003_6858:
    ld c, $08

jr_003_685a:
    ld a, $20
    ldh [$ff92], a
    ld a, $00
    ldh [$ff93], a
    push bc
    ld a, $70
    call PlayBankAnim
    pop bc
    dec c
    jr nz, jr_003_685a

    ret


Call_003_686d:
    ld c, $08

jr_003_686f:
    ld a, $40
    ldh [$ff92], a
    ld a, $00
    ldh [$ff93], a
    push bc
    ld a, $71
    call PlayBankAnim
    pop bc
    dec c
    jr nz, jr_003_686f

    ret


    inc d
    inc d
    inc hl
    rrca
    rrca
    push hl
    push hl
    push hl
    push hl
    and $e7
    rst RST_20
    rst RST_20
    rst RST_20
    rst RST_20
    rst RST_20
    rst RST_20
    rst RST_20
    add sp, -$17
    jp hl


    ld b, b
    ld l, d
    add b
    ld l, d
    ret nz

    ld l, d
    nop
    ld l, e
    ld b, b
    ld l, e
    add b
    ld l, e
    ret nz

    ld l, e
    nop
    ld l, h
    ld b, b
    ld l, h
    add b
    ld l, h
    ret nz

    ld l, h
    ret nc

    ld l, h
    ldh [$ff6c], a
    ldh a, [$ff6c]
    nop
    ld l, l
    db $10
    ld l, l
    jr nz, jr_003_6926

    jr nc, jr_003_6928

    ld b, b
    ld l, l
    ld d, b
    ld l, l
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0309], sp
    dec b
    rlca

Call_003_68ca:
    ld de, $0000

jr_003_68cd:
    ld a, [wRoomId]
    ld hl, $6a00
    add hl, de
    cp [hl]
    jr z, jr_003_68e5

    ld hl, $6a08
    add hl, de
    cp [hl]
    jr z, jr_003_68e5

    inc e
    ld a, $08
    cp e
    jr nz, jr_003_68cd

    ret


jr_003_68e5:
    ld hl, $69e8
    add hl, de
    ld a, [hl]
    call ReadObjFlag
    ret


    ld [bc], a

jr_003_68ef:
    inc bc

jr_003_68f0:
    inc b
    dec b
    ld b, $07
    ld [$0609], sp
    ld l, c
    inc hl
    ld l, c
    ld a, $69
    ld e, c
    ld l, c
    ld [hl], h
    ld l, c
    adc a
    ld l, c
    xor d
    ld l, c
    push bc
    ld l, c
    inc b
    ldh [rNR21], a
    ldh [c], a
    jr z, jr_003_68ef

    jr c, jr_003_68f0

    ld c, d
    db $e4
    ld e, d
    ldh [$ff6c], a
    ldh [c], a
    add b
    db $e4
    sub d
    ldh [hBgLoaded], a
    db $e4
    cp d
    db $e3
    set 4, d
    db $db
    ldh [$fff4], a
    db $e4
    rst RST_38
    ld de, $23e0

jr_003_6926:
    ldh [c], a
    add hl, sp

jr_003_6928:
    db $e3
    ld c, h
    ldh [$ff60], a
    ldh [c], a
    ld [hl], l
    ldh [$ff8b], a
    db $e3
    sbc e
    ldh [c], a
    xor e
    ldh [c], a
    cp e
    ldh [$ffcb], a
    db $e3
    db $e3
    db $e4
    di
    db $e3
    rst RST_38
    dec bc
    db $e4
    rra
    ldh [$ff2f], a
    ldh [rSCX], a
    ldh [c], a
    ld d, a
    db $e4
    ld h, a
    ldh [$ff7a], a
    db $e3
    adc l
    db $e4
    and a
    db $e3
    cp e
    ldh [c], a
    set 4, b
    db $db
    ldh [c], a
    pop af
    ldh [c], a
    rst RST_38
    ld [$19e2], sp
    db $e3
    add hl, hl
    db $e4
    inc a
    ldh [$ff50], a
    db $e3
    ld h, e
    db $e3
    ld [hl], e
    ldh [c], a
    add e
    ldh [$ff9e], a
    ldh [$ffae], a
    ldh [$ffc2], a
    db $e4
    ret c

    db $e3
    jp hl


    ldh [rIE], a
    ld c, $e4
    rra
    ldh [c], a
    cpl
    db $e3
    ccf
    pop hl
    ld d, e
    db $e3
    ld h, h
    ldh [c], a
    ld [hl], l
    pop hl
    adc c
    db $e4
    sbc h
    db $e4
    xor [hl]
    ldh [c], a
    ret nz

    pop hl
    db $d3
    db $e3
    push hl
    db $e3
    rst RST_38
    ld [$1be3], sp
    db $e4
    ld l, $e1
    ld b, d
    ldh [c], a
    ld d, [hl]
    ldh [c], a
    ld l, e
    db $e4
    ld a, a
    db $e3
    sub b
    pop hl
    and b
    pop hl
    or d
    db $e4
    push bc
    db $e3
    ret c

    pop hl
    add sp, -$1f
    rst RST_38
    inc b
    pop hl
    inc d
    db $e3
    add hl, hl
    db $e4
    add hl, sp
    db $e3
    ld c, h
    pop hl
    ld e, h
    db $e4
    ld [hl], c
    db $e3
    add d
    pop hl
    sbc l
    ldh [c], a
    or b
    pop hl
    ret nz

    ldh [c], a
    push de
    ldh [c], a
    and $e1
    rst RST_38
    ld c, $e1
    ld e, $e1
    ld [hl-], a
    ldh [c], a
    ld b, [hl]
    db $e4
    ld e, b
    pop hl
    ld l, b
    pop hl
    ld a, e
    ldh [c], a
    adc l
    ldh [c], a
    xor b
    db $e3
    cp b
    db $e3
    call $e3e1
    db $e4
    di
    ldh [c], a
    rst RST_38
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld e, $1f
    jr nz, @+$23

    dec l
    ld l, $2f
    jr nc, jr_003_6a02

    ld a, [hl+]
    dec hl
    inc l
    rla
    jr jr_003_6a0c

    ld a, [de]
    inc l
    dec l
    ld l, $2f
    dec de
    dec e
    rra
    ld hl, $2523
    daa
    add hl, hl
    inc hl
    dec h

jr_003_6a02:
    daa
    add hl, hl
    dec de
    dec e
    rra
    ld hl, $2624
    jr z, jr_003_6a36

jr_003_6a0c:
    inc e
    ld e, $20
    ld [hl+], a
    inc l
    dec l
    ld l, $2f
    rla
    jr jr_003_6a30

    ld a, [de]
    add b
    add c
    add d
    add e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, [hl-]
    dec a
    ld b, b
    ld b, e
    ld hl, $2724
    ld a, [hl+]
    dec sp
    ld a, $41
    ld b, h
    ld [hl+], a
    dec h
    jr z, @+$2d

jr_003_6a30:
    adc l
    adc a
    sub c
    sub e
    add l
    add a

jr_003_6a36:
    adc c
    adc e
    adc [hl]
    sub b
    sub d
    sub h
    add [hl]
    adc b
    adc d
    adc h
    nop
    nop
    add hl, hl
    dec h
    adc $39
    rst RST_38
    ld a, a
    nop
    nop
    adc $39
    scf
    ld bc, $7fff
    nop
    nop
    adc $39
    add hl, sp
    ld h, a
    rst RST_38
    ld a, a
    nop
    nop
    adc $39
    jp c, $bf4a

    ld h, a
    nop
    nop
    add hl, hl
    dec h
    xor [hl]
    nop
    scf
    ld bc, $0000
    add hl, hl
    dec h
    ld d, a
    ld bc, $02df
    nop
    nop
    add hl, hl
    dec h
    scf
    ld bc, $02c0
    nop
    nop
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    nop
    nop
    rst RST_20
    inc e
    adc h
    ld sp, $6f7b
    nop
    nop
    adc h
    ld sp, $00f4
    ld a, e
    ld l, a
    nop
    nop
    adc h
    ld sp, $5ad6
    ld a, e
    ld l, a
    nop
    nop
    adc h
    ld sp, $3e77
    ld e, l
    ld e, e
    nop
    nop
    rst RST_20
    inc e
    xor h
    nop
    scf
    ld bc, $0000
    rst RST_20
    inc e
    scf
    ld bc, $029c
    nop
    nop
    rst RST_20
    inc e
    scf
    ld bc, $0260
    nop
    nop
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    nop
    nop
    and l
    inc d
    add hl, hl
    dec h
    sub $5a
    nop
    nop
    add hl, hl
    dec h
    or b
    nop
    sub $5a
    nop
    nop
    add hl, hl
    dec h
    ld d, d
    ld c, d
    sub $5a
    nop
    nop
    add hl, hl
    dec h
    di
    dec l
    ld a, [$004a]
    nop
    and l
    inc d
    adc d
    nop
    or b
    nop
    nop
    nop
    and l
    inc d
    or b
    nop
    ld e, b
    ld [bc], a
    nop
    nop
    and l
    inc d
    or b
    nop
    ldh [rSB], a
    nop
    nop
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    nop
    nop
    ld h, e
    inc c
    rst RST_20
    inc e
    ld d, d
    ld c, d
    nop
    nop
    rst RST_20
    inc e
    ld l, l
    nop
    ld d, d
    ld c, d
    nop
    nop
    rst RST_20
    inc e
    rst RST_28
    dec a
    ld d, d
    ld c, d
    nop
    nop
    rst RST_20
    inc e
    sub b
    ld hl, $3e98
    nop
    nop
    ld h, e
    inc c
    ld l, b
    nop
    ld l, l
    nop
    nop
    nop
    ld h, e
    inc c
    ld l, l
    nop
    dec d
    ld [bc], a
    nop
    nop
    ld h, e
    inc c
    ld l, l
    nop
    add b
    ld bc, $0000
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    nop
    nop
    ld hl, $8404
    db $10
    adc $39
    nop
    nop
    add h
    db $10
    add hl, hl
    nop
    adc $39
    nop
    nop
    add h
    db $10
    adc h
    ld sp, $39ce
    nop
    nop
    add h
    db $10
    inc c
    ld de, $2e15
    nop
    nop
    ld hl, $2604
    nop
    add hl, hl
    nop
    nop
    nop
    ld hl, $2904
    nop
    or c
    ld bc, $0000
    ld hl, $2904
    nop
    nop
    ld bc, $0000
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    nop
    nop
    add hl, hl
    dec h
    adc $39
    rst RST_38
    ld a, a
    nop
    nop
    adc $39
    scf
    ld bc, $7fff
    nop
    nop
    adc $39
    add hl, sp
    ld h, a
    rst RST_38
    ld a, a
    nop
    nop
    adc $39
    jp c, $bf4a

    ld h, a
    nop
    nop
    add hl, hl
    dec h
    xor [hl]
    nop
    scf
    ld bc, $0000
    adc $39
    scf
    ld [bc], a
    jr nz, @+$80

    nop
    nop
    add hl, hl
    dec h
    scf
    ld bc, $02c0
    nop
    nop
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    nop
    nop
    rst RST_20
    inc e
    adc h
    ld sp, $6f7b
    nop
    nop
    adc h
    ld sp, $00f4
    ld a, e
    ld l, a
    nop
    nop
    adc h
    ld sp, $5ad6
    ld a, e
    ld l, a
    nop
    nop
    adc h
    ld sp, $3e77
    ld e, l
    ld h, e
    nop
    nop
    rst RST_20
    inc e
    xor h
    nop
    db $f4
    nop
    nop
    nop
    adc h
    ld sp, $01d4
    ret nz

    ld l, c
    nop
    nop
    rst RST_20
    inc e
    db $f4
    nop
    ld h, b
    ld [bc], a
    nop
    nop
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    nop
    nop
    and l
    inc d
    add hl, hl
    dec h
    sub $5a
    nop
    nop
    add hl, hl
    dec h
    or b
    nop
    sub $5a
    nop
    nop
    add hl, hl
    dec h
    ld d, d
    ld c, d
    sub $5a
    nop
    nop
    add hl, hl
    dec h
    di
    dec l
    ld a, [$004a]
    nop
    and l
    inc d
    adc d
    nop
    or b
    nop
    nop
    nop
    add hl, hl
    dec h
    ld d, b
    ld bc, $69c0
    nop
    nop
    and l
    inc d
    or b
    nop
    ldh [rSB], a
    nop
    nop
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    nop
    nop
    ld h, e
    inc c
    rst RST_20
    inc e
    ld d, d
    ld c, d
    nop
    nop
    rst RST_20
    inc e
    ld l, l
    nop
    ld d, d
    ld c, d
    nop
    nop
    rst RST_20
    inc e
    rst RST_28
    dec a
    ld d, d
    ld c, d
    nop
    nop
    rst RST_20
    inc e
    sub b
    ld hl, $3e98
    nop
    nop
    ld h, e
    inc c
    ld l, b
    nop
    ld l, l
    nop
    nop
    nop
    rst RST_20
    inc e
    db $ed
    nop
    ld h, b
    ld d, l
    nop
    nop
    ld h, e
    inc c
    ld l, l
    nop
    add b
    ld bc, $0000
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    nop
    nop
    ld hl, $8404
    db $10
    adc $39
    nop
    nop
    add h
    db $10
    add hl, hl
    nop
    adc $39
    nop
    nop
    add h
    db $10
    adc h
    ld sp, $39ce
    nop
    nop
    add h
    db $10
    inc c
    ld de, $2e15
    nop
    nop
    ld hl, $4604
    nop
    add hl, hl
    nop
    nop
    nop
    add h
    db $10
    ld l, c
    nop
    nop
    dec a
    nop
    nop
    ld hl, $2904
    nop
    nop
    ld bc, $0000
    xor c
    inc c
    di
    dec l
    ld e, a
    ld e, e
    ldh [$ff7f], a
    add b
    ld a, l
    and b
    ld a, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    or c
    nop
    sbc b
    ld bc, $7fe0
    nop
    ld l, l
    jr nz, jr_003_6d44

    ld a, e
    ld l, a
    ldh [$ff7f], a
    nop
    nop
    dec l
    nop
    inc d
    ld bc, $7fe0
    add b
    ld e, h
    and b
    ld e, l
    rst RST_30
    ld e, [hl]
    ldh [$ff7f], a
    nop
    nop
    add hl, bc
    nop
    sub b
    nop
    ldh [$ff7f], a
    nop
    ld c, h
    jr nz, jr_003_6d43

    ld [hl], e
    ld c, [hl]
    ldh [$ff7f], a
    nop
    nop
    dec b
    nop
    inc c
    nop
    ldh [$ff7f], a
    nop
    inc a
    and b
    inc a
    rst RST_28
    dec a
    ldh [$ff7f], a
    nop
    nop
    ld bc, $0800
    nop
    ldh [$ff7f], a
    add b
    ld a, l
    and b
    ld a, [hl]
    rst RST_38
    ld a, a
    ldh [$ff7f], a
    nop
    nop
    or c
    nop
    sbc b
    ld bc, $7fe0
    nop
    ld l, l
    jr nz, @+$70

    ld a, e
    ld l, a
    ldh [$ff7f], a
    nop
    nop
    dec l
    nop
    inc d
    ld bc, $7fe0
    add b
    ld e, h
    and b
    ld e, l
    rst RST_30
    ld e, [hl]
    ldh [$ff7f], a
    nop
    nop
    add hl, bc
    nop
    sub b
    nop
    ldh [$ff7f], a
    nop

jr_003_6d43:
    ld c, h

jr_003_6d44:
    jr nz, jr_003_6d93

    ld [hl], e
    ld c, [hl]
    ldh [$ff7f], a
    nop
    nop
    dec b
    nop
    inc c
    nop
    ldh [$ff7f], a
    nop
    inc a
    and b
    inc a
    rst RST_28
    dec a
    ldh [$ff7f], a
    nop
    nop
    ld bc, $0800
    nop
    ld a, [wCaseId]
    cp $00
    ret z

    ld a, [wRoomId]
    ld e, a
    ld hl, $6df3

jr_003_6d6d:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_6d79

    cp e
    jr nz, jr_003_6d6d

    call Call_003_6d87
    ret


jr_003_6d79:
    ld hl, $6df8

jr_003_6d7c:
    ld a, [hl+]
    cp $ff
    ret z

    cp e
    jr nz, jr_003_6d7c

    call Call_003_6db3
    ret


Call_003_6d87:
    ld a, $60
    ld [$c5c5], a
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a

jr_003_6d93:
    ld a, [$c5c5]
    ldh [$ff92], a
    ld a, $08
    ldh [$ff93], a
    ld a, $6c
    call StepBankAnim
    call DrawRoomObjs
    call SubmitOam
    ld a, [$c5c5]
    dec a
    ld [$c5c5], a
    cp $f0
    jr nz, jr_003_6d93

    ret


Call_003_6db3:
    ld a, $40
    ld [$c5c5], a
    ld a, $60
    ld [$c5c6], a
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a

jr_003_6dc4:
    ld a, [$c5c5]
    ldh [$ff92], a
    ld a, [$c5c6]
    ldh [$ff93], a
    ld a, $6b
    call StepBankAnim
    call DrawRoomObjs
    call SubmitOam
    ld a, [$c5c5]
    dec a
    ld [$c5c5], a
    and $03
    jr nz, jr_003_6deb

    ld a, [$c5c6]
    dec a
    ld [$c5c6], a

jr_003_6deb:
    ld a, [$c5c5]
    cp $f0
    jr nz, jr_003_6dc4

    ret


    ld a, h
    ld l, l
    add c
    adc l
    rst RST_38
    add h
    ld [hl], c
    sub e
    sbc a
    rst RST_38
INCLUDE "credits.asm"
INCLUDE "credit_scene.asm"
INCLUDE "credit_text.asm"


    ld a, $01
    ld [$c5c3], a
    ld [$c5c4], a

jr_003_7051:
    ld a, [$c5c4]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9800
    add hl, de
    ld a, [$c5c3]
    ld e, a
    ld d, $00
    add hl, de
    ld c, l
    ld b, h
    ld hl, $708a
    call QueueTileRect
    call SubmitMapQueue
    ld a, [$c5c3]
    inc a
    cp $13
    jr nz, jr_003_7085

    ld a, [$c5c4]
    inc a
    cp $11
    ret z

    ld [$c5c4], a
    xor a

jr_003_7085:
    ld [$c5c3], a
    jr jr_003_7051

    ld bc, $7f01
INCLUDE "credit_data.asm"
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
