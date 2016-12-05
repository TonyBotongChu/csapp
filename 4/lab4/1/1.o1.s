	.file	"1.c"
	.text
	.globl	switcher
	.type	switcher, @function
switcher:
.LFB23:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpl	$7, %eax
	ja	.L2
	jmp	*.L4(,%eax,4)
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
.L2:
	movl	8(%esp), %eax
	ret
.L7:
	movl	8(%esp), %eax
	xorl	$15, %eax
	movl	%eax, 12(%esp)
.L3:
	movl	12(%esp), %eax
	addl	$112, %eax
	ret
.L5:
	movl	12(%esp), %eax
	addl	8(%esp), %eax
	sall	$2, %eax
.L6:
	rep ret
	.cfi_endproc
.LFE23:
	.size	switcher, .-switcher
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
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
	subl	$8, %esp
	pushl	$9
	pushl	$.LC0
	pushl	$1
	call	__printf_chk
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
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
