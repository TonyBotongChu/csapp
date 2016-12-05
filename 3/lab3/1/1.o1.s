	.file	"1.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	cmpl	$-3, %edx
	jge	.L2
	leal	(%edx,%ecx), %eax
	movl	%edx, %ebx
	imull	%ecx, %ebx
	cmpl	%ecx, %edx
	cmovg	%ebx, %eax
	jmp	.L4
.L2:
	movl	%edx, %eax
	subl	%ecx, %eax
	xorl	%edx, %ecx
	cmpl	$3, %edx
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
