	.text
	.align 2

	.global main
main:
	li	t0, 0xaaaaaaaa
	li	t1, 0x55555555
	li	t2, 0xffffffff
	addi	a0,a0,0x55
	addi	a1,a1,0xff
	add	a2,a0,a1
	sub	a2,a2,t2
	add	a2,t2,zero
	sub	a2,a2,t2
	add	a3,zero,t0
	add	a3,zero,t1
	add	a4,zero,t0
	add	a4,a4,t1
	sub	a4,a4,t2
	li	t0, 0xe0000000		# this will interrupt the simulation (assertion)
	sw	zero, 0(t0)

	ret
