
; Read one script byte and store it in the first script-value byte.
ScriptValue0:


    call ReadArg
    ld [wScriptValue0], a
    ret

; Read two script bytes and store argument zero/one in the two script-value bytes.
ScriptValues01:


    call ReadArgs2
    ld [wScriptValue0], a
    ld a, [wArg1]
    ld [wScriptValue1], a
    ret

; Rebuild the room object list and return to the script runner.
ScriptBuildObjs:


Call_000_2b02:
    call BuildObjList
    ret
