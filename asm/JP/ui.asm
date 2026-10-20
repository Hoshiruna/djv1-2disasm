; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
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
INCLUDE "list_layout.asm"
INCLUDE "scene_mask.asm"
INCLUDE "c1_target.asm"
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
INCLUDE "c1_room_fx.asm"
INCLUDE "c1_scene.asm"
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
INCLUDE "c1_after_fx.asm"
INCLUDE "text_ui.asm"
INCLUDE "text_ui_clear.asm"
INCLUDE "list_labels.asm"
INCLUDE "list_text_tbl.asm"

; Original zero-filled bank tail.
Bank1Pad:
    ds $0df2, $00

; End of the original bank.
