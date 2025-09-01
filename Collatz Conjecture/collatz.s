
// qcpu --virtualise --listen 7 Collatz\ Conjecture/collatz.s

@section root
@region 256
@align 2

_:                u16 .start

@end

@linkinfo(origin) root, 0
@linkinfo(align) text, 256

; @define integer, 24
@define integer, 175

@section text
.start:           imm zr, @integer
.loop:            rst rz
                  rst ra
                  rsh zr            ; division by 2
                  brh z, .end
                  brh nu, .loop
                  ast ra            ; 3n+1
                  bsl 1
                  add ra
                  inc zr
                  jmpr .loop
.end:             bkpt
