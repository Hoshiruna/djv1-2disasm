
; Read one script byte and store it in the first script-value byte.
ScriptValue0:


Call_000_2c3e:
    call ReadArg
    ld [wScriptValue0], a
    ret

; Read two script bytes and store argument zero/one in the two script-value bytes.
ScriptValues01:


    call ReadArgs2

Jump_000_2c48:
    ld [wScriptValue0], a
    ld a, [wArg1]
    ld [wScriptValue1], a
    ret

; Rebuild the room object list and return to the script runner.
ScriptBuildObjs:


    call BuildObjList
    ret
