
; Read one script argument and enter count addition with list search.
AddCountFindArg:


    call ReadArg

; Add argument zero to the case-one count, use the returned zero byte for list search, and refresh lists.
AddCountFind:

Call_000_2edf:
    call AddListCount
    ld [wArg0], a
    ld [wFindListValue], a
    call FindListValue
    call RefreshLists
    ret
