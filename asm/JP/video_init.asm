; Set double speed, install DMA code, clear VRAM, configure video, then enter the original startup continuation.
InitVideo:
    call SetDoubleSpeed
    xor a
    ldh [rSVBK], a
    call InstallOamDma
    ld hl, $8000
    ld bc, $1800
    call ZeroBytes
    call ClearBgMaps
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld a, $00
    ldh [hVideoFlags], a
    ld a, $01
    ldh [rIE], a
    ldh a, [hLcdc]
    ldh [rLCDC], a
    ei
    call InitAudio
    ld hl, wFrameFlags
    set 0, [hl]
    jp MainGame

; If not already double speed, save IE, mask IRQs, prepare KEY1, STOP, then restore IE.
SetDoubleSpeed:


Call_001_4034:
    ldh a, [rKEY1]
    and $80
    ret nz

    ldh a, [rIE]
    ld [wIrqSave], a
    xor a
    ldh [rIE], a
    ld a, $30
    ldh [rP1], a
    ld a, $01
    ldh [rKEY1], a
    stop
    ld a, [wIrqSave]
    ldh [rIE], a
    ret

; Copy the twelve-byte OamDmaCode routine to HRAM $ff80.
InstallOamDma:


Call_001_4051:
    ld c, $80
    ld b, $0c
    ld hl, OamDmaCode

jr_001_4058:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_001_4058

    ret
