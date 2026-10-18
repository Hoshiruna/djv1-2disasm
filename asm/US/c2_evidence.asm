
; Set the result when Bondwell's letter, Siegel's diary, and McMurphy's note are all among the seven scanned desk bytes.
TestDeskProof:
TestC2Required:


Call_003_560a:
    ld bc, C2ProofIds

; Check the next required item against the desk contents.
DeskProofNextRequired:
jr_003_560d:
    ld a, [bc]
    ld hl, wDeskItems

; Compare the required item with the next desk slot.
DeskProofScanNext:
jr_003_5611:
    cp [hl]
    jr z, DeskProofFound

    inc hl
    ld e, a
    ld a, DeskEndLo
    cp l
    ld a, e
    jr nz, DeskProofScanNext

    jp ClearResult


; Advance to the next required evidence item.
DeskProofFound:
jr_003_561f:
    inc bc
    ld a, ProofEndLo
    cp c
    jr nz, DeskProofNextRequired

    jp SetResult

C2ProofIds:
C2Required:
    db C2BondLetter, C2SiegelDiary, C2McMNote

; Set the result when neither the payment demand nor the ledger occurs among the seven scanned desk bytes.
TestDeskClean:
TestC2Absent:

Call_003_562b:
    ld bc, C2BadProof

; Check the next forbidden item against the desk contents.
DeskCleanNextForbidden:
jr_003_562e:
    ld a, [bc]
    ld hl, wDeskItems

; Compare the forbidden item with the next desk slot.
DeskCleanScanNext:
jr_003_5632:
    cp [hl]
    jp z, ClearResult

    inc hl
    ld e, a
    ld a, DeskEndLo
    cp l
    ld a, e
    jr nz, DeskCleanScanNext

    inc bc
    ld a, BadProofEndLo
    cp c
    jr nz, DeskCleanNextForbidden

    jp SetResult

C2BadProof:
C2Forbidden:
    db C2PayNote, C2Ledger
