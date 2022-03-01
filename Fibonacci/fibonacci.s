@PAGE 0 0

@DECLARE operand 1

; main
    IMM @operand, 1
    IMM accumulator, 0
.loop:
    PPS accumulator
; iteration
    ADD @operand
    XCH @operand
    JMP zero, .loop