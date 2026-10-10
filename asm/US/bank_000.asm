; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp DispatchTable


Call_000_0003:
    nop

Call_000_0004:
Jump_000_0004:
    nop
    nop
    nop
    nop

RST_08::
    nop
    nop

Jump_000_000a:
    nop

Call_000_000b:
    nop

Jump_000_000c:
    nop
    nop
    nop

Call_000_000f:
Jump_000_000f:
    nop

RST_10::
    nop

Call_000_0011:
Jump_000_0011:
    nop

Call_000_0012:
    nop

Call_000_0013:
    nop
    nop

Jump_000_0015:
    nop
    nop
    nop

RST_18::
    nop

Jump_000_0019:
    nop
    nop

Call_000_001b:
    nop

Jump_000_001c:
    nop
    nop
    nop

Call_000_001f:
    nop

RST_20::
    nop

Call_000_0021:
    nop

Call_000_0022:
Jump_000_0022:
    nop
    nop
    nop

Jump_000_0025:
    nop

Call_000_0026:
    nop

Jump_000_0027:
    nop

RST_28::
    nop

Call_000_0029:
    nop
    nop
    nop

Jump_000_002c:
    nop

Jump_000_002d:
    nop

Call_000_002e:
Jump_000_002e:
    nop

Call_000_002f:
    nop

RST_30::
    nop

Call_000_0031:
    nop

Jump_000_0032:
    nop
    nop
    nop
    nop
    nop
    nop

RST_38::
    nop

Call_000_0039:
    nop
    nop
    nop

Jump_000_003c:
    nop

Jump_000_003d:
    nop
    nop
    nop

VBlankInterrupt::
    jp VBlankIrq


    nop
    nop
    nop
    nop

Call_000_0047:
    nop

LCDCInterrupt::
    reti


    nop
    nop
    nop

Call_000_004c:
    nop
    nop

Jump_000_004e:
    nop
    nop

TimerOverflowInterrupt::
    jp TimerIrq


Jump_000_0053:
    nop

Jump_000_0054:
    nop
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    reti


    nop
    nop

Call_000_005b:
    nop
    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    reti


Jump_000_0061:
    nop

Jump_000_0062:
    nop

Call_000_0063:
    nop

Jump_000_0064:
    nop
    nop

Jump_000_0066:
    nop
    nop

Jump_000_0068:
    nop
    nop

Jump_000_006a:
    nop
    nop

Jump_000_006c:
    nop

Call_000_006d:
    nop

Jump_000_006e:
    nop
    nop
    nop
    nop
    nop

Call_000_0073:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_0080:
    nop
    nop
    nop

Call_000_0083:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_008c:
Jump_000_008c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_0096:
    nop
    nop

Call_000_0098:
    nop
    nop

Jump_000_009a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00b7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00ca:
    nop
    nop

Call_000_00cc:
    nop
    nop
    nop

Call_000_00cf:
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00d5:
    nop
    nop
    nop

Call_000_00d8:
    nop
    nop
    nop
    nop

Jump_000_00dc:
    nop
    nop
    nop
    nop

Call_000_00e0:
Jump_000_00e0:
    nop

Jump_000_00e1:
    nop
    nop
    nop

Call_000_00e4:
    nop
    nop
    nop
    nop
    nop

Call_000_00e9:
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00ef:
    nop
    nop
    nop

Call_000_00f2:
    nop
    nop
    nop
    nop

Jump_000_00f6:
    nop

Jump_000_00f7:
    nop

Call_000_00f8:
    nop

Call_000_00f9:
    nop
    nop

Jump_000_00fb:
    nop

Call_000_00fc:
    nop

Jump_000_00fd:
    nop

Call_000_00fe:
    nop

Call_000_00ff:
Jump_000_00ff:
    nop

Boot::
    nop

Call_000_0101:
Jump_000_0101:
    jp BootGame


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "DEJAVU", $00, $00, $00, $00, $00

HeaderManufacturerCode::
    db "ADTE"

HeaderCGBFlag::
    db $c0

HeaderNewLicenseeCode::
    db $35, $50

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $6f

HeaderGlobalChecksum::
    db $4d, $06
INCLUDE "boot.asm"
INCLUDE "vblank.asm"
INCLUDE "video_wait.asm"
INCLUDE "map_tiles.asm"


; Read a little-endian destination from HL, then enter QueueMapRect.
QueueMapSpec:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
INCLUDE "map_queue.asm"
INCLUDE "map_fill.asm"
INCLUDE "video_req.asm"
INCLUDE "lcd.asm"
INCLUDE "joy_call.asm"
INCLUDE "core.asm"
INCLUDE "oam.asm"
INCLUDE "gfx_read.asm"
INCLUDE "gfx_decode.asm"
INCLUDE "map_read.asm"
INCLUDE "gfx_lz.asm"
INCLUDE "timer_call.asm"
INCLUDE "frame.asm"
INCLUDE "rom_bank.asm"
INCLUDE "audio_call.asm"
INCLUDE "main.asm"

    ld a, $01

Call_000_09c3:
    ldh [rVBK], a
    ld a, $06
    call ReadUiGfx
    ld a, $07
    call ReadUiGfx
    ld a, $00
    ldh [rVBK], a
    ret


Call_000_09d4:
    ld a, $02
    call ReadUiGfx
    ld a, $03
    call ReadUiGfx
    ret


Call_000_09df:
    ld a, $04
    call ReadUiGfx
    ld a, $05
    call ReadUiGfx
    ret


Call_000_09ea:
    ld a, $00

Call_000_09ec:
    call ReadUiGfx
    ld a, $01
    call ReadUiGfx
    ret


Call_000_09f5:
    ld a, $0a
    call ReadUiGfx
    ld a, $05
    call ReadUiGfx

Call_000_09ff:
    ret


Call_000_0a00:
Jump_000_0a00:
    ld a, $08

Call_000_0a02:
Jump_000_0a02:
    call ReadUiGfx
    ld a, $09

Call_000_0a07:
    call ReadUiGfx
    ret
INCLUDE "gfx_base.asm"
INCLUDE "scene_gfx.asm"
INCLUDE "rng_call.asm"
INCLUDE "scene.asm"
INCLUDE "scene_draw.asm"
INCLUDE "scene_pal_clear.asm"
INCLUDE "scene_copy.asm"
INCLUDE "cursor_hit.asm"
INCLUDE "obj_list.asm"
INCLUDE "text_select.asm"
INCLUDE "name_form.asm"


Call_000_10c3:
Jump_000_10c3:
    ret


Call_000_10c4:
    ret


Call_000_10c5:
    ret


    ret
INCLUDE "text_rows.asm"
INCLUDE "text_label.asm"
INCLUDE "text_loop.asm"
INCLUDE "text_ctrl.asm"
INCLUDE "text_exit.asm"
INCLUDE "text_end.asm"

; Write text mode two.
SetTextMode2:


Call_000_11df:
    ld a, $02
    ld [$c88f], a
    ret

; Write text mode one.
SetTextMode1:


Call_000_11e5:
    ld a, $01
    ld [wTextMode], a
    ret
INCLUDE "text_name.asm"
INCLUDE "text_num16.asm"
INCLUDE "text_page.asm"
INCLUDE "text_number.asm"
INCLUDE "text_flags.asm"
INCLUDE "text_pos.asm"
INCLUDE "text_ptr.asm"
INCLUDE "text_value.asm"
INCLUDE "text_init.asm"
INCLUDE "text_glyph.asm"
INCLUDE "text_line.asm"
INCLUDE "text_map.asm"
INCLUDE "text_buffer.asm"
INCLUDE "text_wait.asm"
INCLUDE "text_byte.asm"
INCLUDE "text_window.asm"
INCLUDE "room_item.asm"

; Preserve HL, BC, and DE while calling the bank-1 cursor with the original A.
DrawRoomCursor:
    push hl
    push bc
    push de
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawCursor
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret
INCLUDE "obj_draw.asm"
INCLUDE "scene_pal.asm"
INCLUDE "ui_pal.asm"
INCLUDE "ui_res.asm"
INCLUDE "action_run.asm"
INCLUDE "script_arg.asm"
INCLUDE "script_return.asm"
INCLUDE "audio_test_call.asm"
INCLUDE "script_text.asm"
INCLUDE "script_branch.asm"
; Set result bit 0; retain the other result bits.
SetResult:


Call_000_1b4e:
Jump_000_1b4e:
    ld a, [wStateResult]
    set 0, a
    ld [wStateResult], a
    ret
; Clear result bit 0; retain the other result bits.
ClearResult:


Call_000_1b57:
Jump_000_1b57:
    ld a, [wStateResult]
    res 0, a
    ld [wStateResult], a
    ret
INCLUDE "script_flow.asm"
INCLUDE "script_flags.asm"
INCLUDE "item_bits.asm"

; Test the second item-bitmap bit using the absolute first-slot item value.
GetItem2First:


    ld a, [$c8c6]
    jr jr_000_1da4

; Read a script item ID, then test its second item-bitmap bit.
ReadItem2Arg:

    call ReadArg
INCLUDE "item_state.asm"
INCLUDE "op_attr.asm"
INCLUDE "room.asm"
INCLUDE "room_direct.asm"
INCLUDE "state_view.asm"
INCLUDE "script_room.asm"
INCLUDE "script_item.asm"

; Fill the room panel, draw Case II marks, and submit the map queue.
DrawC2Panel:


Call_000_226d:
    push af
    ld a, $01
    call PushRomBank

Call_000_2273:
    pop af
    call FillRoomPanel
    call PopRomBank
    push af
    ld a, $03
    call PushRomBank
    pop af
    call DrawC2Marks
    call PopRomBank
    call SubmitMapQueue
    ret
INCLUDE "list_add.asm"
INCLUDE "list_group.asm"
INCLUDE "change_keep.asm"

; Read two script operands, then append and apply their type/value record.
ScriptAddChange:


    call ReadArgs2

; Append the current operands through bank 3; preserve the previous ROM bank.
AddChange:

Call_000_2428:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call AppendChange
    call PopRomBank
    ret
INCLUDE "change_drop.asm"


; Read an object ID from the script, then enter ReadObjVisible.
ScriptObjVisible:
    call ReadArg
INCLUDE "obj_bits.asm"
; Reset object scrolling, rebuild the room list, render it and submit OAM.
RefreshObjs:


Call_000_2666:
    call ResetObjScroll
    call BuildObjList
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    call SubmitOam
    ret
INCLUDE "list_quick.asm"
INCLUDE "alt_target.asm"
INCLUDE "alt_room_obj.asm"
INCLUDE "script_put.asm"
INCLUDE "c1_group_write.asm"
INCLUDE "c1_list_count.asm"
INCLUDE "list_room.asm"
INCLUDE "sel_name_test.asm"
INCLUDE "room_arg.asm"
INCLUDE "pick_effect.asm"
INCLUDE "text_hold.asm"
INCLUDE "text_names.asm"
INCLUDE "script_list.asm"
INCLUDE "obj_wait.asm"


    call ReadArg
    ld [$c587], a
    ret


    call ReadArgs2
    ld [$c587], a
    ld a, [$c8a8]
    ld [$c588], a
    ret


Call_000_2b02:
    call BuildObjList
    ret
INCLUDE "script_match.asm"
INCLUDE "c2_count_test.asm"
INCLUDE "c1_count_test.asm"
INCLUDE "c1_held_item.asm"
INCLUDE "c1_bullets.asm"
INCLUDE "c1_count_slots.asm"
INCLUDE "c2_bullet_call.asm"
INCLUDE "c2_counter_call.asm"
INCLUDE "script_random.asm"
INCLUDE "list_remove.asm"
INCLUDE "action_exit.asm"
INCLUDE "scene_effect_call.asm"
INCLUDE "script_audio.asm"
INCLUDE "c1_count_find.asm"
INCLUDE "c1_count_clear.asm"


    push af
    ld a, $02
    call PushRomBank
    pop af
    call $6618
    call PopRomBank
    ret
INCLUDE "c1_count_two.asm"


    push af
    ld a, $29
    call PushRomBank
    pop af
    call $693b
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $627a
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $6256
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $6820
    call PopRomBank
    ret
INCLUDE "c2_word_call.asm"


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $4d8c
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $4e54
    call PopRomBank
    ret


    push af

Jump_000_2ff5:
    ld a, $03
    call PushRomBank
    pop af
    call $5313
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $53d0
    call PopRomBank
    ret

; Call ApplyChange in bank 3 and restore the previous ROM bank.
ApplyChangeBank:


Call_000_3010:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call ApplyChange
    call PopRomBank
    ret

; Call UndoC2Change in bank 3 and restore the previous ROM bank.
UndoChangeBank:


Call_000_301e:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call UndoC2Change
    call PopRomBank
    ret
INCLUDE "c2_count_use.asm"
INCLUDE "c2_view_reload.asm"


Call_000_3060:
    push af

Call_000_3061:
    ld a, $29
    call PushRomBank
    pop af
    call $68f8
    call PopRomBank
    ret


    push af
    ld a, $29
    call PushRomBank
    pop af
    call $6886
    call PopRomBank
    ret
INCLUDE "audio_repeat.asm"
INCLUDE "list_refresh.asm"
INCLUDE "c2_word_gate.asm"
INCLUDE "obj_blink.asm"
INCLUDE "c2_item_call.asm"


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5539
    call PopRomBank
    ret
INCLUDE "list_clear.asm"
INCLUDE "pending.asm"
INCLUDE "list_work.asm"
INCLUDE "list_end.asm"

; Store mode * row stride + row in the scratch index; US stride is 7, JP stride is 8.
GetListPos:


Call_000_32aa:
    ld a, [wChangeMode]
    ld c, a
    add a
    add a
    add a
    sub c
    ld c, a
    ld a, [wListRow]
    add c
    ld c, a
    ld b, $00
    ld a, c
    ldh [hChangePos], a
    ld a, b
    ldh [hChangePos+1], a
    ret
INCLUDE "list_end_pos.asm"

; Call the bank 5 list reader while preserving the scratch index and ROM bank.
PrepChangeList:


Call_000_32d8:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a

Jump_000_32df:
    pop af
    push hl
    push af
    ld a, $05
    call PushRomBank
    pop af
    call ReadChangeList
    call PopRomBank
    pop hl
    push af
    ld a, l

Call_000_32f1:
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
INCLUDE "list_drop.asm"
INCLUDE "list_find.asm"
INCLUDE "list_scroll.asm"
INCLUDE "list_head_drop.asm"
INCLUDE "prop1_test.asm"
INCLUDE "prop1_bits.asm"
INCLUDE "prop4_bits.asm"
INCLUDE "group_header.asm"
INCLUDE "list_item.asm"

; Play audio $23 for Case I or $12 for Case II.
PlayCaseCue:


Call_000_36ee:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_36f9

    ld a, $23
    jr jr_000_36fb

jr_000_36f9:
    ld a, $12

jr_000_36fb:
    call PlayAudio
    ret


Call_000_36ff:
Jump_000_36ff:
    cp $fd
    ei
    rst RST_30
    rst RST_28
    rst RST_18
    cp a
    ld a, a
INCLUDE "mono.asm"
INCLUDE "save_call.asm"

; Call ScanSaves in bank 1 and restore the previous ROM bank.
ScanGames:


Call_000_374e:
Jump_000_374e:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ScanSaves
    call PopRomBank
    ret
INCLUDE "state_call.asm"

; Call CheckC1Rooms in bank 2 and restore the previous ROM bank.
CheckRooms:


    push af
    ld a, $02
    call PushRomBank
    pop af
    call CheckC1Rooms
    call PopRomBank
    ret

; Read one script argument from bank 6 and restore the previous ROM bank.
ReadC1Arg:


Call_000_3786:
    ld a, $06
    call PushRomBank
    call ReadArg
    call PopRomBank
    ret

; Call InitSelAction in bank 2 and restore the previous ROM bank.
InitAction:


Call_000_3792:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call InitSelAction
    call PopRomBank
    ret
INCLUDE "view_call.asm"


Call_000_37d8:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $78f5
    call PopRomBank
    ret

; Call DrawC1Marks in bank 1 and restore the previous ROM bank.
RefreshC1Marks:


    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawC1Marks
    call PopRomBank
    ret

; Call the list UI redraw in bank 1, then restore the previous ROM bank.
RefreshLists:


Call_000_37f4:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawListUI
    call PopRomBank

Jump_000_3801:
    ret
INCLUDE "effect_obj_call.asm"


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_381b

    call $551d
    ret


jr_000_381b:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $60a2
    call PopRomBank
    ret
INCLUDE "obj_render_call.asm"
INCLUDE "room_cue_call.asm"
INCLUDE "c2_events_call.asm"


Call_000_3853:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call $6886
    call PopRomBank
    ret


Call_000_3861:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call $689d
    call PopRomBank
    ret
INCLUDE "item_prep_call.asm"


Call_000_387d:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call $68e9
    call PopRomBank

Jump_000_388a:
    ret


    push af
    ld a, $00
    call PushRomBank
    pop af
    call Call_000_3060
    call PopRomBank
    ret
; Call the bank 1 scroll reset while restoring the previous ROM bank.
ResetObjScroll:


Call_000_3899:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ResetScroll
    call PopRomBank
    ret
INCLUDE "video_call.asm"
INCLUDE "c1_after_fx_call.asm"
INCLUDE "credit_bg.asm"
INCLUDE "c2_put_refresh_call.asm"
INCLUDE "list_mark_call.asm"
INCLUDE "change_flush_call.asm"
INCLUDE "action_c2.asm"
INCLUDE "c2_types.asm"
INCLUDE "c2_ops.asm"
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3af2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3b03:
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3b09:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3b13:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3b21:
    nop
    nop
    nop
    nop

Jump_000_3b25:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3b2c:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3b32:
    nop

Jump_000_3b33:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3b3b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3b4b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3b80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3b9a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3ba1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3bb2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3bbf:
    nop
    nop
    nop
    nop
    nop

Jump_000_3bc4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3bd2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3c00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3c20:
    nop
    nop
    nop
    nop

Call_000_3c24:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3c60:
    nop

Jump_000_3c61:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3c67:
    nop
    nop
    nop
    nop

Call_000_3c6b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3c99:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3cbc:
    nop
    nop
    nop
    nop

Call_000_3cc0:
Jump_000_3cc0:
    nop
    nop
    nop

Jump_000_3cc3:
    nop
    nop
    nop
    nop

Jump_000_3cc7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3cda:
    nop

Jump_000_3cdb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3cf1:
Jump_000_3cf1:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3cf7:
    nop
    nop
    nop
    nop
    nop

Jump_000_3cfc:
    nop

Jump_000_3cfd:
    nop
    nop

Jump_000_3cff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3d18:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3def:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3dff:
    nop

Jump_000_3e00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3e37:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3e6a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3eff:
    nop
    nop
    nop
    nop

Call_000_3f03:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3f0f:
    nop
    nop
    nop
    nop
    nop

Call_000_3f14:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3f21:
    nop
    nop

Jump_000_3f23:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3f30:
    nop
    nop
    nop
    nop
    nop

Jump_000_3f35:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3f40:
    nop

Call_000_3f41:
Jump_000_3f41:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3f47:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3f4f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3f74:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3fb2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3fbf:
    nop

Call_000_3fc0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3fc7:
    nop
    nop
    nop
    nop

Jump_000_3fcb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3fef:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3fff:
Jump_000_3fff:
    nop
