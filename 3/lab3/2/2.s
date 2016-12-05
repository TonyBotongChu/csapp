	.file	"2.c"
	.text
	.globl	fun_a
	.type	fun_a, @function
fun_a:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp	.L2
.L3:
	movl	-4(%ebp), %eax
	xorl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	shrl	8(%ebp)
.L2:
	cmpl	$0, 8(%ebp)
	jne	.L3
	movl	-4(%ebp), %eax
	andl	$1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	fun_a, .-fun_a
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
