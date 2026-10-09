; Read the selected effect mask at step*28 + row*2 into wDrawMask.
ReadSceneMask:


    ld a, [wSceneFx]
    add a
    ld e, a
    ld d, $00
    ld hl, SceneMaskRefs
    add hl, de
    ld a, [hl+]
    ld [wDrawMaskPtr], a
    ld a, [hl]
    ld [wDrawMaskPtr+1], a

jr_001_5030:
    ld a, [wDrawStep]
    add a
    add a
    ld b, a
    add a
    ld c, a
    add a
    add b
    add c
    ld c, a
    ld b, $00
    ld a, [wDrawMaskPtr]
    ld l, a
    ld a, [wDrawMaskPtr+1]
    ld h, a
    add hl, bc
    ld a, [wDrawRow]
    add a
    ld c, a
    add hl, bc
    ld a, [hl+]

jr_001_504e:
    ld [wDrawMask], a
    ld a, [hl]
    ld [wDrawMask+1], a
    ret
; Seven effect tables; each step has fourteen little-endian row masks.
; The renderer uses only bits 0-13. Repeated cells and unused high bits are original data.
SceneMaskRefs:
    dw SceneMask0
    dw SceneMask1
    dw SceneMask2
    dw SceneMask3
    dw SceneMask4
    dw SceneMask5
    dw SceneMask6
SceneMask1:
    dw $2040
    dw $1020
    dw $0810
    dw $0408
jr_001_506c:
    dw $0204
    dw $0102
    dw $0081
    dw $0081
    dw $0102
    dw $0204
    dw $0408
    dw $0810
    dw $1020
    dw $2040
    dw $1020
    dw $0810
    dw $0408
    db LOW($0204)
jr_001_5087:
    db HIGH($0204)
    dw $0102
    dw $0081
    dw $2040
    dw $2040
    dw $0081
    dw $0102
    dw $0204
    dw $0408
    dw $0810
    dw $1020
    dw $0810
    dw $0408
    db LOW($0204)
jr_001_50a1:
    db HIGH($0204)
    dw $0102
    dw $0081
    dw $2040
    db LOW($1020)
jr_001_50a9:
    db HIGH($1020)
    dw $1020
    dw $2040
    dw $0081
    dw $0102
    dw $0204
    dw $0408
    dw $0810
    dw $0408
    dw $0204
jr_001_50bc:
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    dw $0810
    dw $0810
    dw $1020
    dw $2040
    dw $0081
    db LOW($0102)
jr_001_50cf:
    db HIGH($0102)
    dw $0204
jr_001_50d2:
    dw $0408
    dw $0204
    dw $0102
    dw $0081
jr_001_50da:
    dw $2040
    dw $1020
    dw $0810
    dw $0408
    dw $0408
    dw $0810
    dw $1020
    dw $2040
    dw $0081
jr_001_50ec:
    dw $0102
    dw $0204
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    dw $0810
    dw $0408
    db LOW($0204)
jr_001_50fd:
    db HIGH($0204)
    dw $0204
    dw $0408
    dw $0810
    dw $1020
jr_001_5106:
    dw $2040
    dw $0081
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    dw $0810
    dw $0408
    db LOW($0204)
jr_001_5117:
    db HIGH($0204)
    dw $0102
    dw $0102
    dw $0204
    dw $0408
    dw $0810
    dw $1020
    dw $2040
    dw $0081
SceneMask0:
    dw $0081
    dw $0102
    dw $0204
    dw $0408
    db LOW($0810)
jr_001_5131:
    db HIGH($0810)
    dw $1020
    dw $2040
    dw $2040
    dw $1020
jr_001_513a:
    dw $0810
    dw $0408
    dw $0204
    dw $0102
    dw $0081
    dw $0102
    dw $0204
    dw $0408
    dw $0810
    dw $1020
    dw $2040
    dw $0081
    dw $0081
jr_001_5154:
    dw $2040
    dw $1020
    db LOW($0810)
jr_001_5159:
    db HIGH($0810)
    dw $0408
    dw $0204
    dw $0102
    dw $0204
    dw $0408
    dw $0810
    dw $1020
    dw $2040
    dw $0081
    db LOW($0102)
jr_001_516d:
    db HIGH($0102)
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    db LOW($0810)
jr_001_5177:
    db HIGH($0810)
    dw $0408
    dw $0204
    dw $0408
    dw $0810
    dw $1020
    dw $2040
    dw $0081
    dw $0102
    dw $0204
    dw $0204
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    db LOW($0810)
jr_001_5195:
    db HIGH($0810)
    dw $0408
    dw $0810
    dw $1020
    dw $2040
    dw $0081
    dw $0102
    dw $0204
    dw $0408
    dw $0408
    dw $0204
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    db LOW($0810)
jr_001_51b3:
    db HIGH($0810)
    dw $1020
    dw $2040
    dw $0081
    dw $0102
    dw $0204
    dw $0408
    dw $0810
    dw $0810
    dw $0408
    dw $0204
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    db LOW($2040)
jr_001_51d1:
    db HIGH($2040)
    dw $0081
    dw $0102
    dw $0204
    dw $0408
    dw $0810
    dw $1020
    dw $1020
    dw $0810
    dw $0408
    dw $0204
    dw $0102
    dw $0081
    dw $2040
SceneMask2:
    dw $0080
    db LOW($0080)
jr_001_51ef:
    db HIGH($0080)
jr_001_51f0:
    dw $0080
    dw $0080
    dw $0080
    dw $0080
    dw $0080
    dw $ffff
jr_001_51fc:
    dw $0080
    dw $0080
    dw $0080
    dw $0080
    dw $0080
    dw $0080
    dw $0300
    dw $0300
    dw $0300
    dw $0300
    dw $0100
    dw $010f
    dw $017f
    dw $0000
    dw $ff40
    dw $f040
    dw $0040
    dw $0060
    dw $0060
jr_001_5222:
    dw $0060
    dw $3c00
    dw $1c00
    dw $0c01
    dw $0403
    dw $060f
    dw $0210
    dw $0000
    dw $0000
    dw $0000
    dw $0c20
    dw $f030
    dw $c018
    dw $801c
    dw $001e
    dw $c001
    dw $6003
jr_001_5244:
    dw $3006
    dw $380e
    dw $0010
    dw $0020
jr_001_524c:
    dw $0000
    dw $0000
    dw $0000
    dw $0200
    dw $0c08
    dw $3804
    dw $7002
    dw $e001
    dw $000e
    dw $800c
    dw $c018
    dw $f010
    dw $7820
    dw $0c40
    dw $0200
    dw $0000
    dw $0020
jr_001_526e:
    dw $0118
    dw $0206
    dw $0403
    dw $0c01
    dw $1800
    dw $0070
    dw $0070
    dw $0060
    dw $0060
    dw $8040
    dw $f000
    dw $fc00
    dw $0000
    dw $001f
    dw $0007
    dw $0101
    dw $0300
    dw $0300
    dw $0700
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
SceneMask3:
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_52bd:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_52cb:
    db HIGH($00c0)
    dw $00c0
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_52db:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    dw $0120
    db LOW($00c0)
jr_001_52eb:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_52f9:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5309:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5317:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5327:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5335:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5345:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5353:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5363:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5371:
    db HIGH($00c0)
    dw $2001
SceneMask4:
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5379:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5387:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $0120
    dw $0210
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_53a1:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0210
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_53bb:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_53d5:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_53e3:
    db HIGH($0210)
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_53ef:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_53fd:
    db HIGH($0210)
    dw $0408
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5409:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5417:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5423:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5431:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
SceneMask5:
    dw $00c0
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $2001
    dw $2001
    db LOW($0000)
jr_001_5449:
    db HIGH($0000)
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $00c0
    dw $01e0
    dw $00c0
    dw $0000
    dw $0000
    dw $0000
    dw $2001
    dw $3003
    dw $3003
    dw $2001
    db LOW($0000)
jr_001_5467:
    db HIGH($0000)
    dw $0000
    dw $0000
    dw $00c0
    dw $01e0
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5475:
    db HIGH($00c0)
    dw $0000
    dw $2001
    dw $1002
    dw $0804
    dw $0804
    dw $1002
    dw $2001
    dw $0000
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_548b:
    db HIGH($0210)
    dw $0408
    dw $0210
    dw $0120
    db LOW($20c1)
jr_001_5493:
    db HIGH($20c1)
    dw $1002
    db LOW($0804)
jr_001_5497:
    db HIGH($0804)
    dw $0408
    dw $0408
    dw $0804
    dw $1002
    dw $20c1
    dw $0120
    dw $0210
    dw $0408
    dw $0804
    dw $0408
    dw $2211
    dw $1122
    dw $08c4
    dw $0408
    dw $0210
    dw $0210
    dw $0408
    dw $08c4
    dw $1122
    dw $2211
    dw $0408
    db LOW($0804)
jr_001_54c3:
    db HIGH($0804)
    dw $1002
    dw $2805
    dw $140a
    dw $0a14
    dw $0528
    dw $02d0
    dw $0120
    dw $0120
    db LOW($02d0)
jr_001_54d5:
    db HIGH($02d0)
    dw $0528
    dw $0a14
    dw $140a
    db LOW($2805)
jr_001_54dd:
    db HIGH($2805)
    dw $1002
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_54ed:
    db HIGH($00c0)
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_54f3:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
SceneMask6:
    dw $0104
    dw $2082
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_550c:
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_5518:
    dw $2082
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_5526:
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_5532:
    dw $1041
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_5540:
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_554c:
    dw $1041
    dw $0820
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_555a:
    dw $1041
jr_001_555c:
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_5566:
    dw $1041
    dw $0820
    dw $0410
    dw $0410
    dw $0208
    dw $0104
    dw $2082
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_5580:
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0208
    dw $0104
    dw $2082
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_559a:
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
