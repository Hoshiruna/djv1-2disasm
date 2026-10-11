
; Read one argument before adding coins and searching the list.
AddCoinFindArg:
AddCountFindArg:


    call ReadArg

; Add wArg0 to Case I coins, use the returned zero byte for list search, and refresh lists.
AddCoinFind:
AddCountFind:

Call_000_302f:
    call AddC1Coins

Call_000_3032:
    ld [wArg0], a
    ld [wFindListValue], a
    call FindListValue
    call RefreshLists
    ret
