	.file	"3.c"
	.text
	.globl	fun_b
	.type	fun_b, @function
fun_b:
.LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movl	$32, %edx
	movl	$0, %eax
.L2:
	addl	%eax, %eax
	movl	%ecx, %ebx
	andl	$1, %ebx
	orl	%ebx, %eax
	shrl	%ecx
	subl	$1, %edx
	jne	.L2
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	fun_b, .-fun_b
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
