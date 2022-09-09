	.text
	.align 2

	.global main
main:
	li	t0, 0xaaaaaaaa
	li	t1, 0x55555555
	li	t2, 0xffffffff
	lui	a0,0xf0000
	lui	a1,0xf0004
	lui	a2,0xf0008
	lb	a3,0(a0)
	lh	a4,0(a0)
	lw	a5,0(a0)
	lbu	a6,0(a0)
	lhu	a7,0(a0)
	sb	a3,0(t2)
	sh	a4,0(t2)
	sw	a5,0(t2)
	sb	a6,0(t2)
	sh	a7,0(t2)
	slti	a0,t2,0
	sltiu	a0,t2,0
	slt	a1,t0,t2
	sltu	a1,t2,t0  
	li	t0, 0xe0000000		# this will interrupt the simulation (assertion)
	sw	zero, 0(t0)

	ret
