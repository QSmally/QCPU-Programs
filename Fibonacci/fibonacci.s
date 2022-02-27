@PAGE 0 0

@DECLARE operand 1

; main
    IMM @operand, 1
    IMM 0, 0
.loop:
    PPS 0
; iteration
    ADD @operand
    XCH @operand
    JMP 0, .loop