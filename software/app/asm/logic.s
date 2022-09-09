	.text
	.align 2

	.global main
main:
	li	t0, 0xaaaaaaaa
	li	t1, 0x55555555
	li	t2, 0xffffffff
	xori	a0,a0,0x55
	xori	a1,a1,0xaa
	ori	a2,a2,0xff
	andi	a2,a2,0x00
	and	a0,a0,zero
	and	a1,a1,zero
	or	a0,a0,t0
	or	a1,a1,t1
	xor	a0,a0,t1
	xor	a1,a1,t0
	li	t0, 0xe0000000		# this will interrupt the simulation (assertion)
	sw	zero, 0(t0)

	ret
