	.file	"2.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	fun_a
	.type	fun_a, @function
fun_a:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L4
	.p2align 4,,10
	.p2align 3
.L3:
	xorl	%edx, %eax
	shrl	%edx
	jne	.L3
	andl	$1, %eax
	ret
.L4:
	rep ret
	.cfi_endproc
.LFE0:
	.size	fun_a, .-fun_a
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
