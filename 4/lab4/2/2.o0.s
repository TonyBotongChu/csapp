	.file	"2.c"
	.text
	.globl	rfun
	.type	rfun, @function
rfun:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	.L2
	movl	8(%ebp), %eax
	jmp	.L3
.L2:
	movl	8(%ebp), %eax
	shrl	%eax
	movl	%eax, -16(%ebp)
	subl	$12, %esp
	pushl	-16(%ebp)
	call	rfun
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
.L3:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	rfun, .-rfun
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
