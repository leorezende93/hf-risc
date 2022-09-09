	.text
	.align 2

	.global main
main:
	jal	a0,test1
end:	
	li	t0, 0xe0000000		# this will interrupt the simulation (assertion)
	sw	zero, 0(t0)

	ret
test1:
	la     a1,test2
	jalr	a0,0(a1)
test2:
	jal	a0,test3
test3:
	la     a1,test4
	jalr	a0,0(a1)
test4:
	jal	a0,end

	
