@PAGE 0 0

@DECLARE location 1

; main
    IMM @location, .array
.loop:
    MLI @location, 0
    BRH #!zero, .closure

; ensure there's an empty instruction to halt
.array(7):
    $Hello world
    0x00

.closure:
    PPS accumulator
    JMP zero, .loop