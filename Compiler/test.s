	.text
	.globl	main
main:
	subq $24, %rsp
	leaq 16(%rsp), %rbp
	movq $0, %rax
	pushq %rax
	movq $5, %rax
	pushq %rax
	popq %rax
	popq %rbx
	movq %rbx, 0(%rbp)
	movq %rax, -8(%rbp)
	movq $5, %rax
	pushq %rax
	popq %rax
	movq %rax, -16(%rbp)
	cmpq $0, -16(%rbp)
	jge inicio_true_1
	jmp print_error
inicio_true_1:
	cmpq $2147483647, -16(%rbp)
	jle fim_true_1
	jmp print_error
fim_true_1:
end:
	addq $24, %rsp
	movq $0, %rax
	ret
print_int:
	movq %rdi, %rsi
	leaq .Sprint_int, %rdi
	movq $0, %rax
	call printf
	ret
print_error:
	movq %rdi, %rsi
	leaq .Sprint_error, %rdi
	movq $0, %rax
	call printf
	jmp end
	.data
.Sprint_int:
	.string "%d\n"
.Sprint_error:
	.string "Erro de tipagem\n"
