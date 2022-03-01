@HEADER ITERATOR location_label subroutine_label

// Calls the closure for each non-zero byte in the array. The accumulator contains
// the loaded character.

@DECLARE location 1

; main
    IMM @location, .@location_label
.loop:
    MLD @location, 0
    BRH #zero, .finished
    CAL zero, .@subroutine_label
    INC @location
    JMP zero, .loop
.finished: