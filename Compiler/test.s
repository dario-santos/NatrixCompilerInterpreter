	.text
	.globl	main
main:
	subq $0, %rsp
	leaq -8(%rsp), %rbp
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
.Sprint_int:
	.string "%d\n"
