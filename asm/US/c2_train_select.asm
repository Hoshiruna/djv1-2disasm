
; For record offset DE, scan arrival/destination pairs and write a record within the original byte time window.
PickTrain:
SelectC2SchedRec:


Call_003_6351:
jr_003_6351:
    ld a, [wTrainPtr]
    ld c, a
    ld a, [wTrainPtr+1]
    ld b, a
    ld a, [bc]
    cp $ff
    ret z

    push af
    sub $04
    ld [wTrainStart], a
    pop af
    ; The exclusive end may wrap; carry skips its upper-bound comparison.
    add $0c
    ld [wTrainEnd], a
    jr nc, TrainSelectCheckEnd

    ld a, [wC2Time]
    jr TrainSelectWriteRecord

; Check the upper bound of the current train time window.
TrainSelectCheckEnd:
jr_003_6370:
    ld a, [wC2Time]
    ld hl, wTrainEnd
    cp [hl]
    jr nc, TrainSelectNextPair

    ld a, [wTrainStart]
    ; Preserve the original adjustment for arrivals below four.
    sub $fc
    jr c, TrainSelectWriteRecord

    ld [wTrainStart], a

; Store the selected train record when the current time is in range.
TrainSelectWriteRecord:
jr_003_6383:
    ld a, [wC2Time]
    ld hl, wTrainStart
    sub [hl]
    ret c

    ld hl, wTrainRecs+3
    add hl, de
    ld [hl-], a
    ld c, a
    ld b, $00
    push hl
    ld hl, TrainTextIds
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl-], a
    ld a, [wTrainPtr]
    ld c, a
    ld a, [wTrainPtr+1]
    ld b, a
    inc bc
    ld a, [bc]
    ld [hl-], a
    ld a, [wTrainIndex]
    ld c, a
    ld b, $00
    push hl
    ld hl, C2TrainNums
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl], a
    ret


; Advance to the next arrival and destination pair.
TrainSelectNextPair:
jr_003_63b5:
    ld a, [wTrainPtr]
    add $02
    ld [wTrainPtr], a
    ld a, [wTrainPtr+1]
    adc $00
    ld [wTrainPtr+1], a
    jr PickTrain
