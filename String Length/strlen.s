@PAGE 0 0

@DECLARE begin_location 1
@DECLARE location 2

; main
    IMM @location, .strlen.array
    RST @begin_location
.loop:
    MLD @location, .strlen.array
    BRH #zero, .finished
    INC @location
    JMP 0, .loop
.finished:
    AST @location
    SUB @begin_location
    PST 0, 0
.spin_lock:
    JMP 0, .spin_lock