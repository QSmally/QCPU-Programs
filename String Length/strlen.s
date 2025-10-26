
// qcpu --virtualise --listen x3 String\ Length/strlen.s

@import array, "array.s"

@linkinfo(origin) root, 0x0800
@linkinfo(align) data, 256

@section root
@align 2

_:                lui x1, .array.origin         ; original addr
                  mov x2, x1                    ; moving addr - 1
                  dec x2

.loop:            inc x2
                  mld x3, x2, 0
                  brh nz, .loop                 ; loop if not null

                  sub x3, x1, x2
                  bkpt
