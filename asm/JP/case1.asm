; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

INCLUDE "sprite_refs.asm"
INCLUDE "c1_sprite_data.asm"
INCLUDE "c1_anim_data.asm"

SpriteSet2:
    dw C2SpriteDefs
    dw C2AnimPtrs
INCLUDE "c2_sprite_data.asm"
INCLUDE "c2_anim_data.asm"
INCLUDE "sprite.asm"
INCLUDE "anim.asm"
INCLUDE "obj_frame.asm"
INCLUDE "c1_items.asm"
INCLUDE "c1_slots.asm"
INCLUDE "slot_machine.asm"
INCLUDE "audio_test.asm"
INCLUDE "audio_test_data.asm"
INCLUDE "c1_pairs.asm"
INCLUDE "changes.asm"
INCLUDE "c1_room_event.asm"
INCLUDE "c1_room_handlers.asm"
INCLUDE "c1_room_evt_ids.asm"
INCLUDE "room_cue.asm"
INCLUDE "room_cue_tbl.asm"
INCLUDE "list_end_inc.asm"
INCLUDE "c1_refresh.asm"
INCLUDE "c1_put_check.asm"
INCLUDE "c1_put_finish.asm"
INCLUDE "c1_put_object.asm"
INCLUDE "c1_obj.asm"

C1ObjTile73:
    db $01, $01, $73

C1ObjTile70:
    db $01, $01, $70
INCLUDE "c1_action.asm"
INCLUDE "c1_fallback.asm"
INCLUDE "c1_rules.asm"
INCLUDE "c1_reply.asm"
INCLUDE "c1_effect.asm"
INCLUDE "c1_fx_core.asm"
INCLUDE "c1_effect_end.asm"
INCLUDE "c1_fx_end.asm"
INCLUDE "obj_add.asm"
INCLUDE "obj_pos_data.asm"
INCLUDE "effect_obj.asm"
INCLUDE "obj_render.asm"
INCLUDE "sel_action.asm"
INCLUDE "save_menu.asm"
INCLUDE "restore_prompt.asm"
INCLUDE "c2_event_clear.asm"
INCLUDE "c2_event_counters.asm"
INCLUDE "save_records.asm"
INCLUDE "text_refs.asm"
INCLUDE "rng.asm"

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
