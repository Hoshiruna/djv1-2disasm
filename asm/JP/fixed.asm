; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp DispatchTable
Call_000_0003:
    db $00
Call_000_0004:
Jump_000_0004:
    db $00, $00, $00, $00
RST_08::
    db $00, $00
Jump_000_000a:
    db $00
Call_000_000b:
    db $00
Jump_000_000c:
    db $00, $00, $00
Call_000_000f:
Jump_000_000f:
    db $00
RST_10::
    db $00
Call_000_0011:
Jump_000_0011:
    db $00
Call_000_0012:
    db $00
Call_000_0013:
    db $00, $00
Jump_000_0015:
    db $00, $00, $00
RST_18::
    db $00
Jump_000_0019:
    db $00, $00
Call_000_001b:
    db $00
Jump_000_001c:
    db $00, $00, $00
Call_000_001f:
    db $00
RST_20::
    db $00
Call_000_0021:
    db $00
Call_000_0022:
Jump_000_0022:
    db $00, $00, $00
Jump_000_0025:
    db $00
Call_000_0026:
    db $00
Jump_000_0027:
    db $00
RST_28::
    db $00
Call_000_0029:
    db $00, $00, $00
Jump_000_002c:
    db $00
Jump_000_002d:
    db $00
Call_000_002e:
Jump_000_002e:
    db $00
Call_000_002f:
    db $00
RST_30::
    db $00
Call_000_0031:
    db $00
Jump_000_0032:
    db $00, $00, $00, $00, $00, $00
RST_38::
    db $00
Call_000_0039:
    db $00, $00, $00
Jump_000_003c:
    db $00
Jump_000_003d:
    db $00, $00, $00

VBlankInterrupt::
    jp VBlankIrq
    db $00, $00, $00, $00
Call_000_0047:
    db $00

LCDCInterrupt::
    reti
    db $00
Jump_000_004a:
    db $00, $00, $00, $00
Jump_000_004e:
    db $00, $00

TimerOverflowInterrupt::
    jp TimerIrq
Jump_000_0053:
    db $00
Jump_000_0054:
    db $00, $00, $00, $00

SerialTransferCompleteInterrupt::
    reti
Jump_000_0059:
    db $00
Call_000_005a:
    db $00, $00, $00, $00, $00, $00

JoypadTransitionInterrupt::
    reti
Jump_000_0061:
    db $00
Jump_000_0062:
    db $00, $00
Jump_000_0064:
    db $00, $00
Jump_000_0066:
    db $00, $00, $00, $00, $00
Call_000_006b:
Jump_000_006b:
    db $00
Jump_000_006c:
    db $00
Call_000_006d:
    db $00
Call_000_006e:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00
Call_000_0080:
    db $00, $00, $00
Call_000_0083:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00
Call_000_008c:
Jump_000_008c:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Jump_000_0096:
    db $00, $00
Call_000_0098:
    db $00, $00
Jump_000_009a:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00
Call_000_00ab:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Jump_000_00b7:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00
Call_000_00ca:
    db $00, $00
Call_000_00cc:
    db $00, $00, $00
Call_000_00cf:
    db $00, $00, $00, $00, $00, $00
Call_000_00d5:
    db $00, $00, $00
Call_000_00d8:
    db $00, $00, $00, $00
Jump_000_00dc:
    db $00, $00, $00, $00
Call_000_00e0:
Jump_000_00e0:
    db $00
Jump_000_00e1:
    db $00, $00, $00
Call_000_00e4:
    db $00, $00, $00, $00, $00
Call_000_00e9:
    db $00, $00, $00, $00, $00, $00
Call_000_00ef:
    db $00, $00, $00
Call_000_00f2:
    db $00, $00, $00, $00
Jump_000_00f6:
    db $00
Jump_000_00f7:
    db $00
Call_000_00f8:
    db $00
Call_000_00f9:
    db $00, $00
Jump_000_00fb:
    db $00
Call_000_00fc:
    db $00
Jump_000_00fd:
    db $00
Call_000_00fe:
    db $00
Call_000_00ff:
Jump_000_00ff:
    db $00

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
    db "ADTJ"

HeaderCGBFlag::
    db $c0

HeaderNewLicenseeCode::
    db $32, $38

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $86

HeaderGlobalChecksum::
    db $8c, $ac
INCLUDE "boot.asm"
INCLUDE "vblank.asm"
INCLUDE "video_wait.asm"
INCLUDE "map_tiles.asm"
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
INCLUDE "card_gfx.asm"
INCLUDE "boot_gfx.asm"
INCLUDE "save_gfx.asm"
INCLUDE "ui_extra_gfx.asm"
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
INCLUDE "msg_returns.asm"
INCLUDE "text_rows.asm"
INCLUDE "text_label.asm"
INCLUDE "text_loop.asm"
INCLUDE "text_exit.asm"
INCLUDE "text_end.asm"
INCLUDE "text_ctrl.asm"
INCLUDE "text_modes.asm"
INCLUDE "text_flags.asm"
INCLUDE "text_pos.asm"
INCLUDE "text_ptr.asm"
INCLUDE "text_name.asm"
INCLUDE "text_num16.asm"
INCLUDE "text_page.asm"
INCLUDE "text_number.asm"
INCLUDE "text_value.asm"
INCLUDE "text_init.asm"
INCLUDE "text_glyph.asm"
INCLUDE "text_line.asm"
INCLUDE "text_map.asm"
INCLUDE "text_buffer.asm"
INCLUDE "text_wait.asm"
INCLUDE "text_window.asm"
INCLUDE "text_ascii.asm"
INCLUDE "text_byte.asm"
INCLUDE "room_item.asm"
INCLUDE "cursor_call.asm"
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
INCLUDE "state_result.asm"
INCLUDE "script_flow.asm"
INCLUDE "script_flags.asm"
INCLUDE "item_bits.asm"
INCLUDE "item_state.asm"
INCLUDE "op_attr.asm"
INCLUDE "room.asm"
INCLUDE "room_direct.asm"
INCLUDE "state_view.asm"
INCLUDE "script_room.asm"
INCLUDE "script_item.asm"
INCLUDE "c2_panel_call.asm"
INCLUDE "list_add.asm"
INCLUDE "list_group.asm"
INCLUDE "change_keep.asm"
INCLUDE "change_add_call.asm"
INCLUDE "change_drop.asm"
INCLUDE "obj_bits.asm"
INCLUDE "objs_refresh.asm"
INCLUDE "list_quick.asm"
INCLUDE "alt_target.asm"
INCLUDE "alt_room_obj.asm"
INCLUDE "script_put.asm"
INCLUDE "c1_group_write.asm"
INCLUDE "c1_coins.asm"
INCLUDE "list_room.asm"
INCLUDE "sel_name_test.asm"
INCLUDE "room_arg.asm"
INCLUDE "pick_effect.asm"
INCLUDE "text_hold.asm"
INCLUDE "text_names.asm"
INCLUDE "script_list.asm"
INCLUDE "obj_wait.asm"
INCLUDE "script_values.asm"
INCLUDE "script_match.asm"
INCLUDE "c2_quarters.asm"
INCLUDE "c1_coin_test.asm"
INCLUDE "c1_held_item.asm"
INCLUDE "c1_bullets.asm"
INCLUDE "c1_ammo.asm"
INCLUDE "c2_bullet_call.asm"
INCLUDE "c2_counter_call.asm"
INCLUDE "script_random.asm"
INCLUDE "list_remove.asm"
INCLUDE "action_exit.asm"
INCLUDE "scene_effect_call.asm"
INCLUDE "script_audio.asm"
INCLUDE "c1_coin_find.asm"
INCLUDE "c1_cash.asm"
INCLUDE "c1_room_event_call.asm"
INCLUDE "c1_coin_two.asm"
INCLUDE "bj_call.asm"
INCLUDE "c2_train_calls.asm"
INCLUDE "c2_cash_call.asm"
INCLUDE "chip_calls.asm"
INCLUDE "c2_desert_call.asm"
INCLUDE "c2_shop_call.asm"
INCLUDE "change_bank.asm"
INCLUDE "c2_cells.asm"
INCLUDE "c2_view_reload.asm"
INCLUDE "map_step_calls.asm"
INCLUDE "audio_repeat.asm"
INCLUDE "list_refresh.asm"
INCLUDE "c2_funds.asm"
INCLUDE "obj_blink.asm"
INCLUDE "c2_item_call.asm"
INCLUDE "c2_choice_call.asm"
INCLUDE "list_clear.asm"
INCLUDE "pending.asm"
INCLUDE "list_work.asm"
INCLUDE "list_end.asm"
INCLUDE "list_pos.asm"
INCLUDE "list_end_pos.asm"
INCLUDE "change_list_call.asm"
INCLUDE "list_drop.asm"
INCLUDE "list_find.asm"
INCLUDE "list_scroll.asm"
INCLUDE "list_head_drop.asm"
INCLUDE "prop1_test.asm"
INCLUDE "prop1_bits.asm"
INCLUDE "prop4_bits.asm"
INCLUDE "group_header.asm"
INCLUDE "list_item.asm"
INCLUDE "case_cue.asm"

ClearMasks:
    db $fe, $fd, $fb, $f7, $ef, $df, $bf, $7f
INCLUDE "save_call.asm"
INCLUDE "state_call.asm"
INCLUDE "action_calls.asm"
INCLUDE "view_call.asm"
INCLUDE "save_prompt_call.asm"
INCLUDE "list_view_calls.asm"
INCLUDE "effect_obj_call.asm"
INCLUDE "room_target_call.asm"
INCLUDE "obj_render_call.asm"
INCLUDE "room_cue_call.asm"
INCLUDE "c2_events_call.asm"
INCLUDE "map_step_bank.asm"
INCLUDE "item_prep_call.asm"
INCLUDE "map_pulse_call.asm"
INCLUDE "map_pulse_bank.asm"
INCLUDE "scroll_call.asm"
INCLUDE "video_call.asm"
INCLUDE "c1_after_fx_call.asm"
INCLUDE "credit_bg.asm"
INCLUDE "c2_put_refresh_call.asm"
INCLUDE "list_mark_call.asm"
INCLUDE "change_flush_call.asm"
INCLUDE "action_c2.asm"
INCLUDE "c2_types.asm"
INCLUDE "c2_ops.asm"
    db $00

FixedBankPad:
jr_000_3c12:
    db $00, $00
jr_000_3c14:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Jump_000_3c20:
    db $00, $00, $00, $00
Call_000_3c24:
    db $00, $00, $00, $00, $00, $00
jr_000_3c2a:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00
Call_000_3c60:
    db $00
Jump_000_3c61:
    db $00, $00, $00, $00, $00, $00
Jump_000_3c67:
    db $00, $00, $00, $00
Call_000_3c6b:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Jump_000_3c99:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Call_000_3ca4:
Jump_000_3ca4:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
Call_000_3cbc:
    db $00, $00, $00, $00
Call_000_3cc0:
Jump_000_3cc0:
    db $00, $00, $00
Jump_000_3cc3:
    db $00, $00, $00, $00
Jump_000_3cc7:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00
Jump_000_3cda:
    db $00
Jump_000_3cdb:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00
Call_000_3cf1:
Jump_000_3cf1:
    db $00, $00, $00, $00, $00, $00
Jump_000_3cf7:
    db $00, $00, $00, $00, $00
Jump_000_3cfc:
    db $00
Jump_000_3cfd:
    db $00, $00
Jump_000_3cff:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00
Call_000_3d18:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Jump_000_3d66:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00
Call_000_3def:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Call_000_3dff:
Jump_000_3dff:
    db $00
Jump_000_3e00:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00
Jump_000_3e37:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00
Call_000_3e6a:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00
Jump_000_3eff:
    db $00, $00, $00, $00
Call_000_3f03:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Jump_000_3f0f:
    db $00, $00, $00, $00, $00
Call_000_3f14:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Call_000_3f21:
    db $00, $00
Jump_000_3f23:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Jump_000_3f30:
    db $00, $00, $00, $00, $00
Jump_000_3f35:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Call_000_3f40:
    db $00
Call_000_3f41:
Jump_000_3f41:
    db $00, $00, $00, $00, $00, $00
Jump_000_3f47:
    db $00, $00, $00, $00, $00, $00, $00, $00
Call_000_3f4f:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00
Call_000_3f74:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Call_000_3fbf:
    db $00
Call_000_3fc0:
    db $00, $00, $00, $00, $00, $00, $00
Jump_000_3fc7:
    db $00, $00, $00, $00
Jump_000_3fcb:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00
Call_000_3fef:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
Call_000_3fff:
Jump_000_3fff:
    db $00

; End of the original fixed bank.
