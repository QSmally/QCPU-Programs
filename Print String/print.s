@PAGE 0 0

.main:
    @ITERATOR print.array print.closure
.spin_lock:
    JMP zero, .spin_lock

.print.array:
    $Hello world
    0x00

.print.closure:
    PPS accumulator
    @RETURN