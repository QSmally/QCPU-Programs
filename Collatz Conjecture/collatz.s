
// qcpu --virtualise --listen x1 Collatz\ Conjecture/collatz.s

@linkinfo(origin) root, 0x0800

@header ubc
      @if !@release
                  brh c, .trap
      @end
@end

@buildinfo release, 0
@buildinfo integer, 24

@section root
@align 2

_:                lui x2, @integer
                  ioriu x2, @integer & 0xFF

.loop:            mov x1, x2
                  bsr x2, x1, 1                 ; division by 2
                  brh z, .end                   ; n >> 1 == 0? we're done
                  brh nc, .loop                 ; n & 1 == 0? even, loop again
                  bsl x2, x1, 1                 ; 3n+1
                  @ubc
                  add x2, x2, x1
                  @ubc
                  inc x2, x2
                  @ubc
                  jmpr .loop

.end:             bkpt
.trap:            bkpt
