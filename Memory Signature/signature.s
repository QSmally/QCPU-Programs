@PAGE 0 0
@OVERFLOWABLE

@DECLARE pointer 1
@DECLARE signature 2
@DECLARE byte 3
@DECLARE buffer_size 4

; main
    IMM @pointer, 0x00
    IMM @signature, .signature.target_buffer_size & 0x1F
    RST @buffer_size
.byte_iteration:
    MLI @pointer, .signature.target_buffer
    RST @byte
    .loop:
        AST @byte
        BRH #zero, .byte_done
        RSH @byte
        BRH #!underflow, .loop
    ; increment signature
        INC @signature
        JMP zero, .loop
.byte_done:
    AST @pointer
    SUB @buffer_size
    BRH #!zero, .byte_iteration
; finished
    PPS @signature