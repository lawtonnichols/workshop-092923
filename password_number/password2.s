	.file	"password2.cpp"
	.intel_syntax noprefix
	.text
	.globl	_Z9isCorrecti
	.type	_Z9isCorrecti, @function
_Z9isCorrecti:
.LFB15:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	cmp	eax, 1806
	jne	.L2
	mov	eax, 1
	jmp	.L3
.L2:
	mov	eax, 0
.L3:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_Z9isCorrecti, .-_Z9isCorrecti
	.section	.rodata
.LC0:
	.string	"Enter the password: "
.LC1:
	.string	"Access granted :)"
.LC2:
	.string	"Access denied! :("
	.text
	.globl	main
	.type	main, @function
main:
.LFB16:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	add	rsp, -128
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rdx, QWORD PTR stdin[rip]
	lea	rax, -112[rbp]
	mov	esi, 100
	mov	rdi, rax
	call	fgets@PLT
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	strlen@PLT
	sub	rax, 1
	mov	BYTE PTR -112[rbp+rax], 0
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -116[rbp], eax
	mov	eax, DWORD PTR -116[rbp]
	mov	edi, eax
	call	_Z9isCorrecti
	test	al, al
	je	.L5
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L6
.L5:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L6:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
