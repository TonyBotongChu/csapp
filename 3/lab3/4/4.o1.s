	.file	"4.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	testl	%edx, %edx
	jle	.L2
	movl	%ecx, %ebx
	subl	%edx, %ebx
	movl	%ecx, %eax
	xorl	%edx, %eax
	cmpl	%edx, %ecx
	cmovl	%ebx, %eax
	jmp	.L4
.L2:
	leal	0(,%ecx,4), %eax
	addl	%edx, %ecx
	cmpl	$-2, %edx
	cmovl	%ecx, %eax
.L4:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
