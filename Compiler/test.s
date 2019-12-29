	.text
	.globl	main
main:
	subq $0, %rsp
	leaq -8(%rsp), %rbp
	movq $3, %rax
	pushq %rax
	popq %rax
	movq %rax, x
	movq $1, %rax
	pushq %rax
	popq %rdi
	call print_int
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
x:
	.quad 1
.Sprint_int:
	.string "%d\n"
