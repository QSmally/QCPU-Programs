@PAGE 0 0
@OVERFLOWABLE

@DECLARE iteration_pointer 1
@DECLARE compare_pointer 2
@DECLARE current_value 3
@DECLARE compare_value 4
@DECLARE array_size 5

; main
    IMM @array_size, 24
    IMM @iteration_pointer, -1
.iteration:
    INC @iteration_pointer
    RST @compare_pointer
    SUB @array_size
    BRH #zero, .finished
    MLD @iteration_pointer, .sort.array
    RST @current_value
.insertion_loop:
    AST @compare_pointer
    BRH #zero, .iteration
    DEC @compare_pointer
    MLD @compare_pointer, .sort.array
    RST @compare_value
    SUB @current_value
    BRH #signed, .iteration
; swap
    AST @current_value
    MST @compare_pointer, .sort.array
    INC @compare_pointer
    AST @compare_value
    MST @compare_pointer, .sort.array
    DEC @compare_pointer
; continue
    JMP zero, .insertion_loop
.&finished: