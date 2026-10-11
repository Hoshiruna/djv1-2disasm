
; Dispatch the menu mode through its two original coordinate handlers.
SetC2MenuPos:


Call_003_550b:
    rst RST_00

C2MenuPosCalls:
    dw C2MenuPos3
    dw C2MenuPos2

; Select one of three regional Y positions and set the regional cursor X.
C2MenuPos3:
    ld a, [wC2MenuPick]
    ld l, a
    ld h, $00
    ld bc, C2MenuYs3
    add hl, bc
    ld a, [hl]
    ldh [hSpriteY], a
    ld a, $28
    ldh [hSpriteX], a
    ret

C2MenuYs3:
    db $60, $68, $70

; Select one of two regional Y positions and set the regional cursor X.
C2MenuPos2:
    ld a, [wC2MenuPick]
    ld l, a
    ld h, $00
    ld bc, C2MenuYs2
    add hl, bc
    ld a, [hl]
    ldh [hSpriteY], a
    ld a, $28
    ldh [hSpriteX], a
    ret

C2MenuYs2:
    db $67, $6f
