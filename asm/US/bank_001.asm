; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

INCLUDE "video_init.asm"
INCLUDE "video.asm"
INCLUDE "joy.asm"
INCLUDE "video_pal.asm"
INCLUDE "timer_init.asm"
INCLUDE "intro.asm"
INCLUDE "c1_marks.asm"
INCLUDE "c1_room.asm"
INCLUDE "c1_flags.asm"
INCLUDE "scene_res.asm"
INCLUDE "pal_fade.asm"
INCLUDE "pal_check.asm"
INCLUDE "pal_color.asm"
INCLUDE "room_panel.asm"
INCLUDE "list_ui.asm"

    ld b, $0b
    jr jr_001_4bbe

Jump_001_4bbc:
    ld b, $0c

jr_001_4bbe:
    push af
    ld a, b
    ld [$c5c0], a
    call Call_001_4bcb
    pop af
    ld [$c5c0], a
    ret


Call_001_4bcb:
    call StepListPage
    ld a, [$c5c0]
    call ClearListCursor
    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_4bff

    ld a, [$c859]
    ld [$c5c0], a

jr_001_4be1:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    call MoveListCursor
    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    jr jr_001_4bff

    ld a, [$c8b2]
    cp $ff
    jr z, jr_001_4be1

jr_001_4bff:
    ld a, [$c85a]
    ld [$c5c0], a
    ret
INCLUDE "list_page.asm"
INCLUDE "list_draw.asm"
INCLUDE "list_head.asm"
INCLUDE "scene_mask.asm"
    ldh a, [$ff9e]

jr_001_551f:
    push af
    call Call_001_5527
    pop af
    ldh [$ff9e], a
    ret


Call_001_5527:
    call ReadC1Room
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
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

Jump_001_5554:
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

    inc hl
    ld a, [hl]
    and $7f
    call HideC1MarkId
    ld a, [$c523]
    and $01
    jr nz, jr_001_55d5

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
    ld c, a
    ld a, [$c860]
    ld b, a
    ld a, c
    cp b
    jr nz, jr_001_55d5

    ld d, a
    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
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
    bit 7, a
    jr z, jr_001_55b5

    call Call_001_4285
    ld a, [$c523]
    and $01
    ret nz

    ld a, [$c855]

jr_001_55b5:
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


jr_001_55d5:
    ldh a, [$ff9e]
    inc a
    inc a
    inc a
    ldh [$ff9e], a
    jp Jump_001_5554
INCLUDE "item_prep.asm"
INCLUDE "item_write.asm"
INCLUDE "item_list.asm"
INCLUDE "input_apply.asm"
INCLUDE "select_state.asm"
INCLUDE "list_input.asm"
INCLUDE "list_select.asm"
INCLUDE "list_cursor.asm"
INCLUDE "input_wait.asm"
INCLUDE "cursor_move.asm"
INCLUDE "cursor_scroll.asm"
INCLUDE "scroll_reset.asm"
INCLUDE "list_pick.asm"
INCLUDE "cursor_tables.asm"
INCLUDE "list_pack.asm"
INCLUDE "item_name.asm"
INCLUDE "list_text.asm"
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

jr_001_6500:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    ld a, [hl+]
    and $7f
    cp d
    jr z, jr_001_6517

    call NextC1State
    jr jr_001_6500

jr_001_6517:
    ld a, [hl]
    ld [wSceneFx], a
    ret


; Advance the room record pointer by three bytes.
NextC1State:
Call_001_651c:
    push hl
    ld a, [$c85e]
    ld l, a
    ld a, [$c85f]
    ld h, a
    inc hl
    inc hl
    inc hl
    ld a, l
    ld [$c85e], a
    ld a, h
    ld [$c85f], a
    pop hl
    ret
INCLUDE "c1_scene.asm"
INCLUDE "c1_views.asm"
INCLUDE "text_set.asm"
INCLUDE "save.asm"
INCLUDE "save_addr.asm"
INCLUDE "save_sum.asm"
INCLUDE "save_tag.asm"
INCLUDE "state_snap.asm"

; Original "dejavu" bytes; saved-copy tag readers use only the first four.
SaveTag:
    db $64, $65, $6a, $61, $76, $75
INCLUDE "c1_start.asm"
INCLUDE "c1_filter.asm"


    call FadeToWhite
    xor a
    call PlayAudio
    call Call_001_6ddf
    call FadeFromWhite
    ld a, $ff
    ld [$c5df], a
    ld a, $3c
    call WaitTicks
    ld a, $00
    ld [$c662], a
    ld a, $04
    ld [$c663], a
    xor a
    ld [$c890], a
    ld [$c893], a
    ld a, $06
    call Call_001_6df9
    ld a, $f0
    call WaitTicks
    call Call_001_6e22
    ld a, $00
    ld [$c662], a
    ld a, $04
    ld [$c663], a
    ld a, $07
    call Call_001_6df9
    ld a, $f0
    call WaitTicks
    call Call_001_6e22
    ld a, $00
    ld [$c662], a
    ld a, $04
    ld [$c663], a
    ld a, $0b
    call Call_001_6df9
    ld a, $f0
    call WaitTicks
    ld a, $f0
    call WaitTicks
    call FadeToWhite
    ret


Call_001_6ddf:
    call RequestTimer
    call DisableLcd
    ld a, $06
    call ReadUiMap
    ld a, $06
    call StageUiObj
    call StopTimer
    call RestoreLcd
    call BlankOam
    ret


Call_001_6df9:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $71fe
    add hl, bc
    ld a, [hl+]
    ld [$c19a], a
    ld a, [hl]
    ld [$c19b], a
    xor a
    ld [$c65e], a
    ld [$c65f], a
    ld a, $10
    ld [$c66d], a
    call Call_000_11e5
    call DrawRoomObjs
    call SubmitOam
    call Call_000_1122
    ret


Call_001_6e22:
    ld a, $01
    ld [$c5c3], a
    ld [$c5c4], a

jr_001_6e2a:
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
    ld hl, $6e63
    call QueueTileRect
    call SubmitMapQueue
    ld a, [$c5c3]
    inc a
    cp $13
    jr nz, jr_001_6e5e

    ld a, [$c5c4]
    inc a
    cp $11
    ret z

    ld [$c5c4], a
    xor a

jr_001_6e5e:
    ld [$c5c3], a
    jr jr_001_6e2a

    ld bc, $7f01
    ld a, $b6
    ret z

    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld a, [hl-]
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld e, a
    push bc
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld h, e
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld e, h
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld h, h
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld e, l
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld h, b
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    inc hl
    ccf
    ld e, [hl]
    push bc
    ld a, [de]
    rra
    ld d, d
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    ld hl, $321a
    ld a, [de]
    nop
    inc c
    jr nz, jr_001_6ede

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$040b], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    ld [$1a12], sp
    ld [de], a
    ld c, $1d
    inc de
    rlca
    ld [$0a02], sp
    ld a, [de]
    jr jr_001_6ee9

    inc d
    ld a, [de]
    ld [bc], a

jr_001_6ede:
    nop
    dec c
    dec e
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    ld a, [de]
    inc de

jr_001_6ee9:
    ld c, $14
    ld [bc], a
    rlca
    ld a, [de]
    ld [$2013], sp
    ld d, e
    ld e, a
    ld d, d
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_001_6f17

    nop
    ld a, [de]
    ld [bc], a
    ld de, $1200
    rlca
    dec e
    ld [de], a
    rlca
    nop
    inc de
    inc de
    inc b
    ld de, $1a12
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    nop
    ld de, $180b

jr_001_6f17:
    inc c
    ld c, $11
    dec c
    ld [$060d], sp
    ld a, [de]
    rlca
    ld c, $14
    ld de, $1d27
    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    dec b
    ld c, $0b
    dec bc
    ld c, $16
    inc b
    inc bc
    dec e
    ld bc, $1a18
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    inc c
    inc d
    dec b
    dec b
    dec bc
    inc b
    inc bc
    dec e
    jr jr_001_6f4c

    dec bc
    dec bc
    ld [de], a
    ld a, [de]

jr_001_6f4c:
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    nop
    ld de, $1d04
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_001_6f77

    ld [bc], a
    inc d
    inc de
    ld a, [de]
    ld c, $05
    dec b
    jr nz, jr_001_6fb9

    ld e, a
    ld d, d
    ld [de], a
    ld [$040b], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    ld de, $1304
    inc d
    ld de, $120d

jr_001_6f77:
    ld a, [de]
    inc de
    ld c, $13
    rlca
    inc b
    ld a, [de]
    ld de, $0d14
    inc bc
    ld c, $16
    dec c
    dec e
    dec c
    inc b
    ld [$0706], sp
    ld bc, $110e
    rlca
    ld c, $0e
    inc bc
    jr nz, jr_001_6fb1

    dec c
    ld c, $1a
    ld c, $0d
    inc b
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    ld [de], a
    dec e
    nop
    ld [de], a
    ld a, [de]
    inc de
    ld d, $0e
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    dec e
    ld [bc], a

jr_001_6fb1:
    nop
    ld de, $0b04
    inc b
    ld [de], a
    ld [de], a
    dec bc

jr_001_6fb9:
    jr @+$1f

    inc bc
    inc d
    inc c
    rrca
    ld a, [de]
    nop
    ld a, [de]
    inc de
    rlca
    ld [$0311], sp
    ld a, [de]
    inc c
    nop
    dec c
    dec e
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    ld a, [de]
    ld c, $05
    dec e
    nop
    ld a, [de]
    dec c
    inc b
    nop
    ld de, $1801
    ld a, [de]
    ld [bc], a
    nop
    ld de, $2020
    jr nz, jr_001_7041

    ld e, a
    ld a, $b6
    ret z

    rra
    ld a, $b6
    ret z

    rra
    ld b, c
    ld d, h
    adc d
    push bc
    rra
    ld a, $b6
    ret z

    ld [de], a
    inc h
    ccf
    ld a, [hl-]
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    ld [de], a
    inc h
    ccf
    sub b
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    ld [de], a
    inc h
    ccf
    adc l
    push bc
    ld a, [de]
    rra
    ld a, $b6
    ret z

    ld [de], a
    inc h
    ccf
    adc h
    push bc
    ld a, [de]
    rra
    ld d, e
    ld d, b
    ld bc, $0151
    inc a
    ld [$0550], a
    inc a
    db $eb
    ld d, b
    ld a, [bc]
    inc a
    db $ec
    ld d, d
    rra
    ld d, e
    ld d, b
    ld [bc], a
    ccf
    ld e, l
    ret z

    ld d, b
    dec b
    ld a, $5e
    ret z

    ld d, b

jr_001_7041:
    ld a, [bc]
    ld a, $5f
    ret z

    ld d, d
    rra
    ccf
    ld [hl], l
    ret z

    ld a, [de]
    rra
    ld d, e
    ld d, b
    ld a, [bc]
    ld d, c
    dec b
    ccf
    jp Jump_000_1ac5


    ld d, d
    rra
    ccf
    adc h
    push bc
    jr nz, @+$1c

    rra
    rlca
    ld c, $16
    ld a, [de]
    inc c
    nop
    dec c
    jr @+$1c

    ld [bc], a
    rlca
    ld [$120f], sp
    dec e
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    jr jr_001_7081

    inc d
    ld a, [de]
    ld bc, $1304
    jr z, @+$21

    jr @+$10

    inc d
    ld a, [de]
    ld bc, $1304

jr_001_7081:
    ld a, [de]
    ccf
    adc h
    push bc
    ld a, [de]
    ld [bc], a
    rlca
    ld [$120f], sp
    jr nz, jr_001_70ac

    inc bc
    ld de, $1600
    ld a, [de]
    nop
    dec c
    ld c, $13
    rlca
    inc b
    ld de, $021a
    nop
    ld de, $2803
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    jr jr_001_70ab

    ld [de], a
    ld a, [de]
    inc l
    ld a, [de]

jr_001_70ab:
    dec c

jr_001_70ac:
    ld c, $1f
    inc de
    ld de, $1a18
    ld c, $0d
    ld [bc], a
    inc b
    ld a, [de]
    inc c
    ld c, $11
    inc b
    jr z, jr_001_70da

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    jr jr_001_70c8

    ld [de], a
    ld a, [de]
    inc l
    ld a, [de]

jr_001_70c8:
    dec c
    ld c, $1f
    rrca
    dec bc
    inc b
    nop
    ld [de], a
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    nop
    ld b, $00

jr_001_70da:
    ld [$200d], sp
    rra
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    rra
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    daa
    rra
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    daa
    rra
    ld bc, $1214
    inc de
    jr nz, jr_001_712e

    jr nz, @+$21

    ld bc, $1214
    inc de
    jr nz, @+$22

    jr nz, jr_001_7137

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld de, $1600
    jr nz, jr_001_7145

    jr nz, jr_001_7146

    ld [$161a], sp
    ld [$200d], sp
    rra

jr_001_712e:
    jr jr_001_713e

    inc d
    ld a, [de]
    ld d, $08
    dec c
    jr nz, jr_001_7156

jr_001_7137:
    ld [$0b2a], sp
    dec bc
    ld a, [de]
    ld [de], a
    rlca

jr_001_713e:
    inc d
    dec b
    dec b
    dec bc
    inc b
    ld a, [de]
    inc de

jr_001_7145:
    rlca

jr_001_7146:
    inc b
    dec e
    ld [bc], a
    nop
    ld de, $1203
    jr nz, jr_001_716e

    ld b, $04
    inc de
    ld a, [de]
    dec bc
    ld c, $12

jr_001_7156:
    inc de
    daa
    dec e
    jr jr_001_7169

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop

jr_001_7169:
    dec c
    jr jr_001_7189

    ld [bc], a
    rlca

jr_001_716e:
    ld [$120f], sp
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    daa
    rra
    inc bc
    inc b
    nop
    dec bc
    inc b
    ld de, $181f
    ld c, $14
    rra
    ld [bc], a
    rlca
    ld [$120f], sp
    ld a, [de]

jr_001_7189:
    dec bc
    inc b
    dec b
    inc de
    rra
    ccf
    adc h
    push bc
    ld a, [de]
    rra
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    rra
    ld [bc], a
    rlca
    ld [$120f], sp
    inc h
    rra
    ld h, [hl]
    ld l, [hl]
    ld l, d
    ld l, [hl]
    ld [hl], e
    ld l, [hl]
    ld a, e
    ld l, [hl]
    add h
    ld l, [hl]
    adc l
    ld l, [hl]
    or c
    ld l, [hl]
    di
    ld l, [hl]
    sub [hl]
    ld l, [hl]
    sbc a
    ld l, [hl]
    xor b
    ld l, [hl]
    ld h, a
    ld l, a
    rst RST_28
    ld l, a
    rst RST_28
    ld l, a
    rst RST_28
    ld l, a
    rst RST_28
    ld l, a
    rst RST_28
    ld l, a
    di
    ld l, a
    rst RST_30
    ld l, a
    db $fc
    ld l, a
    ld b, $70
    db $10
    ld [hl], b
    ld a, [de]
    ld [hl], b
    inc h
    ld [hl], b
    dec [hl]
    ld [hl], b
    ld b, a
    ld [hl], b
    ld c, h
    ld [hl], b
    ld d, a
    ld [hl], b
    ld e, l
    ld [hl], b
    ld a, d
    ld [hl], b
    adc l
    ld [hl], b
    xor [hl]
    ld [hl], b
    bit 6, b
    sbc $70
    ldh a, [c]
    ld [hl], b
    db $fd
    ld [hl], b
    ld [$1071], sp
    ld [hl], c
    jr jr_001_72bd

    daa
    ld [hl], c
    ld l, $71
    scf
    ld [hl], c
    ld c, a
    ld [hl], c
    ld c, a
    ld [hl], c
    ld a, b
    ld [hl], c
    ld a, a
    ld [hl], c
    add e
    ld [hl], c
    adc [hl]
    ld [hl], c
    sub e
    ld [hl], c
    rst RST_30
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_72bd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
