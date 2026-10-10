; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
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
    call Call_000_2b9c
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

    call Call_000_2bbb
    ret


jr_003_4dba:
    call Call_003_4e93
    call Call_003_4fca
    ld a, [$c523]
    and $01
    jr z, jr_003_4de9

    ld a, $37
    call ShowMsg3
    call Call_000_2bbb
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
    call Call_000_2486
    ret


jr_003_4de9:
    ld a, $99
    call ShowMsg0
    call Call_000_2bbb
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
    call Call_000_107a
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
    call Call_003_4f0e
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


    call ClearResult
    ld bc, $c8d2
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld e, a
    ld bc, $0000

jr_003_4eb2:
    ld hl, $51eb
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    cp e
    jr z, jr_003_4ec1

    inc bc
    inc bc
    jr jr_003_4eb2

jr_003_4ec1:
    ld hl, $51ec
    add hl, bc
    ld a, [hl]
    push bc
    call Call_003_4f01
    pop bc
    ld hl, $51ec
    add hl, bc
    ld a, [hl]
    cp $00
    jr z, jr_003_4ed5

    dec a

jr_003_4ed5:
    push af
    call ReadItemFlag
    jr nz, jr_003_4eed

    pop af
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d2
    add hl, bc
    ld [hl], a
    call SetItemFlag
    ret


jr_003_4eed:
    pop af
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    call SetResult
    ret


Call_003_4f01:
    rst RST_00
    inc c
    ld c, a
    jr @+$51

    inc e
    ld c, a
    inc h
    ld c, a
    inc l
    ld c, a
    ld a, $0a

Call_003_4f0e:
jr_003_4f0e:
    ld hl, $c58a
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    ld a, $01
    jr jr_003_4f0e

    ld a, [$c53a]
    inc a
    ld [$c53a], a
    ret


    ld a, [$c590]
    inc a
    ld [$c590], a
    ret


    ld a, [$c58d]
    inc a
    ld [$c58d], a
    ret


    ld a, [$c590]
    cp $00
    jr nz, jr_003_4f44

    ld a, $2d
    call ShowMsg0
    call ClearResult
    ret


jr_003_4f44:
    ld hl, $4fa4

jr_003_4f47:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_4f77

    call ReadItemFlag
    jr z, jr_003_4f47

    dec hl
    ld a, [hl]
    call ClearItemFlag
    ld a, $8e
    call ShowMsg1
    call SetResult
    ld a, [$c590]
    dec a
    ld [$c590], a
    ld bc, $c8c9
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c865], a
    call Call_000_3389
    ret


jr_003_4f77:
    ld a, $8f
    call ShowMsg1
    call ClearResult
    ret


    ld hl, $4fa4

jr_003_4f83:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_4f9b

    call ReadItemFlag
    jr nz, jr_003_4f83

    dec hl
    ld a, [hl]
    call SetItemFlag
    call SetResult
    ld a, $10
    call PlayAudio
    ret


jr_003_4f9b:
    ld a, $90
    call ShowMsg1
    call ClearResult
    ret


    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rst RST_38
    call ReadArgs2
    call ClearResult
    ld a, [$c8a7]
    ld c, a
    ld b, $00
    ld hl, $c57b
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld c, a
    ld a, [$c8a8]
    cp c
    ret c

    xor a
    ld [hl], a
    call SetResult
    ret


Call_003_4fca:
    ld a, [$c58a]
    ld hl, $c8a7
    sub [hl]
    ld a, [$c58b]
    sbc $00
    jr c, jr_003_4fee

    ld a, [$c58a]
    ld hl, $c8a7
    sub [hl]
    ld [$c58a], a
    ld a, [$c58b]
    sbc $00
    ld [$c58b], a
    call SetResult
    ret


jr_003_4fee:
    call ClearResult
    ret


    ld a, [$c58a]
    ld hl, $c58e
    sub [hl]
    ld a, [$c58b]
    sbc $00
    jr c, jr_003_4fee

    call SetResult
    ret
INCLUDE "change_ops.asm"


    ld a, [$c8a7]
    push af
    ld a, [wCaseId]
    cp $00
    jr z, jr_003_50ab

    ld a, $aa
    call ReadObjFlag
    jr z, jr_003_50ab

    call Call_003_58d8
    pop af
    ld [$c8a7], a
    ret


jr_003_50ab:
    pop af
    ld [$c8a7], a
    ret


    ld a, [$c524]
    ld [$c5c7], a
    ld a, [$c8d2]
    ld [$c896], a
    ld a, $3b
    ld [$c863], a
    ld a, $c5
    ld [$c864], a
    ld a, [$c5c8]
    rst RST_00
    jp hl


    ld d, b
    and $50
    db $e3
    ld d, b
    ldh [$ff50], a
    inc l
    ld d, c

Call_003_50d4:
    ld a, $08
    ld hl, $c863
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    call Call_003_50d4
    call Call_003_50d4
    call Call_003_50d4
    ld de, $0001

jr_003_50ec:
    ld a, [$c863]
    ld l, a
    ld a, [$c864]
    ld h, a
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_003_5106

    inc e
    ld a, $07
    cp e
    jr nz, jr_003_50ec

    ld a, $f2
    call ShowMsg1
    ret


jr_003_5106:
    ld a, e
    ld [$c895], a
    call Call_003_512c
    cp $00
    ret z

    ld a, [$c895]
    ld e, a
    ld d, $00
    ld a, [$c863]
    ld l, a
    ld a, [$c864]
    ld h, a
    add hl, de
    ld a, [$c896]
    ld [hl], a
    ld a, [$c529]
    cp $ff
    call nz, Call_003_5188
    ret


Call_003_512c:
    ld a, [$c8a7]
    cp $03
    jr z, jr_003_513a

    call Call_003_51a6
    cp $00
    jr z, jr_003_5181

jr_003_513a:
    ld a, [$c8cb]
    ld [$c537], a
    ld a, [$c8a7]
    cp $03
    jr z, jr_003_514b

    ld a, $2c
    jr jr_003_514d

jr_003_514b:
    ld a, $0f

jr_003_514d:
    call ShowMsg3
    call SelectSlot0
    call SetAttr1
    call ClearAttr0
    call Call_000_2f18
    call TestAttr2
    ld a, [$c523]
    and $01
    jr z, jr_003_5173

    call RemoveChange
    call ClearAttr2
    ld a, [$c529]
    cp $ff
    jr z, jr_003_517b

jr_003_5173:
    ld a, [$c5c8]
    cp $04
    call z, Call_003_5188

jr_003_517b:
    call SelectSlot1
    ld a, $ff
    ret


jr_003_5181:
    ld a, $f3
    call ShowMsg1
    xor a
    ret


Call_003_5188:
    ld a, [$c5c7]
    cp $01
    jr z, jr_003_5192

    jr c, jr_003_519e

    ret


jr_003_5192:
    call Call_000_399e
    ld a, $01
    ld [$c524], a
    call RefreshLists
    ret


jr_003_519e:
    xor a
    ld [$c524], a
    call RefreshLists
    ret


Call_003_51a6:
    ld de, $0000

jr_003_51a9:
    ld hl, $51c0
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_003_51bb

    ld hl, $c8d2
    cp [hl]
    jr z, jr_003_51bd

    inc e
    jr jr_003_51a9

jr_003_51bb:
    xor a
    ret


jr_003_51bd:
    ld a, $ff
    ret


    dec b
    rlca
    dec c
    rrca
    db $10
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $1b
    dec e
    ld e, $1f
    dec h
    inc l
    dec l
    ld l, $31
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_003_5216

    ld a, $40
    ld b, l
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, [hl]
    ld d, c
    ld d, e
    add a
    adc l
    adc [hl]
    adc a
    sub l
    sub a
    rst RST_38
    add hl, bc
    nop
    ld a, [bc]
    ld bc, $010b
    jr nz, jr_003_51f3

jr_003_51f3:
    dec a
    nop
    ld d, h
    nop
    ld [$2102], sp
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld h, $03
    daa
    inc bc
    jr z, jr_003_5206

    add hl, hl
    inc bc
    ld a, [hl+]

jr_003_5206:
    inc bc
    dec hl
    inc bc
    inc hl
    inc b
    rst RST_38
INCLUDE "c2_room_tbl.asm"

Call_003_526c:
Jump_003_526c:
    ld a, [$c160]
    ld [$c165], a
    call Call_000_16b9
    ld a, [wSceneId]
    ld [$c539], a

Call_003_527b:
Jump_003_527b:
    ldh a, [$ffa0]
    push af
    ldh a, [$ff9e]
    push af
    ld a, $ff
    ld [$c5c9], a
    ld a, $06
    ld [$c640], a
    ld a, [$c8e9]
    ld l, a
    ld h, $00
    ld bc, $52e9
    add hl, bc
    ld a, [hl]
    ld [wSceneId], a
    call ShowScene

jr_003_529c:
    ld a, [$c8e9]
    cp $08
    jr nz, jr_003_52a8

    ld a, $1a
    call PlayAudio

jr_003_52a8:
    xor a
    ld [$c5c9], a
    ld a, [$c8e9]
    ld l, a
    ld h, $00
    ld bc, $52fe
    add hl, bc
    ld a, [hl]
    ld [$c600], a
    ld [$c8b8], a
    cp $ff
    jr z, jr_003_52c7

    call Call_000_3931
    call SubmitOam

jr_003_52c7:
    pop af
    ldh [$ff9e], a
    pop af
    ldh [$ffa0], a
    ret


Call_003_52ce:
    call PickC2Scene
    ld a, [$c539]
    ld [wSceneId], a
    ld a, $06
    ld [$c640], a
    call ShowScene
    call RefreshObjs
    ld a, [$c165]
    call PlayAudio
    ret


    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $17
    add hl, de
    add hl, sp
    ccf
    ld b, b
    ld b, $42
    dec c
    inc [hl]
    ld b, c
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    jr nc, @+$01

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
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
    call Call_000_21a1
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
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389

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
    call Call_000_2b9c
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
    jp nz, Jump_000_2bc7

    ld a, [$c895]
    rst RST_00
    ld bc, $6b54
    ld d, h
    rst RST_00
    dec hl
    ld a, [$c58d]
    cp $64
    jr nc, jr_003_5463

    ld a, $32
    ld [$c8a7], a
    call Call_003_4fca
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
    call Call_000_2486

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
    jp nz, Jump_000_2bc7

    ld a, [$c895]
    cp $00
    jp nz, Jump_000_2bc7

    jp Jump_003_53d8


jr_003_545b:
    ld a, $9b
    call ShowMsg0
    jp Jump_000_2bc7


jr_003_5463:
    ld a, $4f
    call ShowMsg0
    jp Jump_000_2bc7


    ld a, [$c590]
    cp $78
    jr nc, jr_003_5463

    ld a, $64
    ld [$c8a7], a
    call Call_003_4fca
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
    call Call_000_2486
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
    ld a, $40
    ldh [$ff92], a
    ret


    ld h, a
    ld [hl], a
    add a
    ld a, [$c895]
    ld l, a
    ld h, $00
    ld bc, $5537
    add hl, bc
    ld a, [hl]
    ldh [$ff93], a
    ld a, $40
    ldh [$ff92], a
    ret


    ld [hl], a
    add a
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
    call Call_000_2b9c
    ld a, $91
    call ShowMsg0
    call Call_003_5557
    jp Jump_000_2bbb


Call_003_556a:
    ld a, $86
    jp DrawSprite
INCLUDE "c2_pal.asm"


Call_003_55b8:
    ret


    ret


    call Call_003_5604
    ret nz

    call Call_003_6244
    call Call_003_5604
    ret nz

    call Call_003_59cf
    call Call_003_5604
    ret nz

    call Call_003_5649
    call Call_003_5604
    ret nz

    call Call_003_591b
    call Call_003_5604
    ret nz

    call Call_003_5e3d
    call Call_003_5604
    ret nz

    call Call_003_5d07
    call Call_003_5604
    ret nz

    call Call_003_5cb3
    call Call_003_5604
    ret nz

    call Call_003_5b75
    call Call_003_5604
    ret nz

    call Call_003_5b25
    call Call_003_5604
    ret nz

    call Call_003_5ec1
    call Call_003_5f1e
    ret


Call_003_5604:
    ld a, [$c523]
    and $40
    ret


Call_003_560a:
    ld bc, $5628

jr_003_560d:
    ld a, [bc]
    ld hl, $c554

jr_003_5611:
    cp [hl]
    jr z, jr_003_561f

    inc hl
    ld e, a
    ld a, $5b
    cp l
    ld a, e
    jr nz, jr_003_5611

    jp ClearResult


jr_003_561f:
    inc bc
    ld a, $2b
    cp c
    jr nz, jr_003_560d

    jp SetResult


    ld c, l
    cpl
    add hl, sp

Call_003_562b:
    ld bc, $5647

jr_003_562e:
    ld a, [bc]
    ld hl, $c554

jr_003_5632:
    cp [hl]
    jp z, ClearResult

    inc hl
    ld e, a
    ld a, $5b
    cp l
    ld a, e
    jr nz, jr_003_5632

    inc bc
    ld a, $49
    cp c
    jr nz, jr_003_562e

    jp SetResult


    db $10
    ld b, h

Call_003_5649:
    ld a, $34
    call ReadObjFlag
    jr nz, jr_003_5656

    ld a, $3e
    call ReadObjFlag
    ret z

jr_003_5656:
    ld a, [$c586]
    inc a
    ld [$c586], a
    cp $34
    ret nz

    ld a, $3e
    call ReadObjFlag
    jr nz, jr_003_56a6

    call Call_003_5694
    ld a, $78
    call WaitTicks
    ld a, $ae
    call ShowMsg1
    ld a, $3c
    call WaitTicks
    call Call_003_568a
    ld a, $b9
    call ShowMsg1

Jump_003_5681:
jr_003_5681:
    call Call_000_2bbb
    call Call_003_5772
    jp Jump_000_2f55


Call_003_568a:
    ld a, $10
    call PlayAudio
    ld a, $11
    jp Jump_003_5f44


Call_003_5694:
    call ResetObjScroll
    ld a, $94
    call ShowMsg1
    ld a, $06
    call Call_003_5f3e
    ld a, $09
    jp PlayAudio


jr_003_56a6:
    ld a, [$c554]
    cp $ff
    jr nz, jr_003_56c9

    call Call_003_5694
    ld a, $78
    call WaitTicks
    ld a, $33
    call ShowMsg3
    ld a, $3c
    call WaitTicks
    call Call_003_568a
    ld a, $42
    call ShowMsg3
    jr jr_003_5681

jr_003_56c9:
    call Call_003_562b
    ld a, [$c523]
    and $01
    jr nz, jr_003_5701

    call ResetObjScroll
    ld a, $c4
    call ShowMsg1
    call Call_003_56f7
    ld a, $78
    call WaitTicks
    ld a, $c7
    call ShowMsg1
    ld a, $3c
    call WaitTicks
    call Call_003_568a
    ld a, $ca
    call ShowMsg1
    jr jr_003_5681

Call_003_56f7:
    ld a, $10
    call Call_003_5f3e
    ld a, $09
    jp PlayAudio


jr_003_5701:
    call Call_003_560a
    ld a, [$c523]
    and $01
    jr nz, jr_003_5730

    call ResetObjScroll
    ld a, $c4
    call ShowMsg1
    call Call_003_56f7
    ld a, $78
    call WaitTicks
    ld a, $ce
    call ShowMsg1
    ld a, $3c
    call WaitTicks
    call Call_003_568a
    ld a, $f0
    call ShowMsg1
    jp Jump_003_5681


jr_003_5730:
    ld a, [$c586]
    cp $52
    ret nc

    call ResetObjScroll
    call Call_000_31cc
    ld a, $09
    call PlayAudio
    ld a, $d1
    call ShowMsg1
    ld a, $11
    call Call_003_5f3e
    ld a, $3c
    call WaitTicks
    ld a, $43
    call ShowMsg3
    jp Jump_003_5681


Jump_003_5758:
    ld a, $3e
    call ReadObjFlag
    ret z

    call Call_003_562b
    ld a, [$c523]
    and $01
    ret z

    call Call_003_560a
    ld a, [$c523]
    and $01
    ret z

    jr jr_003_577b

Call_003_5772:
    ld a, [$c5d2]
    or $20
    ld [$c5d2], a
    ret


Jump_003_577b:
jr_003_577b:
    xor a
    call PlayAudio
    ld a, $d3
    call ShowMsg1
    ld a, $11
    call Call_003_5f44
    ld a, $d5
    call ShowMsg1
    ld a, $09
    call PlayAudio
    ld a, $12
    call Call_003_5f44
    ld a, $d8
    call ShowMsg1
    ld a, $13
    call Call_003_5f44
    ld a, $28
    call PlayAudio
    call Call_003_58b6
    ld a, $09
    call PlayAudio
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a
    ld a, $aa
    call SetObjFlag
    ld a, $e7
    call ShowMsg1
    ld a, $aa
    call ClearObjFlag
    ld a, $12
    call Call_003_5f44
    ld a, $ab
    call SetObjFlag
    call Call_003_5852
    ld a, $e8
    call ShowMsg1
    ld a, $ab
    call ClearObjFlag
    ld a, $02
    call PlayAudio
    ld a, $14
    call Call_003_5f44
    ld a, $78
    call WaitTicks
    ld a, $eb
    call ShowMsg1
    call Call_000_2bbb
    ld a, $78
    call WaitTicks
    call Call_003_6e02

jr_003_57fb:
    jr jr_003_57fb

Call_003_57fd:
    xor a
    ld [$c5e2], a
    ld a, $34
    call ReadObjFlag
    cp $00
    ret z

    ld a, $3e
    call ReadObjFlag
    ret z

    call Call_003_562b
    ld a, [$c523]
    and $01
    ret z

    call Call_003_560a
    ld a, [$c523]
    and $01
    ret z

    ld a, $01
    ld [$c5e2], a
    ret


    ld a, [wCaseId]
    cp $00
    ret z

    ld a, [$c5e4]
    cp $04
    ret c

    call Call_003_57fd
    ld a, [$c5e2]
    cp $01
    ret nz

    jp Jump_003_577b


    xor a
    ld [$c5cb], a

jr_003_5843:
    call Call_003_587f
    ld a, [$c5cb]
    inc a
    ld [$c5cb], a
    cp $07
    jr c, jr_003_5843

    ret


Call_003_5852:
    xor a
    ld [$c5cb], a

jr_003_5856:
    call Call_003_587f
    call Call_000_3958
    call SubmitOam
    ld a, $06
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $06
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, [$c5cb]
    inc a
    ld [$c5cb], a
    cp $07
    jr c, jr_003_5856

    ret


Call_003_587f:
    ld a, [$c5cb]
    ld l, a
    add a
    add l
    ld e, $00
    ld d, $c6
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [$c5cb]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $58a8
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld a, $69
    ld [de], a
    inc de
    ld a, $ff
    ld [de], a
    ret


    ld c, b
    jr nz, @+$3a

    inc h
    jr z, @+$2a

    jr jr_003_58dc

    ld b, b
    inc [hl]
    jr nc, jr_003_58ec

    jr nz, @+$3e

Call_003_58b6:
    ld a, $31
    ldh [$ff92], a
    ld a, $00
    ldh [$ff93], a
    ld a, $67
    call PlayBankAnim
    ld c, $08

jr_003_58c5:
    ld a, $31
    ldh [$ff92], a
    ld a, $00
    ldh [$ff93], a
    push bc
    ld a, $68
    call PlayBankAnim
    pop bc
    dec c
    jr nz, jr_003_58c5

    ret


Call_003_58d8:
    ld a, $31
    ldh [$ff92], a

jr_003_58dc:
    ld a, $00
    ldh [$ff93], a
    ld a, $68
    call StepBankAnim
    call DrawRoomObjs
    ret


Call_003_58e9:
    ld bc, $590d

jr_003_58ec:
    ld a, [wRoomId]
    ld e, a
    ld hl, $0000

jr_003_58f3:
    ld a, [bc]
    cp e
    jr z, jr_003_5901

    inc bc
    inc l
    ld a, $07
    cp l
    jr nz, jr_003_58f3

    jp SetResult


jr_003_5901:
    call ClearResult
    ld bc, $5914
    add hl, bc
    ld a, [hl]
    ld [$c5c6], a
    ret


    jr c, @+$3c

    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, a
    ld c, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld c, b

Call_003_591b:
    ld a, $4d
    call ReadObjFlag
    ret z

    ld a, [$c585]
    inc a
    cp $1d
    jr z, jr_003_5931

    cp $3b
    jr nc, jr_003_595d

    ld [$c585], a
    ret


jr_003_5931:
    ld [$c585], a
    call Call_003_58e9
    ld a, [$c523]
    and $01
    jr nz, jr_003_5953

    call ResetObjScroll
    ld a, [$c5c6]
    ld [wScenePalId], a
    call Call_003_55b8
    call LoadC2Pal
    call PickC2Scene
    call ReloadScene

jr_003_5953:
    ld a, $86
    call ShowMsg1
    ld a, $a8
    jp SetObjFlag


jr_003_595d:
    call Call_003_58e9
    ld a, [$c523]
    and $01
    jr nz, jr_003_59bb

    ld a, [wRoomId]
    cp $38
    jr z, jr_003_59bb

    cp $3a
    jr z, jr_003_59bb

    call ResetObjScroll
    ld a, $4d
    call ClearObjFlag
    ld a, $49
    ld [wScenePalId], a
    call Call_003_55b8
    call LoadC2Pal
    call PickC2Scene
    call ReloadScene
    call Call_000_2b9c
    ld a, $88
    call ShowMsg1
    ld a, $09
    call PlayAudio
    ld a, $e9
    call ShowMsg1
    ld a, $17
    call PlayAudio
    call Call_000_2efb
    ld a, $3b
    call ShowMsg3
    call Call_000_2bbb
    call Call_003_59c0
    ld a, [$c5d2]
    or $80
    ld [$c5d2], a
    jp Jump_000_2f55


jr_003_59bb:
    ld a, $88
    call ShowMsg1

Call_003_59c0:
    ld a, $76
    call ClearObjFlag
    ld a, $4d
    call ClearObjFlag
    ld a, $4e
    jp ClearObjFlag


Call_003_59cf:
    ld hl, $5b0f
    ld a, [wRoomId]
    ld e, a
    cp $42
    ret nc

jr_003_59d9:
    ld a, [hl+]
    cp e
    ret z

    cp $ff
    jr nz, jr_003_59d9

    ld a, [wSceneId]
    cp $17
    ret z

    cp $19
    ret z

    call Call_003_59f0
    call Call_003_5ab7
    ret


Call_003_59f0:
    ld a, $34
    call ReadObjFlag
    ret nz

    ld a, $3e
    call ReadObjFlag
    ret nz

    ld a, [$c583]
    inc a
    ld [$c583], a
    cp $85
    ret nz

    call ResetObjScroll
    call Call_000_2b9c
    xor a
    ld [$c583], a
    ld a, [$c584]
    inc a
    ld [$c584], a
    dec a
    rst RST_00
    dec [hl]
    ld e, d
    ld b, h
    ld e, d
    ld d, e
    ld e, d
    ld h, d
    ld e, d
    ld [hl], c
    ld e, d
    sub d
    ld e, d

Call_003_5a25:
    ld a, $0c
    call ShowMsg1
    ld a, $10
    call Call_003_5f3e
    ld a, $09
    call PlayAudio
    ret


    call Call_003_5a25
    ld a, $78
    call WaitTicks
    ld a, $0d
    call ShowMsg1
    jr jr_003_5a7e

    call Call_003_5a25
    ld a, $78
    call WaitTicks
    ld a, $0e
    call ShowMsg1
    jr jr_003_5a7e

    call Call_003_5a25
    ld a, $78
    call WaitTicks
    ld a, $0f
    call ShowMsg1
    jr jr_003_5a7e

    call Call_003_5a25
    ld a, $78
    call WaitTicks
    ld a, $10
    call ShowMsg1
    jr jr_003_5a7e

    call Call_003_5a25
    ld a, $78
    call WaitTicks
    ld a, $11
    call ShowMsg1

jr_003_5a7e:
    ld a, $12
    call ShowMsg1
    call Call_000_2bbb
    ld a, $3c
    call WaitTicks
    call Call_003_52ce
    call Call_000_3966
    ret


    call Call_003_5a25
    ld a, $78
    call WaitTicks
    ld a, $13
    call ShowMsg1
    ld a, $10
    call PlayAudio
    ld a, $d7
    call ShowMsg0
    call Call_000_2bbb
    ld a, [$c5d2]
    or $10
    ld [$c5d2], a
    jp Jump_000_2f55


Call_003_5ab7:
    ld a, $78
    call ReadObjFlag
    ret z

    ld a, [wRoomId]
    cp $41
    ret z

    call NextRandom
    ldh a, [$ffa2]
    and $07
    xor $07
    ret nz

    call ResetObjScroll
    ld a, $08
    call Call_003_5f3e
    ld a, $78
    call WaitTicks
    ld a, $6d
    call ShowMsg2
    ld a, $3c
    call WaitTicks
    ld a, $09
    call PlayAudio
    ld a, $09
    call Call_003_5f3e
    ld a, $78
    call WaitTicks
    ld a, $fd
    call ShowMsg0
    ld a, $3c
    call WaitTicks
    ld a, $10
    call Call_003_5f3e
    ld a, $78
    call WaitTicks
    ld a, $fe
    call ShowMsg0
    jp Jump_000_2f55


    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec c
    rrca
    db $10
    ld sp, $370e
    jr c, jr_003_5b58

    dec sp
    inc a
    dec a
    ld a, $3f
    inc [hl]
    rst RST_38

Call_003_5b25:
    ld a, [wRoomId]
    cp $0a
    jr z, jr_003_5b37

    cp $0e
    jr z, jr_003_5b37

    cp $0f
    jr z, jr_003_5b37

    cp $10
    ret nz

jr_003_5b37:
    ld a, [$c582]
    inc a
    ld [$c582], a
    cp $28
    ret nz

    call ResetObjScroll
    ld a, $6b
    call ShowMsg0
    ld a, $09
    call PlayAudio
    ld a, $0e
    call Call_003_5f3e
    ld a, $78
    call WaitTicks

jr_003_5b58:
    ld a, $6c
    call ShowMsg0
    call Call_000_31cc
    ld a, $3c
    call WaitTicks
    ld a, $6d
    call ShowMsg0
    ld a, [$c5d2]
    or $08
    ld [$c5d2], a
    jp Jump_000_2f55


Call_003_5b75:
    ld a, [wRoomId]
    cp $0d
    ret nz

    ld a, [$c581]
    inc a
    ld [$c581], a
    cp $05
    ret nz

    call ResetObjScroll
    call Call_000_2b9c
    ld a, $0d
    call ReadStateBit
    jr z, jr_003_5ba1

    ld a, $a8
    call ShowMsg2
    ld a, $12
    call PlayAudio
    ld a, $0d
    call Call_000_2311

jr_003_5ba1:
    xor a
    call PlayAudio
    ld a, $a9
    call ShowMsg2
    ld a, $12
    call PlayAudio
    ld a, $0d
    call Call_000_22b4
    ld a, $aa
    call ShowMsg2
    call Call_003_5f4a
    ld a, $78
    call WaitTicks
    ld a, $a6
    call ShowMsg2
    ld a, $19
    ld [$c882], a
    call Call_000_3480
    ld a, [$c523]
    and $01
    jr nz, jr_003_5c54

    ld a, $86
    ld [$c882], a
    call Call_000_3480
    ld a, [$c523]
    and $01
    jr z, jr_003_5beb

    ld a, $19
    call ReadItemFlag
    jr z, jr_003_5c2e

jr_003_5beb:
    ld a, $18
    ld [$c882], a
    call Call_000_3480
    ld a, [$c523]
    and $01
    jr nz, jr_003_5c14

    ld a, $ab
    call ShowMsg2
    call Call_000_2bbb
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    jp Jump_000_2f55


jr_003_5c14:
    ld a, $ac
    call ShowMsg2
    call Call_000_2bbb
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    jp Jump_000_2f55


jr_003_5c2e:
    ld a, $ad
    call ShowMsg2
    call Call_000_2bbb
    call Call_000_3a6b
    ld a, $04
    ld [$c8a7], a
    ld a, $06
    ld [$c8a8], a
    call AddChange
    ld a, $01
    ld a, $19
    ld [$c8a7], a
    call Call_000_3508
    ld a, $01
    jr jr_003_5c64

jr_003_5c54:
    ld a, $ad
    call ShowMsg2
    call Call_000_2bbb
    call Call_000_2f47
    ld a, $01
    call WaitTicks

jr_003_5c64:
    ld a, $19
    call SetItemState
    ld a, $18
    ld [$c882], a
    call Call_000_3480
    ld a, [$c523]
    and $01
    jr z, jr_003_5c87

    call Call_000_2f47
    ld a, $01
    call WaitTicks
    ld a, [$c529]
    inc a
    ld [$c528], a

jr_003_5c87:
    ld a, $89
    ld [$c882], a
    call Call_000_3480
    ld a, [$c523]
    and $01
    jr z, jr_003_5ca5

    call Call_000_2f47
    ld a, $01
    call WaitTicks
    ld a, [$c529]
    inc a
    ld [$c528], a

jr_003_5ca5:
    ld a, $47
    call EnterRoom
    ld a, $77
    call SetObjFlag
    call Call_000_3966
    ret


Call_003_5cb3:
    ld a, $84
    call ReadObjFlag
    ret z

    ld a, [wRoomId]
    cp $46
    ret c

    cp $4b
    ret nc

    ld a, [$c580]
    inc a
    ld [$c580], a
    cp $31
    ret c

    call ResetObjScroll
    call Call_003_5f4a
    ld a, $78
    call WaitTicks
    ld a, $9f
    call ShowMsg2
    call Call_000_2bbb
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    ld a, [$c5d2]
    or $04
    ld [$c5d2], a
    jp Jump_000_2f55


Call_003_5cf9:
    call Call_003_5cfc

Call_003_5cfc:
    ld a, $16
    call PlayAudio
    ld a, $30
    call WaitTicks
    ret


Call_003_5d07:
    ld a, $84
    call ReadObjFlag
    ret nz

    ld a, [wRoomId]
    cp $46
    jr z, jr_003_5d1b

    cp $47
    jr z, jr_003_5d1b

    cp $48
    ret nz

jr_003_5d1b:
    ld a, [$c57f]
    inc a
    ld [$c57f], a
    cp $09
    ret c

    ld a, $82
    call ReadObjFlag
    jr nz, jr_003_5d69

    call ResetObjScroll
    call Call_003_5cf9
    ld a, $c1
    call ShowMsg2
    call Call_003_5f4a
    ld a, $78
    call WaitTicks
    call Call_000_2b9c
    ld a, $c2
    call ShowMsg2
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2
    call Call_000_2bbb
    ld a, $3c
    call WaitTicks
    ld a, $11
    call Call_003_5f44
    ld a, $c4
    call ShowMsg2
    call Call_003_5e34
    jp Jump_000_2f55


jr_003_5d69:
    ld a, [wRoomId]
    cp $46
    jr z, jr_003_5dc0

    call ResetObjScroll
    call Call_003_5cf9
    call Call_000_2b9c
    ld a, $c1
    call ShowMsg2
    ld a, $c5
    call ShowMsg2
    call Call_000_2bbb
    call Call_003_5f4a
    ld a, $78
    call WaitTicks
    call Call_000_2b9c
    ld a, $cb
    call ShowMsg2
    ld a, $cc
    call ShowMsg2
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2
    call Call_000_2bbb
    ld a, $3c
    call WaitTicks
    ld a, $11
    call Call_003_5f44
    ld a, $b0
    call ShowMsg2
    call Call_000_2bbb
    call Call_003_5e34
    jp Jump_000_2f55


jr_003_5dc0:
    ld a, $15
    call ReadStateBit
    jr nz, jr_003_5e0c

    call ResetObjScroll
    call Call_003_5cf9
    call Call_000_2b9c
    ld a, $c1
    call ShowMsg2
    ld a, $b6
    call ShowMsg2
    ld a, $b7
    call ShowMsg2
    call Call_000_2bbb
    call Call_003_5f4a
    ld a, $78
    call WaitTicks
    call Call_000_2b9c
    ld a, $f2
    call ShowMsg2
    ld a, $cc
    call ShowMsg2
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2
    call Call_000_2bbb
    ld a, $3c
    call WaitTicks
    jp Jump_000_2f55


jr_003_5e0c:
    call ResetObjScroll
    call Call_003_5cf9
    call Call_000_2b9c
    ld a, $c1
    call ShowMsg2
    ld a, $09
    call PlayAudio
    ld a, $b6
    call ShowMsg2
    ld a, $a1
    call ShowMsg2
    call Call_000_2bbb
    ld a, $84
    call SetObjFlag
    jp Jump_000_3966


Call_003_5e34:
    ld a, [$c5d2]
    or $02
    ld [$c5d2], a
    ret


Call_003_5e3d:
    ld a, [wRoomId]
    cp $62
    jr z, jr_003_5e4e

    cp $63
    jr z, jr_003_5e4e

    cp $66
    ret c

    cp $a1
    ret nc

jr_003_5e4e:
    ld a, [$c57e]
    inc a
    ld [$c57e], a
    cp $08
    jr z, jr_003_5e66

    cp $10
    jr z, jr_003_5e6b

    cp $20
    jr z, jr_003_5e70

    cp $28
    jr z, jr_003_5eac

    ret


jr_003_5e66:
    ld a, $d8
    jp ShowMsg0


jr_003_5e6b:
    ld a, $d9
    jp ShowMsg0


jr_003_5e70:
    call ResetObjScroll
    xor a
    call PlayAudio
    ld a, $db
    call ShowMsg0
    ld a, $0f
    call Call_003_5f3e
    call LoadC2Pal
    call Call_003_55b8
    ld a, $78
    call WaitTicks
    call Call_000_2b9c
    ld a, $dc
    call ShowMsg0
    ld a, $dd
    call ShowMsg0
    call Call_000_2bbb
    ld a, $3c
    call WaitTicks
    call Call_003_52ce
    ld a, $de
    call ShowMsg0
    jp Jump_000_3966


jr_003_5eac:
    ld a, $09
    call PlayAudio
    ld a, $df
    call ShowMsg0
    ld a, [$c5d2]
    or $01
    ld [$c5d2], a
    jp Jump_000_2f55


Call_003_5ec1:
    ld hl, $5f06
    ld a, [wRoomId]
    ld e, a
    ld c, $0c

jr_003_5eca:
    ld a, [hl+]
    and $7f
    cp e
    jr z, jr_003_5ed4

    dec c
    jr nz, jr_003_5eca

    ret


jr_003_5ed4:
    ld bc, $000b
    add hl, bc
    ld a, [hl]
    call ReadStateBit
    ret z

    ld a, [$c57d]
    inc a
    ld [$c57d], a
    cp $03
    ret nz

    ld bc, $fff4
    add hl, bc
    bit 7, [hl]
    jr nz, jr_003_5efd

    ld bc, $000c
    add hl, bc
    ld a, [hl]
    call Call_000_2311
    ld a, $66
    call ShowMsg1
    ret


jr_003_5efd:
    ld bc, $000c
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    ret


    ld [bc], a
    rlca
    add e
    dec bc
    ld [$090c], sp
    adc l
    ld c, $0a
    adc a
    sub b
    inc b
    inc b
    inc b
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e

Call_003_5f1e:
    ld a, [wRoomId]
    cp $02
    ret nz

    ld a, [$c57c]
    inc a
    ld [$c57c], a
    cp $02
    ret nz

    ld a, $12
    call PlayAudio
    ld a, $03
    call ShowMsg1
    ld a, $01
    call ClearStateBit
    ret


Call_003_5f3e:
Jump_003_5f3e:
    ld [$c8e9], a
    jp Jump_003_526c


Call_003_5f44:
Jump_003_5f44:
    ld [$c8e9], a
    jp Jump_003_527b


Call_003_5f4a:
    ld a, $09
    call PlayAudio
    ld a, $06
    jp Jump_003_5f3e
INCLUDE "c2_action.asm"
INCLUDE "c2_fallback.asm"
    ldh a, [$ff9e]
    push af
    call Call_003_60b1
    pop af
    ldh [$ff9e], a
    ret


Call_003_60b1:
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

Jump_003_60d4:
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
    jr nz, jr_003_6153

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
    jr z, jr_003_6129

    call Call_003_45ac
    ld a, [$c523]
    and $01
    ret nz

jr_003_6129:
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


jr_003_6153:
    call NextC2State
    jp Jump_003_60d4
INCLUDE "c2_filter.asm"

Call_003_6244:
    ld a, [$c57b]
    inc a
    ld [$c57b], a
    ld a, [wRoomId]
    cp $15
    ret c

    cp $30
    ret nc

    call Call_003_62a3
    call Call_003_63cc
    ret


    call Call_003_62a3
    call Call_000_13da
    call Call_003_634d
    ld a, $14
    ld [$c860], a
    ld a, $20

jr_003_626b:
    ld [$c85a], a
    xor a
    ld [$c85b], a
    ld [$c85c], a
    ld de, $0010
    call Call_003_62d1
    call Call_000_1119
    ret


    call Call_003_62a3
    call Call_000_13da
    call Call_003_634d
    ld a, $04
    ld [$c860], a
    ld a, $10
    ld [$c85a], a
    xor a
    ld [$c85b], a
    ld [$c85c], a
    ld de, $0000
    call Call_003_62d1
    call Call_000_1119
    ret


Call_003_62a3:
    call Call_003_6341
    xor a
    ld [$c85b], a

jr_003_62aa:
    ld a, [$c85b]
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, $68fb
    add hl, bc
    ld a, [hl+]
    ld [$c855], a
    ld a, [hl]
    ld [$c856], a
    pop hl
    add hl, hl
    ld e, l
    ld d, h
    call Call_003_6356
    ld a, [$c85b]
    inc a
    ld [$c85b], a
    cp $08
    jr c, jr_003_62aa

    ret


Call_003_62d1:
jr_003_62d1:
    ld hl, $c55b
    add hl, de
    ld a, [hl+]
    cp $fe
    jr z, jr_003_6304

    ld [$c85d], a
    ld a, [hl+]
    ld [$c85e], a
    ld a, [hl+]
    ld [$c85f], a
    ld a, [$c85c]
    ld l, a
    ld h, $00
    ld bc, $68cc
    add hl, bc
    ld a, [hl]
    ld [$c669], a
    ld a, $08
    ld [$c8e6], a
    push de
    call Call_000_107a
    pop de
    ld a, [$c85c]
    inc a
    ld [$c85c], a

jr_003_6304:
    inc de
    inc de
    inc de
    inc de
    ld a, [$c85a]
    cp e
    jr z, jr_003_633d

    ld a, [$c85c]
    cp $03
    jr c, jr_003_62d1

    ld hl, $c55b
    add hl, de
    ld a, [hl]
    cp $fe
    jr z, jr_003_633d

    ld a, [$c85b]
    cp $00
    jr nz, jr_003_633d

    push de
    call Call_000_1656
    call Call_000_13da
    call Call_003_634d
    pop de
    xor a
    ld [$c85c], a
    ld a, [$c860]
    ld [$c85b], a
    ld e, a
    jr jr_003_62d1

jr_003_633d:
    call Call_000_1656
    ret


Call_003_6341:
    ld hl, $c55b
    ld a, $fe
    ld c, $20

jr_003_6348:
    ld [hl+], a
    dec c
    jr nz, jr_003_6348

    ret


Call_003_634d:
    ld a, $07
    ld [$c8e6], a
    call Call_000_107a
    ret


Call_003_6356:
jr_003_6356:
    ld a, [$c855]
    ld c, a
    ld a, [$c856]
    ld b, a
    ld a, [bc]
    cp $ff
    ret z

    push af
    sub $04
    ld [$c859], a
    pop af
    add $0c
    ld [$c85a], a
    jr nc, jr_003_6375

    ld a, [$c57b]
    jr jr_003_6388

jr_003_6375:
    ld a, [$c57b]
    ld hl, $c85a
    cp [hl]
    jr nc, jr_003_63ba

    ld a, [$c859]
    sub $fc
    jr c, jr_003_6388

    ld [$c859], a

jr_003_6388:
    ld a, [$c57b]
    ld hl, $c859
    sub [hl]
    ret c

    ld hl, $c55e
    add hl, de
    ld [hl-], a
    ld c, a
    ld b, $00
    push hl
    ld hl, $688c
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl-], a
    ld a, [$c855]
    ld c, a
    ld a, [$c856]
    ld b, a
    inc bc
    ld a, [bc]
    ld [hl-], a
    ld a, [$c85b]
    ld c, a
    ld b, $00
    push hl
    ld hl, $68f3
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl], a
    ret


jr_003_63ba:
    ld a, [$c855]
    add $02
    ld [$c855], a
    ld a, [$c856]
    adc $00
    ld [$c856], a
    jr jr_003_6356

Call_003_63cc:
    ld de, $0000

jr_003_63cf:
    ld hl, $c55e
    add hl, de
    ld a, [hl]
    cp $fe
    jr z, jr_003_63e7

    push de
    call Call_003_63ec
    pop de

jr_003_63dd:
    inc e
    inc e
    inc e
    inc e
    ld a, $20
    cp e
    jr nz, jr_003_63cf

    ret


jr_003_63e7:
    call Call_003_6412
    jr jr_003_63dd

Call_003_63ec:
    ld hl, $c55e
    add hl, de
    ld a, [hl]
    rst RST_00
    ld [de], a
    ld h, h
    ld [de], a
    ld h, h
    ld [de], a
    ld h, h
    ld [de], a
    ld h, h
    dec d
    ld h, l
    ld b, a
    ld h, h
    ld b, a
    ld h, h
    ld b, a
    ld h, h
    ld b, a
    ld h, h
    ld b, a
    ld h, h
    ld a, h
    ld h, h
    call nz, $c464
    ld h, h
    call nz, Call_003_4564
    ld h, l
    scf
    ld h, [hl]

Call_003_6412:
    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, $6a1d
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, $6a25
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, $6a2d
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, $69e5
    add hl, bc
    ld a, [hl]
    push bc
    call ClearObjFlag
    pop bc
    push bc
    call Call_003_6506
    pop bc
    ret


Call_003_6447:
    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, $6a1d
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, $6a25
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, $6a2d
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, $69e5
    add hl, bc
    ld a, [hl]
    push bc
    call SetObjFlag
    pop bc
    push bc
    call Call_003_64f7
    pop bc
    ret


    call Call_003_6447
    ld a, [wRoomId]
    ld hl, $6a05
    add hl, bc
    cp [hl]
    jr z, jr_003_6498

    ld hl, $6a0d
    add hl, bc
    cp [hl]
    jr z, jr_003_6498

    ld hl, $6a15
    add hl, bc
    cp [hl]
    jr z, jr_003_64ae

    ret


jr_003_6498:
    ld hl, $69ed
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


jr_003_64ae:
    ld a, $1b
    call PlayAudio
    call Call_000_2b9c
    ld a, $30
    call ShowMsg1
    ld a, $2b
    call ShowMsg1
    call Call_000_2bbb
    ret


    call Call_003_6447
    ld a, [wRoomId]
    ld hl, $6a05
    add hl, bc
    cp [hl]
    jr z, jr_003_64d9

    ld hl, $6a0d
    add hl, bc
    cp [hl]
    jr z, jr_003_64d9

    ret


jr_003_64d9:
    ld hl, $69ed
    add hl, bc
    ld a, [hl]
    push bc
    call ReadObjFlag
    pop bc
    cp $00
    ret nz

    call Call_000_2b9c
    ld a, $77
    call ShowMsg2
    ld a, $7e
    call ShowMsg2
    call Call_000_2bbb
    ret


Call_003_64f7:
    ld a, [wRoomId]
    ld hl, $6a15
    add hl, bc
    cp [hl]
    ret nz

Call_003_6500:
    ld a, $a7
    call SetObjVisible
    ret


Call_003_6506:
    ld a, [wRoomId]
    ld hl, $6a15
    add hl, bc
    cp [hl]
    ret nz

    ld a, $a7
    call ClearObjVisible
    ret


    call Call_003_6447
    ld a, [wRoomId]
    ld hl, $6a15
    add hl, bc
    cp [hl]
    ret nz

    call ResetObjScroll
    ld a, $2f
    call ShowMsg1
    ld a, $14
    call PlayAudio
    call Call_000_3982
    ld a, $1e
    call WaitTicks
    ld a, $12
    call PlayAudio
    call Call_000_226c
    call Call_000_23bd
    call Call_000_3966
    ret


    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, $6a1d
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld a, [wRoomId]
    ld hl, $6a15
    add hl, bc
    cp [hl]
    jr z, jr_003_65d7

    ld hl, $6a05
    add hl, bc
    cp [hl]
    jr z, jr_003_656f

    ld hl, $6a0d
    add hl, bc
    cp [hl]
    jr z, jr_003_656f

    ret


jr_003_656f:
    ld hl, $69ed
    add hl, bc
    ld a, [hl]
    push bc
    call ReadObjFlag
    pop bc
    jp z, Jump_003_660b

    ld hl, $c55c
    add hl, de
    ld a, [hl]
    sub $38
    ld [$c5e3], a
    ld a, [hl]
    cp $e2
    jr c, jr_003_65cc

    push bc
    call Call_003_57fd
    pop bc
    ld a, [$c5e2]
    cp $01
    jr z, jr_003_65cc

    call Call_003_65d0
    ld a, $e1
    call ShowMsg2
    ld a, $09
    call PlayAudio
    ld a, $10
    ld [$c8e9], a
    call Call_003_526c
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
    call Call_000_2bbb
    call Call_000_2f55
    ret


jr_003_65cc:
    call Call_003_65d0
    ret


Call_003_65d0:
    push bc
    ld a, $32
    call ShowMsg1
    pop bc

jr_003_65d7:
    call ResetObjScroll
    push bc
    ld a, $1b
    call PlayAudio
    ld a, $50
    call WaitTicks
    call Call_003_6500
    pop bc
    push bc
    ld hl, $6a25
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, $6a2d
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    ld a, $12
    call PlayAudio
    call Call_000_226c
    ld a, $31
    call ShowMsg1
    ret


Jump_003_660b:
    push bc
    ld hl, $6a35
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, $6a3d
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, $6a15
    add hl, bc
    ld a, [hl]
    call EnterRoom
    ld a, $17
    call PlayAudio
    ld a, $74
    call ShowMsg2
    pop bc
    call Call_003_65d0
    ret


    ld c, e
    srl c
    srl c
    ld b, $00
    push bc
    ld hl, $69ed
    add hl, bc
    ld a, [hl]
    call ClearObjFlag
    pop bc
    push bc
    ld hl, $6a1d
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, $69e5
    add hl, bc
    ld a, [hl]
    call ClearObjFlag
    pop bc
    ld a, [wRoomId]
    ld hl, $6a15
    add hl, bc
    cp [hl]
    jr z, jr_003_6675

    ld hl, $6a05
    add hl, bc
    cp [hl]
    jr z, jr_003_66a2

    ld hl, $6a0d
    add hl, bc
    cp [hl]
    jr z, jr_003_66a2

    ret


jr_003_6675:
    call ResetObjScroll
    ld a, $a7
    call ClearObjVisible
    ld a, $1b
    call PlayAudio
    ld a, $93
    call ShowMsg0
    ld a, $14
    call PlayAudio
    call Call_000_3990
    call Call_000_3966
    call Call_000_23bd
    ld a, $a2
    call ShowMsg0
    ld a, [wSceneId]
    dec a
    ld [wSceneId], a
    ret


jr_003_66a2:
    call ResetObjScroll
    push bc
    ld a, $14
    call PlayAudio
    ld a, $8b
    call ShowMsg2
    call Call_003_66fb
    ld a, $8f
    call ShowMsg2
    ld a, $b4
    call WaitTicks
    call Call_003_6715
    ld a, $95
    call ShowMsg2
    ld a, $a7
    call SetObjVisible
    pop bc
    push bc
    ld hl, $69fd
    add hl, bc
    ld a, [hl]
    ld [$c536], a
    ld hl, $69f5
    add hl, bc
    ld a, [hl]
    call EnterRoom
    ld a, $31
    call SetObjFlag
    call Call_000_3966
    pop bc
    ld a, [$c5e3]
    ld [$c537], a
    ld a, $0d
    call ShowMsg3
    ld a, $34
    call ReadObjFlag
    cp $00
    ret z

    jp Jump_003_5758


Call_003_66fb:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, jr_003_670c

    call Call_003_685d
    call Call_003_6729
    jr jr_003_6712

jr_003_670c:
    call Call_003_6872
    call Call_003_678e

jr_003_6712:
    pop bc
    pop de
    ret


Call_003_6715:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, jr_003_6723

    call Call_003_675c
    jr jr_003_6726

jr_003_6723:
    call Call_003_67c1

jr_003_6726:
    pop bc
    pop de
    ret


Call_003_6729:
    ld de, $0002

jr_003_672c:
    ld hl, $689c
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    call Call_003_67f3
    ld hl, $68b0
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    push de
    call Call_003_680c
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    inc e
    inc e
    ld a, $0a
    cp e
    jr nz, jr_003_672c

    ret


Call_003_675c:
    ld de, $0006

jr_003_675f:
    ld hl, $689c
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    call Call_003_67f3
    ld hl, $68b0
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    push de
    call Call_003_680c
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    dec e
    dec e
    bit 7, e
    jr z, jr_003_675f

    ret


Call_003_678e:
    ld de, $0002

jr_003_6791:
    ld hl, $68a6
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    call Call_003_67f3
    ld hl, $68ba
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    push de
    call Call_003_680c
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    inc e
    inc e
    ld a, $0a
    cp e
    jr nz, jr_003_6791

    ret


Call_003_67c1:
    ld de, $0006

jr_003_67c4:
    ld hl, $68a6
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    call Call_003_67f3
    ld hl, $68ba
    add hl, de
    ld a, [hl+]
    ld [wSceneBlank], a
    ld a, [hl]
    ld [$c87e], a
    push de
    call Call_003_680c
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    dec e
    dec e
    bit 7, e
    jr z, jr_003_67c4

    ret


Call_003_67f3:
    ld bc, $0000

jr_003_67f6:
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
    jr nz, jr_003_67f6

    ret


Call_003_680c:
    ld bc, $0000

jr_003_680f:
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
    jr nz, jr_003_680f

    ret


    ld de, $0000

jr_003_6828:
    ld a, [wRoomId]
    ld hl, $6a05
    add hl, de
    cp [hl]
    jr z, jr_003_6840

    ld hl, $6a0d
    add hl, de
    cp [hl]
    jr z, jr_003_6840

    inc e
    ld a, $08
    cp e
    jr nz, jr_003_6828

    ret


jr_003_6840:
    sla e
    sla e
    ld hl, $c55c
    add hl, de
    ld a, [hl]
    sub $38
    ld [$c537], a
    and $07
    ld e, a
    ld hl, $6887
    add hl, de
    ld a, [hl]
    ld [$c587], a
    ld [$c58e], a
    ret


Call_003_685d:
    ld c, $08

jr_003_685f:
    ld a, $20
    ldh [$ff92], a
    ld a, $00
    ldh [$ff93], a
    push bc
    ld a, $70
    call PlayBankAnim
    pop bc
    dec c
    jr nz, jr_003_685f

    ret


Call_003_6872:
    ld c, $08

jr_003_6874:
    ld a, $40
    ldh [$ff92], a
    ld a, $00
    ldh [$ff93], a
    push bc
    ld a, $71
    call PlayBankAnim
    pop bc
    dec c
    jr nz, jr_003_6874

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


    ld b, l
    ld l, d
    add l
    ld l, d
    push bc
    ld l, d
    dec b
    ld l, e
    ld b, l
    ld l, e
    add l
    ld l, e
    push bc
    ld l, e
    dec b
    ld l, h
    ld b, l
    ld l, h
    add l
    ld l, h
    push bc
    ld l, h
    push de
    ld l, h
    push hl
    ld l, h
    push af
    ld l, h
    dec b
    ld l, l
    dec d
    ld l, l
    dec h
    ld l, l
    dec [hl]
    ld l, l
    ld b, l
    ld l, l
    ld d, l
    ld l, l
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0409], sp
    ld b, $08

Call_003_68cf:
    ld de, $0000

jr_003_68d2:
    ld a, [wRoomId]
    ld hl, $6a05
    add hl, de
    cp [hl]
    jr z, jr_003_68ea

    ld hl, $6a0d
    add hl, de
    cp [hl]
    jr z, jr_003_68ea

    inc e
    ld a, $08
    cp e
    jr nz, jr_003_68d2

    ret


jr_003_68ea:
    ld hl, $69ed
    add hl, de
    ld a, [hl]
    call ReadObjFlag
    ret


    ld [bc], a

jr_003_68f4:
    inc bc

jr_003_68f5:
    inc b
    dec b
    ld b, $07
    ld [$0b09], sp
    ld l, c
    jr z, jr_003_6968

    ld b, e
    ld l, c
    ld e, [hl]
    ld l, c
    ld a, c
    ld l, c
    sub h
    ld l, c
    xor a
    ld l, c
    jp z, ClearBgMaps

    ldh [rNR21], a
    ldh [c], a
    jr z, jr_003_68f4

    jr c, jr_003_68f5

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
    ldh [c], a
    add hl, sp
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

jr_003_6968:
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
    jr nc, jr_003_6a07

    ld a, [hl+]
    dec hl
    inc l
    rla
    jr jr_003_6a11

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

jr_003_6a07:
    daa
    add hl, hl
    dec de
    dec e
    rra
    ld hl, $2624
    jr z, jr_003_6a3b

jr_003_6a11:
    inc e
    ld e, $20
    ld [hl+], a
    inc l
    dec l
    ld l, $2f
    rla
    jr jr_003_6a35

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

jr_003_6a35:
    adc l
    adc a
    sub c
    sub e
    add l
    add a

jr_003_6a3b:
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
    jr nz, jr_003_6d49

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
    jr nz, jr_003_6d48

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

jr_003_6d48:
    ld c, h

jr_003_6d49:
    jr nz, jr_003_6d98

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
    ld hl, $6df8

jr_003_6d72:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_6d7e

    cp e
    jr nz, jr_003_6d72

    call Call_003_6d8c
    ret


jr_003_6d7e:
    ld hl, $6dfd

jr_003_6d81:
    ld a, [hl+]
    cp $ff
    ret z

    cp e
    jr nz, jr_003_6d81

    call Call_003_6db8
    ret


Call_003_6d8c:
    ld a, $60
    ld [$c5c5], a
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a

jr_003_6d98:
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
    jr nz, jr_003_6d98

    ret


Call_003_6db8:
    ld a, $40
    ld [$c5c5], a
    ld a, $60
    ld [$c5c6], a
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a

jr_003_6dc9:
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
    jr nz, jr_003_6df0

    ld a, [$c5c6]
    dec a
    ld [$c5c6], a

jr_003_6df0:
    ld a, [$c5c5]
    cp $f0
    jr nz, jr_003_6dc9

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

Call_003_6e02:
    call FadeOut
    xor a
    ld [$c5e0], a
    call PlayAudio
    call DisableLcd
    call Call_000_09f5
    call RestoreLcd
    call Call_003_6fdb
    call FadeIn
    xor a
    ld [wCaseId], a
    ld a, $0e
    call PlayAudio
    ld a, $ff
    ld [$c5df], a
    xor a
    ld [$c890], a
    ld [$c893], a
    ld [$c894], a
    call Call_003_7009
    ld a, $08
    call Call_003_7015
    call Call_003_700f
    ld a, $13
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $1d
    call Call_003_7015
    ld a, $1b
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $02
    call Call_003_7015
    call Call_003_700f
    ld a, $03
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $00
    call Call_003_7015
    call Call_003_700f
    ld a, $01
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $04
    call Call_003_7015
    call Call_003_700f
    ld a, $05
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $06
    call Call_003_7015
    call Call_003_700f
    ld a, $07
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $06
    call Call_003_7015
    call Call_003_700f
    ld a, $09
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $06
    call Call_003_7015
    call Call_003_700f
    ld a, $0a
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $0d
    call Call_003_7015
    call Call_003_700f
    ld a, $0e
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $0f
    call Call_003_7015
    call Call_003_700f
    ld a, $10
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $0b
    call Call_003_7015
    call Call_003_700f
    ld a, $12
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $0b
    call Call_003_7015
    call Call_003_700f
    ld a, $0c
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $0b
    call Call_003_7015
    call Call_003_700f
    ld a, $11
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $0b
    call Call_003_7015
    call Call_003_700f
    ld a, $14
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $0b
    call Call_003_7015
    call Call_003_700f
    ld a, $15
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $16
    call Call_003_7015
    ld a, $1c
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $17
    call Call_003_7015
    call Call_003_700f
    ld a, $18
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $17
    call Call_003_7015
    call Call_003_700f
    ld a, $19
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $17
    call Call_003_7015
    call Call_003_700f
    ld a, $1a
    call Call_003_7015
    call Call_003_7003
    call Call_003_6ff9
    call Call_003_7009
    ld a, $1e
    call Call_003_7015
    call Call_003_7003
    ret


Call_003_6fdb:
    ld a, [$c5e0]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $7093
    add hl, bc
    ld a, [hl+]
    ld [wCaseId], a
    ld a, [hl]
    ld [wSceneId], a
    call Call_000_3a1c
    ld a, [$c5e0]
    inc a
    ld [$c5e0], a
    ret


Call_003_6ff9:
    call FadeOut
    call Call_003_6fdb
    call FadeIn
    ret


Call_003_7003:
    ld a, $b4
    call WaitTicks
    ret


Call_003_7009:
    ld a, $28
    call WaitTicks
    ret


Call_003_700f:
    ld a, $14
    call WaitTicks
    ret


Call_003_7015:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $70bb
    add hl, bc
    ld a, [hl+]
    ld [$c19a], a
    ld a, [hl]
    ld [$c19b], a
    xor a
    ld [$c65e], a
    ld [$c65f], a
    ld [$c662], a
    ld [$c663], a
    ld a, $12
    ld [$c66d], a
    ld a, $41
    ld [$c88f], a
    call DrawRoomObjs
    call SubmitOam
    call Call_000_16c1
    ld a, [$c88f]
    and $7f
    ld [$c88f], a
    ret


    ld a, $01
    ld [$c5c3], a
    ld [$c5c4], a

jr_003_7056:
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
    ld hl, $7090
    call QueueTileRect
    call SubmitMapQueue
    ld a, [$c5c3]
    inc a
    cp $13
    jr nz, jr_003_708b

    ld a, [$c5c4]
    inc a
    inc a
    cp $11
    ret z

    ld [$c5c4], a
    xor a

jr_003_708b:
    ld [$c5c3], a
    jr jr_003_7056

    ld bc, $7f01
    nop
    jr z, jr_003_7096

jr_003_7096:
    jr nc, jr_003_7099

    inc d

jr_003_7099:
    ld bc, $010d
    ld h, $01
    scf
    ld bc, HeaderTitle
    inc bc
    ld bc, $0007
    ld b, c
    nop
    cpl
    nop
    ld c, $00
    jr jr_003_70ae

jr_003_70ae:
    jr nz, jr_003_70b0

jr_003_70b0:
    ld c, l
    nop
    ld d, b
    nop
    ld e, d
    nop
    ld [hl], e
    nop
    adc d
    ld bc, $f941
    ld [hl], b
    db $10
    ld [hl], c
    rra
    ld [hl], c
    dec [hl]
    ld [hl], c
    ld b, a
    ld [hl], c
    ld e, d
    ld [hl], c
    ld l, c
    ld [hl], c
    ld [hl], a
    ld [hl], c
    ld [hl], $72
    adc b
    ld [hl], c
    sub [hl]
    ld [hl], c
    xor b
    ld [hl], c
    pop bc
    ld [hl], c
    rst RST_08
    ld [hl], c
    pop hl
    ld [hl], c
    rst RST_30
    ld [hl], c
    inc b
    ld [hl], d
    ld b, a
    ld [hl], d
    jr jr_003_7153

    dec h
    ld [hl], d
    ld e, [hl]
    ld [hl], d
    ld l, a
    ld [hl], d
    add c
    ld [hl], d
    xor h
    ld [hl], d
    add $72
    reti


    ld [hl], d
    db $ec
    ld [hl], d
    db $fd
    ld [hl], d
    dec d
    ld [hl], e
    inc l
    ld [hl], e
    ld b, l
    ld [hl], e
    ld d, d
    ld d, l
    ld d, b
    nop
    ld d, c
    inc c
    dec bc
    inc b
    nop
    inc bc
    ld a, [de]
    rrca
    ld de, $060e
    ld de, $0c00
    inc c
    inc b
    ld de, $5f53
    ld d, d
    ld d, b
    ld a, [bc]
    ld d, c
    ld c, $05
    jr nz, jr_003_711e

    jr nz, jr_003_711a

jr_003_711a:
    jr nz, jr_003_7126

    jr nz, @+$55

jr_003_711e:
    ld e, a
    ld d, d
    ld d, l
    ld d, b
    nop
    ld d, c
    inc c
    ld [bc], a

jr_003_7126:
    rlca
    ld [$0504], sp
    ld a, [de]
    inc b
    dec c
    ld b, $08
    dec c
    inc b
    inc b
    ld de, $5f53
    ld d, d
    ld d, b
    rlca
    ld d, c
    ld c, $12
    jr nz, jr_003_7157

    inc c
    ld [$0702], sp
    ld [$1114], sp
    nop
    ld d, e
    ld e, a
    ld d, d
    ld d, l
    ld d, b
    nop
    ld d, c
    inc c
    dec bc
    inc b
    nop
    inc bc
    ld a, [de]
    nop

jr_003_7153:
    ld de, $0813
    ld [de], a

jr_003_7157:
    inc de
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    ld a, [bc]
    ld d, c
    ld c, $0a
    jr nz, jr_003_717c

    ld [de], a
    inc d
    inc b
    inc bc
    nop
    ld d, e
    ld e, a
    ld d, d
    ld d, l
    ld d, b
    nop
    ld d, c
    inc c
    nop
    ld de, $0813
    ld [de], a
    inc de
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    ld [$0e51], sp

jr_003_717c:
    ld a, [bc]
    jr nz, jr_003_7199

    inc c
    inc d
    ld de, $0e00
    ld a, [bc]
    nop
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    dec bc
    ld d, c
    ld c, $0a
    ld [$0013], sp
    jr jr_003_7193

jr_003_7193:
    dec c
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    rlca

jr_003_7199:
    ld d, c
    ld c, $0a
    jr nz, jr_003_71b8

    jr jr_003_71ae

    dec c
    inc b
    dec c
    nop
    ld [bc], a
    nop
    ld d, e
    ld e, a
    ld d, d
    ld d, l
    ld d, b
    nop
    ld d, c
    inc c

jr_003_71ae:
    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    ld a, [de]
    inc de
    rlca

jr_003_71b8:
    nop
    dec c
    ld a, [bc]
    ld [de], a
    ld a, [de]
    inc de
    ld c, $53
    ld e, a
    ld d, d
    ld d, b
    dec bc
    ld d, c
    ld c, $05
    jr nz, jr_003_71e3

    inc de
    ld c, $0d
    ld c, $53
    ld e, a
    ld d, d
    ld d, l
    ld d, b
    nop
    ld d, c
    inc c
    dec bc
    inc b
    nop
    inc bc
    ld a, [de]
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld d, e
    ld e, a
    ld d, d
    ld d, b

jr_003_71e3:
    inc bc
    ld d, c
    ld c, $0a
    ld c, $14
    add hl, bc
    ld [$0d1a], sp
    ld [$0712], sp
    ld [$000a], sp
    ld d, $00
    ld d, e
    ld e, a
    ld d, d
    ld d, l
    ld d, b
    nop
    ld d, c
    inc c
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    dec b
    ld d, c
    ld c, $0c
    nop
    ld [de], a
    nop
    ld c, $0c
    ld [$0c1a], sp
    ld [$1114], sp
    nop
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    inc c
    ld d, c
    ld c, $07
    nop
    ld [de], a
    ld [de], a
    ld [$5304], sp
    ld e, a
    ld d, d
    ld d, l
    ld d, b
    inc b
    ld d, c
    ld c, $21
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec b
    dec b
    ld a, [de]
    ld hl, $5f53
    ld d, d
    ld d, b
    inc b
    ld d, c
    inc c
    inc bc
    inc b
    add hl, bc
    nop
    dec d
    inc d
    ld a, [de]
    ld [$d42d], sp
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    ld [bc], a
    ld d, c
    ld c, $0e
    dec bc
    ld [$0415], sp
    ld de, $0c1a
    ld [$0018], sp
    ld [de], a
    rlca
    ld [$0013], sp
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    ld [$0e51], sp
    inc de
    nop
    inc c
    nop
    jr jr_003_7277

    ld a, [de]
    ld [$0e13], sp
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    rlca
    ld d, c
    ld c, $13
    ld c, $03

jr_003_7277:
    inc bc
    ld a, [de]
    inc bc
    jr @+$0e

    inc b
    dec c
    inc de
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    nop
    ld d, c
    dec bc
    dec bc
    ld [$0402], sp
    dec c
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    ld [$050d], sp
    ld [$080d], sp
    inc de
    inc b
    ld a, [de]
    dec d
    inc b
    dec c
    inc de
    inc d
    ld de, $1204
    dec h
    ld [$020d], sp
    jr nz, jr_003_72fe

    ld e, a
    ld d, d
    ld d, l
    ld d, b
    nop
    ld d, c
    inc c
    nop
    ld [de], a
    ld [de], a
    ld c, $02
    ld [$1300], sp
    inc b
    ld a, [de]
    rrca
    ld de, $030e
    inc d
    ld [bc], a
    inc b
    ld de, $5f53
    ld d, d
    ld d, b
    ld b, $51
    ld c, $04
    inc d
    ld b, $04
    dec c
    inc b
    ld a, [de]
    inc b
    dec d
    nop
    dec c
    ld [de], a
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    ld b, $51
    ld c, $0a
    nop
    ld de, $1a0b
    ld de, $040e
    dec bc
    ld c, $05
    ld [de], a
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    ld [$0e51], sp
    inc bc
    nop
    dec d
    inc b
    ld a, [de]
    inc c
    nop
    ld de, $0712
    ld d, e
    ld e, a
    ld d, d

jr_003_72fe:
    ld d, b
    ld bc, $0f51
    ldh a, [$fff1]
    ldh a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    db $dd
    sbc $df
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    ld bc, $0f51
    ldh [$ffe1], a
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ld d, e
    ld e, a
    ld d, d
    ld d, b
    nop
    ld d, c
    inc c
    rrca
    ld de, $1204
    inc b
    dec c
    inc de
    inc b
    inc bc
    ld a, [de]
    ld bc, $1a18
    ld a, [bc]
    inc b
    inc c
    ld [bc], a
    ld c, $53
    ld e, a
    ld d, d
    ld d, l
    ld d, b
    dec b
    ld d, c
    dec c
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec c
    inc bc
    ld d, e
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
