	.file	"2.c"
	.text
	.globl	fun_a
	.type	fun_a, @function
fun_a:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	testl	%edx, %edx
	je	.L4
	movl	$0, %eax
.L3:
	xorl	%edx, %eax
	shrl	%edx
	jne	.L3
	jmp	.L2
.L4:
	movl	$0, %eax
.L2:
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	fun_a, .-fun_a
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
