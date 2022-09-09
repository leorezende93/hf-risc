	.text
	.align 2

	.global main
main:
	li	t0, 0xaaaaaaaa
	li	t1, 0x55555555
	li	t2, 0xffffffff
	mv	a0,zero
	mv	a1,zero
	mv	a2,zero
	mv	a0,t0
	mv	a1,t1
	mv	a2,t2
	mv	a0,t1
	mv	a1,t2
	mv	a2,zero
	li	t0, 0xe0000000		# this will interrupt the simulation (assertion)
	sw	zero, 0(t0)

	ret
