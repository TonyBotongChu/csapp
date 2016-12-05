	.file	"3.c"
	.text
	.globl	fun_b
	.type	fun_b, @function
fun_b:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$0, -8(%ebp)
	movl	$0, -4(%ebp)
	jmp	.L2
.L3:
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movl	%eax, -8(%ebp)
	shrl	8(%ebp)
	addl	$1, -4(%ebp)
.L2:
	cmpl	$31, -4(%ebp)
	jle	.L3
	movl	-8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	fun_b, .-fun_b
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
