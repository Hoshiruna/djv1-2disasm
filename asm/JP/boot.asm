
; Clear WRAM/HRAM, save startup A, and enter bank-1 initialization only when A is $11.
BootGame:

Jump_000_0150:
    ld d, a

Call_000_0151:
    ld sp, $fffe
    call DisableLcd

Call_000_0157:
    ld hl, $c000
    ld bc, $2000
    call ZeroBytes

Call_000_0160:
Jump_000_0160:
    ld sp, $cfff
    ld hl, $ff80
    ld bc, $0080
    call ZeroBytes
    ld a, d
    ldh [hBootByte], a
    cp $11
    jp nz, MonoFallback

Call_000_0174:
    ld a, $c3
    ldh [hLcdc], a
    call InitBanks
    jp InitVideo

; Reload the saved startup byte and jump back to the original boot initialization.
SoftReset:


Jump_000_017e:
    ldh a, [hBootByte]
    jp BootGame

; Select ROM bank 9 and enter the original regional fallback display path.
MonoFallback:


Jump_000_0183:
    ld a, $09
    call PushRomBank
    jp ShowMono
