
; Clear ROM high/RAM bank registers, select ROM bank 1, reset the HRAM stack, and select audio bank 4.
InitBanks:


Call_000_0769:
    xor a

Jump_000_076a:
    ld [$3000], a
    ld [$4000], a
    ld a, $01
    ld [$2000], a

Jump_000_0775:
    ldh [hRomBank], a
    ld a, $fe
    ldh [hStackPtr], a
    ld a, $04
    ld [wAudioBank], a
    ret

; A = bank; save the previous ROM bank on the bank stack.
PushRomBank:
Call_000_0781:
    push af

Jump_000_0782:
    ldh a, [hRomBank]
    call PushHramByte
    pop af
    ldh [hRomBank], a
    ld [$2000], a
    ret

; Restore the most recently saved ROM bank; preserve A.
PopRomBank:
Call_000_078e:
Jump_000_078e:
    push af
    call PopHramByte
    ldh [hRomBank], a
    ld [$2000], a
    pop af
    ret


; Store A at the current HRAM stack index, then use the decremented index; preserve AF and BC.
PushHramByte:
Call_000_0799:
    push bc
    push af
    ldh a, [hStackPtr]
    ld c, a
    dec a
    ldh [hStackPtr], a
    pop af
    ldh [c], a
    pop bc

Jump_000_07a4:
    ret


; Increment the HRAM stack index, return its byte in A, and preserve BC.
PopHramByte:
Call_000_07a5:
    push bc
    ldh a, [hStackPtr]
    inc a
    ldh [hStackPtr], a
    ld c, a
    ldh a, [c]
    pop bc
    ret

; Write $0a to the cartridge RAM enable register.
EnableRam:


Call_000_07af:
    ld a, $0a
    ld [$0000], a
    ret

; Write zero to the cartridge RAM enable register.
DisableRam:


Call_000_07b5:
    xor a
    ld [$0000], a
    ret
