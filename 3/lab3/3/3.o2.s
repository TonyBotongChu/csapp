	.file	"3.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
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
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%ecx, %ebx
	addl	%eax, %eax
	shrl	%ecx
	andl	$1, %ebx
	orl	%ebx, %eax
	subl	$1, %edx
	jne	.L2
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	fun_b, .-fun_b
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
