
// qcpu --virtualise --listen 1 String\ Length/strlen.s

@import array, "array.s"

@section root
@region 256
@align 2

_:                u16 .start

@end

@linkinfo(origin) root, 0
@linkinfo(align) data, 256
@linkinfo(align) text, 256

@section text
.start:           imm ra, -1
.loop:            inc ra
                  mld' zr, .array.origin
                  brh nz, .loop
                  bkpt
