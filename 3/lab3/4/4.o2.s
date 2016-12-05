	.file	"4.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	12(%esp), %edx
	movl	8(%esp), %ecx
	testl	%edx, %edx
	jle	.L2
	movl	%ecx, %ebx
	movl	%ecx, %eax
	subl	%edx, %ebx
	xorl	%edx, %eax
	cmpl	%edx, %ecx
	cmovl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	leal	0(,%ecx,4), %eax
	addl	%edx, %ecx
	cmpl	$-2, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	cmovl	%ecx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
