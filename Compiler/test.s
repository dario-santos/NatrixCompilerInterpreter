	.text
	.globl	main
main:
	subq $0, %rsp
	leaq -8(%rsp), %rbp
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, i
	movq $20, %rax
	pushq %rax
	movq $22, %rax
	pushq %rax
	popq %rax
	movq %rax, %r15
	popq %rax
	movq %rax, i
l:
	movq i, %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	movq $0, %rdx
	popq %rbx
	popq %rax
	idivq %rbx
	pushq %rax
	popq %rdi
	call print_int
	incq i
	cmpq %r15, i
	jle l
	addq $0, %rsp
	movq $0, %rax
	ret
print_int:
	movq %rdi, %rsi
	leaq .Sprint_int, %rdi
	movq $0, %rax
	call printf
	ret
	.data
i:
	.quad 1
.Sprint_int:
	.string "%d\n"
