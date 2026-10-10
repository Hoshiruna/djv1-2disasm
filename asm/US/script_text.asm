
; Read a script argument, then show a family 0 message.
ScriptMsg0:


    call ReadArg

; Keep the original callback, then show the family 0 message passed in A.
ShowMsg0:

Call_000_1b09:
Jump_000_1b09:
    call Call_000_10c3
    call ShowText0
    ret

; Read a script argument, then show a family 1 message.
ScriptMsg1:


    call ReadArg

; Keep the original callback, then show the family 1 message passed in A.
ShowMsg1:

Call_000_1b13:
    call Call_000_10c4
    call ShowText1
    ret

; Read a script argument, then show a family 2 message.
ScriptMsg2:


    call ReadArg

; Keep the original callback, then show the family 2 message passed in A.
ShowMsg2:

Call_000_1b1d:
    call Call_000_10c5
    call ShowText2
    ret

; Read a script argument, then show a family 3 message.
ScriptMsg3:


    call ReadArg

; Show the family 3 message passed in A.
ShowMsg3:

Call_000_1b27:
Jump_000_1b27:
    call ShowText3
    ret
