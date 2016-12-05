	.file	"4.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, 12(%ebp)
	jle	.L2
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	.L3
	movl	8(%ebp), %eax
	subl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L5
.L3:
	movl	8(%ebp), %eax
	xorl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L5
.L2:
	cmpl	$-2, 12(%ebp)
	jge	.L5
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
.L5:
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
