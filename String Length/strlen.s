@PAGE 0 0

@DECLARE begin_location 1
@DECLARE location 2

@IF enable-prefetch
    PRF .strlen.array-
@END

; main
    IMM @location, .strlen.array
    RST @begin_location
.loop:
    MLD @location, 0
    BRH #zero, .finished
    INC @location
    JMP zero, .loop
.finished:
    AST @location
    SUB @begin_location
    PPS accumulator

.spin_lock:
    JMP zero, .spin_lock