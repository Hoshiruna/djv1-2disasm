; Dollar fares for the five destination IDs; valid schedule destinations select indices 0..4.
; Keep the five-byte layout: higher indices would read the following status table.

TrainFares:
C2SchedCosts:
    db $14 ; Las Vegas: 20 dollars.
    db $14 ; Chicago: 20 dollars.
    db $23 ; New York: 35 dollars.
    db $0f ; Los Angeles: 15 dollars.
    db $0f ; St. Louis: 15 dollars.
