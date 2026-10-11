
; Train numbers for record indices 0..7.
C2TrainNums:
C2SchedKinds:
    db $02
jr_003_68f4:
    db $03
jr_003_68f5:
    db $04, $05, $06, $07, $08, $09

TrainRefs:
C2SchedPtrs:
    dw Train2Times
    dw Train3Times
    dw Train4Times
    dw Train5Times
    dw Train6Times
    dw Train7Times
    dw Train8Times
    dw Train9Times

; Train 2: arrival tick, destination; active window starts four ticks before arrival.

Train2Times:
C2Sched0:
    db $04, CityLV
    db $16, CityNY
    db $28, CityLA
    db $38, CityNY
    db $4a, CitySTL
    db $5a, CityLV
    db $6c, CityNY
    db $80, CitySTL
    db $92, CityLV
    db $a6, CitySTL
    db $ba, CityLA
    db $cb, CityNY
    db $db, CityLV
    db $f4, CitySTL
    db $ff

; Train 3: arrival tick, destination; active window starts four ticks before arrival.

Train3Times:
C2Sched1:
    db $11, CityLV
    db $23, CityNY
    db $39, CityLA
    db $4c, CityLV
    db $60, CityNY
    db $75, CityLV
    db $8b, CityLA
    db $9b, CityNY
    db $ab, CityNY
    db $bb, CityLV
    db $cb, CityLA
    db $e3, CitySTL
    db $f3, CityLA
    db $ff

; Train 4: arrival tick, destination; active window starts four ticks before arrival.

Train4Times:
C2Sched2:
    db $0b, CitySTL
    db $1f, CityLV
    db $2f, CityLV
    db $43, CityNY
    db $57, CitySTL
    db $67, CityLV
    db $7a, CityLA
    db $8d, CitySTL
    db $a7, CityLA
    db $bb, CityNY
    db $cb, CityLV
    db $db, CityNY
    db $f1, CityNY
    db $ff

; Train 5: arrival tick, destination; active window starts four ticks before arrival.

Train5Times:
C2Sched3:
    db $08, CityNY
    db $19, CityLA
    db $29, CitySTL
    db $3c, CityLV
    db $50, CityLA
jr_003_6968:
    db $63, CityLA
    db $73, CityNY
    db $83, CityLV
    db $9e, CityLV
    db $ae, CityLV
    db $c2, CitySTL
    db $d8, CityLA
    db $e9, CityLV
    db $ff

; Train 6: arrival tick, destination; active window starts four ticks before arrival.

Train6Times:
C2Sched4:
    db $0e, CitySTL
    db $1f, CityNY
    db $2f, CityLA
    db $3f, CityCHG
    db $53, CityLA
    db $64, CityNY
    db $75, CityCHG
    db $89, CitySTL
    db $9c, CitySTL
    db $ae, CityNY
    db $c0, CityCHG
    db $d3, CityLA
    db $e5, CityLA
    db $ff

; Train 7: arrival tick, destination; active window starts four ticks before arrival.

Train7Times:
C2Sched5:
    db $08, CityLA
    db $1b, CitySTL
    db $2e, CityCHG
    db $42, CityNY
    db $56, CityNY
    db $6b, CitySTL
    db $7f, CityLA
    db $90, CityCHG
    db $a0, CityCHG
    db $b2, CitySTL
    db $c5, CityLA
    db $d8, CityCHG
    db $e8, CityCHG
    db $ff

; Train 8: arrival tick, destination; active window starts four ticks before arrival.

Train8Times:
C2Sched6:
    db $04, CityCHG
    db $14, CityLA
    db $29, CitySTL
    db $39, CityLA
    db $4c, CityCHG
    db $5c, CitySTL
    db $71, CityLA
    db $82, CityCHG
    db $9d, CityNY
    db $b0, CityCHG
    db $c0, CityNY
    db $d5, CityNY
    db $e6, CityCHG
    db $ff

; Train 9: arrival tick, destination; active window starts four ticks before arrival.

Train9Times:
C2Sched7:
    db $0e, CityCHG
    db $1e, CityCHG
    db $32, CityNY
    db $46, CitySTL
    db $58, CityCHG
    db $68, CityCHG
    db $7b, CityNY
    db $8d, CityNY
    db $a8, CityLA
    db $b8, CityLA
    db $cd, CityCHG
    db $e3, CitySTL
    db $f3, CityNY
    db $ff

