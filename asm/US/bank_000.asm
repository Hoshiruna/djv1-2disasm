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


Call_000_0e5d:
    ld hl, wBgPal
    ld d, $38
    xor a

jr_000_0e63:
    ld [hl+], a
    dec d
    jr nz, jr_000_0e63

    call RequestPals
    call WaitFrame
    ret
INCLUDE "scene_copy.asm"


Call_000_0e8d:
    push de
    push bc
    push hl
    ld de, $0000

jr_000_0e93:
    ld a, [$c8ad]
    ld l, a
    ld a, [$c8ae]
    ld h, a
    add hl, de
    ld a, [hl]
    ld hl, $c865
    add hl, de
    ld [hl], a
    inc e
    ld a, e
    cp $04
    jr c, jr_000_0e93

    call Call_000_0eaf
    pop hl
    pop bc
    pop de
    ret


Call_000_0eaf:
    ld a, [$c523]
    and $7f
    ld [$c523], a
    ld hl, $c865
    ld a, [$c8ab]
    cp [hl]
    jr nc, jr_000_0ec1

    ret


jr_000_0ec1:
    inc hl
    cp [hl]
    jr c, jr_000_0ec8

Call_000_0ec5:
    jr z, jr_000_0ec8

    ret


jr_000_0ec8:
    inc hl
    ld a, [$c8ac]
    cp [hl]
    jr nc, jr_000_0ed0

    ret


jr_000_0ed0:
    inc hl
    cp [hl]
    jr c, jr_000_0ed7

    jr z, jr_000_0ed7

    ret


jr_000_0ed7:
    ld a, [$c523]
    or $80
    ld [$c523], a
    ret
INCLUDE "obj_list.asm"
INCLUDE "text_select.asm"


    push hl
    push de
    ld c, $00
    cp $9e
    jr nc, jr_000_10bf

    ld a, [$c1a7]
    call PushRomBank
    ld a, [$c537]

Call_000_108d:
    ld l, a
    ld h, $00
    add hl, hl

Jump_000_1091:
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c1a5]
    ld e, a
    ld a, [$c1a6]
    ld d, a
    add hl, de
    ld a, [hl]
    call PopRomBank
    cp $1f
    jr z, jr_000_10bf

    cp $0c
    jr z, jr_000_10bf

    inc c
    cp $05
    jr z, jr_000_10bf

    inc c
    cp $0d
    jr z, jr_000_10bf

    inc c
    cp $42
    jr z, jr_000_10bf

    inc c
    cp $47
    jr z, jr_000_10bf

    ld c, $00

jr_000_10bf:
    pop de
    pop hl
    ld a, c
    ret


Call_000_10c3:
Jump_000_10c3:
    ret


Call_000_10c4:
    ret


Call_000_10c5:
    ret


    ret


    nop
    ld [de], a
    inc h
    ld [hl], $48
    ld e, d
    ld l, h
    ld a, [hl]
    sub b

Call_000_10d0:
    ld a, $01
    call PushRomBank
    call Call_000_10dc
    call PopRomBank
    ret


Call_000_10dc:
    ld a, [$c8e6]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_10fd

Jump_000_10f0:
    ld bc, $71fe
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl+]

Jump_000_10fb:
    jr jr_000_1108

jr_000_10fd:
    ld bc, $721e
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl+]

jr_000_1108:
    ld [$c19a], a
    ld a, [hl]
    ld [$c19b], a
    call Call_000_1117
    ret


Call_000_1113:
    call Call_000_111c
    ret


Call_000_1117:
    call Call_000_11df
    jr jr_000_1122

Call_000_111c:
    call Call_000_11e5
    call Call_000_1427

Call_000_1122:
jr_000_1122:
    call Call_000_1722
    ld [$c660], a
    cp $5f
    jr z, jr_000_118c

    cp $1f
    jr z, jr_000_11a3

    call Call_000_1135

Call_000_1133:
    jr jr_000_1122

Call_000_1135:
    cp $1b
    jp z, Jump_000_1315

    cp $1c
    jr z, jr_000_1178

    cp $1d
    jp z, Jump_000_132a

    cp $3c
    jp z, Jump_000_1209

    cp $3d
    jp z, Jump_000_1209

    cp $3e
    jp z, Jump_000_11eb

    cp $3f
    jp z, Jump_000_1256

    cp $54
    jp z, Jump_000_126f

    cp $50
    jp z, Jump_000_1397

    cp $51
    jp z, Jump_000_13c1

    cp $52
    jp z, Jump_000_1385

    cp $53
    jp z, Jump_000_138e

    cp $55
    jp z, Jump_000_1183

    jp Jump_000_1461


jr_000_1178:
    ld a, [$c88f]
    bit 1, a
    call z, Call_000_1315
    jp Jump_000_132d


Jump_000_1183:
    ld a, [$c88f]
    or $80
    ld [$c88f], a
    ret


jr_000_118c:
    call SubmitMapQueue

jr_000_118f:
    call SubmitMapQueue
    call DrawRoomObjs
    call SubmitOam
    call PollJoy
    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_118f

    ret


jr_000_11a3:
    ld a, [$c88f]
    bit 1, a
    call z, Call_000_1315

Call_000_11ab:
    ld a, [$c523]
    and $08
    jr z, jr_000_11ba

    ld a, [$c88f]
    and $02
    jr nz, jr_000_11bd

    ret


jr_000_11ba:
    call Call_000_11c1

jr_000_11bd:
    call Call_000_11e5
    ret


Call_000_11c1:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_11de

    ld a, $00
    ld [$c892], a
    call Call_000_1746
    call DrawRoomObjs
    call SubmitOam
    ld a, [$c523]
    and $f7
    ld [$c523], a

jr_000_11de:
    ret


Call_000_11df:
    ld a, $02
    ld [$c88f], a
    ret


Call_000_11e5:
    ld a, $01
    ld [$c88f], a
    ret


Jump_000_11eb:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [$c19a], a
    ld a, h
    ld [$c19b], a
    xor a
    ld [$c8eb], a
    ld a, [bc]
    ld [$c885], a
    jr jr_000_120f

Jump_000_1209:
    call Call_000_1722
    ld [$c885], a

jr_000_120f:
    ld a, [$c885]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    inc hl
    ld a, [$c1a5]
    ld c, a
    ld a, [$c1a6]
    ld b, a
    add hl, bc
    ld a, l
    ld [$c887], a

Jump_000_1227:
    ld a, h
    ld [$c888], a
    ld a, [$c1a7]
    call PushRomBank
    call Call_000_1237
    jp PopRomBank


Call_000_1237:
jr_000_1237:
    ld a, [$c887]
    ld l, a
    ld a, [$c888]
    ld h, a

Call_000_123f:
    ld a, [hl+]
    cp $1f
    ret z

    ld [$c660], a
    ld a, l
    ld [$c887], a
    ld a, h
    ld [$c888], a
    ld a, [$c660]
    call Call_000_1461
    jr jr_000_1237

Jump_000_1256:
    call Call_000_1400

Jump_000_1259:
    call Call_000_135b
    ld a, [$c88b]

Call_000_125f:
    call Call_000_133d
    ld a, [$c88c]
    call Call_000_133d
    ld a, [$c88d]
    call Call_000_134d
    ret


Jump_000_126f:
    call $12e7
    call Call_000_1294
    ld a, [$c889]
    call Call_000_133d
    ld a, [$c88a]
    call Call_000_133d
    ld a, [$c88b]
    call Call_000_133d
    ld a, [$c88c]
    call Call_000_133d
    ld a, [$c88d]
    call Call_000_134d
    ret


Call_000_1294:
    ld de, $0000

jr_000_1297:
    ld c, e
    ld b, d
    sla c

jr_000_129b:
    ld a, [$c885]
    ld [$c887], a
    ld hl, $12dd
    add hl, bc
    sub [hl]
    ld [$c885], a
    ld a, [$c886]
    ld [$c888], a
    inc hl
    sbc [hl]
    ld [$c886], a
    jr c, jr_000_12c0

    ld hl, $c889
    add hl, de
    ld a, [hl]
    add $01
    ld [hl], a
    jr jr_000_129b

jr_000_12c0:
    ld a, [$c887]
    ld [$c885], a
    ld a, [$c888]
    ld [$c886], a
    inc de
    ld a, $04
    cp e
    jr nz, jr_000_1297

    ld a, [$c885]
    ld [$c88d], a
    xor a
    ld [$c88e], a
    ret


    db $10
    daa
    add sp, $03
    ld h, h
    nop
    ld a, [bc]
    nop
    ld bc, $fa00
    sbc d
    pop bc
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld [$c887], a
    ld a, [hl]
    ld [$c888], a

Call_000_12f7:
    call Call_000_13e8
    ld a, [$c887]
    ld l, a
    ld a, [$c888]
    ld h, a
    ld a, [hl+]

Call_000_1303:
    ld [$c885], a
    ld a, [hl]
    ld [$c886], a
    ld hl, $c889
    xor a
    ld c, $05

Jump_000_1310:
jr_000_1310:
    ld [hl+], a
    dec c
    jr nz, jr_000_1310

    ret


Call_000_1315:
Jump_000_1315:
    ld a, [$c890]
    cp $00
    jr z, jr_000_131f

    call SubmitMapQueue

jr_000_131f:
    xor a
    ld [$c890], a
    ld [$c891], a
    call Call_000_16cb
    ret


Jump_000_132a:
    jp Jump_000_15c7


Jump_000_132d:
    ld a, [$c88f]
    and $02
    ret nz

    xor a

Call_000_1334:
    ld [wWaitFrame], a
    ld [wWaitTick], a
    jp Jump_000_1427


Call_000_133d:
    ld [$c660], a
    cp $00
    jr nz, jr_000_134a

    ld a, [$c88e]
    cp $00
    ret z

jr_000_134a:
    ld a, [$c660]

Call_000_134d:
    or $30
    ld [$c660], a
    ld a, $ff
    ld [$c88e], a
    call Call_000_1461
    ret


Call_000_135b:
    ld a, [$c885]
    ld e, a
    ld b, $64
    call Call_000_1379
    ld [$c88b], a
    ld b, $0a
    call Call_000_1379
    ld [$c88c], a
    ld a, e
    ld [$c88d], a
    ld a, $00
    ld [$c88e], a
    ret


Call_000_1379:
    ld d, $00

jr_000_137b:
    ld a, e
    sub b
    jr c, jr_000_1383

    inc d
    ld e, a

Call_000_1381:
    jr jr_000_137b

jr_000_1383:
    ld a, d
    ret


Jump_000_1385:
    ld a, [$c88f]
    and $fe
    ld [$c88f], a
    ret


Jump_000_138e:
    ld a, [$c88f]
    or $01
    ld [$c88f], a
    ret


Jump_000_1397:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_13ae

    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c662], a
    call Call_000_13ef
    ret


jr_000_13ae:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c668], a
    ld [$c893], a
    call Call_000_13ef

Call_000_13c0:
Jump_000_13c0:
    ret


Jump_000_13c1:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_13d8

    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c663], a
    call Call_000_13ef
    ret


jr_000_13d8:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c669], a
    call Call_000_13ef
    ret


Call_000_13e8:
    ld a, [$c19a]
    add $02
    jr jr_000_13f4

Call_000_13ef:
    ld a, [$c19a]
    add $01

jr_000_13f4:
    ld [$c19a], a
    ld a, [$c19b]
    adc $00

Jump_000_13fc:
    ld [$c19b], a
    ret


Call_000_1400:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]

Call_000_1409:
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [$c19a], a
    ld a, h
    ld [$c19b], a
    xor a
    ld [$c8eb], a
    ld a, [bc]
    ld [$c885], a
    ld hl, $c889
    ld d, $05
    xor a

jr_000_1422:
    ld [hl+], a
    dec d
    jr nz, jr_000_1422

    ret


Call_000_1427:
Jump_000_1427:
    ld a, $ff
    ld [$c1a2], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5091
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    ld a, $12
    ld [$c66c], a
    ld a, $08
    ld [$c66d], a
    xor a
    ld [$c65e], a
    ld [$c65f], a
    call Call_000_1647
    xor a
    ld [$c890], a
    ld [$c893], a
    ld [$c894], a
    call Call_000_173a
    ret


Call_000_1461:
Jump_000_1461:
    ld a, [$c660]
    cp $d0
    jr nc, jr_000_1470

    ld e, a
    ld d, $00
    ld hl, $14a5
    add hl, de
    ld a, [hl]

jr_000_1470:
    ld [$c666], a
    ld a, [$c88f]
    and $02
    jp z, Jump_000_1514

    ld a, [$c668]
    ld [$c195], a
    ld a, [$c669]
    ld [$c196], a
    call Call_000_1620
    ld a, $01
    ld [$c664], a
    ld [$c665], a
    ld hl, $c664
    call Call_000_14f5
    ld a, [$c668]
    inc a
    ld [$c668], a
    and $e0
    ret z

    jp Jump_000_15c7


    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e

Call_000_14b0:
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $7f7f

    ld a, a
    ld a, a
    ld a, a
    ld a, a
    and c
    and h
    and l
    set 1, h
    call $8ad5
    adc e
    adc $cf
    ld a, a
    cp $a3
    ld a, a
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    pop de
    db $d3
    call nc, $d0d6
    jp nc, $d9d8

    jp c, $7fd7

    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

Call_000_14f5:
    ld a, [$c88f]
    bit 6, a
    jr nz, jr_000_1500

    call QueueTileRect
    ret


jr_000_1500:
    ld a, [$c88f]
    bit 7, a
    jr z, jr_000_150b

    ld a, $06
    jr jr_000_150d

jr_000_150b:
    ld a, $07

jr_000_150d:
    ld [$c667], a
    call QueueMapRect
    ret


Jump_000_1514:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_153a

    call PollJoy
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_153a

    ld a, $ff
    ld [$c890], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5091
    call PopRomBank
    call RefreshObjOam

jr_000_153a:
    ld a, [$c65e]
    inc a

Jump_000_153e:
    ld b, a
    ld a, [$c662]
    add b
    ld [$c195], a
    ld a, [$c65f]
    inc a
    ld b, a
    ld a, [$c663]
    add b
    ld [$c196], a
    call Call_000_1620
    ld a, $01
    ld [$c664], a

Jump_000_155a:
    ld [$c665], a
    ld hl, $c664
    call Call_000_14f5
    ld a, [$c5df]
    cp $ff
    jr z, jr_000_1571

    ld a, [$c890]
    cp $00
    jr nz, jr_000_158e

jr_000_1571:
    call SubmitMapQueue
    ld a, $03

jr_000_1576:
    push af
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5091
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    pop af
    dec a
    jr nz, jr_000_1576

jr_000_158e:
    ld a, [$c663]
    ld e, a
    ld d, $00
    ld hl, $10c7
    add hl, de
    ld a, [hl]
    ld b, a
    ld a, [$c662]
    add b
    ld e, a
    ld d, $00
    ld a, [$c666]
    ld hl, $c66e
    add hl, de
    ld [hl], a
    ld a, [$c662]
    inc a
    ld [$c662], a
    ld b, a
    ld a, [$c66c]
    cp b
    ret nz

    ld a, [$c894]
    cp $00
    jr nz, jr_000_15c1

    call Call_000_15c7
    ret


jr_000_15c1:
    ld a, $11
    ld [$c662], a
    ret


Call_000_15c7:
Jump_000_15c7:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_15eb

    ld a, [$c663]
    inc a
    ld [$c663], a
    ld b, a
    ld a, [$c66d]
    cp b
    jr nz, jr_000_15e6

    call Call_000_1603
    ld a, [$c663]
    dec a
    ld [$c663], a

jr_000_15e6:
    xor a
    ld [$c662], a
    ret


jr_000_15eb:
    ld a, [$c893]
    ld [$c668], a
    ld a, [$c669]
    inc a
    ld [$c669], a
    ld a, [$c669]
    cp $20
    ret nz

    xor a
    ld [$c669], a
    ret


Call_000_1603:
Jump_000_1603:
    ld hl, $c66e
    ld bc, $c680
    ld d, $7e

jr_000_160b:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_000_160b

Call_000_1611:
    ld d, $12
    ld a, $7f

jr_000_1615:
    ld [hl+], a
    dec d
    jr nz, jr_000_1615

    call Call_000_1674
    call SubmitMapQueue
    ret


Call_000_1620:
Jump_000_1620:
    push hl
    ld a, [$c88f]
    bit 0, a
    jr nz, jr_000_162d

    ld bc, $9800
    jr jr_000_1630

jr_000_162d:
    ld bc, $9c00

jr_000_1630:
    ld a, [$c196]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    ld a, [$c195]
    ld c, a
    ld b, $00
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret


Call_000_1647:
    ld a, [$c88f]
    and $02
    ret nz

    ld a, [$c892]
    cp $00

Call_000_1652:
    jr nz, jr_000_165c

    call Call_000_1681
    ld a, $ff
    ld [$c892], a

jr_000_165c:
    xor a
    ld [$c662], a
    ld [$c663], a
    ld hl, $c66e
    ld bc, $0090
    ld d, $7f

jr_000_166b:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_166b

    jr jr_000_1674

Call_000_1674:
jr_000_1674:
    ld bc, $9c21
    ld hl, $c66c
    call QueueTileRect
    call SubmitMapQueue
    ret


Call_000_1681:
    ld hl, $1697
    ld bc, $9c00
    call QueueMapFill
    ld hl, $169b
    ld bc, $9c20
    call QueueMapFill
    call SubmitMapQueue
    ret


    inc d
    ld bc, $0777
    inc d
    add hl, bc
    ld a, a
    rlca
    call SubmitMapQueue
    ld d, $14

jr_000_16a4:
    call WaitFrame
    dec d
    jr nz, jr_000_16a4

    ld a, [$c188]
    push af
    ld d, $1e

jr_000_16b0:
    push de
    call WaitFrame
    call PollJoy
    pop de
    dec d
    jr z, jr_000_16c6

    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_16b0

    bit 1, a
    jr nz, jr_000_16b0

jr_000_16c6:
    pop af
    ld [$c188], a
    ret


Call_000_16cb:
    call SubmitMapQueue

jr_000_16ce:
    call Call_000_1706
    call PollJoy
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_16ce

    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_16e6

    ld a, $31
    jr jr_000_16e8

jr_000_16e6:
    ld a, $18

jr_000_16e8:
    call PlayAudio

jr_000_16eb:
    call Call_000_1706
    call PollJoy
    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_16eb

    xor a
    ld [wWaitFrame], a
    ld [wWaitTick], a

; Draw room objects and submit the OAM buffer.
RefreshObjOam:

Call_000_16ff:
jr_000_16ff:
    call DrawRoomObjs
    call SubmitOam
    ret


Call_000_1706:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5091
    call PopRomBank
    push af
    ld a, $02
    call PushRomBank
    pop af
    call StepWaitAnim
    call PopRomBank

Call_000_1720:
    jr jr_000_16ff

Call_000_1722:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld [$c8ec], a
    ld a, l
    ld [$c19a], a
    ld a, h
    ld [$c19b], a
    ld a, [$c8ec]
    ret


Call_000_173a:
    ld a, $07
    ldh [rWX], a
    ld a, $48
    ldh [rWY], a
    call ShowWindow
    ret


Call_000_1746:
    xor a
    ld [$c1a2], a
    call HideWindow
    ret
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
; Preserve registers while drawing the current room-object list.
DrawRoomObjs:


Call_000_1875:
    push hl
    push bc
    push de
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret


Call_000_1889:
    push hl
    push bc
    push de

Call_000_188c:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawCursor
    call PopRomBank
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret


Call_000_18aa:
    cp $ff
    ret z

    push hl
    push bc
    push de
    push af
    ld a, $02
    call PushRomBank
    pop af
    call DrawUiSprite
    call PopRomBank
    pop de
    pop bc

Jump_000_18bf:
    pop hl
    ret
; A = sprite ID; skip $ff and call the case-specific sprite writer in bank 2.
DrawSprite:


Call_000_18c1:
Jump_000_18c1:
    cp $ff

Jump_000_18c3:
    ret z

    push hl
    push bc
    push de
    push af
    ld a, $02
    call PushRomBank
    pop af
    call DrawCaseSprite
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret
; A = object ID; draw its first animation frame through bank 2.
DrawObjSprite:


Call_000_18d8:
    cp $ff
    ret z

    push hl

Call_000_18dc:
    push bc
    push de
    push af
    ld a, $02
    call PushRomBank
    pop af
    call DrawObjFrame
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret
INCLUDE "scene_pal.asm"
INCLUDE "ui_pal.asm"
INCLUDE "ui_res.asm"
INCLUDE "action_run.asm"
INCLUDE "script_arg.asm"

    ret


    ld a, $3c
    call WaitTicks
    ret


Jump_000_1af5:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $63e6
    call PopRomBank
    call RefreshLists
    ret
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


    push af
    ld a, $00
    call PushRomBank
    pop af
    call Call_000_2051
    call PopRomBank

Jump_000_2041:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomNext

Call_000_204b:
    call PopRomBank
    jp EnterRoom


Call_000_2051:
    call SaveState
    push af
    ld a, $02
    call PushRomBank
    pop af
    call FlushChanges
    call PopRomBank
    ld a, [$c524]
    cp $01
    jr nz, jr_000_2070

    ld a, $02
    ld [$c524], a

Jump_000_206d:
    call RefreshLists

jr_000_2070:
    ld a, [wRoomId]

Call_000_2073:
    ld [$c536], a
    ret


    call ReadArg

Call_000_207a:
Jump_000_207a:
    ld [wRoomId], a
    call ResetObjScroll
    ld a, [wCaseId]

Jump_000_2083:
    cp $00
    jr nz, jr_000_20b0

Jump_000_2087:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PickC1Scene
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FillRoomPanel

Jump_000_209e:
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawC1Marks
    call PopRomBank
    jr jr_000_20d7

jr_000_20b0:
    push af
    ld a, $03
    call PushRomBank

Call_000_20b6:
    pop af
    call PickC2Scene
    call PopRomBank
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

jr_000_20d7:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawC1Marks
    call PopRomBank
    call ShowScene
    call BuildObjList
    ret


    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call SetStateBit
    call SetAttr2
    ld bc, $c8c6

Call_000_20ff:
Jump_000_20ff:
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call PlayCaseCue
    jp Jump_000_211c


    call ReadArg
    call SetStateBit

Jump_000_2113:
    call SetAttr2
    ld a, [$c8a7]
    call PlayCaseCue

Call_000_211c:
Jump_000_211c:
jr_000_211c:
    call ResetObjScroll
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2141

    push af
    ld a, $01
    call PushRomBank
    pop af
    call PickC1Scene
    call PopRomBank
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RefreshC1
    call PopRomBank
    ret


Call_000_2141:
jr_000_2141:
    push af
    ld a, $03
    call PushRomBank
    pop af

Jump_000_2148:
    call PickC2Scene
    call PopRomBank
    call ReloadScene
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomState
    call PopRomBank
    jr jr_000_2164

Call_000_2161:
    call ReadArg

Call_000_2164:
jr_000_2164:
    call SetStateBit
    ld a, [$c8a7]
    jr jr_000_211c

Call_000_216c:
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    call ClearAttr2
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a

Call_000_2183:
    ldh a, [$ffa1]
    ld h, a
    add hl, bc

Call_000_2187:
    ld a, [hl]
    call PlayCaseCue
    jp Jump_000_211c


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomState
    call PopRomBank
    jp Jump_000_21c1


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomStateA

Call_000_21a8:
    call PopRomBank
    call Call_000_21c1
    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomStateB
    call PopRomBank
    jp Jump_000_21c1


    call ReadArg

Call_000_21c1:
Jump_000_21c1:
    call ClearStateBit
    call PlayCaseCue
    jp Jump_000_211c
INCLUDE "script_room.asm"
INCLUDE "script_item.asm"


    push af

Jump_000_224e:
    ld a, $01
    call PushRomBank
    pop af
    call WriteOpSlots
    call PopRomBank
    ld e, $10
    ld hl, $c8d4
    ld bc, $c8e4

jr_000_2262:
    ld a, [hl]

Jump_000_2263:
    ld d, a
    ld a, [bc]

Jump_000_2265:
    ld [hl-], a

Jump_000_2266:
    ld a, d
    ld [bc], a
    dec bc
    dec e
    jr nz, jr_000_2262

    ret


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


Call_000_228b:
    call Call_000_228f
    ret


Call_000_228f:
    ld a, [$c8b0]
    cp $02
    jr nz, jr_000_22bf

    ld a, [$c524]
    cp $01

Jump_000_229b:
    jr nz, jr_000_22bf

    ld bc, $c8c9
    ldh a, [$ffa0]

Jump_000_22a2:
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c524], a
    ld bc, $c8ca
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c526], a

Jump_000_22b9:
    call Call_000_332d
    call Call_000_236a

jr_000_22bf:
    call SetAttr0
    ld a, [wCaseId]
    cp $00
    jr z, jr_000_22d3

    call Call_000_310d
    ld a, [$c523]
    and $01
    jr nz, jr_000_230a

jr_000_22d3:
    call Call_000_32c1
    ld bc, $c8d2
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a

Jump_000_22e2:
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c468
    add hl, bc
    ld [hl], a
    call Call_000_2a6b
    call Call_000_3289
    ld a, [$c525]
    ld [$c865], a
    call Call_000_3239
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $697b
    call PopRomBank

jr_000_230a:
    ld a, [$c8b0]
    cp $02
    jr z, jr_000_2322

    ld a, [$c5c2]
    call ClearObjVisible

Jump_000_2317:
    call RefreshObjs
    ld a, [$c529]
    inc a
    ld [$c528], a
    ret


jr_000_2322:
    ld a, [$c5e5]
    cp $01
    ret z

    ld a, $3c
    call WaitTicks
    ld a, $01
    ld [$c524], a
    call RefreshLists
    ret


Call_000_2336:
Jump_000_2336:
    call SetItemFlag
    jr jr_000_233e

    call SetItemArg

jr_000_233e:
    call Call_000_32c1
    ld a, [$c8a7]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c468
    add hl, bc
    ld [hl], a
    ld a, [$c525]
    ld [$c865], a
    call Call_000_3239
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $697b
    call PopRomBank
    jp Jump_000_2317


Call_000_236a:
    ld a, [$c528]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $c52a
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
    jr nz, jr_000_239d

    ld bc, $c53b
    add hl, bc
    ld bc, $c46f
    ld e, $00

jr_000_2393:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $07
    jr c, jr_000_2393

    ret


jr_000_239d:
    ld bc, $c53c
    add hl, bc
    ld bc, $c46f
    ld e, $00

jr_000_23a6:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $06
    jr c, jr_000_23a6

    ret


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_23d5

    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_000_23d5

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr z, jr_000_23f9

jr_000_23d5:
    ld a, [$c529]
    cp $ff
    jr z, jr_000_23f9

    cp $03
    jr c, jr_000_23f9

    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_23f0

    ld a, $71
    call ShowMsg2
    call ClearAttr2
    ret


jr_000_23f0:
    ld a, $9d
    call ShowMsg1
    call ClearAttr2
    ret


jr_000_23f9:
    push af
    ld a, $02
    call PushRomBank
    pop af

Call_000_2400:
Jump_000_2400:
    call KeepC1Pair

Call_000_2403:
    call PopRomBank
    call SetAttr2
    ld a, [$c529]
    inc a
    ld [$c529], a
    ld [$c528], a
    call WriteChange
    call Call_000_3138
    call Call_000_31a4

Call_000_241c:
    ld a, $01
    ld [$c865], a
    call Call_000_3239
    ret

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


    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call ReadArg
    call Call_000_2696
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_2696:
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_000_26a0:
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_26b9

    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    cp $05
    jr c, jr_000_26a0

    ret


jr_000_26b9:
    ld a, [$c8a7]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c468
    add hl, bc
    ld [hl], a
    ld a, [$c524]
    cp $00
    jr z, jr_000_26eb

    push af
    call Call_000_2a6b
    xor a
    ld [$c865], a
    call Call_000_3239
    call Call_000_339c
    ld a, $3c
    call WaitTicks
    pop af
    ld [$c524], a
    call RefreshLists
    ret


jr_000_26eb:
    xor a
    ld [$c865], a
    call Call_000_3239
    ret


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2767

    ld a, $80
    call ReadObjFlag

Jump_000_26ff:
    ld a, [$c523]
    and $01
    jr nz, jr_000_2726

    ld a, [$c8c5]
    cp $03
    jr nz, jr_000_2718

    ld a, [$c8c6]
    cp $08
    jr z, jr_000_2726

    cp $2d
    jr z, jr_000_2726

jr_000_2718:
    call TestAttr0
    ld a, [$c523]
    and $01
    jr nz, jr_000_2726

    pop bc
    jp EndBankAction


jr_000_2726:
    ld a, $80
    call ClearObjFlag

jr_000_272b:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PollCursor
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af

Call_000_273f:
    call HandleAltInput
    call PopRomBank
    ld a, $7f
    call ReadObjFlag
    ld a, [$c523]
    and $01
    jr nz, jr_000_275d

    ld a, [$c523]
    and $04
    jr nz, jr_000_272b

    pop bc
    call PopRomBank
    ret


jr_000_275d:
    ld a, $7f
    call ClearObjFlag
    pop bc
    call PopRomBank
    ret


jr_000_2767:
    ld a, $88
    call ReadObjFlag
    jr nz, jr_000_2791

    call TestAttr0
    ld a, [$c523]
    and $01
    jr nz, jr_000_2791

    ld a, [$c8b2]
    cp $02
    jr z, jr_000_2788

    ld a, $e5
    call ShowMsg0
    pop bc
    jp EndBankAction


jr_000_2788:
    ld a, $9e
    call ShowMsg1
    pop bc
    jp EndBankAction


jr_000_2791:
    ld a, $88
    call ClearObjFlag
    ld a, [$c8b2]
    cp $02
    jr z, jr_000_27a4

    ld a, $a7
    call ShowMsg1
    jr jr_000_27a9

jr_000_27a4:
    ld a, $15
    call ShowMsg1

jr_000_27a9:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PollCursor
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call HandleAltInput
    call PopRomBank
    ld a, $8f
    call ReadObjFlag
    jr nz, jr_000_27d6

    ld a, [$c523]
    and $04
    jr nz, jr_000_27a9

    pop bc
    call PopRomBank
    ret


jr_000_27d6:
    ld a, $8f
    call ClearObjFlag
    pop bc
    call PopRomBank
    ret


    ld a, [$c8d5]
    cp $02
    jr nz, jr_000_27eb

    call SetResult
    ret


jr_000_27eb:
    ld a, $05
    call PushRomBank
    ld a, [wRoomId]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $4000
    add hl, bc
    ld a, [hl+]
    ld [$c8ad], a
    ld a, [hl]

Call_000_2800:
Jump_000_2800:
    ld [$c8ae], a

Jump_000_2803:
    ld a, [$c8ad]
    ld l, a
    ld a, [$c8ae]
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_000_2846

Call_000_2811:
    ld bc, $0004
    add hl, bc
    ld a, [hl+]
    and $7f
    ld c, a
    ld a, [$c8c5]
    cp c
    jr nz, jr_000_2852

    ld a, [hl-]
    ld c, a
    ld a, [$c8c6]
    cp c
    jr nz, jr_000_2852

    call Call_000_0e8d
    ld a, [$c523]
    and $80
    jr z, jr_000_2852

    ld a, [hl+]
    and $7f
    ld [$c8d5], a
    ld a, [hl+]
    ld [$c8d6], a
    ld a, [hl]
    ld [$c5c2], a
    call PopRomBank
    call SetResult
    ret


Jump_000_2846:
    ld a, $80
    call ClearObjFlag
    call PopRomBank
    call ClearResult
    ret


jr_000_2852:
    call NextRoomObj
    jp Jump_000_2803


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_286d

    push af
    ld a, $02
    call PushRomBank
    pop af
    call $6a45
    call PopRomBank
    ret


jr_000_286d:
    call ReadArg
    ld [$c5c8], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $50b0
    call PopRomBank
    ret


Jump_000_2881:
    ld d, a
    ld a, $00
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PackListItem
    call PopRomBank
    ld a, [wListCode]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b
    ld bc, $c53b
    add hl, bc
    ld [hl], a
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $6b11
    call PopRomBank
    ret


    call ReadArg

Call_000_28b9:
    ld a, [$c53a]
    ld e, a
    ld a, [$c8a7]
    add e
    ld [$c53a], a
    xor a
    ld [$c8b6], a
    ret


    call ClearResult
    ld a, [$c53a]
    cp $00
    jr z, jr_000_28f3

    dec a
    ld [$c53a], a
    xor a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    ld a, [$c8d2]
    push af
    call Call_000_3239
    pop af
    ld [$c8d2], a
    call SetResult
    ret


jr_000_28f3:
    ld a, $72
    call ShowMsg2
    ret


    call ReadArg
    ld a, [$c53a]

Call_000_28ff:
    ld hl, $c8a7

Jump_000_2902:
    sub [hl]
    jr c, jr_000_2942

    ld [$c53a], a
    ld a, [wRoomId]
    cp $27
    jr z, jr_000_291d

    ld a, $81
    call ReadObjFlag
    ld a, [$c523]
    and $01
    jr nz, jr_000_292e

    jr jr_000_2929

jr_000_291d:
    ld a, $a0
    call ReadObjFlag

Jump_000_2922:
    ld a, [$c523]
    and $01
    jr nz, jr_000_292e

jr_000_2929:
    ld a, $82
    call SetObjFlag

jr_000_292e:
    xor a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3239
    call SetResult
    ret


jr_000_2942:
    ld a, [wRoomId]
    cp $26
    jr z, jr_000_2951

    cp $27

Jump_000_294b:
    jr z, jr_000_295a

    call ClearResult
    ret


jr_000_2951:
    ld a, $81
    call SetObjFlag

Jump_000_2956:
    call ClearResult
    ret


jr_000_295a:
    ld a, $a0
    call SetObjFlag
    call ClearResult
    ret
INCLUDE "list_room.asm"


    call ReadArg
    ld c, a
    ld bc, $c8cb
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp c
    jr z, jr_000_2a1b

Call_000_2a17:
    call ClearResult
    ret


jr_000_2a1b:
    call SetResult
    ret
INCLUDE "room_arg.asm"


    call ResetObjScroll
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PlayC2PickFx
    call PopRomBank
    ret


Call_000_2a4c:
    ld a, [$c523]
    or $08
    ld [$c523], a
    ld a, [wCaseId]
    cp $00
    ret nz

    call ReadArg
    ret


Call_000_2a5e:
    ld a, [$c534]
    cp $00

Jump_000_2a63:
    jr z, jr_000_2a6b

    ld [$c524], a
    call RefreshLists

Call_000_2a6b:
Jump_000_2a6b:
jr_000_2a6b:
    ld a, [$c523]
    and $f7
    ld [$c523], a
    call Call_000_11ab
    ret


Call_000_2a77:
Jump_000_2a77:
    ld a, [$c523]
    and $f7
    ld [$c523], a
    ret


    call ReadArg
    ld [$c537], a
    ret


    call ReadArg
    ld [$c538], a
    ret


    ld a, [$c8cb]
    ld [$c537], a
    ret


    ld bc, $c8cb
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c537], a
    ret


    ld bc, $c8cb
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c538], a
    ret
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


jr_000_2b06:
    call ReadArgs4
    ld a, [$c8a7]
    cp $fe
    jr z, jr_000_2b31

    ld d, a
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_000_2b06

    ld a, [$c8a8]
    ld d, a
    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_000_2b06

jr_000_2b31:
    ld a, [$c8a9]
    ld [$c8a5], a

Call_000_2b37:
    ld a, [$c8aa]
    ld [$c8a6], a
    ret


    ld a, [$c53a]

Jump_000_2b41:
    dec a
    ld [$c53a], a
    call RefreshLists
    ret


    ld a, [$c53a]
    cp $00
    jr z, jr_000_2b54

    call SetResult
    ret


jr_000_2b54:
    call ClearResult
    ret


    call ClearResult
    call ReadArg
    ld a, [$c8a7]
    ld c, a
    ld a, [$c53a]
    cp c
    jr z, jr_000_2b6a

    jr nc, jr_000_2b6d

jr_000_2b6a:
    call SetResult

jr_000_2b6d:
    ret


    call ClearResult
    call ReadArg
    ld hl, $c55b
    cp [hl]
    jr nz, jr_000_2b7d

    call SetResult

jr_000_2b7d:
    ret


    call ClearResult
    ld a, [$c55b]
    cp $00
    jr nz, jr_000_2b91

Jump_000_2b88:
    ld a, [$c8c6]
    ld [$c55b], a
    call SetResult

jr_000_2b91:
    ret


    call ClearResult
    ld a, [$c55b]
    cp $00
    jr z, jr_000_2ba3

    xor a
    ld [$c55b], a
    call SetResult

jr_000_2ba3:
    ret


    call ClearResult
    ld a, [$c55b]
    cp $00
    ret z

    ld a, $01
    ld [$c5e5], a
    ld a, $03
    ld [$c8c5], a
    ld a, [$c55b]
    ld [$c8c6], a
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
    call Call_000_228b
    xor a
    ld [$c5e5], a
    ld a, [$c535]
    ld [$c526], a
    xor a
    ld [$c55b], a
    call SetResult
    ret


Call_000_2bef:
    call ReadArg
    ld hl, $c563
    add [hl]
    ld [hl], a
    ld a, $08
    ld [$c8b6], a
    ld [$c8d2], a

Call_000_2bff:
    ret


    call Call_000_2bef

Jump_000_2c03:
    ld a, $08
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3239
    ld a, [$c5c2]
    call ClearObjVisible
    call RefreshObjs
    call SetResult
    ret


Call_000_2c24:
    ld a, [$c564]
    inc a
    ld [$c564], a
    ld a, $2d
    ld [$c8b6], a
    ld [$c8d2], a
    ret


    call Call_000_2c24
    ld a, $2d
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a

Jump_000_2c48:
    call Call_000_3239
    ld a, [$c5c2]
    call ClearObjVisible
    call RefreshObjs
    call SetResult
    ret


    ld a, [$c563]
    cp $00
    jr z, jr_000_2c7e

Jump_000_2c5f:
    dec a
    ld [$c563], a
    ld a, $08
    ld [$c8b6], a
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3239
    call SetResult
    ret


jr_000_2c7e:
    ld a, $80
    call ClearObjFlag
    ld a, $77
    call ShowMsg2
    call ClearResult
    ret


    ld a, [$c564]
    cp $00
    jr z, jr_000_2cb2

    dec a
    ld [$c564], a
    ld a, $2d
    ld [$c8b6], a
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3239
    call SetResult
    ret


jr_000_2cb2:
    ld a, $80
    call ClearObjFlag
    ld a, $78
    call ShowMsg2
    call ClearResult
    ret


    ld a, [$c55c]
    cp $06
    jr nc, jr_000_2cd9

    ld a, [$c563]
    cp $00
    jr z, jr_000_2cd5

    ld a, [$c55c]
    inc a
    ld [$c55c], a

jr_000_2cd5:
    call SetResult
    ret


jr_000_2cd9:
    ld a, $80
    call ClearObjFlag
    call ClearResult
    ret


    ld a, [$c55c]
    cp $00
    jr z, jr_000_2cf1

    dec a
    ld [$c55c], a
    call SetResult
    ret


jr_000_2cf1:
    call ClearResult
    ret


    ld a, [$c55e]
    cp $06
    jr nc, jr_000_2d28

    ld a, [$c564]
    cp $00
    jr z, jr_000_2d1b

    ld a, [$c55e]
    inc a
    ld [$c55e], a
    ld a, $b1
    call ReadObjFlag

Jump_000_2d0f:
    ld a, [$c523]
    and $01
    jr nz, jr_000_2d1f

    ld a, $4b
    call ClearItemFlag

jr_000_2d1b:
    call SetResult
    ret


jr_000_2d1f:
    ld a, $b1
    call SetObjFlag
    call SetResult
    ret


jr_000_2d28:
    ld a, $80
    call ClearObjFlag
    call ClearResult
    ret


    call ClearResult
    ld a, [$c55e]
    cp $00
    jr z, jr_000_2d47

    ld d, a
    ld a, [$c55e]
    dec a
    ld [$c55e], a
    ld a, d
    call SetResult

jr_000_2d47:
    ret


    ld a, [$c55d]
    cp $06
    jr nc, jr_000_2d61

    ld a, [$c563]
    cp $00
    jr z, jr_000_2d5d

    ld a, [$c55d]
    inc a
    ld [$c55d], a

jr_000_2d5d:
    call SetResult
    ret


jr_000_2d61:
    ld a, $80
    call ClearObjFlag
    call ClearResult
    ret


    call ClearResult
    ld a, [$c55d]
    cp $00
    jr z, jr_000_2d80

    ld d, a
    ld a, [$c55d]
    dec a
    ld [$c55d], a
    ld a, d
    call SetResult

jr_000_2d80:
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $4f34
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $4f80
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $4fab
    call PopRomBank
    ret


Call_000_2dab:
    ret


    call ReadArg
    ld c, a
    ld b, $00
    ld hl, $c57b
    add hl, bc
    xor a
    ld [hl], a
    ret


    call ClearResult
    call NextRandom
    ldh a, [$ffa2]
    and $03
    ret nz

    call SetResult
    ret


Call_000_2dc8:
    ld bc, $c8c9
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c524], a
    ld bc, $c8ca
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c526], a

jr_000_2de4:
    call Call_000_32f8
    call RefreshLists
    call Call_000_3272
    ret


    call ReadArg

Call_000_2df1:
    ld [$c882], a
    call Call_000_3334

Call_000_2df7:
    ld a, [$c534]
    ld [$c524], a
    ld a, [$c535]
    ld [$c526], a

Jump_000_2e03:
    jr jr_000_2de4

Call_000_2e05:
Jump_000_2e05:
    ld a, [$c523]
    or $40
    ld [$c523], a
    ld a, $0a
    ld [$c8e9], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $526c
    call PopRomBank
    ld a, $07
    call PlayAudio
    ld a, $78
    call WaitTicks
    ld a, $4e
    call ShowMsg1

Call_000_2e2e:
    call Call_000_2a6b
    ld a, $3c
    call WaitTicks
    ret


    call ResetObjScroll
    ld a, $01
    call WaitTicks
    call Call_000_2e05
    pop bc
    jp EndBankAction


    call ResetObjScroll

Jump_000_2e49:
    ld a, $01
    call WaitTicks
    ld a, [$c523]
    or $40
    ld [$c523], a
    pop bc
    jp EndBankAction


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomCode
    call PopRomBank
    jr jr_000_2e6f

    call ResetObjScroll
    call ReadArg

jr_000_2e6f:
    ld [$c8e9], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2e87

    push af
    ld a, $02
    call PushRomBank
    pop af
    call $6f35
    call PopRomBank
    ret


jr_000_2e87:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $526c
    call PopRomBank
    ret


    call ReadArg
    ld [$c8e9], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $527b
    call PopRomBank
    ret


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2ec7

    call ResetObjScroll
    call ReadArg
    ld [$c8e9], a
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $71ce
    call PopRomBank
    ret


jr_000_2ec7:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $52ce
    call PopRomBank
    ret


    call ReadArg
    call PlayAudio
    ret


    call ReadArg

Call_000_2edf:
    call Call_000_28b9
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    call RefreshLists
    ret


Call_000_2eef:
    ld a, $07
    call ReadItemFlag
    ld a, [$c523]
    and $01
    jr z, jr_000_2f0a

    ld a, $07
    call Call_000_2df1
    ld a, $07
    call ClearItemFlag
    ld a, $07
    call SetItemState

jr_000_2f0a:
    ld a, $54
    call ReadItemFlag

Jump_000_2f0f:
    ld a, [$c523]
    and $01
    jr z, jr_000_2f25

    ld a, $54
    call Call_000_2df1
    ld a, $54
    call ClearItemFlag
    ld a, $54
    call SetItemState

jr_000_2f25:
    call Call_000_2a6b
    xor a
    ld [$c53a], a
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3334
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3239
    ld a, $06
    ld [$c640], a
    ld a, $16
    call Call_000_207a
    ret


    push af
    ld a, $02
    call PushRomBank
    pop af
    call $6618
    call PopRomBank
    ret


    ld a, [$c53a]
    cp $02
    jr nc, jr_000_2f62

    call ClearResult
    ret


jr_000_2f62:
    ld a, $fe
    ld [$c8a7], a
    call Call_000_2edf
    call SetResult
    ret


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


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $4ff2
    call PopRomBank
    ret


    ld a, [$c58e]
    ld [$c8a7], a
    jr jr_000_2fc1

    ld a, $01
    ld [$c8a7], a

jr_000_2fc1:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $4fca

Jump_000_2fcb:
    call PopRomBank
    ld a, [$c523]
    and $01

Jump_000_2fd3:
    ret z

    call RefreshLists
    ret


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


    ld a, [$c58d]
    cp $00

Jump_000_3031:
    jr z, jr_000_303e

    dec a
    ld [$c58d], a
    call RefreshLists
    call SetResult

Jump_000_303d:
    ret


jr_000_303e:
    call ClearResult
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call LoadC2Pal
    call PopRomBank
    push af

Call_000_3050:
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Scene
    call PopRomBank
    call ReloadScene
    ret


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


Call_000_307c:
    ld e, $18

jr_000_307e:
    ld a, $10
    call PlayAudio
    ld a, $06

Jump_000_3085:
    call WaitTicks
    dec e
    jr nz, jr_000_307e

    ret


    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    call RefreshLists
    ret


    call Call_000_30a3
    jp BranchIfClear


Call_000_30a3:
    ld a, [$c58c]
    cp $00
    jr nz, jr_000_30ba

    ld a, [$c58a]

Jump_000_30ad:
    sub $05
    ld a, [$c58b]
    sbc $00
    jr nc, jr_000_30ba

    call ClearResult
    ret


Jump_000_30ba:
jr_000_30ba:
    call SetResult
    ret


    ld a, $10
    call WaitTicks
    call Call_000_30c6

Call_000_30c6:
    ld a, $0d
    call ClearObjVisible
    call BuildObjList
    ld a, $0e
    ld [$c8b8], a
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

Call_000_30f3:
    call SubmitOam
    ld a, $30
    call WaitTicks
    ld a, $0e
    call ClearObjVisible
    ld a, $0d
    call SetObjVisible
    call RefreshObjs
    ld a, $30
    jp WaitTicks


Call_000_310d:
    push af
    ld a, $03

Call_000_3110:
    call PushRomBank
    pop af
    call $4ea0
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5539
    call PopRomBank
    ret


    ld a, $ff
    ld [$c8c5], a
    ld [$c8c6], a
    ld [$c8d5], a
    ld [$c8d6], a
    ret


Call_000_3138:
Jump_000_3138:
    ld hl, $c46f
    ld d, $00

Jump_000_313d:
jr_000_313d:
    ld a, $ff
    ld [hl+], a
    inc d
    ld a, d
    cp $07
    jr c, jr_000_313d

    ret
INCLUDE "pending.asm"


Call_000_31a4:
    ld bc, $c8cc
    ld a, c
    ld [$c867], a
    ld a, b
    ld [$c868], a
    ldh a, [$ffa0]
    cp $00
    jr z, jr_000_31c9

    ld a, [$c867]
    ld c, a
    ld a, [$c868]
    ld b, a
    ld hl, $0010
    add hl, bc
    ld a, l
    ld [$c867], a
    ld a, h
    ld [$c868], a

Call_000_31c9:
jr_000_31c9:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    ld d, a
    ld a, $00
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

Call_000_31ef:
jr_000_31ef:
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, [$c867]
    ld c, a
    ld a, [$c868]
    ld b, a
    add hl, bc
    ld a, [hl]
    cp $ff

Jump_000_3201:
    jr z, jr_000_3217

    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c46f
    add hl, bc

Call_000_320f:
    ld [hl], a
    ld d, a
    ldh a, [$ffa0]
    inc a
    ldh [$ffa0], a
    ld a, d

jr_000_3217:
    ld d, a
    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    ld a, d
    ld d, a
    ldh a, [$ff9e]
    cp $06
    ld a, d
    jr c, jr_000_31ef

    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_3239:
    ld a, $0c
    ld [$c8af], a
    ld a, $04
    ld [$c8ab], a
    ld a, $9c
    ld [$c8ac], a
    ld a, [$c865]

Jump_000_324b:
    ld d, a
    ld a, [$c524]
    ld [wSceneVariant], a
    cp d
    jr z, jr_000_325b

    ld a, [$c865]
    ld [$c524], a

jr_000_325b:
    call RefreshLists
    ret


    call ClearResult
    ld a, [$c525]
    cp $0c
    jr c, jr_000_3271

    ld a, $73
    call ShowMsg2
    call SetResult

jr_000_3271:
    ret


Call_000_3272:
    ld a, [$c527]
    dec a
    ld [$c527], a
    cp $ff
    ret nz

Jump_000_327c:
    ld a, $06
    ld [$c527], a
    ld a, [$c525]
    dec a
    ld [$c525], a
    ret


Call_000_3289:
    ld a, [$c525]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8c9
    add hl, bc
    ld [hl], a
    ld a, [$c527]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8ca
    add hl, bc
    ld [hl], a
    ret

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


Call_000_32c1:
    ld a, [$c525]
    ld c, a
    add a
    add a
    add a
    sub c
    ld c, a
    ld a, [$c527]

Jump_000_32cd:
    add c
    ld c, a
    ld b, $00
    ld a, c
    ldh [$ff9e], a
    ld a, b
    ldh [$ff9f], a
    ret

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


Call_000_32f8:
    ld a, $54
    ld [$c87f], a

jr_000_32fd:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call GetListPos
    ldh a, [$ff9e]
    ld c, a
    inc c
    ld b, $00
    ld hl, $c468
    add hl, bc

jr_000_3313:
    ld a, [$c87f]
    cp c
    jr z, jr_000_331f

    ld a, [hl-]
    ld [hl+], a
    inc hl
    inc c
    jr jr_000_3313

jr_000_331f:
    ld a, $ff
    dec hl
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_332d:
    ld a, $0e
    ld [$c87f], a
    jr jr_000_32fd

Call_000_3334:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af

Call_000_333c:
    push hl
    call Call_000_334a
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_334a:
    ld a, $02
    ld [$c534], a
    xor a

Jump_000_3350:
    ld [$c535], a
    ld d, a
    ld a, $0e
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_000_335d:
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a

Call_000_3369:
    ld a, [$c882]
    cp d
    jr z, jr_000_3398

    ld a, [$c535]
    inc a
    ld [$c535], a
    cp $07
    jr nz, jr_000_3385

    xor a
    ld [$c535], a
    ld a, [$c534]
    inc a
    ld [$c534], a

jr_000_3385:
    ld d, a
    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    ld a, d
    ld d, a
    ldh a, [$ff9e]
    cp $54
    ld a, d
    jr c, jr_000_335d

    call ClearResult
    ret


jr_000_3398:
    call SetResult
    ret


Call_000_339c:
    ld a, $04
    ld [$c8ab], a
    ld a, $9c
    ld [$c8ac], a
    ld a, $0c
    ld [$c8af], a
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ScrollSelection
    call PopRomBank
    ret


    call ReadArg

Call_000_33bc:
    ld [$c882], a

Call_000_33bf:
    call Call_000_33d4
    ld a, $01
    ld [$c524], a
    ld a, [$c535]
    ld [$c526], a
    call Call_000_332d
    call RefreshLists
    ret


Call_000_33d4:
    call Call_000_33d8
    ret


Call_000_33d8:
    xor a
    ld [$c535], a
    ld c, $07
    ld hl, $c46f

jr_000_33e1:
    ld a, [$c882]
    cp [hl]
    jr z, jr_000_33f5

    ld a, [$c535]
    inc a
    ld [$c535], a
    inc hl
    inc c
    ld a, $0e

Call_000_33f2:
    cp c
    jr c, jr_000_33e1

jr_000_33f5:
    ret


    call ReadArg
    ld [$c8a7], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    ld a, [$c8a7]
    ldh [$ff9e], a
    xor a
    ldh [$ff9f], a
    call ClearResult
    ld bc, $c4d9
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    jr z, jr_000_3422

    call SetResult

jr_000_3422:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


    call ReadArg
; A = property index; set bit 2 in wProp1, with the Case I index $06 presence callback.
SetProp1:

Call_000_342f:
    ld [wArg0], a
    push af
    ldh a, [hChangePos]

Call_000_3435:
    ld l, a
    ldh a, [hChangePos+1]

Call_000_3438:
    ld h, a
    pop af
    push hl
    ld a, [wArg0]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld bc, wProp1
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $04

Call_000_3450:
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp1
    add hl, bc
    ld [hl], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_3470

Call_000_3464:
    ld a, [wArg0]
    cp $06
    jr nz, jr_000_3470

    ld a, $18
    call SetObjPresent

jr_000_3470:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret


    call ReadArg
; A = property index; clear bit 2 in wProp1 and preserve the scratch index.
ClearProp1:

Call_000_347d:
    ld [wArg0], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wArg0]

Call_000_348c:
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld bc, wProp1
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fb
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp1
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
INCLUDE "prop4_bits.asm"


Call_000_36a1:
    ld [$c8a7], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c53b
    add hl, bc
    ld a, [hl]
    or $00
    ld [hl], a
    ret

; A = group index; retain only bits 0 and 4 of its eight-byte record header.
MaskGroup:


Call_000_36b3:
    ld [wArg0], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, wGroupData
    add hl, bc
    ld a, [hl]
    and $11
    ld [hl], a
    ret
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


Call_000_3802:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $7434
    call PopRomBank
    ret


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


Call_000_3829:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    ret


Call_000_3837:
Jump_000_3837:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $688c
    call PopRomBank
    ret


Call_000_3845:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $55ba
    call PopRomBank
    ret


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


Call_000_386f:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    ret


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


Call_000_38df:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call $6d76
    call PopRomBank
    ret


Call_000_38ed:
    call ClearOam
    call SubmitOam
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ReadSceneBg

Call_000_38fd:
    call PopRomBank
    call RequestTimer
    call DisableLcd
    ld a, [$c5e0]
    push af
    ld a, $3e
    call PushRomBank
    pop af
    call $4000
    call PopRomBank
    call StopTimer
    call RestoreLcd
    call BlankOam
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5188
    call PopRomBank
    ret


Call_000_392e:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ClearListMark
    call PopRomBank
    ret


Call_000_393c:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call FlushChanges
    call PopRomBank
    ret
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
