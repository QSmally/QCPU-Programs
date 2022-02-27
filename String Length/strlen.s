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
    JMP 0, .loop
.finished:
    AST @location
    SUB @begin_location
    PPS 0

.spin_lock:
    JMP 0, .spin_lock