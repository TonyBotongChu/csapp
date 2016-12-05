	.file	"1.c"
	.text
	.globl	switcher
	.type	switcher, @function
switcher:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	cmpl	$7, 8(%ebp)
	ja	.L2
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	$.L4, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L3
	.long	.L2
	.long	.L5
	.long	.L2
	.long	.L6
	.long	.L7
	.long	.L2
	.long	.L5
	.text
.L7:
	movl	12(%ebp), %eax
	xorl	$15, %eax
	movl	%eax, 16(%ebp)
.L3:
	movl	16(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -4(%ebp)
	jmp	.L8
.L5:
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, -4(%ebp)
	jmp	.L8
.L6:
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L8
.L2:
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
.L8:
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	switcher, .-switcher
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$4, %esp
	pushl	$8
	pushl	$9
	pushl	$10
	call	switcher
	addl	$12, %esp
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
