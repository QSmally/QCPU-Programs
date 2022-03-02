@PAGE 0 0

.main:
    @ITERATOR print.array print.closure
    JMP zero, .finished

.print.array:
    $Hello world
    0x00

.print.closure:
    PPS accumulator
    @RETURN
.finished: