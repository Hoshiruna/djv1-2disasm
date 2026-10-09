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

jr_001_4fa9:
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

jr_001_4fc7:
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
jr_001_4fe5:
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
jr_001_5000:
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
jr_001_501a:
    db HIGH($0204)
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    dw $1020
    dw $2040
    dw $0081
    dw $0102
    dw $0204
    dw $0408
    dw $0810
    dw $0408
    dw $0204
jr_001_5035:
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
jr_001_5048:
    db HIGH($0102)
    dw $0204
jr_001_504b:
    dw $0408
    dw $0204
    dw $0102
    dw $0081
jr_001_5053:
    dw $2040
    dw $1020
    dw $0810
    dw $0408
    dw $0408
    dw $0810
    dw $1020
    dw $2040
    dw $0081
jr_001_5065:
    dw $0102
    dw $0204
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    dw $0810
    dw $0408
    db LOW($0204)
jr_001_5076:
    db HIGH($0204)
    dw $0204
    dw $0408
    dw $0810
    dw $1020
jr_001_507f:
    dw $2040
    dw $0081
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    dw $0810
    dw $0408
    db LOW($0204)
jr_001_5090:
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
jr_001_50aa:
    db HIGH($0810)
    dw $1020
    dw $2040
    dw $2040
    dw $1020
jr_001_50b3:
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
jr_001_50cd:
    dw $2040
    dw $1020
    db LOW($0810)
jr_001_50d2:
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
jr_001_50e6:
    db HIGH($0102)
    dw $0102
    dw $0081
    dw $2040
    dw $1020
    db LOW($0810)
jr_001_50f0:
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
jr_001_510e:
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
jr_001_512c:
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
jr_001_514a:
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
jr_001_5168:
    db HIGH($0080)
jr_001_5169:
    dw $0080
    dw $0080
    dw $0080
    dw $0080
    dw $0080
    dw $ffff
jr_001_5175:
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
jr_001_519b:
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
jr_001_51bd:
    dw $3006
    dw $380e
    dw $0010
    dw $0020
jr_001_51c5:
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
jr_001_51e7:
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
jr_001_5236:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5244:
    db HIGH($00c0)
    dw $00c0
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5254:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    dw $0120
    db LOW($00c0)
jr_001_5264:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5272:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5282:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5290:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_52a0:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_52ae:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_52be:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_52cc:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_52dc:
    db HIGH($00c0)
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_52ea:
    db HIGH($00c0)
    dw $2001
SceneMask4:
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_52f2:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5300:
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
jr_001_531a:
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
jr_001_5334:
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
jr_001_534e:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_535c:
    db HIGH($0210)
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5368:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5376:
    db HIGH($0210)
    dw $0408
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5382:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_5390:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_539c:
    db HIGH($0210)
    dw $0408
    dw $0804
    dw $1002
    dw $2001
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_53aa:
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
jr_001_53c2:
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
jr_001_53e0:
    db HIGH($0000)
    dw $0000
    dw $0000
    dw $00c0
    dw $01e0
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_53ee:
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
jr_001_5404:
    db HIGH($0210)
    dw $0408
    dw $0210
    dw $0120
    db LOW($20c1)
jr_001_540c:
    db HIGH($20c1)
    dw $1002
    db LOW($0804)
jr_001_5410:
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
jr_001_543c:
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
jr_001_544e:
    db HIGH($02d0)
    dw $0528
    dw $0a14
    dw $140a
    db LOW($2805)
jr_001_5456:
    db HIGH($2805)
    dw $1002
    dw $2001
    dw $1002
    dw $0804
    dw $0408
    dw $0210
    dw $0120
    db LOW($00c0)
jr_001_5466:
    db HIGH($00c0)
    dw $00c0
    dw $0120
    db LOW($0210)
jr_001_546c:
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
jr_001_5485:
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_5491:
    dw $2082
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_549f:
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_54ab:
    dw $1041
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_54b9:
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_54c5:
    dw $1041
    dw $0820
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_54d3:
    dw $1041
jr_001_54d5:
    dw $0820
    dw $0410
    dw $0208
    dw $0104
    dw $2082
jr_001_54df:
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
jr_001_54f9:
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
jr_001_5513:
    dw $1041
    dw $0820
    dw $0410
    dw $0208
    dw $0104
