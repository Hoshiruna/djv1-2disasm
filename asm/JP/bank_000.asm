; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
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

Jump_000_004a:
    nop
    nop
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


Jump_000_0059:
    nop

Call_000_005a:
    nop
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
    nop

Jump_000_0064:
    nop
    nop

Jump_000_0066:
    nop
    nop

    nop
    nop
    nop

Call_000_006b:
Jump_000_006b:
    nop

Jump_000_006c:
    nop

Call_000_006d:
    nop

Call_000_006e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, $08
    call ReadUiGfx
    ld a, $09
    call ReadUiGfx

Call_000_09ff:
    ret
INCLUDE "gfx_base.asm"
INCLUDE "scene_gfx.asm"
INCLUDE "rng_call.asm"
INCLUDE "scene.asm"
INCLUDE "scene_draw.asm"


Call_000_0e52:
    ld hl, wBgPal
    ld d, $38
    xor a

jr_000_0e58:
    ld [hl+], a
    dec d
    jr nz, jr_000_0e58

    call RequestPals
    call WaitFrame
    ret
INCLUDE "scene_copy.asm"


Call_000_0e82:
    push de
    push bc
    push hl
    ld de, $0000

jr_000_0e88:
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
    jr c, jr_000_0e88

    call Call_000_0ea4
    pop hl
    pop bc
    pop de
    ret


Call_000_0ea4:
    ld a, [$c523]
    and $7f
    ld [$c523], a
    ld hl, $c865
    ld a, [$c8ab]
    cp [hl]
    jr nc, jr_000_0eb6

    ret


jr_000_0eb6:
    inc hl
    cp [hl]
    jr c, jr_000_0ebd

    jr z, jr_000_0ebd

    ret


jr_000_0ebd:
    inc hl
    ld a, [$c8ac]
    cp [hl]
    jr nc, jr_000_0ec5

Call_000_0ec4:
Jump_000_0ec4:
    ret


Call_000_0ec5:
jr_000_0ec5:
    inc hl
    cp [hl]
    jr c, jr_000_0ecc

    jr z, jr_000_0ecc

    ret


jr_000_0ecc:
    ld a, [$c523]
    or $80
    ld [$c523], a
    ret
INCLUDE "obj_list.asm"
INCLUDE "text_select.asm"


Call_000_1071:
    ret


Call_000_1072:
    ret


Call_000_1073:
    ret


    ret


Jump_000_1075:
    nop
    inc h
    ld c, b
    ld l, h
    sub b

Call_000_107a:
    ld a, $01
    call PushRomBank
    call Call_000_1086
    call PopRomBank
    ret


Call_000_1086:
    ld a, [$c8e6]
    ld l, a
    ld h, $00
    add hl, hl

Call_000_108d:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1099

    ld bc, $71aa
    jr jr_000_109c

jr_000_1099:
    ld bc, $71ca

jr_000_109c:
    add hl, bc
    ld a, [hl+]
    ld [$c19a], a
    ld a, [hl]
    ld [$c19b], a
    call Call_000_10ad
    ret


Call_000_10a9:
    call Call_000_10b2
    ret


Call_000_10ad:
    call Call_000_1184
    jr jr_000_10b8

Call_000_10b2:
    call Call_000_118a
    call Call_000_13da

Call_000_10b8:
Jump_000_10b8:
jr_000_10b8:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld [$c660], a
    ld a, l
    ld [$c19a], a
    ld a, h
    ld [$c19b], a
    ld a, [hl]
    ld [$c661], a
    ld a, [$c660]
    cp $ff
    jr z, jr_000_10fb

    cp $0f
    jr z, jr_000_10e4

    cp $30
    jr c, jr_000_1137

    call Call_000_1414
    jr jr_000_10b8

Jump_000_10e4:
jr_000_10e4:
    call SubmitMapQueue

jr_000_10e7:
    call SubmitMapQueue
    call DrawRoomObjs
    call SubmitOam

Jump_000_10f0:
    call PollJoy
    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_10e7

    ret


Jump_000_10fb:
jr_000_10fb:
    ld a, [$c88f]
    bit 1, a
    call z, Call_000_1354

Call_000_1103:
    ld a, [$c523]
    and $08
    jr z, jr_000_1112

    ld a, [$c88f]
    and $02
    jr nz, jr_000_1115

    ret


jr_000_1112:
    call Call_000_1119

jr_000_1115:
    call Call_000_118a
    ret


Call_000_1119:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_1136

    ld a, $00
    ld [$c892], a
    call Call_000_16b9
    call DrawRoomObjs
    call SubmitOam
    ld a, [$c523]

Call_000_1131:
    and $f7

Call_000_1133:
    ld [$c523], a

jr_000_1136:
    ret


jr_000_1137:
    call Call_000_113d
    jp Jump_000_10b8


Call_000_113d:
    ld a, [$c660]
    cp $20
    ret nc

    rst RST_00
    ld l, $12
    inc d
    inc d
    inc d
    inc d
    inc bc
    ld de, $128f
    xor b
    ld [de], a
    xor e
    ld de, $11d5
    inc bc
    ld de, $1103
    ld c, [hl]
    inc de
    ld d, h
    inc de
    ld d, a
    inc de
    ld c, [hl]
    dec d
    inc bc
    ld de, $1103
    inc bc
    ld de, $1103
    inc d
    ld [de], a
    inc bc
    ld de, $1199
    and d
    ld de, $1414
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d

Jump_000_1182:
    inc d
    inc d

Call_000_1184:
    ld a, $02
    ld [$c88f], a
    ret


Call_000_118a:
    ld a, $01
    ld [$c88f], a
    ret


    ld a, [$c88f]
    or $80
    ld [$c88f], a
    ret


Jump_000_1199:
    ld a, [$c88f]
    and $fe
    ld [$c88f], a
    ret


Jump_000_11a2:
    ld a, [$c88f]
    or $01
    ld [$c88f], a
    ret


Jump_000_11ab:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_11c2

    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c662], a
    call Call_000_1203
    ret


jr_000_11c2:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c668], a
    ld [$c893], a
    call Call_000_1203
    ret


Jump_000_11d5:
    ld a, [$c88f]

Call_000_11d8:
    and $02
    jr nz, jr_000_11ec

    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c663], a
    call Call_000_1203
    ret


jr_000_11ec:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl]
    ld [$c669], a
    call Call_000_1203
    ret


Call_000_11fc:
    ld a, [$c19a]
    add $02
    jr jr_000_1208

Call_000_1203:
    ld a, [$c19a]
    add $01

jr_000_1208:
    ld [$c19a], a
    ld a, [$c19b]
    adc $00
    ld [$c19b], a
    ret


Call_000_1214:
Jump_000_1214:
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
    ld a, [bc]
    ld [$c885], a
    jr jr_000_1242

    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld [$c885], a
    ld a, l
    ld [$c19a], a
    ld a, h

Call_000_123f:
    ld [$c19b], a

Jump_000_1242:
jr_000_1242:
    ld a, [$c885]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c1a5]
    ld c, a
    ld a, [$c1a6]
    ld b, a
    add hl, bc
    ld a, l

Jump_000_1255:
    ld [$c887], a
    ld a, h

Jump_000_1259:
    ld [$c888], a
    ld a, [$c1a7]

Call_000_125f:
    call PushRomBank
    call Call_000_1269
    jp PopRomBank


    ret


Call_000_1269:
    ld d, $08

jr_000_126b:
    ld a, [$c887]
    ld l, a
    ld a, [$c888]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    ld [$c660], a
    ld a, l
    ld [$c887], a
    ld a, h
    ld [$c888], a
    ld a, [hl+]

Jump_000_1283:
    ld [$c661], a
    push de
    call Call_000_1414
    pop de

Call_000_128b:
    dec d
    jr nz, jr_000_126b

    ret


    call Call_000_13b3
    call Call_000_1389
    ld a, [$c88b]
    call Call_000_136b
    ld a, [$c88c]
    call Call_000_136b
    ld a, [$c88d]
    call Call_000_137b
    ret


    call $1320
    call Call_000_12cd
    ld a, [$c889]
    call Call_000_136b
    ld a, [$c88a]
    call Call_000_136b
    ld a, [$c88b]
    call Call_000_136b
    ld a, [$c88c]
    call Call_000_136b
    ld a, [$c88d]
    call Call_000_137b
    ret


Call_000_12cd:
    ld de, $0000

jr_000_12d0:
    ld c, e
    ld b, d
    sla c

jr_000_12d4:
    ld a, [$c885]

Jump_000_12d7:
    ld [$c887], a
    ld hl, $1316
    add hl, bc
    sub [hl]
    ld [$c885], a
    ld a, [$c886]
    ld [$c888], a
    inc hl
    sbc [hl]
    ld [$c886], a
    jr c, jr_000_12f9

    ld hl, $c889
    add hl, de
    ld a, [hl]
    add $01
    ld [hl], a

Call_000_12f7:
    jr jr_000_12d4

jr_000_12f9:
    ld a, [$c887]

Jump_000_12fc:
    ld [$c885], a

Call_000_12ff:
    ld a, [$c888]
    ld [$c886], a
    inc de
    ld a, $04
    cp e
    jr nz, jr_000_12d0

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
    call Call_000_11fc
    ld a, [$c887]
    ld l, a
    ld a, [$c888]
    ld h, a
    ld a, [hl+]
    ld [$c885], a
    ld a, [hl]
    ld [$c886], a
    ld hl, $c889
    xor a
    ld c, $05

jr_000_1349:
    ld [hl+], a
    dec c
    jr nz, jr_000_1349

    ret


    call Call_000_1656
    jp Jump_000_154e


Call_000_1354:
    jp Jump_000_1656


    ld a, [$c88f]
    and $02
    ret nz

    call Call_000_1656
    call Call_000_13da
    xor a
    ld [wWaitFrame], a
    ld [wWaitTick], a
    ret


Call_000_136b:
    ld [$c660], a
    cp $00
    jr nz, jr_000_1378

    ld a, [$c88e]
    cp $00
    ret z

jr_000_1378:
    ld a, [$c660]

Call_000_137b:
    or $80
    ld [$c660], a
    ld a, $ff
    ld [$c88e], a
    call Call_000_1414
    ret


Call_000_1389:
    ld a, [$c885]
    ld e, a
    ld b, $64
    call Call_000_13a7
    ld [$c88b], a
    ld b, $0a
    call Call_000_13a7
    ld [$c88c], a
    ld a, e
    ld [$c88d], a
    ld a, $00
    ld [$c88e], a
    ret


Call_000_13a7:
    ld d, $00

jr_000_13a9:
    ld a, e
    sub b
    jr c, jr_000_13b1

    inc d
    ld e, a
    jr jr_000_13a9

jr_000_13b1:
    ld a, d
    ret


Call_000_13b3:
    ld a, [$c19a]
    ld l, a
    ld a, [$c19b]
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

Jump_000_13bf:
    ld a, l

Call_000_13c0:
Jump_000_13c0:
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

jr_000_13d5:
    ld [hl+], a
    dec d
    jr nz, jr_000_13d5

    ret


Call_000_13da:
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

Jump_000_13fc:
    xor a
    ld [$c65e], a
    ld [$c65f], a
    call Call_000_15d2

Call_000_1406:
    xor a
    ld [$c890], a
    ld [$c893], a
    ld [$c894], a
    call Call_000_16ad
    ret


Call_000_1414:
    ld a, $7f
    ld [$c666], a
    ld a, [$c660]
    ld [$c667], a
    cp $7f
    jr z, jr_000_1441

    bit 7, a
    jr nz, jr_000_1461

    cp $10
    jr c, jr_000_1461

    swap a
    and $07
    rst RST_00
    ld b, b
    inc d
    ld c, b
    inc d
    ld b, b
    inc d
    ld c, b
    inc d
    ld c, b
    inc d
    ld d, h
    inc d
    ld c, b
    inc d
    ld d, h
    inc d
    ret


jr_000_1441:
    ld a, $7f
    ld [$c667], a
    jr jr_000_1461

    ld a, [$c667]
    add $80
    ld [$c667], a
    ld a, $90
    jr jr_000_145e

    ld a, [$c667]
    add $70
    ld [$c667], a
    ld a, $a0

jr_000_145e:
    ld [$c666], a

jr_000_1461:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_146b

    jp Jump_000_1498


jr_000_146b:
    ld a, [$c668]
    ld [$c195], a
    ld a, [$c669]
    dec a
    ld [$c196], a
    call Call_000_15ab
    ld a, $01
    ld [$c664], a
    ld a, $02
    ld [$c665], a
    ld hl, $c664
    call QueueTileRect
    ld a, [$c668]
    inc a
    ld [$c668], a
    and $e0
    ret z

    jp Jump_000_154e


Jump_000_1498:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_14be

    call PollJoy
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_14be

    ld a, $ff
    ld [$c890], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5091
    call PopRomBank
    call Call_000_168a

jr_000_14be:
    ld a, [$c65e]
    inc a
    ld b, a
    ld a, [$c662]
    add b
    ld [$c195], a
    ld a, [$c65f]
    inc a
    ld b, a

Jump_000_14cf:
    ld a, [$c663]
    add a
    add b
    ld [$c196], a
    call Call_000_15ab
    ld a, $01
    ld [$c664], a
    ld a, $02
    ld [$c665], a
    ld hl, $c664
    call QueueTileRect
    ld a, [$c5df]
    cp $ff
    jr z, jr_000_14f8

    ld a, [$c890]
    cp $00
    jr nz, jr_000_1515

jr_000_14f8:
    call SubmitMapQueue
    ld a, $03

jr_000_14fd:
    push af
    push af
    ld a, $03
    call PushRomBank

Jump_000_1504:
    pop af
    call $5091
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    pop af
    dec a
    jr nz, jr_000_14fd

jr_000_1515:
    ld a, [$c663]
    ld e, a
    ld d, $00
    ld hl, $1075
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
    jr nz, jr_000_1548

    call Call_000_154e
    ret


jr_000_1548:
    ld a, $11
    ld [$c662], a
    ret


Call_000_154e:
Jump_000_154e:
    ld a, [$c88f]
    and $02
    jr nz, jr_000_1573

    ld a, [$c663]
    inc a
    ld [$c663], a
    add a
    ld b, a
    ld a, [$c66d]
    cp b
    jr nz, jr_000_156e

    call Call_000_158b
    ld a, [$c663]
    dec a
    ld [$c663], a

jr_000_156e:
    xor a
    ld [$c662], a
    ret


Jump_000_1573:
jr_000_1573:
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


Call_000_158b:
    call Call_000_158e

Call_000_158e:
    ld hl, $c66e
    ld bc, $c680
    ld d, $7e

jr_000_1596:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_000_1596

    ld d, $12
    ld a, $7f

jr_000_15a0:
    ld [hl+], a
    dec d
    jr nz, jr_000_15a0

    call Call_000_15ff
    call SubmitMapQueue
    ret


Call_000_15ab:
    push hl
    ld a, [$c88f]
    bit 0, a
    jr nz, jr_000_15b8

    ld bc, $9800
    jr jr_000_15bb

jr_000_15b8:
    ld bc, $9c00

jr_000_15bb:
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


Call_000_15d2:
    ld a, [$c88f]
    and $02
    ret nz

    ld a, [$c892]
    cp $00
    jr nz, jr_000_15e7

    call Call_000_160c
    ld a, $ff
    ld [$c892], a

jr_000_15e7:
    xor a
    ld [$c662], a
    ld [$c663], a
    ld hl, $c66e
    ld bc, $0120
    ld d, $7f

jr_000_15f6:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_15f6

    jr jr_000_15ff

Call_000_15ff:
jr_000_15ff:
    ld bc, $9c21
    ld hl, $c66c
    call QueueTileRect

Jump_000_1608:
    call SubmitMapQueue
    ret


Call_000_160c:
    ld hl, $1622
    ld bc, $9c00
    call QueueMapFill
    ld hl, $1626
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

jr_000_162f:
    call WaitFrame
    dec d
    jr nz, jr_000_162f

    ld a, [$c188]
    push af
    ld d, $1e

jr_000_163b:
    push de
    call WaitFrame
    call PollJoy
    pop de
    dec d
    jr z, jr_000_1651

    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_163b

    bit 1, a
    jr nz, jr_000_163b

jr_000_1651:
    pop af

Call_000_1652:
    ld [$c188], a
    ret


Call_000_1656:
Jump_000_1656:
    call SubmitMapQueue

jr_000_1659:
    call Call_000_1691
    call PollJoy

Call_000_165f:
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_1659

    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1671

    ld a, $31
    jr jr_000_1673

jr_000_1671:
    ld a, $18

Jump_000_1673:
jr_000_1673:
    call PlayAudio

jr_000_1676:
    call Call_000_1691
    call PollJoy
    ld a, [$c187]
    bit 0, a
    jr nz, jr_000_1676

    xor a
    ld [wWaitFrame], a
    ld [wWaitTick], a

Call_000_168a:
jr_000_168a:
    call DrawRoomObjs
    call SubmitOam
    ret


Call_000_1691:
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
    jr jr_000_168a

Call_000_16ad:
    ld a, $07
    ldh [rWX], a
    ld a, $47
    ldh [rWY], a
    call ShowWindow

Call_000_16b8:
    ret


Call_000_16b9:
    xor a
    ld [$c1a2], a

Jump_000_16bd:
    call HideWindow
    ret


Call_000_16c1:
jr_000_16c1:
    call Call_000_1886
    ld [$c660], a
    cp $5f
    jp z, Jump_000_10e4

    call Call_000_16d1
    jr jr_000_16c1

Call_000_16d1:
    cp $1d

Jump_000_16d3:
    jp z, Jump_000_1861

    cp $50
    jp z, Jump_000_11ab

    cp $51
    jp z, Jump_000_11d5

    cp $52
    jp z, Jump_000_1199

    cp $53
    jp z, Jump_000_11a2

    cp $55
    jp z, Jump_000_16f2

    jp Jump_000_16fb


Jump_000_16f2:
    ld a, [$c88f]
    or $80
    ld [$c88f], a
    ret


Jump_000_16fb:
    ld a, [$c660]
    cp $d0

Jump_000_1700:
    jr nc, jr_000_170a

    ld e, a
    ld d, $00
    ld hl, $173f
    add hl, de
    ld a, [hl]

jr_000_170a:
    ld [$c666], a
    ld a, [$c88f]
    and $02
    jp z, Jump_000_17ae

    ld a, [$c668]
    ld [$c195], a
    ld a, [$c669]
    ld [$c196], a
    call Call_000_15ab
    ld a, $01
    ld [$c664], a
    ld [$c665], a
    ld hl, $c664
    call Call_000_178f
    ld a, [$c668]
    inc a
    ld [$c668], a
    and $e0
    ret z

    jp Jump_000_1861


    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c

Jump_000_1748:
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc

Jump_000_1750:
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

Call_000_176e:
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

Jump_000_178e:
    ld a, a

Call_000_178f:
    ld a, [$c88f]
    bit 6, a
    jr nz, jr_000_179a

    call QueueTileRect
    ret


jr_000_179a:
    ld a, [$c88f]
    bit 7, a
    jr z, jr_000_17a5

    ld a, $06
    jr jr_000_17a7

jr_000_17a5:
    ld a, $07

jr_000_17a7:
    ld [$c667], a
    call QueueMapRect
    ret


Jump_000_17ae:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_17d4

    call PollJoy
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_17d4

    ld a, $ff
    ld [$c890], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5091

Call_000_17ce:
    call PopRomBank
    call Call_000_168a

jr_000_17d4:
    ld a, [$c65e]
    inc a
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
    call Call_000_15ab
    ld a, $01
    ld [$c664], a
    ld [$c665], a
    ld hl, $c664
    call Call_000_178f
    ld a, [$c5df]
    cp $ff
    jr z, jr_000_180b

Call_000_1804:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_1828

jr_000_180b:
    call SubmitMapQueue
    ld a, $03

jr_000_1810:
    push af
    push af
    ld a, $03
    call PushRomBank
    pop af

Jump_000_1818:
    call $5091
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    pop af
    dec a
    jr nz, jr_000_1810

jr_000_1828:
    ld a, [$c663]
    ld e, a
    ld d, $00
    ld hl, $1075
    add hl, de
    ld a, [hl]
    ld b, a
    ld a, [$c662]
    add b
    ld e, a
    ld d, $00

Call_000_183b:
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

Jump_000_1850:
    ld a, [$c894]
    cp $00
    jr nz, jr_000_185b

    call Call_000_1861
    ret


jr_000_185b:
    ld a, $11
    ld [$c662], a
    ret


Call_000_1861:
Jump_000_1861:
    ld a, [$c88f]
    and $02
    jp nz, Jump_000_1573

    ld a, [$c663]
    inc a
    ld [$c663], a
    ld b, a
    ld a, [$c66d]
    cp b
    jr nz, jr_000_1881

    call Call_000_158e
    ld a, [$c663]
    dec a
    ld [$c663], a

Jump_000_1881:
jr_000_1881:
    xor a
    ld [$c662], a
    ret


Call_000_1886:
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


Call_000_19c5:
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


Call_000_19d9:
    push hl
    push bc
    push de
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawCursor

Jump_000_19e6:
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


Call_000_19fa:
    cp $ff
    ret z

    push hl
    push bc

Call_000_19ff:
Jump_000_19ff:
    push de

Jump_000_1a00:
    push af

Jump_000_1a01:
    ld a, $02
    call PushRomBank
    pop af
    call DrawUiSprite
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret
; A = sprite ID; skip $ff and call the case-specific sprite writer in bank 2.
DrawSprite:


Call_000_1a11:
Jump_000_1a11:
    cp $ff
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


Call_000_1a28:
    cp $ff
    ret z

    push hl
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


Jump_000_1c45:
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
INCLUDE "script_flow.asm"
INCLUDE "script_flags.asm"
INCLUDE "item_bits.asm"

; Test the second item-bitmap bit using the absolute first-slot item value.
GetItem2First:


    ld a, [$c8c6]
    jr jr_000_1ef4

; Read a script item ID, then test its second item-bitmap bit.
ReadItem2Arg:

    call ReadArg
INCLUDE "item_state.asm"
INCLUDE "op_attr.asm"
INCLUDE "room.asm"


    push af
    ld a, $00

Call_000_2187:
    call PushRomBank
    pop af
    call Call_000_21a1
    call PopRomBank
    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomNext
    call PopRomBank
    jp EnterRoom


Call_000_21a1:
    call SaveState
    push af
    ld a, $02
    call PushRomBank
    pop af
    call FlushChanges
    call PopRomBank
    ld a, [$c524]
    cp $01
    jr nz, jr_000_21c0

    ld a, $02
    ld [$c524], a
    call RefreshLists

jr_000_21c0:
    ld a, [wRoomId]
    ld [$c536], a
    ret


    call ReadArg

Call_000_21ca:
    ld [wRoomId], a
    call ResetObjScroll
    ld a, [wCaseId]

Jump_000_21d3:
    cp $00
    jr nz, jr_000_2200

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
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawC1Marks
    call PopRomBank
    jr jr_000_2227

Jump_000_2200:
jr_000_2200:
    push af
    ld a, $03
    call PushRomBank
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

jr_000_2227:
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
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_383a
    jp Jump_000_226c


    call ReadArg
    call SetStateBit

Jump_000_2263:
    call SetAttr2

Call_000_2266:
Jump_000_2266:
    ld a, [$c8a7]
    call Call_000_383a

Call_000_226c:
Jump_000_226c:
jr_000_226c:
    call ResetObjScroll
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2291

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


jr_000_2291:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Scene

Jump_000_229b:
    call PopRomBank
    call ReloadScene
    ret


Jump_000_22a2:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomState
    call PopRomBank
    jr jr_000_22b4

    call ReadArg

Call_000_22b4:
jr_000_22b4:
    call SetStateBit
    ld a, [$c8a7]
    jr jr_000_226c

Call_000_22bc:
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

Jump_000_22d2:
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc

Call_000_22d7:
    ld a, [hl]
    call Call_000_383a
    jp Jump_000_226c


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomState
    call PopRomBank
    jp Jump_000_2311


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomStateA
    call PopRomBank
    call Call_000_2311
    push af

Jump_000_22ff:
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomStateB
    call PopRomBank
    jp Jump_000_2311


    call ReadArg

Call_000_2311:
Jump_000_2311:
    call ClearStateBit
    call Call_000_383a
    jp Jump_000_226c
INCLUDE "script_room.asm"
INCLUDE "script_item.asm"


    push af
    ld a, $01
    call PushRomBank
    pop af
    call WriteOpSlots
    call PopRomBank
    ld e, $10
    ld hl, $c8d4
    ld bc, $c8e4

jr_000_23b2:
    ld a, [hl]
    ld d, a
    ld a, [bc]
    ld [hl-], a
    ld a, d
    ld [bc], a
    dec bc
    dec e
    jr nz, jr_000_23b2

    ret


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


Call_000_23db:
    call Call_000_23df
    ret


Call_000_23df:
    ld a, [$c8b0]
    cp $02
    jr nz, jr_000_240f

    ld a, [$c524]
    cp $01
    jr nz, jr_000_240f

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

Call_000_2400:
    ld l, a
    ldh a, [$ffa1]

Call_000_2403:
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c526], a
    call Call_000_3479
    call Call_000_24ba

jr_000_240f:
    call SetAttr0
    ld a, [wCaseId]
    cp $00
    jr z, jr_000_2423

    call Call_000_325d
    ld a, [$c523]
    and $01
    jr nz, jr_000_245a

Jump_000_2423:
jr_000_2423:
    call Call_000_340f
    ld bc, $c8d2
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    ld a, b

Jump_000_2439:
    ld bc, $c468
    add hl, bc
    ld [hl], a
    call Call_000_2bbb
    call Call_000_33d9
    ld a, [$c525]
    ld [$c865], a

Jump_000_244a:
    call Call_000_3389
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $697b
    call PopRomBank

jr_000_245a:
    ld a, [$c8b0]
    cp $02
    jr z, jr_000_2472

    ld a, [$c5c2]
    call ClearObjVisible

Jump_000_2467:
    call RefreshObjs
    ld a, [$c529]
    inc a
    ld [$c528], a
    ret


jr_000_2472:
    ld a, [$c5e5]
    cp $01
    ret z

    ld a, $3c
    call WaitTicks
    ld a, $01
    ld [$c524], a
    call RefreshLists
    ret


Call_000_2486:
    call SetItemFlag
    jr jr_000_248e

    call SetItemArg

jr_000_248e:
    call Call_000_340f
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
    call Call_000_3389

Jump_000_24aa:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $697b
    call PopRomBank
    jp Jump_000_2467


Call_000_24ba:
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
    jr nz, jr_000_24ed

    ld bc, $c53b
    add hl, bc
    ld bc, $c470
    ld e, $00

jr_000_24e3:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $07
    jr c, jr_000_24e3

    ret


jr_000_24ed:
    ld bc, $c53c
    add hl, bc
    ld bc, $c470
    ld e, $00

jr_000_24f6:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $06
    jr c, jr_000_24f6

Jump_000_24ff:
    ret


Call_000_2500:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2525

    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_000_2525

    ld bc, $c8c6
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr z, jr_000_2549

jr_000_2525:
    ld a, [$c529]
    cp $ff
    jr z, jr_000_2549

    cp $03
    jr c, jr_000_2549

    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2540

    ld a, $71
    call ShowMsg2
    call ClearAttr2
    ret


jr_000_2540:
    ld a, $9d
    call ShowMsg1
    call ClearAttr2
    ret


jr_000_2549:
    push af

Call_000_254a:
    ld a, $02
    call PushRomBank
    pop af
    call KeepC1Pair
    call PopRomBank
    call SetAttr2
    ld a, [$c529]
    inc a
    ld [$c529], a
    ld [$c528], a
    call WriteChange
    call Call_000_3288
    call Call_000_32f4

Call_000_256c:
    ld a, $01
    ld [$c865], a
    call Call_000_3389
    ret

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
INCLUDE "change_drop.asm"


Call_000_2750:
    call ReadArg
INCLUDE "obj_bits.asm"
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


    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call ReadArg
    call Call_000_27e6
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af
    ret


Call_000_27e6:
    ld d, a
    ld a, $00
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_000_27f0:
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_2809

    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    cp $05
    jr c, jr_000_27f0

    ret


jr_000_2809:
    ld a, [$c8a7]
    ld b, a
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a

Jump_000_2813:
    ld a, b
    ld bc, $c468
    add hl, bc
    ld [hl], a
    ld a, [$c524]
    cp $00
    jr z, jr_000_283b

    push af
    call Call_000_2bbb
    xor a
    ld [$c865], a
    call Call_000_3389
    call Call_000_34e8
    ld a, $3c
    call WaitTicks
    pop af
    ld [$c524], a
    call RefreshLists
    ret


jr_000_283b:
    xor a
    ld [$c865], a
    call Call_000_3389
    ret


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_28b7

    ld a, $80
    call ReadObjFlag
    ld a, [$c523]
    and $01
    jr nz, jr_000_2876

    ld a, [$c8c5]
    cp $03
    jr nz, jr_000_2868

    ld a, [$c8c6]
    cp $08
    jr z, jr_000_2876

    cp $2d
    jr z, jr_000_2876

jr_000_2868:
    call TestAttr0
    ld a, [$c523]
    and $01
    jr nz, jr_000_2876

    pop bc
    jp EndBankAction


jr_000_2876:
    ld a, $80
    call ClearObjFlag

jr_000_287b:
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
    ld a, $7f
    call ReadObjFlag
    ld a, [$c523]
    and $01
    jr nz, jr_000_28ad

    ld a, [$c523]
    and $04
    jr nz, jr_000_287b

    pop bc
    call PopRomBank
    ret


jr_000_28ad:
    ld a, $7f
    call ClearObjFlag
    pop bc
    call PopRomBank
    ret


jr_000_28b7:
    ld a, $88
    call ReadObjFlag
    jr nz, jr_000_28e1

    call TestAttr0
    ld a, [$c523]
    and $01
    jr nz, jr_000_28e1

    ld a, [$c8b2]
    cp $02
    jr z, jr_000_28d8

    ld a, $e5
    call ShowMsg0
    pop bc
    jp EndBankAction


jr_000_28d8:
    ld a, $9e
    call ShowMsg1
    pop bc
    jp EndBankAction


jr_000_28e1:
    ld a, $88
    call ClearObjFlag
    ld a, [$c8b2]
    cp $02
    jr z, jr_000_28f4

    ld a, $a7
    call ShowMsg1
    jr jr_000_28f9

jr_000_28f4:
    ld a, $15
    call ShowMsg1

jr_000_28f9:
    push af
    ld a, $01
    call PushRomBank

Call_000_28ff:
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
    jr nz, jr_000_2926

    ld a, [$c523]
    and $04
    jr nz, jr_000_28f9

    pop bc

Jump_000_2922:
    call PopRomBank
    ret


jr_000_2926:
    ld a, $8f
    call ClearObjFlag
    pop bc
    call PopRomBank
    ret


    ld a, [$c8d5]
    cp $02
    jr nz, jr_000_293b

    call SetResult
    ret


jr_000_293b:
    ld a, $05
    call PushRomBank
    ld a, [wRoomId]
    ld l, a

Call_000_2944:
    ld h, $00
    add hl, hl
    ld bc, $4000
    add hl, bc

Jump_000_294b:
    ld a, [hl+]
    ld [$c8ad], a
    ld a, [hl]
    ld [$c8ae], a

Jump_000_2953:
    ld a, [$c8ad]

Jump_000_2956:
    ld l, a

Call_000_2957:
    ld a, [$c8ae]
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_000_2996

    ld bc, $0004
    add hl, bc
    ld a, [hl+]
    and $7f
    ld c, a
    ld a, [$c8c5]
    cp c
    jr nz, jr_000_29a2

    ld a, [hl-]

Call_000_2970:
    ld c, a
    ld a, [$c8c6]

Call_000_2974:
    cp c
    jr nz, jr_000_29a2

    call Call_000_0e82
    ld a, [$c523]
    and $80
    jr z, jr_000_29a2

    ld a, [hl+]

Jump_000_2982:
    and $7f
    ld [$c8d5], a
    ld a, [hl+]
    ld [$c8d6], a
    ld a, [hl]
    ld [$c5c2], a
    call PopRomBank
    call SetResult
    ret


Jump_000_2996:
    ld a, $80
    call ClearObjFlag
    call PopRomBank
    call ClearResult
    ret


jr_000_29a2:
    call NextRoomObj
    jp Jump_000_2953


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_29bd

    push af
    ld a, $02
    call PushRomBank
    pop af
    call $6a45
    call PopRomBank
    ret


jr_000_29bd:
    call ReadArg
    ld [$c5c8], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $50b0
    call PopRomBank
    ret


Jump_000_29d1:
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

Jump_000_29f8:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $6b11
    call PopRomBank
    ret


    call ReadArg

Call_000_2a09:
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
    jr z, jr_000_2a43

    dec a
    ld [$c53a], a
    xor a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]

Jump_000_2a31:
    ld [$c865], a
    ld a, [$c8d2]
    push af
    call Call_000_3389
    pop af
    ld [$c8d2], a
    call SetResult
    ret


jr_000_2a43:
    ld a, $72
    call ShowMsg2
    ret


    call ReadArg
    ld a, [$c53a]
    ld hl, $c8a7
    sub [hl]
    jr c, jr_000_2a92

    ld [$c53a], a
    ld a, [wRoomId]
    cp $27
    jr z, jr_000_2a6d

    ld a, $81
    call ReadObjFlag
    ld a, [$c523]
    and $01
    jr nz, jr_000_2a7e

    jr jr_000_2a79

jr_000_2a6d:
    ld a, $a0
    call ReadObjFlag
    ld a, [$c523]
    and $01
    jr nz, jr_000_2a7e

jr_000_2a79:
    ld a, $82
    call SetObjFlag

jr_000_2a7e:
    xor a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    call SetResult
    ret


jr_000_2a92:
    ld a, [wRoomId]
    cp $26
    jr z, jr_000_2aa1

    cp $27
    jr z, jr_000_2aaa

    call ClearResult
    ret


jr_000_2aa1:
    ld a, $81
    call SetObjFlag
    call ClearResult
    ret


jr_000_2aaa:
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
    jr z, jr_000_2b6b

    call ClearResult
    ret


jr_000_2b6b:
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


Call_000_2b9c:
    ld a, [$c523]
    or $08
    ld [$c523], a
    ld a, [wCaseId]
    cp $00
    ret nz

    call ReadArg
    ret


Call_000_2bae:
    ld a, [$c534]
    cp $00
    jr z, jr_000_2bbb

    ld [$c524], a
    call RefreshLists

Call_000_2bbb:
Jump_000_2bbb:
jr_000_2bbb:
    ld a, [$c523]
    and $f7
    ld [$c523], a
    call Call_000_1103
    ret


Call_000_2bc7:
Jump_000_2bc7:
    ld a, [$c523]
    and $f7

Call_000_2bcc:
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


Jump_000_2bf4:
    ld bc, $c8cb
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]

Call_000_2bff:
    ld [$c538], a
    ret
INCLUDE "script_list.asm"


    call ReadArg
    call Call_000_2c25
    ret


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
    jr nz, jr_000_2c25

    ret


Call_000_2c3e:
    call ReadArg
    ld [$c587], a
    ret


    call ReadArgs2

Jump_000_2c48:
    ld [$c587], a
    ld a, [$c8a8]
    ld [$c588], a
    ret


    call BuildObjList
    ret


jr_000_2c56:
    call ReadArgs4
    ld a, [$c8a7]
    cp $fe
    jr z, jr_000_2c81

    ld d, a
    ld bc, $c8c5
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_000_2c56

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
    jr nz, jr_000_2c56

jr_000_2c81:
    ld a, [$c8a9]
    ld [$c8a5], a
    ld a, [$c8aa]
    ld [$c8a6], a
    ret


    ld a, [$c53a]
    dec a
    ld [$c53a], a
    call RefreshLists
    ret


    ld a, [$c53a]
    cp $00
    jr z, jr_000_2ca4

    call SetResult
    ret


jr_000_2ca4:
    call ClearResult
    ret


    call ClearResult
    call ReadArg
    ld a, [$c8a7]
    ld c, a
    ld a, [$c53a]
    cp c
    jr z, jr_000_2cba

    jr nc, jr_000_2cbd

jr_000_2cba:
    call SetResult

jr_000_2cbd:
    ret


    call ClearResult
    call ReadArg
    ld hl, $c55b
    cp [hl]
    jr nz, jr_000_2ccd

    call SetResult

jr_000_2ccd:
    ret


    call ClearResult
    ld a, [$c55b]
    cp $00
    jr nz, jr_000_2ce1

    ld a, [$c8c6]
    ld [$c55b], a
    call SetResult

jr_000_2ce1:
    ret


    call ClearResult
    ld a, [$c55b]
    cp $00
    jr z, jr_000_2cf3

    xor a
    ld [$c55b], a
    call SetResult

jr_000_2cf3:
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
    call Call_000_23db
    xor a
    ld [$c5e5], a
    ld a, [$c535]
    ld [$c526], a
    xor a
    ld [$c55b], a
    call SetResult
    ret


Call_000_2d3f:
    call ReadArg
    ld hl, $c563
    add [hl]
    ld [hl], a
    ld a, $08
    ld [$c8b6], a
    ld [$c8d2], a
    ret


    call Call_000_2d3f
    ld a, $08
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    ld a, [$c5c2]
    call ClearObjVisible
    call RefreshObjs
    call SetResult
    ret


Call_000_2d74:
    ld a, [$c564]
    inc a
    ld [$c564], a
    ld a, $2d
    ld [$c8b6], a
    ld [$c8d2], a
    ret


    call Call_000_2d74
    ld a, $2d
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    ld a, [$c5c2]
    call ClearObjVisible
    call RefreshObjs
    call SetResult
    ret


    ld a, [$c563]
    cp $00
    jr z, jr_000_2dce

    dec a
    ld [$c563], a
    ld a, $08
    ld [$c8b6], a
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    call SetResult
    ret


jr_000_2dce:
    ld a, $80
    call ClearObjFlag
    ld a, $77
    call ShowMsg2
    call ClearResult
    ret


    ld a, [$c564]
    cp $00
    jr z, jr_000_2e02

    dec a
    ld [$c564], a
    ld a, $2d
    ld [$c8b6], a
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3480
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    call SetResult
    ret


jr_000_2e02:
    ld a, $80
    call ClearObjFlag
    ld a, $78
    call ShowMsg2
    call ClearResult
    ret


    ld a, [$c55c]
    cp $06
    jr nc, jr_000_2e29

    ld a, [$c563]
    cp $00
    jr z, jr_000_2e25

    ld a, [$c55c]
    inc a
    ld [$c55c], a

jr_000_2e25:
    call SetResult
    ret


jr_000_2e29:
    ld a, $80
    call ClearObjFlag

Call_000_2e2e:
    call ClearResult
    ret


    ld a, [$c55c]
    cp $00
    jr z, jr_000_2e41

    dec a
    ld [$c55c], a
    call SetResult
    ret


jr_000_2e41:
    call ClearResult
    ret


    ld a, [$c55e]
    cp $06
    jr nc, jr_000_2e78

    ld a, [$c564]
    cp $00
    jr z, jr_000_2e6b

    ld a, [$c55e]
    inc a
    ld [$c55e], a
    ld a, $b1
    call ReadObjFlag

Jump_000_2e5f:
    ld a, [$c523]
    and $01
    jr nz, jr_000_2e6f

Jump_000_2e66:
    ld a, $4b
    call ClearItemFlag

jr_000_2e6b:
    call SetResult

Call_000_2e6e:
    ret


jr_000_2e6f:
    ld a, $b1
    call SetObjFlag
    call SetResult
    ret


jr_000_2e78:
    ld a, $80
    call ClearObjFlag
    call ClearResult
    ret


    call ClearResult
    ld a, [$c55e]
    cp $00
    jr z, jr_000_2e97

    ld d, a
    ld a, [$c55e]
    dec a
    ld [$c55e], a
    ld a, d
    call SetResult

jr_000_2e97:
    ret


    ld a, [$c55d]
    cp $06
    jr nc, jr_000_2eb1

    ld a, [$c563]
    cp $00
    jr z, jr_000_2ead

    ld a, [$c55d]
    inc a
    ld [$c55d], a

jr_000_2ead:
    call SetResult
    ret


jr_000_2eb1:
    ld a, $80
    call ClearObjFlag
    call ClearResult
    ret


    call ClearResult
    ld a, [$c55d]
    cp $00
    jr z, jr_000_2ed0

    ld d, a
    ld a, [$c55d]
    dec a
    ld [$c55d], a

Call_000_2ecc:
    ld a, d
    call SetResult

jr_000_2ed0:
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


Call_000_2efb:
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

Jump_000_2f0f:
    ldh a, [$ffa2]
    and $03
    ret nz

    call SetResult
    ret


Call_000_2f18:
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

jr_000_2f34:
    call Call_000_3444
    call RefreshLists
    call Call_000_33c2
    ret


    call ReadArg

Call_000_2f41:
    ld [$c882], a
    call Call_000_3480

Call_000_2f47:
    ld a, [$c534]
    ld [$c524], a
    ld a, [$c535]
    ld [$c526], a
    jr jr_000_2f34

Call_000_2f55:
Jump_000_2f55:
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
    call Call_000_2bbb
    ld a, $3c
    call WaitTicks
    ret


    call ResetObjScroll
    ld a, $01
    call WaitTicks
    call Call_000_2f55
    pop bc
    jp EndBankAction


    call ResetObjScroll
    ld a, $01
    call WaitTicks
    ld a, [$c523]
    or $40
    ld [$c523], a
    pop bc
    jp EndBankAction


    push af

Call_000_2fab:
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomCode
    call PopRomBank
    jr jr_000_2fbf

    call ResetObjScroll
    call ReadArg

jr_000_2fbf:
    ld [$c8e9], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2fd7

    push af
    ld a, $02
    call PushRomBank
    pop af
    call $6f35

Jump_000_2fd3:
    call PopRomBank
    ret


jr_000_2fd7:
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

Jump_000_2ff5:
    call PopRomBank
    ret


Jump_000_2ff9:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_3017

Jump_000_3000:
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


jr_000_3017:
    push af

Call_000_3018:
    ld a, $03
    call PushRomBank
    pop af

Call_000_301e:
    call $52ce
    call PopRomBank
    ret


    call ReadArg
    call PlayAudio
    ret


    call ReadArg

Call_000_302f:
    call Call_000_2a09

Call_000_3032:
    ld [$c8a7], a
    ld [$c882], a
    call Call_000_3480
    call RefreshLists
    ret


Call_000_303f:
Jump_000_303f:
    ld a, $07
    call ReadItemFlag
    ld a, [$c523]

Jump_000_3047:
    and $01
    jr z, jr_000_305a

Jump_000_304b:
    ld a, $07
    call Call_000_2f41

Call_000_3050:
    ld a, $07
    call ClearItemFlag
    ld a, $07
    call SetItemState

jr_000_305a:
    ld a, $54
    call ReadItemFlag
    ld a, [$c523]
    and $01
    jr z, jr_000_3075

    ld a, $54
    call Call_000_2f41
    ld a, $54
    call ClearItemFlag
    ld a, $54
    call SetItemState

jr_000_3075:
    call Call_000_2bbb
    xor a
    ld [$c53a], a
    ld [$c8a7], a

Jump_000_307f:
    ld [$c882], a
    call Call_000_3480

Jump_000_3085:
    ld a, [$c534]
    ld [$c865], a
    call Call_000_3389
    ld a, $06
    ld [$c640], a
    ld a, $16
    call Call_000_21ca
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
    jr nc, jr_000_30b2

    call ClearResult
    ret


jr_000_30b2:
    ld a, $fe
    ld [$c8a7], a
    call Call_000_302f

Jump_000_30ba:
    call SetResult
    ret


    push af
    ld a, $29
    call PushRomBank
    pop af
    call $693b
    call PopRomBank
    ret


Call_000_30cc:
Jump_000_30cc:
    push af
    ld a, $03

Call_000_30cf:
    call PushRomBank
    pop af
    call $627f
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $625b
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af

Jump_000_30ef:
    call $6825
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
    jr jr_000_3111

    ld a, $01
    ld [$c8a7], a

jr_000_3111:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $4fca
    call PopRomBank
    ld a, [$c523]
    and $01

Jump_000_3123:
    ret z

    call RefreshLists
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $4d8c
    call PopRomBank

Call_000_3135:
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af

Jump_000_313d:
    call $4e54
    call PopRomBank
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5313
    call PopRomBank

Jump_000_3151:
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


    ld a, [$c58d]
    cp $00
    jr z, jr_000_318e

    dec a
    ld [$c58d], a
    call RefreshLists
    call SetResult
    ret


jr_000_318e:
    call ClearResult
    ret


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


Call_000_31b0:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call $68f8
    call PopRomBank
    ret


    push af
    ld a, $29
    call PushRomBank

Jump_000_31c4:
    pop af
    call $6886
    call PopRomBank
    ret


Call_000_31cc:
    ld e, $18

jr_000_31ce:
    ld a, $10
    call PlayAudio
    ld a, $06
    call WaitTicks
    dec e
    jr nz, jr_000_31ce

    ret


    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    call RefreshLists
    ret


    call Call_000_31f3
    jp BranchIfClear


Call_000_31f3:
    ld a, [$c58c]
    cp $00
    jr nz, jr_000_320a

    ld a, [$c58a]
    sub $05
    ld a, [$c58b]
    sbc $00
    jr nc, jr_000_320a

    call ClearResult
    ret


jr_000_320a:
    call SetResult
    ret


    ld a, $10
    call WaitTicks
    call Call_000_3216

Call_000_3216:
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


Call_000_325d:
    push af
    ld a, $03
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


Call_000_3288:
    ld hl, $c470
    ld d, $00

jr_000_328d:
    ld a, $ff
    ld [hl+], a
    inc d
    ld a, d
    cp $08
    jr c, jr_000_328d

    ret
INCLUDE "pending.asm"


Call_000_32f4:
    ld bc, $c8cc
    ld a, c
    ld [$c867], a
    ld a, b
    ld [$c868], a

Call_000_32ff:
Jump_000_32ff:
    ldh a, [$ffa0]
    cp $00
    jr z, jr_000_3319

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

Call_000_3319:
jr_000_3319:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a

Call_000_3320:
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

Call_000_333c:
    ldh [$ff9f], a
    ld a, d

jr_000_333f:
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
    jr z, jr_000_3367

    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c470
    add hl, bc
    ld [hl], a
    ld d, a
    ldh a, [$ffa0]
    inc a
    ldh [$ffa0], a
    ld a, d

jr_000_3367:
    ld d, a
    ldh a, [$ff9e]

Call_000_336a:
    inc a
    ldh [$ff9e], a
    ld a, d
    ld d, a
    ldh a, [$ff9e]
    cp $06
    ld a, d
    jr c, jr_000_333f

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


Call_000_3389:
    ld a, $0c
    ld [$c8af], a
    ld a, $04
    ld [$c8ab], a
    ld a, $9c
    ld [$c8ac], a
    ld a, [$c865]
    ld d, a
    ld a, [$c524]
    ld [wSceneVariant], a
    cp d
    jr z, jr_000_33ab

    ld a, [$c865]
    ld [$c524], a

jr_000_33ab:
    call RefreshLists
    ret


    call ClearResult
    ld a, [$c525]
    cp $0b
    jr c, jr_000_33c1

    ld a, $73
    call ShowMsg2
    call SetResult

jr_000_33c1:
    ret


Call_000_33c2:
    ld a, [$c527]
    dec a
    ld [$c527], a
    cp $ff
    ret nz

Call_000_33cc:
    ld a, $07
    ld [$c527], a
    ld a, [$c525]
    dec a
    ld [$c525], a
    ret


Call_000_33d9:
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

Call_000_33f2:
    ld h, a
    ld a, b
    ld bc, $c8ca

Call_000_33f7:
    add hl, bc
    ld [hl], a
    ret

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


Call_000_340f:
    ld a, [$c525]
    add a
    add a
    add a
    ld c, a
    ld a, [$c527]
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


Call_000_3444:
    ld a, $58
    ld [$c87f], a

jr_000_3449:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a

Call_000_3450:
    pop af
    push hl
    call GetListPos
    ldh a, [$ff9e]
    ld c, a
    inc c
    ld b, $00
    ld hl, $c468
    add hl, bc

jr_000_345f:
    ld a, [$c87f]
    cp c
    jr z, jr_000_346b

    ld a, [hl-]
    ld [hl+], a
    inc hl
    inc c
    jr jr_000_345f

jr_000_346b:
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


Call_000_3479:
    ld a, $10
    ld [$c87f], a
    jr jr_000_3449

Call_000_3480:
    push af
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    pop af
    push hl
    call Call_000_3496

Call_000_348c:
    pop hl
    push af
    ld a, l
    ldh [$ff9e], a
    ld a, h
    ldh [$ff9f], a
    pop af

Call_000_3495:
    ret


Call_000_3496:
    ld a, $02
    ld [$c534], a
    xor a
    ld [$c535], a
    ld d, a
    ld a, $10
    ldh [$ff9e], a
    ld a, $00
    ldh [$ff9f], a
    ld a, d

jr_000_34a9:
    ld bc, $c468
    ldh a, [$ff9e]
    ld l, a
    ldh a, [$ff9f]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [$c882]
    cp d
    jr z, jr_000_34e4

    ld a, [$c535]
    inc a
    ld [$c535], a
    cp $08
    jr nz, jr_000_34d1

    xor a
    ld [$c535], a
    ld a, [$c534]

Call_000_34cd:
    inc a
    ld [$c534], a

jr_000_34d1:
    ld d, a
    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    ld a, d
    ld d, a
    ldh a, [$ff9e]
    cp $58
    ld a, d
    jr c, jr_000_34a9

    call ClearResult
    ret


jr_000_34e4:
    call SetResult
    ret


Call_000_34e8:
    ld a, $04
    ld [$c8ab], a
    ld a, $9c
    ld [$c8ac], a
    ld a, $0c
    ld [$c8af], a
    push af
    ld a, $01
    call PushRomBank

Call_000_34fd:
    pop af
    call ScrollSelection
    call PopRomBank
    ret


    call ReadArg

Call_000_3508:
    ld [$c882], a
    call Call_000_3520
    ld a, $01
    ld [$c524], a
    ld a, [$c535]
    ld [$c526], a
    call Call_000_3479
    call RefreshLists
    ret


Call_000_3520:
    call Call_000_3524
    ret


Call_000_3524:
    xor a
    ld [$c535], a
    ld c, $08
    ld hl, $c470

jr_000_352d:
    ld a, [$c882]
    cp [hl]
    jr z, jr_000_3541

    ld a, [$c535]
    inc a
    ld [$c535], a
    inc hl
    inc c
    ld a, $10
    cp c
    jr c, jr_000_352d

jr_000_3541:
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
    jr z, jr_000_356e

    call SetResult

jr_000_356e:
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

Call_000_357b:
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
    ld bc, wProp1
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $04
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
    jr nz, jr_000_35bc

    ld a, [wArg0]
    cp $06
    jr nz, jr_000_35bc

    ld a, $18
    call SetObjPresent

jr_000_35bc:
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

Call_000_35c9:
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

Jump_000_35f9:
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a

Jump_000_35ff:
    pop af
    ret
INCLUDE "prop4_bits.asm"


Call_000_37ed:
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
    and $11
    ld [hl], a
    ret
INCLUDE "list_item.asm"


Call_000_383a:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_3845

    ld a, $23
    jr jr_000_3847

jr_000_3845:
    ld a, $12

jr_000_3847:
    call PlayAudio
    ret


    cp $fd
    ei
    rst RST_30
    rst RST_28
    rst RST_18
    cp a
    ld a, a
INCLUDE "save_call.asm"

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
INCLUDE "view_call.asm"


Call_000_3907:
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


Call_000_3923:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawListUI
    call PopRomBank
    ret


Call_000_3931:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $7434
    call PopRomBank
    ret


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_394a

    call $55a4
    ret


jr_000_394a:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $60a7
    call PopRomBank
    ret


Call_000_3958:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    ret


Call_000_3966:
Jump_000_3966:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call $688c
    call PopRomBank
    ret


Call_000_3974:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $55ba
    call PopRomBank
    ret


Call_000_3982:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call $6886
    call PopRomBank
    ret


Call_000_3990:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call $689d
    call PopRomBank
    ret


Call_000_399e:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    ret


Call_000_39ac:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call $68e9
    call PopRomBank
    ret


    push af
    ld a, $00
    call PushRomBank
    pop af
    call Call_000_31b0
    call PopRomBank
    ret
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
INCLUDE "video_call.asm"


Call_000_3a0e:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call $6dfd
    call PopRomBank
    ret


Call_000_3a1c:
    call ClearOam
    call SubmitOam
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ReadSceneBg
    call PopRomBank

Call_000_3a2f:
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


Call_000_3a5d:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ClearListMark
    call PopRomBank
    ret


Call_000_3a6b:
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
    db $00

jr_000_3c12:
    nop
    nop

jr_000_3c14:
    nop
    nop
    nop
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

jr_000_3c2a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_000_3ca4:
Jump_000_3ca4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Jump_000_3d66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_000_3dff:
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
    nop
    nop
    nop
    nop
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
