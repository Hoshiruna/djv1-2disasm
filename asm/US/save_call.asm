
; Call LoadSave in bank 1 and restore the previous ROM bank.
LoadGame:


Call_000_3724:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call LoadSave
    call PopRomBank
    ret

; Call StoreSave in bank 1 and restore the previous ROM bank.
StoreGame:


Call_000_3732:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call StoreSave
    call PopRomBank
    ret

; Call the original partial ClearSave in bank 1 and restore the previous ROM bank.
EraseGame:


Call_000_3740:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ClearSave
    call PopRomBank
    ret

; Call ScanSaves in bank 1 and restore the previous ROM bank.
ScanGames:


Call_000_374e:
Jump_000_374e:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ScanSaves
    call PopRomBank
    ret
