	.text
	.align 2

	.global main
main:
	li	t0, 0xaaaaaaaa
	li	t1, 0x55555555
	li	t2, 0xffffffff
	slli	a0,t0,2
	slli	a0,t0,4
	slli	a0,t0,8
	srli	a1,t1,2
	srli	a1,t1,4
	srli	a1,t1,8
	srai	a2,t2,2
	srai	a2,t2,4
	srai	a2,t2,8

	li	t3, 2
	li	t4, 4
	li	t5, 8
	sll	a0,t0,t3
	sll	a0,t0,t4
	sll	a0,t0,t5
	srl	a1,t1,t3
	srl	a1,t1,t4
	srl	a1,t1,t5
	sra	a2,t2,t3
	sra	a2,t2,t4
	sra	a2,t2,t5

	li	t0, 0xe0000000		# this will interrupt the simulation (assertion)
	sw	zero, 0(t0)

	ret
