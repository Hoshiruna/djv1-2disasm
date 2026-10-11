
; Return immediately before the script runner displays a stream-zero message.
BeforeMsg0:


Call_000_1071:
    ret

; Return immediately before the script runner displays a stream-one message.
BeforeMsg1:


Call_000_1072:
    ret

; Return immediately before the script runner displays a stream-two message.
BeforeMsg2:


Call_000_1073:
    ret

; Retain the adjacent original return instruction.
SpareMsgReturn:


    ret
