
; Each row is one four-color palette in the original byte order.

; odd passenger room, fade step 0.
TrainOddBg0:
C2OddBg0:
    db $00, $00, $29, $25, $ce, $39, $ff, $7f
    db $00, $00, $ce, $39, $37, $01, $ff, $7f
    db $00, $00, $ce, $39, $39, $67, $ff, $7f
    db $00, $00, $ce, $39, $da, $4a, $bf, $67
    db $00, $00, $29, $25, $ae, $00, $37, $01
    db $00, $00, $29, $25, $57, $01, $df, $02
    db $00, $00, $29, $25, $37, $01, $c0, $02
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; odd passenger room, fade step 1.
TrainOddBg1:
C2OddBg1:
    db $00, $00, $e7, $1c, $8c, $31, $7b, $6f
    db $00, $00, $8c, $31, $f4, $00, $7b, $6f
    db $00, $00, $8c, $31, $d6, $5a, $7b, $6f
    db $00, $00, $8c, $31, $77, $3e, $5d, $5b
    db $00, $00, $e7, $1c, $ac, $00, $37, $01
    db $00, $00, $e7, $1c, $37, $01, $9c, $02
    db $00, $00, $e7, $1c, $37, $01, $60, $02
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; odd passenger room, fade step 2.
TrainOddBg2:
C2OddBg2:
    db $00, $00, $a5, $14, $29, $25, $d6, $5a
    db $00, $00, $29, $25, $b0, $00, $d6, $5a
    db $00, $00, $29, $25, $52, $4a, $d6, $5a
    db $00, $00, $29, $25, $f3, $2d, $fa, $4a
    db $00, $00, $a5, $14, $8a, $00, $b0, $00
    db $00, $00, $a5, $14, $b0, $00, $58, $02
    db $00, $00, $a5, $14, $b0, $00, $e0, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; odd passenger room, fade step 3.
TrainOddBg3:
C2OddBg3:
    db $00, $00, $63, $0c, $e7, $1c, $52, $4a
    db $00, $00, $e7, $1c, $6d, $00, $52, $4a
    db $00, $00, $e7, $1c, $ef, $3d, $52, $4a
    db $00, $00, $e7, $1c, $90, $21, $98, $3e
    db $00, $00, $63, $0c, $68, $00, $6d, $00
    db $00, $00, $63, $0c, $6d, $00, $15, $02
    db $00, $00, $63, $0c, $6d, $00, $80, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; odd passenger room, fade step 4.
TrainOddBg4:
C2OddBg4:
    db $00, $00, $21, $04, $84, $10, $ce, $39
    db $00, $00, $84, $10, $29, $00, $ce, $39
    db $00, $00, $84, $10, $8c, $31, $ce, $39
    db $00, $00, $84, $10, $0c, $11, $15, $2e
    db $00, $00, $21, $04, $26, $00, $29, $00
    db $00, $00, $21, $04, $29, $00, $b1, $01
    db $00, $00, $21, $04, $29, $00, $00, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; even passenger room, fade step 0.
TrainEvenBg0:
C2EvenBg0:
    db $00, $00, $29, $25, $ce, $39, $ff, $7f
    db $00, $00, $ce, $39, $37, $01, $ff, $7f
    db $00, $00, $ce, $39, $39, $67, $ff, $7f
    db $00, $00, $ce, $39, $da, $4a, $bf, $67
    db $00, $00, $29, $25, $ae, $00, $37, $01
    db $00, $00, $ce, $39, $37, $02, $20, $7e
    db $00, $00, $29, $25, $37, $01, $c0, $02
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; even passenger room, fade step 1.
TrainEvenBg1:
C2EvenBg1:
    db $00, $00, $e7, $1c, $8c, $31, $7b, $6f
    db $00, $00, $8c, $31, $f4, $00, $7b, $6f
    db $00, $00, $8c, $31, $d6, $5a, $7b, $6f
    db $00, $00, $8c, $31, $77, $3e, $5d, $63
    db $00, $00, $e7, $1c, $ac, $00, $f4, $00
    db $00, $00, $8c, $31, $d4, $01, $c0, $69
    db $00, $00, $e7, $1c, $f4, $00, $60, $02
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; even passenger room, fade step 2.
TrainEvenBg2:
C2EvenBg2:
    db $00, $00, $a5, $14, $29, $25, $d6, $5a
    db $00, $00, $29, $25, $b0, $00, $d6, $5a
    db $00, $00, $29, $25, $52, $4a, $d6, $5a
    db $00, $00, $29, $25, $f3, $2d, $fa, $4a
    db $00, $00, $a5, $14, $8a, $00, $b0, $00
    db $00, $00, $29, $25, $50, $01, $c0, $69
    db $00, $00, $a5, $14, $b0, $00, $e0, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; even passenger room, fade step 3.
TrainEvenBg3:
C2EvenBg3:
    db $00, $00, $63, $0c, $e7, $1c, $52, $4a
    db $00, $00, $e7, $1c, $6d, $00, $52, $4a
    db $00, $00, $e7, $1c, $ef, $3d, $52, $4a
    db $00, $00, $e7, $1c, $90, $21, $98, $3e
    db $00, $00, $63, $0c, $68, $00, $6d, $00
    db $00, $00, $e7, $1c, $ed, $00, $60, $55
    db $00, $00, $63, $0c, $6d, $00, $80, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; even passenger room, fade step 4.
TrainEvenBg4:
C2EvenBg4:
    db $00, $00, $21, $04, $84, $10, $ce, $39
    db $00, $00, $84, $10, $29, $00, $ce, $39
    db $00, $00, $84, $10, $8c, $31, $ce, $39
    db $00, $00, $84, $10, $0c, $11, $15, $2e
    db $00, $00, $21, $04, $46, $00, $29, $00
    db $00, $00, $84, $10, $69, $00, $00, $3d
    db $00, $00, $21, $04, $29, $00, $00, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; odd passenger room, fade step 0.
TrainOddObj0:
C2OddObj0:
    db $e0, $7f, $80, $7d, $a0, $7e, $ff, $7f
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $b1, $00, $98, $01

; odd passenger room, fade step 1.
TrainOddObj1:
C2OddObj1:
    db $e0, $7f, $00, $6d, $20, $6e, $7b, $6f
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $2d, $00, $14, $01

; odd passenger room, fade step 2.
TrainOddObj2:
C2OddObj2:
    db $e0, $7f, $80, $5c, $a0, $5d, $f7, $5e
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $09, $00, $90, $00

; odd passenger room, fade step 3.
TrainOddObj3:
C2OddObj3:
    db $e0, $7f, $00, $4c, $20, $4d, $73, $4e
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $05, $00, $0c, $00

; odd passenger room, fade step 4.
TrainOddObj4:
C2OddObj4:
    db $e0, $7f, $00, $3c, $a0, $3c, $ef, $3d
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $01, $00, $08, $00

; even passenger room, fade step 0.
TrainEvenObj0:
C2EvenObj0:
    db $e0, $7f, $80, $7d, $a0, $7e, $ff, $7f
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $b1, $00, $98, $01

; even passenger room, fade step 1.
TrainEvenObj1:
C2EvenObj1:
    db $e0, $7f, $00, $6d, $20, $6e, $7b, $6f
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $2d, $00, $14, $01

; even passenger room, fade step 2.
TrainEvenObj2:
C2EvenObj2:
    db $e0, $7f, $80, $5c, $a0, $5d, $f7, $5e
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $09, $00, $90, $00

; even passenger room, fade step 3.
TrainEvenObj3:
C2EvenObj3:
    db $e0, $7f, $00
jr_003_6d43:
    db $4c
jr_003_6d44:
    db $20, $4d, $73, $4e
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $05, $00, $0c, $00

; even passenger room, fade step 4.
TrainEvenObj4:
C2EvenObj4:
    db $e0, $7f, $00, $3c, $a0, $3c, $ef, $3d
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $01, $00, $08, $00
