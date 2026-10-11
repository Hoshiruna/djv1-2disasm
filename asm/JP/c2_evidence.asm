
; Set the result when Bondwell's letter, Siegel's diary, and McMurphy's note are all among the seven scanned desk bytes.
TestDeskProof:
TestC2Required:


Call_003_560a:
    ld bc, C2ProofIds

jr_003_560d:
    ld a, [bc]
    ld hl, wDeskItems

jr_003_5611:
    cp [hl]
    jr z, jr_003_561f

    inc hl
    ld e, a
    ld a, DeskEndLo
    cp l
    ld a, e
    jr nz, jr_003_5611

    jp ClearResult


jr_003_561f:
    inc bc
    ld a, ProofEndLo
    cp c
    jr nz, jr_003_560d

    jp SetResult

C2ProofIds:
C2Required:
    db C2BondLetter, C2SiegelDiary, C2McMNote

; Set the result when neither the payment demand nor the ledger occurs among the seven scanned desk bytes.
TestDeskClean:
TestC2Absent:

Call_003_562b:
    ld bc, C2BadProof

jr_003_562e:
    ld a, [bc]
    ld hl, wDeskItems

jr_003_5632:
    cp [hl]
    jp z, ClearResult

    inc hl
    ld e, a
    ld a, DeskEndLo
    cp l
    ld a, e
    jr nz, jr_003_5632

    inc bc
    ld a, BadProofEndLo
    cp c
    jr nz, jr_003_562e

    jp SetResult

C2BadProof:
C2Forbidden:
    db C2PayNote, C2Ledger
