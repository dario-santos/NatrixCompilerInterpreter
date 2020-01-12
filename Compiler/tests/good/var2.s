	.text
	.globl	main
main:
	subq $24, %rsp
	leaq 16(%rsp), %rbp
	movq $0, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rax
	popq %rbx
	movq %rbx, 0(%rbp)
	movq %rax, -8(%rbp)
	movq $3, %rax
	pushq %rax
	popq %rax
	movq %rax, -16(%rbp)
	movq 0(%rbp), %rax
	cmpq %rax, -16(%rbp)
	jge inicio_true_1
	jmp print_error_t
inicio_true_1:
	movq -8(%rbp), %rax
	cmpq %rax, -16(%rbp)
	jle fim_true_1
	jmp print_error_t
fim_true_1:
	movq -16(%rbp), %rax
	pushq %rax
	popq %rdi
	call printn_int
end:
	addq $24, %rsp
	movq $0, %rax
	ret
printn_int:
	movq %rdi, %rsi
	leaq .Sprintn_int, %rdi
	movq $0, %rax
	call printf
	ret
print_int:
	movq %rdi, %rsi
	leaq .Sprint_int, %rdi
	movq $0, %rax
	call printf
	ret
print_error_t:
	movq %rdi, %rsi
	leaq .Sprint_error_t, %rdi
	movq $0, %rax
	call printf
	jmp end
print_error_z:
	movq %rdi, %rsi
	leaq .Sprint_error_z, %rdi
	movq $0, %rax
	call printf
	jmp end
print_error_f:
	movq %rdi, %rsi
	leaq .Sprint_error_f, %rdi
	movq $0, %rax
	call printf
	jmp end
	.data
.Sprintn_int:
	.string "%ld\n"
.Sprint_int:
	.string "%ld"
.Sprint_error_z:
	.string "Erro: Divisao por zero.\n"
.Sprint_error_t:
	.string "Erro de tipagem\n"
.Sprint_error_f:
	.string "Funcao sem retorno\n"
