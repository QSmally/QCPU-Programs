
# QCPU Programs

QCPU assembly of simple-to-complex programs

## Virtualisation

Refer to [QCPU CLI](https://github.com/QSmally/QCPU-CLI) for virtualising these programs. For QOS,
it can be found at the [`QSmally/QOS`](https://github.com/QSmally/QOS) repository.

The command that needs to be ran is put at the top of the entrypoint file. Generally, it looks like
one of the following:

```bash
$ qcpu --virtualise --step path/to/entrypoint.s
$ qcpu --virtualise --listen 7 path/to/entrypoint.s # --listen 7 outputs writes of rz (gpr 7)
```

## Future programs

Possibly

* Software hashing algorithm
* Asymmetic encryption algorithm
* Pseudo-randomiser algortihm
* Binary search algorithm
* Mandelbrot render algorithm

**Rewrite from QCPU 1**:

* Pong (1 & 2 players)
* Snake
