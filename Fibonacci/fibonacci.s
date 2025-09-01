
// qcpu --virtualise --listen 7 Fibonacci/fibonacci.s

@header output
                  rst rz
@end

@section root
@region 256
@align 2

_:                u16 .start

@end

@linkinfo(origin) root, 0
@linkinfo(align) text, 256

@section text
.start:           imm ra, 1
                  clr
.loop:            @output
                  xch ra
                  add ra
                  brh nc, .loop
                  bkpt
