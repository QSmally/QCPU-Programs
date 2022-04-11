@PAGE 0 0

@DECLARE location 1

; main
    IMM @location, .array
.loop:
    MLI @location, 0
    BRH #zero, .finished
    CAL zero, .closure
    JMP zero, .loop

.array:
    $Hello world
    0x00

.closure:
    PPS accumulator
    @RETURN
.finished: