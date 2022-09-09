	.text
	.align 2

	.global main
main:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	li	t0, 0xe0000000		# this will interrupt the simulation (assertion)
	sw	zero, 0(t0)

	ret
