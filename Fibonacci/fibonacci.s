
// qcpu --virtualise --listen x3 Fibonacci/fibonacci.s

@linkinfo(origin) root, 0x0800

@header output, reg
                  mov x3, @reg
@end

@section root
@align 2

_:                lli x1, 1
                  clr x2

.loop:            @output x2
                  add x1, x1, x2
                  @output x1
                  add x2, x1, x2
                  brh nc, .loop

                  bkpt
