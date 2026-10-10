
; Prepare the selected item through bank one and refresh lists.
RefreshItemList:


    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    call RefreshLists
    ret
