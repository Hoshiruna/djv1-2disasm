
; Return immediately before the script runner displays a stream-zero message.
BeforeMsg0:


Call_000_10c3:
Jump_000_10c3:
    ret

; Return immediately before the script runner displays a stream-one message.
BeforeMsg1:


Call_000_10c4:
    ret

; Return immediately before the script runner displays a stream-two message.
BeforeMsg2:


Call_000_10c5:
    ret

; Retain the adjacent original return instruction.
SpareMsgReturn:


    ret
