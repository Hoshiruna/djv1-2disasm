; Display status for phases 0..15 of the sixteen-tick train window.

TrainTextIds:
C2SchedCodes:
    ; Phase 0..3.
    db TrainIn, TrainIn, TrainIn, TrainIn
    ; Phase 4.
    db TrainHere
    ; Phase 5..12.
    db TrainBoard, TrainBoard, TrainBoard, TrainBoard, TrainBoard, TrainBoard, TrainBoard, TrainBoard
    ; Phase 13.
    db TrainLeave
    ; Phase 14..15.
    db TrainOut, TrainOut
