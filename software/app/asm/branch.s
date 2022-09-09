	.text
	.align 2

	.global main
main:
	li	a0, 0
	li	a1, 1
	li	a2, -1
	li	a3, 0
	li	a4, 1
	li	a5, -1
	beq	a0,a3,test1
end:
	li	t0, 0xe0000000		# this will interrupt the simulation (assertion)
	sw	zero, 0(t0)

	ret
test1:
	bne	a0,a1,test2
test2:
	blt	a0,a1,test3
test3:
	bge	a1,a0,test4
test4:
	bltu    a2,a1,test5
test5:
	bltu    a1,a2,test6
test6:
	bgeu    a1,a0,end

