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
; BEGIN MODULE boot.asm

; Clear WRAM/HRAM, save startup A, and enter bank-1 initialization only when A is $11.
BootGame:

Jump_000_0150:
    ld d, a

Call_000_0151:
    ld sp, $fffe
    call DisableLcd

Call_000_0157:
    ld hl, wShadowOam
    ld bc, $2000
    call ZeroBytes

Call_000_0160:
Jump_000_0160:
    ld sp, $cfff
    ld hl, $ff80
    ld bc, $0080
    call ZeroBytes
    ld a, d
    ldh [hBootByte], a
    cp BootColorStartupByte
    jp nz, MonoFallback

Call_000_0174:
    ld a, $c3
    ldh [hLcdc], a
    call InitBanks
    jp InitVideo

; Reload the saved startup byte and jump back to the original boot initialization.
SoftReset:


Jump_000_017e:
    ldh a, [hBootByte]
    jp BootGame

; Select ROM bank 9 and enter the original regional fallback display path.
MonoFallback:


Jump_000_0183:
    ld a, MonoFallbackRomBank
    call PushRomBank
    jp ShowMono
; END MODULE boot.asm
; BEGIN MODULE vblank.asm

; Save all registers, run bank-1 video and the frame service, restore ROM bank, clear the frame latch, then RETI.
VBlankIrq:


Jump_000_018b:
    push af

Call_000_018c:
    push bc
    push de
    push hl
    ld a, $01
    ld [rROMB0], a
    call VBlankVideo
    call TickAudio
    ldh a, [hRomBank]
    ld [rROMB0], a
    ld hl, wFrameFlags
    res 4, [hl]
    pop hl
    pop de
    pop bc
    pop af
    reti
; END MODULE vblank.asm
; BEGIN MODULE video_wait.asm

; Wait until all hVideoFlags bits are clear; preserve BC.
WaitVideo:


Call_000_01a9:
Jump_000_01a9:
    push bc

; Wait one frame while a video work flag remains set.
WaitVideoPoll:
jr_000_01aa:
    ldh a, [hVideoFlags]
    cp $00
    jr z, WaitVideoDone

    call WaitFrame
    jr WaitVideoPoll

; Restore BC after the video work flags clear.
WaitVideoDone:
jr_000_01b5:
    pop bc
    ret

; Set WRAM frame flag bit 4, HALT, then wait for its interrupt-side clear; preserve HL.
WaitFrame:


Call_000_01b7:
Jump_000_01b7:
    push hl
    ld hl, wFrameFlags
    set 4, [hl]
    halt
    nop

; Wait for the interrupt handler to clear frame flag bit four.
WaitFramePollFlag:
jr_000_01bf:
    bit 4, [hl]

Jump_000_01c1:
    jr nz, WaitFramePollFlag

Jump_000_01c3:
    pop hl
    ret

; Wait until hVideoFlags is zero, then disable interrupts.
WaitVideoDI:


; Wait until video work flags clear before disabling interrupts.
WaitVideoDIPoll:
jr_000_01c5:
    ldh a, [hVideoFlags]
    cp $00
    jr z, WaitVideoDisableInterrupts

    call WaitFrame

Jump_000_01ce:
    jr WaitVideoDIPoll

Jump_000_01d0:
; Disable interrupts after video work finishes.
WaitVideoDisableInterrupts:
jr_000_01d0:
    di
    ret


    ei
    ret
; END MODULE video_wait.asm
INCLUDE "map_tiles.asm"
INCLUDE "map_queue.asm"
INCLUDE "map_fill.asm"
; BEGIN MODULE video_req.asm


; Request the queued map writes and wait for the next video update.
SubmitMapQueue:
Call_000_03d3:
Jump_000_03d3:
    push hl
    ld hl, hVideoFlags
    set 6, [hl]
    pop hl
    call WaitFrame
    ret

; Set the map queue request bit without waiting for a frame.
RequestMapQueue:


    ldh a, [hVideoFlags]
    or $40
    ldh [hVideoFlags], a
    ret

; Clear video request bits 6, 5, 4, 2, 1 and zero the queue length; preserve HL.
ResetMapQueue:


    push hl

Jump_000_03e6:
    ld hl, hVideoFlags
    res 6, [hl]

Call_000_03eb:
    res 5, [hl]
    res 4, [hl]
    res 2, [hl]
    res 1, [hl]
    pop hl
    xor a
    ldh [hMapQueueLen], a
    ret

; Select hVideoFlags and set its OAM request bit; leave HL at the flags.
RequestOam:


Call_000_03f8:
    ld hl, hVideoFlags

; Set bit 7 at the supplied HL and return.
SetOamBit:

Call_000_03fb:
Jump_000_03fb:
    set 7, [hl]
    ret

; Request OAM, wait for a frame, then fall through to ClearOam.
SubmitOam:


Call_000_03fe:
    call RequestOam
    call WaitFrame
; Clear the 160-byte shadow OAM and reset its entry count.
ClearOam:

Call_000_0404:
    push hl
    push bc
    ld hl, wShadowOam

Call_000_0409:
    ld bc, $00a0
    call ZeroBytes

Jump_000_040f:
    ld a, $00

Call_000_0411:
    ldh [hOamCount], a
    pop bc
    pop hl
    ret

; Clear shadow OAM, request its transfer, and wait for a frame.
BlankOam:


Call_000_0416:
    call ClearOam
    call RequestOam
    call WaitFrame
    ret
; END MODULE video_req.asm
; BEGIN MODULE lcd.asm

; Mask VBlank IRQ, wait for LY=$91, clear LCDC bit 7, then restore IE.
DisableLcd:


Call_000_0420:
    ldh a, [rIE]
    ld [wIrqSave], a
    res 0, a
    ldh [rIE], a

; Wait for scanline $91 before clearing the LCD enable bit.
DisableLcdWaitLine:
jr_000_0429:
    ldh a, [rLY]
    cp $91
    jr nz, DisableLcdWaitLine

Call_000_042f:
    ldh a, [rLCDC]

Call_000_0431:
    and $7f
    ldh [rLCDC], a

Jump_000_0435:
    ld a, [wIrqSave]
    ldh [rIE], a
    ret

; Set LCDC window-enable bit 5; preserve HL.
ShowWindow:


Call_000_043b:
    push hl

Jump_000_043c:
    ld hl, rLCDC
    set 5, [hl]
    pop hl
    ret

; Clear LCDC window-enable bit 5; preserve HL.
HideWindow:


Call_000_0443:
    push hl
    ld hl, rLCDC

Call_000_0447:
    res 5, [hl]

Call_000_0449:
    pop hl
    ret

; Request palettes and write the saved hLcdc value to LCDC.
RestoreLcd:


Call_000_044b:
    ldh a, [hVideoFlags]
    or $01
    ldh [hVideoFlags], a
    ldh a, [hLcdc]
    ldh [rLCDC], a
    ret
; END MODULE lcd.asm
; BEGIN MODULE joy_call.asm

; Select bank 1, read joypad state, then restore the previous ROM bank.
PollJoy:


Call_000_0456:
    ld a, $01
    call PushRomBank

Call_000_045b:
    call ReadJoy
    jp PopRomBank
; END MODULE joy_call.asm
INCLUDE "core.asm"
INCLUDE "oam.asm"
INCLUDE "gfx_read.asm"
INCLUDE "gfx_decode.asm"
INCLUDE "map_read.asm"
INCLUDE "gfx_lz.asm"
; BEGIN MODULE timer_call.asm

; Set video request bit 4 and wait for VBlank to start the timer interrupt.
RequestTimer:


Call_000_0722:
    ld hl, hVideoFlags
    set 4, [hl]
    jp WaitFrame

; Enable VBlank, disable the timer interrupt and timer, and return the saved TIMA byte.
StopTimer:


Call_000_072a:
    ldh a, [rIE]
    or $01
    and $fb
    ldh [rIE], a
    ldh a, [rTIMA]

Call_000_0734:
    push af
    xor a
    ldh [rTAC], a
    pop af
    ret
; END MODULE timer_call.asm
; BEGIN MODULE frame.asm

; Save all registers, run the frame service, restore ROM bank, then RETI.
TimerIrq:


Jump_000_073a:
    push af
    push bc

Jump_000_073c:
    push de
    push hl
    call TickAudio
    ldh a, [hRomBank]

Jump_000_0743:
    ld [rROMB0], a
    pop hl
    pop de
    pop bc

Jump_000_0749:
    pop af
    reti

; Request a live BG/OBJ palette upload by setting hVideoFlags bit 0; preserve HL.
; This entry copies no colors and does not wait for VBlank.
RequestPals:


Call_000_074b:
    push hl

Jump_000_074c:
    ld hl, hVideoFlags
    set 0, [hl]
    pop hl
    ret

; Start hFrameTick at one, wait and poll input until it exceeds A, then reset it to one.
WaitTicks:


Call_000_0753:
Jump_000_0753:
    push af
    ld hl, hFrameTick
    ld a, $01
    ld [hl], a
    pop af

; Wait and poll input until the frame tick passes the requested count.
WaitTicksNextFrame:
jr_000_075b:
    call WaitFrame

Call_000_075e:
    push af
    call PollJoy
    pop af
    cp [hl]
    jr nc, WaitTicksNextFrame

Call_000_0766:
    ld [hl], $01
    ret
; END MODULE frame.asm
; BEGIN MODULE rom_bank.asm

; Clear ROM high/RAM bank registers, select ROM bank 1, reset the HRAM stack, and select audio bank 4.
InitBanks:


Call_000_0769:
    xor a

Call_000_076a:
    ld [rROMB1], a
    ld [rRAMB], a
    ld a, $01
    ld [rROMB0], a

Jump_000_0775:
    ldh [hRomBank], a
    ld a, $fe

Jump_000_0779:
    ldh [hStackPtr], a
    ld a, $04
    ld [wAudioBank], a
    ret

; A = bank; save the previous ROM bank on the shared HRAM byte stack.
; Script calls also store return-pointer bytes on this stack.
PushRomBank:
Call_000_0781:
    push af

Jump_000_0782:
    ldh a, [hRomBank]
    call PushHramByte
    pop af
    ldh [hRomBank], a
    ld [rROMB0], a
    ret

; Restore the most recently saved ROM bank; preserve A.
PopRomBank:
Call_000_078e:
Jump_000_078e:
    push af
    call PopHramByte
    ldh [hRomBank], a
    ld [rROMB0], a
    pop af
    ret


; Store A at the current HRAM stack index, then use the decremented index; preserve AF and BC.
PushHramByte:
Call_000_0799:
    push bc
    push af
    ldh a, [hStackPtr]
    ld c, a
    dec a
    ldh [hStackPtr], a
    pop af
    ldh [c], a
    pop bc

Jump_000_07a4:
    ret


; Increment the HRAM stack index, return its byte in A, and preserve BC.
PopHramByte:
Call_000_07a5:
    push bc
    ldh a, [hStackPtr]
    inc a
    ldh [hStackPtr], a
    ld c, a
    ldh a, [c]
    pop bc
    ret

; Write $0a to the cartridge RAM enable register.
EnableRam:


Call_000_07af:
    ld a, $0a
    ld [rRAMG], a
    ret

; Write zero to the cartridge RAM enable register.
DisableRam:


Call_000_07b5:
    xor a
    ld [rRAMG], a
    ret
; END MODULE rom_bank.asm
INCLUDE "audio_call.asm"
INCLUDE "main.asm"
; BEGIN MODULE card_gfx.asm

; Load blackjack card tiles into VRAM bank one, then select VRAM bank zero.
LoadCardGfx:

    ld a, $01

Call_000_09c3:
    ldh [rVBK], a
    ld a, UiGfxIdBlackjackCardsLow
    call ReadUiGfx
    ld a, UiGfxIdBlackjackCardsHigh
    call ReadUiGfx
    ld a, $00
    ldh [rVBK], a
    ret
; END MODULE card_gfx.asm
; BEGIN MODULE boot_gfx.asm

; Load the title low and high tile blocks.
LoadTitleGfx:


Call_000_09d4:
    ld a, UiGfxIdTitleLow
    call ReadUiGfx
    ld a, UiGfxIdTitleHigh
    call ReadUiGfx
    ret

; Load the developer-logo low tiles and shared boot text high tiles.
LoadBootGfx:


Call_000_09df:
    ld a, UiGfxIdDeveloperLogoLow
    call ReadUiGfx
    ld a, UiGfxIdBootTextHigh
    call ReadUiGfx
    ret
; END MODULE boot_gfx.asm
; BEGIN MODULE save_gfx.asm

; Load the save-screen low and high tile blocks.
LoadSaveGfx:


Call_000_09ea:
    ld a, UiGfxIdSaveScreenLow

Call_000_09ec:
    call ReadUiGfx
    ld a, UiGfxIdSaveScreenHigh
    call ReadUiGfx
    ret
; END MODULE save_gfx.asm
; BEGIN MODULE ui_extra_gfx.asm

; Load the auxiliary low/high tiles used by the audio test and credits.
LoadAuxGfx:

; Load extra regional UI graphics: US uses ten/five for boot; JP uses eight/nine.
LoadExtraUiGfx:


Call_000_09f5:
    ld a, UiGfxIdAuxLow
    call ReadUiGfx
    ld a, UiGfxIdAuxHigh
    call ReadUiGfx

Call_000_09ff:
    ret
; END MODULE ui_extra_gfx.asm
INCLUDE "gfx_base.asm"
INCLUDE "scene_gfx.asm"
; BEGIN MODULE rng_call.asm

; Call the bank-2 random step while preserving HL/BC and restoring the ROM bank.
NextRandom:


Call_000_0b99:
    push hl
    push bc
    push af
    ld a, $02
    call PushRomBank
    pop af
    call StepRandom
    call PopRomBank
    pop bc
    pop hl
    ret
; END MODULE rng_call.asm
INCLUDE "scene.asm"
INCLUDE "scene_draw.asm"
; BEGIN MODULE scene_pal_clear.asm

; Zero the first seven background palettes, request their transfer, and wait one frame.
ClearScenePals:


Call_000_0e52:
    ld hl, wBgPal
    ld d, $38
    xor a

; Clear the next byte of the first seven background palettes.
ClearScenePalNextByte:
jr_000_0e58:
    ld [hl+], a
    dec d
    jr nz, ClearScenePalNextByte

    call RequestPals
    call WaitFrame
    ret
; END MODULE scene_pal_clear.asm
; BEGIN MODULE scene_copy.asm

; Stage the map, queue a 14x14 transfer to $9800, and wait for completion.
CopySceneMap:
Call_000_0e63:
    call ReadSceneMap
    ld a, $0e
    ld [wSceneRect], a
    ld [wSceneRect+1], a
    call QueueSceneMap
    call SubmitMapQueue
    call WaitVideo
    ret
; Queue the staged scene rectangle at tile-map address $9800.
QueueSceneMap:



Call_000_0e78:
    ld bc, _SCRN0
    ld hl, wSceneRect
    call QueueMapRect
    ret
; END MODULE scene_copy.asm
; BEGIN MODULE cursor_hit.asm

; Copy four bounds from the room object pointer, test the cursor, and preserve DE, BC, and HL.
ReadCursorBox:


Call_000_0e82:
    push de
    push bc
    push hl
    ld de, $0000

; Copy the next of four room-object cursor bounds.
CopyCursorBoundByte:
jr_000_0e88:
    ld a, [wRoomObjPtr]
    ld l, a
    ld a, [wRoomObjPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    ld hl, wCursorBounds
    add hl, de
    ld [hl], a
    inc e
    ld a, e
    cp $04
    jr c, CopyCursorBoundByte

    call TestCursorBox
    pop hl
    pop bc
    pop de
    ret

; Clear result bit seven, then set it when cursor X and Y lie within both inclusive bounds.
TestCursorBox:


Call_000_0ea4:
    ld a, [wStateResult]
    and $7f
    ld [wStateResult], a
    ld hl, wCursorBounds
    ld a, [wCursorX]
    cp [hl]
    jr nc, CursorBoxCheckMaxX

    ret


; Test whether cursor X is at or below its upper bound.
CursorBoxCheckMaxX:
jr_000_0eb6:
    inc hl
    cp [hl]
    jr c, CursorBoxCheckMinY

    jr z, CursorBoxCheckMinY

    ret


; Test whether cursor Y reaches its lower bound.
CursorBoxCheckMinY:
jr_000_0ebd:
    inc hl
    ld a, [wCursorY]
    cp [hl]
    jr nc, CursorBoxCheckMaxY

Call_000_0ec4:
Jump_000_0ec4:
    ret


Call_000_0ec5:
; Test whether cursor Y is at or below its upper bound.
CursorBoxCheckMaxY:
jr_000_0ec5:
    inc hl
    cp [hl]
    jr c, CursorBoxMarkHit

    jr z, CursorBoxMarkHit

    ret


; Set result bit seven after both coordinates satisfy the bounds.
CursorBoxMarkHit:
jr_000_0ecc:
    ld a, [wStateResult]
    or $80
    ld [wStateResult], a
    ret
; END MODULE cursor_hit.asm
INCLUDE "obj_list.asm"
INCLUDE "text_select.asm"
; BEGIN MODULE msg_returns.asm

; Return immediately before the script runner displays a stream-zero message.
BeforeMsg0:


Call_000_1071:
    ret

; Return immediately before the script runner displays a stream-one message.
BeforeMsg1:


Call_000_1072:
    ret

; Return immediately before the script runner displays a stream-two message.
BeforeMsg2:


Call_000_1073:
    ret

; Retain the adjacent original return instruction.
SpareMsgReturn:


    ret
; END MODULE msg_returns.asm
INCLUDE "text_engine.asm"
INCLUDE "text_ascii.asm"
INCLUDE "text_byte.asm"
INCLUDE "room_item.asm"
; BEGIN MODULE cursor_call.asm

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
; END MODULE cursor_call.asm
INCLUDE "obj_draw.asm"
INCLUDE "scene_pal.asm"
INCLUDE "ui_pal.asm"
; BEGIN MODULE ui_res.asm

; Stage 64 map-palette bytes in bank $0a, restore the caller bank, then read bank 9.
; Both map/palette offsets use eight-bit A*2; neither path checks the index bound.
ReadUiMap:


Call_000_1b39:
    push af
    call StageUiMapPal
    ld a, UiResourceRomBank
    call PushRomBank
    ld hl, UiMapRefs
    pop af
    sla a
    ld c, a
    xor a
    ld b, a
    add hl, bc
    ld c, l
    ld b, h
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    call ReadBgMap
    call PopRomBank
    ret
BgPalBanks:
    db $0a, $0b
BgPalTables:
    dw C1BgPalRefs, C2BgPalRefs
ObjPalBanks:
    db $0a, $0b
ObjPalTables:
    dw C1ObjPalRefs, C2ObjPalRefs

; Read the bank-9 graphics pointer using sixteen-bit A*2, with no index bound check.
; Preserve BC/DE and restore the caller ROM bank after decoding.
ReadUiGfx:

Call_000_1b67:
    push de
    push bc
    push af

Call_000_1b6a:
    ld bc, UiGfxRefs
    ld a, UiResourceRomBank
    call PushRomBank
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    call ReadGfx
    call PopRomBank
    pop bc
    pop de
    ret
; END MODULE ui_res.asm
; BEGIN MODULE action_run.asm

; Resolve the Case I action; use its fallback when the code is $ff, otherwise enter bank 6.
RunC1Action:


Call_000_1b87:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call PickC1Action
    call PopRomBank
    ld a, [wActionCode]
    cp $ff
    jr nz, C1ActionStartScript

    push af
    ld a, $02
    call PushRomBank
    pop af
    call FallbackC1
    call PopRomBank
    ret


; Enter the Case I script bank after a nonfallback action code.
C1ActionStartScript:
jr_000_1ba9:
    ld a, $06
    call PushRomBank
    jp StartC1Script

; Run the original completion helper, then restore the bank through a tail jump.
EndBankAction:


Jump_000_1bb1:
    call ClearTextUI
    jp PopRomBank

; Internal early-exit continuation: pop the nested bank, discard the opcode-loop
; CPU return address into BC, clear the text UI, then pop the outer action bank.
EndNestedAction:


Jump_000_1bb7:
    call PopRomBank
    pop bc
    call ClearTextUI
    jp PopRomBank

; Resume the existing script pointer without looking up another action entry.
; Case I selects bank six; Case II selects the bank from the primary wItemType.
RunAltAction:


Call_000_1bc1:
    ld a, [wCaseId]
    cp $00
    jr nz, C2AltSelectScriptBank

    ld a, $06
    call PushRomBank
    jp LoopC1Script


; Select the Case II operation-type bank for the alternate script path.
C2AltSelectScriptBank:
jr_000_1bd0:
    ld a, [wItemType]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, C2ScriptTypes+2
    add hl, bc
    ld a, [hl-]
    call PushRomBank
    jp RunBankScript
; END MODULE action_run.asm
; BEGIN MODULE script_arg.asm
; Read one script byte into arg 0, advance the pointer, and return arg 0 in A.
ReadArg:

Call_000_1be4:
    ld a, [wScriptPtr]
    ld l, a
    ld a, [wScriptPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wArg0], a

Jump_000_1bf0:
; Store the advanced script pointer and return the first argument.
ReadArgAdvancePointer:
jr_000_1bf0:
    ld a, l
    ld [wScriptPtr], a
    ld a, h
    ld [wScriptPtr+1], a
    ld a, [wArg0]
    ret

; Read two script bytes into args 0..1; advance the pointer and return arg 0.
; Conditional branches consume both target bytes even when the condition fails.
ReadArgs2:

Call_000_1bfc:
    ld a, [wScriptPtr]
    ld l, a

Call_000_1c00:
    ld a, [wScriptPtr+1]

Jump_000_1c03:
    ld h, a
    ld a, [hl+]
    ld [wArg0], a
    ld a, [hl+]
    ld [wArg1], a
    jr ReadArgAdvancePointer

; Read three script bytes into args 0..2; advance the pointer and return arg 0.
ReadArgs3:

Call_000_1c0e:
    ld a, [wScriptPtr]
    ld l, a
    ld a, [wScriptPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wArg0], a
    ld a, [hl+]
    ld [wArg1], a

Jump_000_1c1e:
    ld a, [hl+]
    ld [wArg2], a
    jr ReadArgAdvancePointer

; Read four script bytes into args 0..3; advance the pointer and return arg 0.
ReadArgs4:

Call_000_1c24:
    ld a, [wScriptPtr]
    ld l, a
    ld a, [wScriptPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wArg0], a
    ld a, [hl+]
    ld [wArg1], a
    ld a, [hl+]
    ld [wArg2], a
    ld a, [hl+]
    ld [wArg3], a
    jr ReadArgAdvancePointer
; END MODULE script_arg.asm
; BEGIN MODULE script_return.asm

; Return to the native opcode loop without consuming arguments or a script-call frame.
; The loop continues at the next script byte; this is not the $ff terminator.
ScriptRet:

    ret

; Wait sixty ticks and return without consuming script arguments.
ScriptWait60:


    ld a, $3c
    call WaitTicks
    ret
; END MODULE script_return.asm
; BEGIN MODULE audio_test_call.asm

; Call the bank-two audio selection screen, then refresh lists if that call returns.
AudioTestCall:


Jump_000_1c45:
    push af
    ld a, AudioTestRomBank
    call PushRomBank
    pop af
    call AudioTest
    call PopRomBank
    call RefreshLists
    ret
; END MODULE audio_test_call.asm
; BEGIN MODULE script_text.asm

; Read a script argument, then show a family 0 message.
ScriptMsg0:


Jump_000_1c56:
    call ReadArg

; Keep the original callback, then show the family 0 message passed in A.
ShowMsg0:

Call_000_1c59:
Jump_000_1c59:
    call BeforeMsg0
    call ShowText0
    ret

; Read a script argument, then show a family 1 message.
ScriptMsg1:


    call ReadArg

; Keep the original callback, then show the family 1 message passed in A.
ShowMsg1:

Call_000_1c63:
    call BeforeMsg1
    call ShowText1
    ret

; Read a script argument, then show a family 2 message.
ScriptMsg2:


    call ReadArg

; Keep the original callback, then show the family 2 message passed in A.
ShowMsg2:

Call_000_1c6d:
    call BeforeMsg2
    call ShowText2
    ret

; Read a script argument, then show a family 3 message.
ScriptMsg3:


    call ReadArg

; Show the family 3 message passed in A.
ShowMsg3:

Call_000_1c77:
Jump_000_1c77:
    call ShowText3
    ret
; END MODULE script_text.asm
; BEGIN MODULE script_branch.asm

; Read a two-byte script target; branch only when result bit 0 is set.
BranchIfSet:


Jump_000_1c7b:
    call ReadArgs2
    ld a, [wStateResult]
    and $01
    jr nz, BranchScript

    ret

; Read a two-byte script target; branch only when result bit 0 is clear.
BranchIfClear:


Jump_000_1c86:
    call ReadArgs2
    ld a, [wStateResult]
    and $01
    jr z, BranchScript

    ret

; Copy the existing two argument bytes into wScriptPtr.
BranchScript:


Jump_000_1c91:
jr_000_1c91:
    ld a, [wArg0]
    ld [wScriptPtr], a
    ld a, [wArg1]
    ld [wScriptPtr+1], a
    ret
; END MODULE script_branch.asm
; BEGIN MODULE state_result.asm
; Set result bit 0; retain the other result bits.
SetResult:


Call_000_1c9e:
Jump_000_1c9e:
    ld a, [wStateResult]
    set 0, a
    ld [wStateResult], a
    ret
; Clear result bit 0; retain the other result bits.
ClearResult:


Call_000_1ca7:
Jump_000_1ca7:
    ld a, [wStateResult]
    res 0, a
    ld [wStateResult], a
    ret
; END MODULE state_result.asm
; BEGIN MODULE script_flow.asm

; Set the complete operation-slot offset to $0000.
SelectSlot0:


Call_000_1cb0:
    xor a
    ldh [hItemSlot], a
    ldh [hItemSlot+1], a
    ret

; Set the complete operation-slot offset to $0010.
SelectSlot1:


Call_000_1cb6:
    ld a, OpSlotAlternate
    ldh [hItemSlot], a
    xor a
    ldh [hItemSlot+1], a
    ret

; Save the pointer after the two target bytes: push low, then high on the shared HRAM stack.
; Set wCallBank to zero so ReturnScript restores only the pointer.
CallScript:


    call ReadArgs2
    ld a, [wScriptPtr]
    call PushHramByte
    ld a, [wScriptPtr+1]
    call PushHramByte
    xor a
    ld [wCallBank], a
    jp BranchScript

; Save the pointer after all three operands: push low, high, then the old ROM bank.
; wCallBank holds the target bank and is not itself saved on the HRAM stack.
CallBankScript:


    call ReadArgs3
    ld a, [wScriptPtr]
    call PushHramByte
    ld a, [wScriptPtr+1]
    call PushHramByte

Jump_000_1ce3:
    ld a, [wArg2]
    ld [wCallBank], a
    call PushRomBank
    jp BranchScript

; A nonzero wCallBank pops the saved ROM bank before the return pointer.
; This path neither clears wCallBank nor restores an earlier value of it.
ReturnScript:


    ld a, [wCallBank]
    cp $00
    jr z, ReturnScriptRestorePtr

    call PopRomBank

; Restore the saved script pointer after an optional bank pop.
ReturnScriptRestorePtr:
jr_000_1cf9:
    call PopHramByte

Jump_000_1cfc:
    ld [wScriptPtr+1], a
    call PopHramByte

Jump_000_1d02:
    ld [wScriptPtr], a
    ret

; Read a two-byte target and replace the script pointer.
JumpScript:


    call ReadArgs2
    jp BranchScript

; Replace the ROM bank and script pointer without pushing either.
; Keep the outer action bank save and the existing wCallBank value.
JumpBankScript:


    call ReadArgs3
    ld a, [wArg2]
    ldh [hRomBank], a
    ld [rROMB0], a
    jp BranchScript
; END MODULE script_flow.asm
INCLUDE "script_flags.asm"
; BEGIN MODULE item_bits.asm

; Read a script item ID, then test its first item-bitmap bit.
ReadItemArg:


    call ReadArg
    jr ReadItemFlag

; Test the first item-bitmap bit using the absolute first-slot item value.
GetItemFirst:

    ld a, [wItemId]
; A = item ID; read its bit in the item bitmap at wItemFlags.
ReadItemFlag:

Call_000_1eb6:
jr_000_1eb6:
    call SelectItemFlag
    call ReadBit
    ret

; Read a script item ID, then set its first item-bitmap bit.
SetItemArg:


Call_000_1ebd:
    call ReadArg
    jr SetItemFlag

; Set the first item-bitmap bit using the absolute first-slot item value.
SetItemFirst:

    ld a, [wItemId]
; A = item ID; set its bit in the item bitmap.
SetItemFlag:

Call_000_1ec5:
jr_000_1ec5:
    call SelectItemFlag
    ld bc, BitMasks
    jp SetBit

; Consume a script byte, then clear the first item-bitmap bit using the absolute first-slot value.
ClearItemArg:


    call ReadArg

; Clear the first item-bitmap bit using the absolute first-slot item value.
ClrItemFirst:
    ld a, [wItemId]
; A = item ID; clear its bit in the item bitmap.
ClearItemFlag:

Call_000_1ed4:
    call SelectItemFlag
    ld bc, ClearMasks
    jp ClearBit
; Select the item ID and bitmap at wItemFlags.
SelectItemFlag:

Call_000_1edd:
    ld [wArg0], a
    ld bc, wItemFlags
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret
; END MODULE item_bits.asm
; BEGIN MODULE item_state.asm

; Test the second item-bitmap bit using the absolute first-slot item value.
GetItem2First:


    ld a, [wItemId]
    jr ReadItemState

; Read a script item ID, then test its second item-bitmap bit.
ReadItem2Arg:

    call ReadArg

; A = item bit ID; read its bit from the wItemState bitmap into result bit 0.
ReadItemState:

Call_000_1ef4:
jr_000_1ef4:
    call SelectItemState

Call_000_1ef7:
    call ReadBit
    ret

; Read a script item ID, then jump to the second item-bitmap setter.
SetItem2ArgA:

    call ReadArg
    jr SetItemState

; Set the second item-bitmap bit using the absolute first-slot item value.
SetItem2First:

Call_000_1f00:
    ld a, [wItemId]

Call_000_1f03:
Jump_000_1f03:
    jr SetItemState

; Read a script item ID, then enter the second item-bitmap setter.
SetItem2Arg:

Jump_000_1f05:
    call ReadArg

; A = item bit ID; set its bit in the wItemState bitmap.
SetItemState:

Call_000_1f08:
jr_000_1f08:
    call SelectItemState
    ld bc, BitMasks
    jp SetBit

; Clear the second item-bitmap bit using the absolute first-slot item value.
ClrItem2First:

    ld a, [wItemId]
    jr ClearItemState

; Read a script item ID, then clear its second item-bitmap bit.
ClearItem2Arg:

    call ReadArg

; A = item bit ID; clear its bit in the wItemState bitmap.
ClearItemState:

Call_000_1f19:
jr_000_1f19:
    call SelectItemState
    ld bc, ClearMasks

Call_000_1f1f:
    jp ClearBit

; Select the item bit ID and bitmap at wItemState.
SelectItemState:

Call_000_1f22:
    ld [wBitId], a
    ld bc, wItemState
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a

Call_000_1f30:
    ret
; END MODULE item_state.asm
INCLUDE "op_attr.asm"
INCLUDE "room.asm"
INCLUDE "room_direct.asm"
INCLUDE "state_view.asm"
; BEGIN MODULE script_room.asm

; Read a room argument and use the existing branch-if-set path on a match.
BranchRoomIs:


    call ScriptRoomIs
    jp BranchIfSet

; Read a room argument and use the existing branch-if-clear path on a mismatch.
BranchRoomNot:


    call ScriptRoomIs
    jp BranchIfClear

; Read one argument and set the result when it matches the current room.
ScriptRoomIs:


Call_000_2326:
    call ClearResult
    call ReadArg
    ld a, [wArg0]
    ld b, a

Call_000_2330:
    ld a, [wRoomId]
    cp b
    ret nz

    call SetResult
    ret

; Read one argument and write the current room.
ScriptSetRoom:


    call ReadArg
    ld [wRoomId], a
    ret
; END MODULE script_room.asm
; BEGIN MODULE script_item.asm

; Save operation slots, read the first item type and ID, prepare the item, then select slot zero.
ScriptFirstItem:


    push af
    ld a, $01
    call PushRomBank
    pop af
    call WriteOpSlots
    call PopRomBank
    call ReadArgs2
    ld a, [wArg0]
    ld [wItemType], a
    ld a, [wArg1]
    ld [wItemId], a
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem

Jump_000_2366:
    call PopRomBank
    xor a
    ldh [hItemSlot], a
    ret

; Save operation slots, read the alternate item type and ID, prepare the item, and restore the slot index.
ScriptAltItem:


    ldh a, [hItemSlot]
    push af
    push af
    ld a, $01
    call PushRomBank
    pop af
    call WriteOpSlots
    call PopRomBank

Call_000_237d:
    call ReadArgs2
    ld a, [wArg0]
    ld [wAltSlot], a
    ld a, [wArg1]
    ld [wAltSlot+1], a
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    pop af
    ldh [hItemSlot], a
    ret

; Write both operation slots, then swap their original sixteen-byte records.
SwapOpSlots:


    push af
    ld a, $01
    call PushRomBank
    pop af
    call WriteOpSlots
    call PopRomBank
    ld e, $10
    ld hl, wListValue
    ld bc, wAltSlot+15

; Swap the next byte of the two operation-slot records.
SwapOpSlotsNextByte:
jr_000_23b2:
    ld a, [hl]
    ld d, a
    ld a, [bc]
    ld [hl-], a
    ld a, d
    ld [bc], a
    dec bc
    dec e
    jr nz, SwapOpSlotsNextByte

    ret
; END MODULE script_item.asm
; BEGIN MODULE c2_panel_call.asm

; Fill the room panel, draw Case II marks, and submit the map queue.
DrawC2Panel:


Call_000_23bd:
    push af
    ld a, $01
    call PushRomBank
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
; END MODULE c2_panel_call.asm
INCLUDE "list_add.asm"
; BEGIN MODULE list_group.asm

; Locate the pending record using a 16-bit doubled index; accept only type two.
; The group offset below wraps to eight bits after three shifts.
StoreWorkGroup:


Call_000_24ba:
    ld a, [wPendingCur]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, wPendingOps
    add hl, bc
    ld a, [hl+]
    cp $02
    ret nz

    ld a, [hl]
    sla a
    sla a
    sla a
    ld l, a
    ld h, $00
    ld a, [wCaseId]
    cp $00
    jr nz, StoreWorkGroupCase2

    ld bc, wGroupData
    add hl, bc
    ld bc, wWorkList+1
    ld e, $00

; Copy the next of seven Case I group-content bytes.
StoreWorkGroupCase1Next:
jr_000_24e3:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp C1GroupStoreBytes
    jr c, StoreWorkGroupCase1Next

    ret


; Skip the Case II header and store bytes 1-6; byte 7 remains untouched.
StoreWorkGroupCase2:
jr_000_24ed:
    ld bc, wGroupData+1
    add hl, bc
    ld bc, wWorkList+1
    ld e, $00

; Copy the next of six Case II group-content bytes.
StoreWorkGroupCase2Next:
jr_000_24f6:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp C2GroupStoreBytes
    jr c, StoreWorkGroupCase2Next

Jump_000_24ff:
    ret
; END MODULE list_group.asm
; BEGIN MODULE change_keep.asm

; Keep the selected pair and append its pending record when capacity permits; retain the case-one type-one ID-six exception.
KeepSelChange:


Call_000_2500:
    ld a, [wCaseId]
    cp $00
    jr nz, KeepChangeCheckCapacity

    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, KeepChangeCheckCapacity

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr z, KeepChangeAppendSelected

; Accept an empty pending list or a last index below three.
KeepChangeCheckCapacity:
jr_000_2525:
    ld a, [wPendingLast]
    cp $ff
    jr z, KeepChangeAppendSelected

    cp PendingKeepFullLastIndex
    jr c, KeepChangeAppendSelected

    ld a, [wCaseId]
    cp $00
    jr nz, KeepChangeFullCase2

    ld a, $71
    call ShowMsg2
    call ClearAttr2
    ret


; Show the Case II pending-list limit reply and clear selected attribute two.
KeepChangeFullCase2:
jr_000_2540:
    ld a, $9d
    call ShowMsg1
    call ClearAttr2
    ret


; Apply the Case I presence hook, append the selected pair, and copy its list.
; CopySlotList uses the current snapshot after the pair write; it does not reread content.
KeepChangeAppendSelected:
jr_000_2549:
    push af

Call_000_254a:
    ld a, $02
    call PushRomBank
    pop af
    call KeepC1Pair
    call PopRomBank
    call SetAttr2
    ld a, [wPendingLast]
    inc a
    ld [wPendingLast], a
    ld [wPendingCur], a
    call WriteChange
    call ClearWorkList
    call CopySlotList

; Set the operation byte to one and refresh the list mode.
SelectListMode1:

Call_000_256c:
    ld a, $01
    ld [wOpByte], a
    call RefreshListMode
    ret
; END MODULE change_keep.asm
; BEGIN MODULE change_add_call.asm

; Read two script operands, then append and apply their type/value record.
ScriptAddChange:


    call ReadArgs2

; Append the current operands through bank 3; preserve the previous ROM bank.
AddChange:

Call_000_2578:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call AppendChange
    call PopRomBank
    ret
; END MODULE change_add_call.asm
INCLUDE "change_drop.asm"
; BEGIN MODULE obj_bits.asm


Call_000_2750:
; Read an object ID from the script, then enter ReadObjVisible.
ScriptObjVisible:
    call ReadArg
; Bit masks in the fixed ROM bank.

; A = object ID; read its visibility bit from wObjVisible.
ReadObjVisible:

Call_000_2753:
    call SelectVisible
    call ReadBit
    ret

; Read an object ID from the script, then enter SetObjVisible.
ScriptShowObj:


    call ReadArg
; A = object ID; set its visibility bit.
SetObjVisible:

Call_000_275d:
    call SelectVisible
    ld bc, BitMasks
    jp SetBit

; Read an object ID from the script, then enter ClearObjVisible.
ScriptHideObj:


    call ReadArg
; A = object ID; clear its visibility bit.
ClearObjVisible:

Call_000_2769:
    call SelectVisible
    ld bc, ClearMasks
    jp ClearBit

; Select the object ID and visibility bitmap at wObjVisible.
SelectVisible:

Call_000_2772:
    ld [wBitId], a
    ld bc, wObjVisible
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret

; A = object ID; read its presence bit from wObjPresent.
ReadObjPresent:

Call_000_2781:
    call SelectPresent
    call ReadBit
    ret

; A = object ID; set its presence bit.
SetObjPresent:

Call_000_2788:
    call SelectPresent
    ld bc, BitMasks
    jp SetBit
; Map the current item ID to its scene object, then clear that object presence bit.
ClearItemObj:


    push af
    ld a, $02
    call PushRomBank
    pop af
    call MapItemObj
    call PopRomBank
; A = object ID; clear its presence bit.
ClearObjPresent:

Call_000_279e:
    call SelectPresent
    ld bc, ClearMasks
    jp ClearBit

; Select the object ID and presence bitmap at wObjPresent.
SelectPresent:

Call_000_27a7:
    ld [wBitId], a
    ld bc, wObjPresent
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret
; END MODULE obj_bits.asm
; BEGIN MODULE objs_refresh.asm
; Reset object scrolling, rebuild the room list, render it and submit OAM.
RefreshObjs:


Call_000_27b6:
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
; END MODULE objs_refresh.asm
; BEGIN MODULE list_quick.asm

; Read one script argument, run quick-list insertion, and preserve the shared scratch index.
AddQuickArg:


    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    call ReadArg
    call AddQuickValue
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; Store argument zero in the first $ff of five quick-list entries and refresh mode zero through the original UI path.
AddQuickValue:


Call_000_27e6:
    ld d, a
    ld a, $00
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

; Find the first $ff byte among the five quick-list entries.
QuickListFindEmpty:
jr_000_27f0:
    ld bc, wListBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, QuickListStoreValue

    ldh a, [hChangePos]
    inc a
    ldh [hChangePos], a
    cp ListQuickSlots
    jr c, QuickListFindEmpty

    ret


; Store wArg0 in the empty quick-list byte and choose the mode refresh path.
QuickListStoreValue:
jr_000_2809:
    ld a, [wArg0]
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a

Jump_000_2813:
    ld a, b
    ld bc, wListBase
    add hl, bc
    ld [hl], a
    ld a, [wChangeMode]
    cp $00
    jr z, QuickListRefreshMode0

    push af
    call ResumeTextUI
    xor a
    ld [wOpByte], a
    call RefreshListMode
    call ScrollListCursor
    ld a, ListFeedbackWaitTicks
    call WaitTicks
    pop af
    ld [wChangeMode], a
    call RefreshLists
    ret


; Refresh mode zero directly when it was already selected.
QuickListRefreshMode0:
jr_000_283b:
    xor a
    ld [wOpByte], a
    call RefreshListMode
    ret
; END MODULE list_quick.asm
INCLUDE "alt_target.asm"
INCLUDE "alt_room_obj.asm"
; BEGIN MODULE script_put.asm

; Case I uses the current selection without an operand.
; Case II reads one placement-mode byte before calling group placement.
ScriptPutItem:


    ld a, [wCaseId]
    cp $00
    jr nz, ScriptPutCaseII

    push af
    ld a, $02
    call PushRomBank
    pop af
    call CheckC1Put
    call PopRomBank
    ret


; Read and apply the Case II item-placement mode.
ScriptPutCaseII:
jr_000_29bd:
    call ReadArg
    ld [wPutMode], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call BeginC2Put
    call PopRomBank
    ret
; END MODULE script_put.asm
; BEGIN MODULE c1_group_write.asm

; Force the first operation slot, encode its packed value, write it at the current group scratch offset, and call case-one put completion.
; Both scratch bytes are reloaded after packing and the bank helpers.
WriteC1Group:


Jump_000_29d1:
    ld d, a
    ld a, OpSlotPrimary
    ldh [hItemSlot], a
    ld a, $00
    ldh [hItemSlot+1], a
    ld a, d
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PackListItem
    call PopRomBank
    ld a, [wListCode]
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wGroupData
    add hl, bc
    ld [hl], a

; Run the Case I put completion in bank two and restore the previous ROM bank.
C1PutFinishCall:

Jump_000_29f8:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call FinishC1Put
    call PopRomBank
    ret
; END MODULE c1_group_write.asm
INCLUDE "c1_coins.asm"
INCLUDE "list_room.asm"
; BEGIN MODULE sel_name_test.asm

; Consume an argument, then compare the selected name against $cb: loading BC overwrites the argument in C.
TestSelNameArg:


    call ReadArg
    ld c, a
    ld bc, wSelName
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp c
    jr z, SelNameMatchesCb

    call ClearResult
    ret


; Set result bit zero when the selected name equals the overwritten C value $cb.
SelNameMatchesCb:
jr_000_2b6b:
    call SetResult
    ret
; END MODULE sel_name_test.asm
; BEGIN MODULE room_arg.asm

; Set the result on a room match; otherwise write argument 3 and set flag $83.
SetRoomArg3:


    call ClearResult
    ld a, [wRoomId]
    ld hl, wArg3
    cp [hl]
    jr nz, C1CabChangeRoom

    call SetResult
    ret


; Store the changed destination and set the cab-trip flag.
C1CabChangeRoom:
jr_000_2b7f:
    ld a, [wArg3]
    ld [wRoomId], a
    ld a, C1CabTripMade
    call SetObjFlag
    ret
; END MODULE room_arg.asm
; BEGIN MODULE pick_effect.asm

; Reset object scrolling, call the bank-three pick effect, and restore the previous ROM bank.
PlayPickEffect:


    call ResetObjScroll
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PlayCabRide
    call PopRomBank
    ret
; END MODULE pick_effect.asm
; BEGIN MODULE text_hold.asm

; Set result bit 3. Case I consumes one extra byte; Case II consumes none.
; ReadArg still updates wArg0 even though this handler does not use the value.
ScriptHoldText:


Call_000_2b9c:
    ld a, [wStateResult]
    or $08
    ld [wStateResult], a
    ld a, [wCaseId]
    cp $00
    ret nz

    call ReadArg
    ret

; Restore a nonzero saved/group-search byte as list mode, refresh, then resume text cleanup.
RestoreTextLists:


Call_000_2bae:
    ld a, [wSavedListMode]
    cp $00
    jr z, ResumeTextUI

    ld [wChangeMode], a
    call RefreshLists

; Clear result bit 3 and apply the original text finishing conditions.
ResumeTextUI:

Call_000_2bbb:
Jump_000_2bbb:
jr_000_2bbb:
    ld a, [wStateResult]
    and $f7
    ld [wStateResult], a
    call FinishText
    ret

; Clear result bit 3 and return.
ClearTextHold:


Call_000_2bc7:
Jump_000_2bc7:
    ld a, [wStateResult]
    and $f7

Call_000_2bcc:
    ld [wStateResult], a
    ret
; END MODULE text_hold.asm
; BEGIN MODULE text_names.asm

; Read one script argument into the first text name ID.
ScriptName0:


    call ReadArg
    ld [wTextName0], a
    ret

; Read one script argument into the second text name ID.
ScriptName1:


    call ReadArg
    ld [wTextName1], a
    ret

; Copy the absolute first-slot name ID into the first text name ID.
FirstName0:


    ld a, [wSelName]
    ld [wTextName0], a
    ret

; Copy the indexed slot name ID into the first text name ID.
SlotName0:


    ld bc, wSelName
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wTextName0], a
    ret

; Copy the indexed slot name ID into the second text name ID.
SlotName1:


Jump_000_2bf4:
    ld bc, wSelName
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]

Call_000_2bff:
    ld [wTextName1], a
    ret
; END MODULE text_names.asm
; BEGIN MODULE script_list.asm

; Compare a script argument with the first packed item and branch on equality.
BranchPackedIs:


Jump_000_2c03:
    call TestPackedArg

Jump_000_2c06:
    jp BranchIfSet

; Compare a script argument with the first packed item and branch on inequality.
BranchPackedNot:


    call TestPackedArg
    jp BranchIfClear

; Read one argument and set the result when it matches the first packed item.
TestPackedArg:


Call_000_2c0f:
    call SetResult
    call ReadArg
    ld hl, wListPacked
    cp [hl]
    ret z

    call ClearResult
    ret
; END MODULE script_list.asm
; BEGIN MODULE obj_wait.asm

; Read a frame count and run the existing object-list wait loop.
ScriptWaitObjs:


    call ReadArg
    call WaitObjFrames
    ret

; Render and submit objects once per frame; input zero retains the original 256-frame loop.
WaitObjFrames:


Call_000_2c25:
jr_000_2c25:
    push af
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    call SubmitOam
    call WaitFrame
    pop af
    dec a
    jr nz, WaitObjFrames

    ret
; END MODULE obj_wait.asm
; BEGIN MODULE script_values.asm

; Read one script byte and store it in the first script-value byte.
ScriptValue0:


Call_000_2c3e:
    call ReadArg
    ld [wScriptValue0], a
    ret

; Read two script bytes and store argument zero/one in the two script-value bytes.
ScriptValues01:


    call ReadArgs2

Jump_000_2c48:
    ld [wScriptValue0], a
    ld a, [wArg1]
    ld [wScriptValue1], a
    ret

; Rebuild the room object list and return to the script runner.
ScriptBuildObjs:


    call BuildObjList
    ret
; END MODULE script_values.asm
; BEGIN MODULE script_match.asm

; Read type, ID, and script address tuples until the item matches; type $fe bypasses the item comparison.
MatchItemScript:


jr_000_2c56:
    call ReadArgs4
    ld a, [wArg0]
    cp $fe
    jr z, MatchItemApplyBranch

    ld d, a
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, MatchItemScript

    ld a, [wArg1]
    ld d, a
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, MatchItemScript

; Replace the script pointer with the matching table target.
MatchItemApplyBranch:
jr_000_2c81:
    ld a, [wArg2]
    ld [wScriptPtr], a
    ld a, [wArg3]
    ld [wScriptPtr+1], a
    ret
; END MODULE script_match.asm
; BEGIN MODULE c2_quarters.asm

; Decrement Case II quarters with byte wrap and refresh lists.
; There is no zero guard or final result setter after RefreshLists.
DecC2Quarter:
DecC2Count:


    ld a, [wC2Quarters]
    dec a
    ld [wC2Quarters], a
    call RefreshLists
    ret

; Set the result when Case II quarters are nonzero; otherwise clear it.
TestC2Quarters:
TestC2Count:


    ld a, [wC2Quarters]
    cp $00
    jr z, C2QuartersEmpty

    call SetResult
    ret


; Clear the result when no Case II quarter remains.
C2QuartersEmpty:
jr_000_2ca4:
    call ClearResult
    ret
; END MODULE c2_quarters.asm
; BEGIN MODULE c1_coin_test.asm

; Consume one argument and set the result when the Case I coin count is less than or equal to it.
TestC1Coins:
TestListCount:


    call ClearResult
    call ReadArg
    ld a, [wArg0]
    ld c, a
    ld a, [wC1Coins]
    cp c
    jr z, C1CoinLimitMet

    jr nc, C1CoinLimitReturn

; Set the result when the coin count is at or below the argument.
C1CoinLimitMet:
jr_000_2cba:
    call SetResult

; Return after the coin-limit comparison.
C1CoinLimitReturn:
jr_000_2cbd:
    ret
; END MODULE c1_coin_test.asm
; BEGIN MODULE c1_held_item.asm

; Read an argument and set the result when it equals the case-one held-item byte.
TestHeldArg:


    call ClearResult
    call ReadArg
    ld hl, wC1HeldItem
    cp [hl]
    jr nz, C1HeldArgReturn

    call SetResult

; Return after comparing the script argument with the held-item byte.
C1HeldArgReturn:
jr_000_2ccd:
    ret

; When the held-item byte is zero, copy the first-slot item ID into it and set the result.
HoldItem:


    call ClearResult
    ld a, [wC1HeldItem]
    cp $00
    jr nz, C1HoldItemReturn

    ld a, [wItemId]
    ld [wC1HeldItem], a
    call SetResult

; Return after checking or filling the held-item byte.
C1HoldItemReturn:
jr_000_2ce1:
    ret

; Clear a nonzero held-item byte and set the result; a zero byte leaves the result clear.
ClearHeldItem:


    call ClearResult
    ld a, [wC1HeldItem]
    cp $00
    jr z, C1ClearHeldReturn

    xor a
    ld [wC1HeldItem], a
    call SetResult

; Return after checking or clearing the held-item byte.
C1ClearHeldReturn:
jr_000_2cf3:
    ret

; For a nonzero held item, write first-slot type three and its ID, prepare and append the selected slot, then clear the held byte.
ReturnHeldItem:


    call ClearResult
    ld a, [wC1HeldItem]
    cp $00
    ret z

    ld a, $01
    ld [wSkipListWait], a
    ld a, $03
    ld [wItemType], a
    ld a, [wC1HeldItem]
    ld [wItemId], a
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PackListItem
    call PopRomBank
    call ClearItemState
    call AddSelList
    xor a
    ld [wSkipListWait], a
    ld a, [wFoundRow]
    ld [wListRow], a
    xor a
    ld [wC1HeldItem], a
    call SetResult
    ret
; END MODULE c1_held_item.asm
INCLUDE "c1_bullets.asm"
INCLUDE "c1_ammo.asm"
; BEGIN MODULE c2_bullet_call.asm

; Load one inventory round into a chamber in bank three, then restore the ROM bank.
UseBulletCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call UseC2Bullet
    call PopRomBank
    ret

; Fire one loaded chamber in bank three without changing inventory, then restore the ROM bank.
TakeBulletCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call TakeC2Bullet
    call PopRomBank
    ret
; END MODULE c2_bullet_call.asm
; BEGIN MODULE c2_counter_call.asm

; Call the case-two indexed counter step in bank three and restore the previous ROM bank.
; This indexed script counter is separate from the event pipeline and train clock.
C2CounterCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2Counter
    call PopRomBank
    ret

; Return without reading arguments or changing state.
ScriptNoop:


Call_000_2efb:
    ret

; Read an index and clear the byte at the case-two counter base plus that index.
; Keep the result byte and text mode while zeroing the indexed counter.
ClearC2Counter:


    call ReadArg
    ld c, a
    ld b, $00
    ld hl, wC2Counters
    add hl, bc
    xor a
    ld [hl], a
    ret
; END MODULE c2_counter_call.asm
; BEGIN MODULE script_random.asm

; Advance the random byte and set the result only when its low two bits are zero.
TestRandomLow2:


    call ClearResult
    call NextRandom

Jump_000_2f0f:
    ldh a, [hRandByte]
    and $03
    ret nz

    call SetResult
    ret
; END MODULE script_random.asm
; BEGIN MODULE list_remove.asm

; Copy the selected slot group and row to the active list and enter the removal continuation.
; This path reads saved coordinates without searching for the selected packed value.
DropSelList:


Call_000_2f18:
    ld bc, wSelMode
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wChangeMode], a
    ld bc, wSelRow
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wListRow], a

; Remove the active list entry, refresh lists, then decrement the list end.
FinishListDrop:

jr_000_2f34:
    call DropListEntry
    call RefreshLists
    call DecListEnd
    ret

; Read one script argument and enter list-value removal.
DropListArg:


    call ReadArg

; Find value A and enter removal without testing the search result.
DropListValue:

Call_000_2f41:
    ld [wFindListValue], a
    call FindListValue

; Copy the recorded found group and row, then remove the entry without checking whether a search succeeded.
DropFoundList:

Call_000_2f47:
    ld a, [wFoundGroup]
    ld [wChangeMode], a
    ld a, [wFoundRow]
    ld [wListRow], a
    jr FinishListDrop
; END MODULE list_remove.asm
; BEGIN MODULE action_exit.asm

; Set state bit six, show case-two effect ten, play cue seven, wait, show message $4e, and resume the text UI.
PlayExitEffect:

Call_000_2f55:
Jump_000_2f55:
    ld a, [wStateResult]
    or $40
    ld [wStateResult], a
    ld a, $0a
    ld [wFxId], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call SaveC2Effect
    call PopRomBank
    ld a, $07
    call PlayAudio
    ld a, $78
    call WaitTicks
    ld a, $4e
    call ShowMsg1

; Resume the text UI and wait sixty ticks.
ResumeEffectUi:
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    ret

; Reset scrolling, wait one tick, and play the exit effect.
; Discard the opcode-loop CPU return address and finish through EndBankAction.
; Consume no script operand; a following script $ff is left unread.
ExitActionFx:


    call ResetObjScroll
    ld a, $01
    call WaitTicks
    call PlayExitEffect
    pop bc
    jp EndBankAction

; Reset scrolling, wait one tick, and set result bit six.
; Discard the opcode-loop CPU return address and finish through EndBankAction.
; Consume no script operand; a following script $ff is left unread.
ExitActionFlag:


    call ResetObjScroll
    ld a, $01
    call WaitTicks
    ld a, [wStateResult]
    or $40
    ld [wStateResult], a
    pop bc
    jp EndBankAction
; END MODULE action_exit.asm
INCLUDE "scene_effect_call.asm"
; BEGIN MODULE script_audio.asm

; Read one script argument and pass it to PlayAudio.
ScriptPlayAudio:


    call ReadArg
    call PlayAudio
    ret
; END MODULE script_audio.asm
; BEGIN MODULE c1_coin_find.asm

; Read one argument before adding coins and searching the list.
AddCoinFindArg:
AddCountFindArg:


    call ReadArg

; Add wArg0 to Case I coins, use the returned zero byte for list search, and refresh lists.
AddCoinFind:
AddCountFind:

Call_000_302f:
    call AddC1Coins

Call_000_3032:
    ld [wArg0], a
    ld [wFindListValue], a
    call FindListValue
    call RefreshLists
    ret
; END MODULE c1_coin_find.asm
; BEGIN MODULE c1_cash.asm

; Remove flagged items seven and $54, set their states, clear the Case I coin count, refresh value zero, and draw room $16.
ClearC1Cash:
ClearC1Count:


Call_000_303f:
Jump_000_303f:
    ld a, $07
    call ReadItemFlag
    ld a, [wStateResult]

Jump_000_3047:
    and $01
    jr z, C1ClearCashSecondBill

Jump_000_304b:
    ld a, $07
    call DropListValue

Call_000_3050:
    ld a, $07
    call ClearItemFlag
    ld a, $07
    call SetItemState

; Check and remove the second twenty-dollar bill instance.
C1ClearCashSecondBill:
jr_000_305a:
    ld a, $54
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    jr z, C1ClearCashCoins

    ld a, $54
    call DropListValue
    ld a, $54
    call ClearItemFlag
    ld a, $54
    call SetItemState

; Clear the coin count after checking both bill instances.
C1ClearCashCoins:
jr_000_3075:
    call ResumeTextUI
    xor a
    ld [wC1Coins], a
    ld [wArg0], a

Jump_000_307f:
    ld [wFindListValue], a
    call FindListValue

Jump_000_3085:
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode
    ld a, SceneFxDiagonalStripes
    ld [wSceneFx], a
    ld a, C1RoomIdJoeAlley
    call DrawRoomAt
    ret
; END MODULE c1_cash.asm
; BEGIN MODULE c1_room_event_call.asm

; Run the Case I room-event check in bank two and restore the previous ROM bank.
C1RoomEventCall:


    push af
    ld a, $02
    call PushRomBank
    pop af
    call TryC1RoomEvent
    call PopRomBank
    ret
; END MODULE c1_room_event_call.asm
; BEGIN MODULE c1_coin_two.asm

; When the Case I coin count is at least two, add $fe through the original addition/search path and set the result; otherwise clear it.
SpendTwoCoins:
SpendListTwo:


    ld a, [wC1Coins]
    cp $02
    jr nc, C1SpendTwoCoinsReady

    call ClearResult
    ret


; Subtract two through the original byte-addition path.
C1SpendTwoCoinsReady:
jr_000_30b2:
    ld a, $fe
    ld [wArg0], a
    call AddCoinFind

Jump_000_30ba:
    call SetResult
    ret
; END MODULE c1_coin_two.asm
; BEGIN MODULE bj_call.asm

; Select bank $29, run the blackjack session, and restore the previous ROM bank.
BlackjackCall:


    push af
    ld a, $29
    call PushRomBank
    pop af
    call RunBlackjack
    call PopRomBank
    ret
; END MODULE bj_call.asm
; BEGIN MODULE c2_train_calls.asm

; Display trains two through five in bank three, then restore the previous ROM bank.
Trains2To5Call:
C2SchedLowCall:


Call_000_30cc:
Jump_000_30cc:
    push af
    ld a, $03

Call_000_30cf:
    call PushRomBank
    pop af
    call ShowTrains2To5
    call PopRomBank
    ret

; Display trains six through nine in bank three, then restore the previous ROM bank.
Trains6To9Call:
C2SchedHighCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call ShowTrains6To9
    call PopRomBank
    ret

; Select the current train fare in bank three, then restore the previous ROM bank.
TrainFareCall:
C2SchedCostCall:


    push af
    ld a, $03
    call PushRomBank
    pop af

Jump_000_30ef:
    call PickTrainFare
    call PopRomBank
    ret
; END MODULE c2_train_calls.asm
; BEGIN MODULE c2_cash_call.asm

; Compare Case II cash with wTrainFare in bank three, then restore the previous bank.
CheckCashCall:
CheckWordCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call TestC2Cash
    call PopRomBank
    ret

; Copy wTrainFare to wArg0 before spending Case II cash.
SpendCashCost:
SpendWordCost:


    ld a, [wTrainFare]
    ld [wArg0], a
    jr SpendCashArg

; Set wArg0 to one before spending one dollar of Case II cash.
SpendCashOne:
SpendWordOne:

    ld a, $01
    ld [wArg0], a

; Spend wArg0 dollars in bank three and refresh lists only when the result is set.
SpendCashArg:
SpendWordArg:

jr_000_3111:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call SpendC2Cash
    call PopRomBank
    ld a, [wStateResult]
    and $01

Jump_000_3123:
    ret z

    call RefreshLists
    ret
; END MODULE c2_cash_call.asm
; BEGIN MODULE chip_calls.asm

; Call chip purchase in bank three and restore the previous ROM bank.
BuyChipsCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call BuyChips
    call PopRomBank

Call_000_3135:
    ret

; Call chip cash-out in bank three and restore the previous ROM bank.
SellChipsCall:


    push af
    ld a, $03
    call PushRomBank
    pop af

Jump_000_313d:
    call SellChips
    call PopRomBank
    ret
; END MODULE chip_calls.asm
; BEGIN MODULE c2_desert_call.asm

; Move through the desert grid in bank three, then restore the previous ROM bank.
DesertMoveCall:
C2GridMoveCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call MoveDesert
    call PopRomBank

Jump_000_3151:
    ret
; END MODULE c2_desert_call.asm
; BEGIN MODULE c2_shop_call.asm

; Run the purchase menu in bank three and restore the previous bank.
C2ShopCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call RunC2Shop
    call PopRomBank
    ret
; END MODULE c2_shop_call.asm
; BEGIN MODULE change_bank.asm

; Call ApplyChange in bank 3 and restore the previous ROM bank.
ApplyChangeBank:


Call_000_3160:
    push af
    ld a, $03
    call PushRomBank

Jump_000_3166:
    pop af
    call ApplyChange
    call PopRomBank
    ret

; Call UndoC2Change in bank 3 and restore the previous ROM bank.
UndoChangeBank:


Call_000_316e:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call UndoC2Change
    call PopRomBank
    ret
; END MODULE change_bank.asm
; BEGIN MODULE c2_cells.asm

; Consume a battery when available, refresh lists, and set the result; at zero, clear the result.
; Success is set after RefreshLists returns; this helper makes no direct aggregate-flag removal.
UseC2Cell:
UseC2Count2:


    ld a, [wC2Cells]
    cp $00
    jr z, C2CellEmpty

    dec a
    ld [wC2Cells], a
    call RefreshLists
    call SetResult
    ret


; Clear the result when no Case II battery remains.
C2CellEmpty:
jr_000_318e:
    call ClearResult
    ret
; END MODULE c2_cells.asm
; BEGIN MODULE c2_view_reload.asm

; Load case-two palettes and select its scene through bank three, then call ReloadScene.
ReloadC2Map:


    push af
    ld a, $03

Call_000_3195:
    call PushRomBank

Call_000_3198:
    pop af
    call LoadC2Pal
    call PopRomBank
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Scene
    call PopRomBank
    call ReloadScene
    ret
; END MODULE c2_view_reload.asm
; BEGIN MODULE map_step_calls.asm

; Select bank $29, draw rectangle states two and three with their original waits, and restore the bank.
MapPulse23Call:


Call_000_31b0:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call MapPulse23
    call PopRomBank
    ret

; Select bank $29, run map steps one through twelve, and restore the bank.
MapStepsCall:


    push af
    ld a, $29
    call PushRomBank

Jump_000_31c4:
    pop af
    call RunMapSteps
    call PopRomBank
    ret
; END MODULE map_step_calls.asm
; BEGIN MODULE audio_repeat.asm

; Initialize E to $18 and repeat cue $10 with six-tick waits until E reaches zero.
RepeatCue10:


Call_000_31cc:
    ld e, $18

; Play cue ten and wait six ticks for each remaining iteration.
RepeatCue10Loop:
jr_000_31ce:
    ld a, $10
    call PlayAudio
    ld a, $06
    call WaitTicks
    dec e
    jr nz, RepeatCue10Loop

    ret
; END MODULE audio_repeat.asm
; BEGIN MODULE list_refresh.asm

; Prepare the selected item through bank one and refresh lists.
RefreshItemList:


    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    call RefreshLists
    ret
; END MODULE list_refresh.asm
; BEGIN MODULE c2_funds.asm

; Read a two-byte target and branch when chips are zero and Case II cash is below five dollars.
BranchNoFunds:
BranchWordFive:


    call TestC2Funds
    jp BranchIfClear

; Set the result when chips are nonzero or Case II cash is at least five dollars; otherwise clear it.
TestC2Funds:
TestWordFive:


Call_000_31f3:
    ld a, [wChips]
    cp $00
    jr nz, C2FundsAvailable

    ld a, [wC2Cash]
    sub C2FundsMinimumCash
    ld a, [wC2Cash+1]
    sbc $00
    jr nc, C2FundsAvailable

    call ClearResult
    ret


; Set the result when chips or sufficient cash are available.
C2FundsAvailable:
jr_000_320a:
    call SetResult
    ret
; END MODULE c2_funds.asm
; BEGIN MODULE obj_blink.asm

; Wait sixteen ticks, call the object-pair effect once, then fall through and execute it a second time.
BlinkObjTwice:


    ld a, $10
    call WaitTicks
    call BlinkObjPair

; Hide object $0d, draw object $0e for forty-eight ticks, then restore their visibility and wait another forty-eight ticks.
BlinkObjPair:

Call_000_3216:
    ld a, $0d
    call ClearObjVisible
    call BuildObjList
    ld a, $0e
    ld [wDrawObj], a
    call SetObjVisible
    push af
    ld a, $02
    call PushRomBank
    pop af
    call AddRoomObj
    call PopRomBank
    call ResetObjScroll
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    call SubmitOam
    ld a, $30
    call WaitTicks

Jump_000_324b:
    ld a, $0e
    call ClearObjVisible
    ld a, $0d
    call SetObjVisible
    call RefreshObjs
    ld a, $30
    jp WaitTicks
; END MODULE obj_blink.asm
; BEGIN MODULE c2_item_call.asm

; Call the bank-three selected list-item conversion and restore the previous ROM bank.
CheckC2ListItem:


Call_000_325d:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call MapC2ListItem
    call PopRomBank
    ret
; END MODULE c2_item_call.asm
; BEGIN MODULE c2_choice_call.asm

; Ask about blackjack rules in bank three and restore the previous bank.
C2ChoiceCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call Ask21Rules
    call PopRomBank
    ret
; END MODULE c2_choice_call.asm
; BEGIN MODULE list_clear.asm

; Write $ff to the type and ID fields of both operation slots.
ResetItemSlots:


    ld a, $ff
    ld [wItemType], a
    ld [wItemId], a
    ld [wAltSlot], a
    ld [wAltSlot+1], a
    ret

; Fill the regional working-list row with $ff.
ClearWorkList:


Call_000_3288:
    ld hl, wWorkList+1
    ld d, $00

; Write the next $ff working-list byte using the regional row length.
ClearWorkListNextByte:
jr_000_328d:
    ld a, $ff
    ld [hl+], a
    inc d
    ld a, d
    cp JpWorkListClearBytes
    jr c, ClearWorkListNextByte

    ret
; END MODULE list_clear.asm
; BEGIN MODULE pending.asm
; Double the last index in A; replace only the scratch low byte and inherit its high byte.
; Store selected type before reading selected ID; restore both scratch bytes on return.
WriteChange:

Call_000_3297:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wPendingLast]
    add a
    ldh [hChangePos], a
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wPendingOps
    add hl, bc
    ld [hl], a
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hChangePos]
    ld l, a

Jump_000_32cd:
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wPendingArgs
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af

Jump_000_32df:
    ret

; Zero-extend the current index and double HL before reading the type/value pair.
ReadChange:

Call_000_32e0:
    ld a, [wPendingCur]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, wPendingOps
    add hl, bc
    ld a, [hl+]
    ld [wChangeType], a
    ld a, [hl]
    ld [wChangeValue], a
    ret
; END MODULE pending.asm
INCLUDE "list_work.asm"
; BEGIN MODULE list_end.asm

; Set the list input and cursor, save the old mode, select the requested mode, and refresh lists.
RefreshListMode:


Call_000_3389:
    ld a, InputSelPrevPage
    ld [wInputSel], a
    ld a, $04
    ld [wCursorX], a
    ld a, $9c
    ld [wCursorY], a
    ld a, [wOpByte]
    ld d, a
    ld a, [wChangeMode]
    ld [wPrevListMode], a
    cp d
    jr z, RefreshListModeDraw

    ld a, [wOpByte]
    ld [wChangeMode], a

; Refresh the list after retaining or changing its selected mode.
RefreshListModeDraw:
jr_000_33ab:
    call RefreshLists
    ret

; Clear the result; show message $73 and set it when the regional list capacity is reached.
CheckListFull:


    call ClearResult
    ld a, [wListMax]
    cp JpListFullGroupLimit
    jr c, CheckListFullReturn

    ld a, $73
    call ShowMsg2
    call SetResult

; Return the capacity result after the optional full-list reply.
CheckListFullReturn:
jr_000_33c1:
    ret

; Decrement the end row; on underflow wrap to the regional final row and decrement the end group.
DecListEnd:


Call_000_33c2:
    ld a, [wListEndRow]
    dec a
    ld [wListEndRow], a
    cp $ff
    ret nz

Call_000_33cc:
    ld a, JpListLastRowIndex
    ld [wListEndRow], a
    ld a, [wListMax]
    dec a
    ld [wListMax], a
    ret

; Store the end group and row into the selected operation slot mode and row fields.
StoreListEnd:


Call_000_33d9:
    ld a, [wListMax]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wSelMode
    add hl, bc
    ld [hl], a
    ld a, [wListEndRow]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]

Call_000_33f2:
    ld h, a
    ld a, b
    ld bc, wSelRow

Call_000_33f7:
    add hl, bc
    ld [hl], a
    ret
; END MODULE list_end.asm
; BEGIN MODULE list_pos.asm

; Store mode * row stride + row in the scratch index; US stride is 7, JP stride is 8.
GetListPos:


Call_000_33fa:
Jump_000_33fa:
    ld a, [wChangeMode]
    add a
    add a
    add a
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
; END MODULE list_pos.asm
; BEGIN MODULE list_end_pos.asm

; Store the byte-wrapped end-group/row offset with a zero scratch high byte.
GetListEndPos:


Call_000_340f:
    ld a, [wListMax]
    add a
    add a
    add a
    ld c, a
    ld a, [wListEndRow]
    add c
    ld c, a
    ld b, $00
    ld a, c
    ldh [hChangePos], a
    ld a, b
    ldh [hChangePos+1], a
    ret
; END MODULE list_end_pos.asm
; BEGIN MODULE change_list_call.asm

; Call the bank 5 list reader while preserving the scratch index and ROM bank.
PrepChangeList:


Call_000_3424:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
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
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
; END MODULE change_list_call.asm
; BEGIN MODULE list_drop.asm

; Select the full-list counter endpoint before the shared byte-counter deletion loop.
DropListEntry:


Call_000_3444:
    ld a, JpListDropFullEndOffset
    ld [wDropEnd], a

; Save the scratch index and resolve the row before shifting list entries.
DropListStart:
jr_000_3449:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a

Call_000_3450:
    pop af
    push hl
    call GetListPos
    ldh a, [hChangePos]
    ld c, a
    inc c
    ld b, $00
    ld hl, wListBase
    add hl, bc

; Test the byte counter before copying; C wraps while HL keeps advancing.
DropListShiftNext:
jr_000_345f:
    ld a, [wDropEnd]
    cp c
    jr z, DropListFinish

    ld a, [hl-]
    ld [hl+], a
    inc hl
    inc c
    jr DropListShiftNext

; Write the final $ff byte and restore the saved scratch index.
DropListFinish:
jr_000_346b:
    ld a, $ff
    dec hl
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; Use the first-two-group limit and enter the same list-entry deletion loop.
DropListHead:


Call_000_3479:
    ld a, JpListDropHeadEndOffset
    ld [wDropEnd], a
    jr DropListStart
; END MODULE list_drop.asm
; BEGIN MODULE list_find.asm

; Scan list groups from group two while preserving the shared scratch index.
FindListValue:

Call_000_3480:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    call ScanListValue

Call_000_348c:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af

Call_000_3495:
    ret

; Find the target in groups two onward; store its group and row and set the result on a match.
ScanListValue:


Call_000_3496:
    ld a, ListSearchFirstGroup
    ld [wFoundGroup], a
    xor a
    ld [wFoundRow], a
    ld d, a
    ld a, JpListSearchStartOffset
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

; Compare the target with the next stored list byte.
FindListNextValue:
jr_000_34a9:
    ld bc, wListBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [wFindListValue]
    cp d
    jr z, FindListMatched

    ld a, [wFoundRow]
    inc a
    ld [wFoundRow], a
    cp JpListPageRows
    jr nz, FindListAdvance

    xor a
    ld [wFoundRow], a
    ld a, [wFoundGroup]

Call_000_34cd:
    inc a
    ld [wFoundGroup], a

; Advance the byte offset and continue until the regional full-list limit.
FindListAdvance:
jr_000_34d1:
    ld d, a
    ldh a, [hChangePos]
    inc a
    ldh [hChangePos], a
    ld a, d
    ld d, a
    ldh a, [hChangePos]
    cp JpListSearchEndOffset
    ld a, d
    jr c, FindListNextValue

    call ClearResult
    ret


; Set result bit zero with the matched group and row retained.
FindListMatched:
jr_000_34e4:
    call SetResult
    ret
; END MODULE list_find.asm
; BEGIN MODULE list_scroll.asm

; Set list cursor position and input selection, then call bank-one ScrollSelection.
ScrollListCursor:


Call_000_34e8:
    ld a, $04
    ld [wCursorX], a
    ld a, $9c
    ld [wCursorY], a
    ld a, InputSelPrevPage
    ld [wInputSel], a
    push af
    ld a, $01
    call PushRomBank

Call_000_34fd:
    pop af
    call ScrollSelection
    call PopRomBank
    ret
; END MODULE list_scroll.asm
; BEGIN MODULE list_head_drop.asm

; Read a target byte from the script and enter the head-list deletion path.
ScriptDropHead:


    call ReadArg

; Store target A, scan the head row, delete using that row, and refresh lists.
DropHeadValue:

Call_000_3508:
    ld [wFindListValue], a
    call FindHeadValue
    ld a, $01
    ld [wChangeMode], a
    ld a, [wFoundRow]
    ld [wListRow], a
    call DropListHead
    call RefreshLists
    ret

; Call the original carry-controlled head-list scan.
FindHeadValue:


Call_000_3520:
    call ScanHeadValue
    ret

; Compare the target with the head-list bytes and retain the original carry-controlled loop.
ScanHeadValue:


Call_000_3524:
    xor a
    ld [wFoundRow], a
    ld c, JpListPageRows
    ld hl, wWorkList+1

; Compare the target with the head row, retaining the original carry-controlled retry.
FindHeadCompare:
jr_000_352d:
    ld a, [wFindListValue]
    cp [hl]
    jr z, FindHeadReturn

    ld a, [wFoundRow]
    inc a
    ld [wFoundRow], a
    inc hl
    inc c
    ld a, JpListDropHeadEndOffset
    cp c
    ; Keep the original carry test: the normal first mismatch returns row one.
    jr c, FindHeadCompare

; Return the matched row or row one after the initial mismatch.
FindHeadReturn:
jr_000_3541:
    ret
; END MODULE list_head_drop.asm
; BEGIN MODULE prop1_test.asm

; Read a property index from the script, set the result from its bit two, and preserve the shared scratch index.
TestProp1Arg:


    call ReadArg
    ld [wArg0], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wArg0]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    call ClearResult
    ld bc, wProp1
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    jr z, TestProp1RestoreIndex

    call SetResult

; Restore the saved HRAM scratch index after testing property-one bit two.
TestProp1RestoreIndex:
jr_000_356e:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
; END MODULE prop1_test.asm
INCLUDE "prop1_bits.asm"
INCLUDE "prop4_bits.asm"
; BEGIN MODULE group_header.asm

; Multiply the full index by eight in HL, unlike the wrapped content-list offset.
; OR zero and write back the unchanged group header.
TouchGroup:


Call_000_37ed:
    ld [wArg0], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, wGroupData
    add hl, bc
    ld a, [hl]
    or $00
    ld [hl], a
    ret

; A = group index; retain only bits 0 and 4 of its eight-byte record header.
MaskGroup:


Call_000_37ff:
    ld [wArg0], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl

Call_000_3807:
    add hl, hl
    ld bc, wGroupData
    add hl, bc
    ld a, [hl]
    and GroupHeaderRetainedBits
    ld [hl], a
    ret
; END MODULE group_header.asm
; BEGIN MODULE list_item.asm

; A = packed byte; store it in the selected slot at wListPacked, then decode it in bank 5.
SetListItem:

Call_000_3811:
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListPacked
    add hl, bc
    ld [hl], a
    push af
    ld a, $05
    call PushRomBank
    pop af
    call DecodeListItem
    call PopRomBank
    ret

; A = packed byte; decode the selected type/value in bank 5 without writing wListPacked.
DecodeList:

Call_000_382c:
    push af
    ld a, $05
    call PushRomBank
    pop af
    call DecodeListItem
    call PopRomBank
    ret
; END MODULE list_item.asm
; BEGIN MODULE case_cue.asm

; Play audio $23 for Case I or $12 for Case II.
PlayCaseCue:


Call_000_383a:
    ld a, [wCaseId]
    cp $00
    jr nz, CaseCueSelectCase2

    ld a, $23
    jr CaseCuePlaySelected

; Use cue $12 for Case II.
CaseCueSelectCase2:
jr_000_3845:
    ld a, $12

; Submit the case-selected cue through PlayAudio.
CaseCuePlaySelected:
jr_000_3847:
    call PlayAudio
    ret
; END MODULE case_cue.asm

ClearMasks:
    db $fe, $fd, $fb, $f7, $ef, $df, $bf, $7f
; BEGIN MODULE save_call.asm

; Call LoadSave in bank 1 and restore the previous ROM bank.
LoadGame:

Call_000_3853:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call LoadSave
    call PopRomBank
    ret

; Call StoreSave in bank 1 and restore the previous ROM bank.
StoreGame:


Call_000_3861:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call StoreSave
    call PopRomBank
    ret

; Call the original partial ClearSave in bank 1 and restore the previous ROM bank.
EraseGame:


Call_000_386f:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ClearSave
    call PopRomBank
    ret

; Call ScanSaves in bank 1 and restore the previous ROM bank.
ScanGames:


Call_000_387d:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ScanSaves
    call PopRomBank

Jump_000_388a:
    ret
; END MODULE save_call.asm
; BEGIN MODULE state_call.asm

; Call SaveSnapshot in bank 1, then restore the previous ROM bank.
SaveState:


Call_000_388b:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call SaveSnapshot
    call PopRomBank
    ret

; Call LoadSnapshot in bank 1, then restore the previous ROM bank.
RestoreState:


Call_000_3899:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call LoadSnapshot
    call PopRomBank
    ret
; END MODULE state_call.asm
; BEGIN MODULE action_calls.asm

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


Call_000_38b5:
    ld a, $06
    call PushRomBank
    call ReadArg
    call PopRomBank

Call_000_38c0:
    ret

; Call InitSelAction in bank 2 and restore the previous ROM bank.
InitAction:


Call_000_38c1:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call InitSelAction
    call PopRomBank
    ret
; END MODULE action_calls.asm
; BEGIN MODULE view_call.asm

; Call FadeFromWhite in bank 1 and restore the previous ROM bank.
FadeIn:


Call_000_38cf:
Jump_000_38cf:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FadeFromWhite
    call PopRomBank
    ret

; Call FadeToWhite in bank 1 and restore the previous ROM bank.
FadeOut:


Call_000_38dd:
Jump_000_38dd:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FadeToWhite
    call PopRomBank
    ret

; Call InitC1View in bank 1 and restore the previous ROM bank.
ReloadC1View:


Call_000_38eb:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call InitC1View
    call PopRomBank

Jump_000_38f8:
    ret

; Call InitC2View in bank 3 and restore the previous ROM bank.
ReloadC2View:


Call_000_38f9:
    push af
    ld a, $03
    call PushRomBank

Jump_000_38ff:
    pop af
    call InitC2View
    call PopRomBank
    ret
; END MODULE view_call.asm
; BEGIN MODULE save_prompt_call.asm

; Run save confirmation in bank two and restore the previous ROM bank.
SavePromptCall:


Call_000_3907:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RunSavePrompt
    call PopRomBank
    ret
; END MODULE save_prompt_call.asm
; BEGIN MODULE list_view_calls.asm

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


Call_000_3923:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawListUI
    call PopRomBank
    ret
; END MODULE list_view_calls.asm
; BEGIN MODULE effect_obj_call.asm

; Call the bank-two single-object list draw and restore the previous ROM bank.
DrawEffectObj:


Call_000_3931:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call BuildEffectObj
    call PopRomBank
    ret
; END MODULE effect_obj_call.asm
; BEGIN MODULE room_target_call.asm

; Run the Case I hit test in the current bank-one context, or switch to bank three for Case II.
PickRoomTarget:


    ld a, [wCaseId]
    cp $00
    jr nz, PickRoomTargetCase2

    call C1PickTarget
    ret


; Switch to bank three for the Case II room-target hit test.
PickRoomTargetCase2:
jr_000_394a:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2PickTarget
    call PopRomBank
    ret
; END MODULE room_target_call.asm
; BEGIN MODULE obj_render_call.asm

; Render the current object list in bank two and restore the previous ROM bank.
RenderObjsCall:


Call_000_3958:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    ret
; END MODULE obj_render_call.asm
; BEGIN MODULE room_cue_call.asm

; Call the bank-two room audio selector with the original A and restore the previous ROM bank.
RoomCueCall:


Call_000_3966:
Jump_000_3966:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call PlayRoomCue
    call PopRomBank
    ret
; END MODULE room_cue_call.asm
; BEGIN MODULE c2_events_call.asm

; Call the case-two event chain in bank three and restore the previous ROM bank.
; Dispatched after a returned primary action, outside the frame-wait service.
C2EventsCall:


Call_000_3974:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2Events
    call PopRomBank
    ret
; END MODULE c2_events_call.asm
; BEGIN MODULE map_step_bank.asm

; Call the forward map-step transition in bank $29 and restore the bank.
MapStepsBank:


Call_000_3982:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call RunMapSteps
    call PopRomBank
    ret

; Call the reverse map-step transition in bank $29 and restore the bank.
MapReverseBank:


Call_000_3990:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call ReverseMapSteps
    call PopRomBank
    ret
; END MODULE map_step_bank.asm
; BEGIN MODULE item_prep_call.asm

; Call PrepItem in bank one with the original A and restore the previous ROM bank.
PrepItemBank:


Call_000_399e:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    ret
; END MODULE item_prep_call.asm
; BEGIN MODULE map_pulse_call.asm

; Select bank $29, draw rectangle states one and zero with the original wait, and restore the bank.
MapPulse10Call:


Call_000_39ac:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call MapPulse10
    call PopRomBank
    ret
; END MODULE map_pulse_call.asm
; BEGIN MODULE map_pulse_bank.asm

; Select bank zero, enter its bank-$29 rectangle-state wrapper, and restore the original bank stack.
MapPulse23Bank:


    push af
    ld a, $00
    call PushRomBank
    pop af
    call MapPulse23Call
    call PopRomBank
    ret
; END MODULE map_pulse_bank.asm
; BEGIN MODULE scroll_call.asm
; Call the bank 1 scroll reset while restoring the previous ROM bank.
ResetObjScroll:


Call_000_39c8:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ResetScroll
    call PopRomBank
    ret
; END MODULE scroll_call.asm
; BEGIN MODULE video_call.asm

; Call bank 2 PlayAnim with the original A, then restore the previous ROM bank.
PlayBankAnim:


Call_000_39d6:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call PlayAnim
    call PopRomBank
    ret

; Call bank 2 StepC2Anim with the original A, then restore the previous ROM bank.
StepBankAnim:


Call_000_39e4:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call StepC2Anim
    call PopRomBank
    ret

; Call bank 1 ReadSceneGfx with the original A, then restore the previous ROM bank.
ReadBankGfx:


    push af
    ld a, $01
    call PushRomBank
    pop af
    call ReadSceneGfx
    call PopRomBank
    ret

; Call bank 1 DrawCursor with the original A, then restore the previous ROM bank.
DrawBankCursor:


Call_000_3a00:
Jump_000_3a00:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawCursor
    call PopRomBank
    ret
; END MODULE video_call.asm
; BEGIN MODULE c1_after_fx_call.asm

; Call the case-one post-effect text sequence in bank one and restore the previous ROM bank.
C1AfterFxCall:


Call_000_3a0e:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ShowC1AfterFx
    call PopRomBank
    ret
; END MODULE c1_after_fx_call.asm
; BEGIN MODULE credit_bg.asm

; Clear and submit OAM, read the scene background in bank one, then continue into ending graphics loading.
; The winning path retains object cache $83: ReadSceneBg requests $7f without replacing a valid ID.
LoadCreditBg:


Call_000_3a1c:
    call ClearOam
    call SubmitOam
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ReadSceneBg

; Pop the previously pushed ROM bank, then continue into ending graphics loading.
FinishCreditBg:
    call PopRomBank

; Request the timer, disable LCD, load indexed bank-$3e map and palette data, restore LCD and blank OAM.
LoadCreditGfx:

Call_000_3a2f:
    call RequestTimer
    call DisableLcd
    ld a, [wCreditIndex]
    push af
    ld a, $3e
    call PushRomBank
    pop af
    call LoadCreditMap
    call PopRomBank
    call StopTimer
    call RestoreLcd
    call BlankOam
    ret
; END MODULE credit_bg.asm
; BEGIN MODULE c2_put_refresh_call.asm

; Call RefreshC2Put in bank three with the original A, then restore the previous ROM bank.
C2PutRefreshCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call RefreshC2Put
    call PopRomBank
    ret
; END MODULE c2_put_refresh_call.asm
; BEGIN MODULE list_mark_call.asm

; Call ClearListMark in bank one with the original A, then restore the previous ROM bank.
ClearListMarkCall:


Call_000_3a5d:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ClearListMark
    call PopRomBank
    ret
; END MODULE list_mark_call.asm
; BEGIN MODULE change_flush_call.asm

; Call FlushChanges in bank two with the original A, then restore the previous ROM bank.
FlushChangesCall:


Call_000_3a6b:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call FlushChanges
    call PopRomBank
    ret
; END MODULE change_flush_call.asm
INCLUDE "action_c2.asm"
; BEGIN MODULE c2_types.asm

C2ScriptTypes:
    dw C2Type0Refs ; type 0
    db $07
    dw C2Type1Refs ; type 1
    db $07
    ; C2Type2Refs: split pointer retains the original interior label.
    db LOW(C2Type2Refs) ; type 2
Call_000_3b03:
    db HIGH(C2Type2Refs)
    db $07
    dw C2Type3Refs ; type 3
    db $07
jr_000_3b08:
    dw C2Type4Refs ; type 4
    db $07
    dw C2Type5Refs ; type 5
    db $08
; END MODULE c2_types.asm
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
