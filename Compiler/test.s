	.text
	.globl	main
main:
	subq $48, %rsp
	leaq 40(%rsp), %rbp
	movq $0, %rax
	pushq %rax
	movq $10, %rax
	pushq %rax
	popq %rax
	popq %rbx
	movq %rbx, 0(%rbp)
	movq %rax, -8(%rbp)
	movq $0, %rax
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
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	movq $0, %rdx
	popq %rbx
	popq %rax
	cmpq $0, %rbx
	je print_error_z
	idivq %rbx
	pushq %rax
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	movq $0, %rdx
	popq %rbx
	popq %rax
	cmpq $0, %rbx
	je print_error_z
	idivq %rbx
	pushq %rdx
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	imulq %rbx, %rax
	pushq %rax
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	je bool_true_1
	movq $0, %rax
	pushq %rax
	jmp bool_end_1
bool_true_1:
	movq $1, %rax
	pushq %rax
bool_end_1:
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	jne bool_true_2
	movq $0, %rax
	pushq %rax
	jmp bool_end_2
bool_true_2:
	movq $1, %rax
	pushq %rax
bool_end_2:
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	jl bool_true_3
	movq $0, %rax
	pushq %rax
	jmp bool_end_3
bool_true_3:
	movq $1, %rax
	pushq %rax
bool_end_3:
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq -16(%rbp), %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	jle bool_true_4
	movq $0, %rax
	pushq %rax
	jmp bool_end_4
bool_true_4:
	movq $1, %rax
	pushq %rax
bool_end_4:
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	jg bool_true_5
	movq $0, %rax
	pushq %rax
	jmp bool_end_5
bool_true_5:
	movq $1, %rax
	pushq %rax
bool_end_5:
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	jge bool_true_6
	movq $0, %rax
	pushq %rax
	jmp bool_end_6
bool_true_6:
	movq $1, %rax
	pushq %rax
bool_end_6:
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	andq %rbx, %rax
	pushq %rax
	popq %rdi
	call print_int
	movq $5, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	orq %rbx, %rax
	pushq %rax
	popq %rdi
	call print_int
	movq $3, %rax
	pushq %rax
	popq %rax
	cmpq $0, %rax
	je bool_true_7
	movq $0, %rax
	pushq %rax
	jmp bool_end_7
bool_true_7:
	movq $1, %rax
	pushq %rax
bool_end_7:
	popq %rdi
	call print_int
	movq -16(%rbp), %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	popq %rdi
	call print_int
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -24(%rbp)
	cmpq $0, -24(%rbp)
	jge inicio_true_2
	jmp print_error_t
inicio_true_2:
	cmpq $2147483647, -24(%rbp)
	jle fim_true_2
	jmp print_error_t
fim_true_2:
	movq $0, %rax
	pushq %rax
	movq $10, %rax
	pushq %rax
	popq %rbx
	popq %rax
	movq %rax, -24(%rbp)
	pushq %rbx
foreach_i1:
	movq -24(%rbp), %rax
	pushq %rax
	popq %rdi
	call print_int
	movq -24(%rbp), %rax
	incq %rax
	movq %rax, -24(%rbp)
	popq %rax
	pushq %rax
	cmpq %rax, -24(%rbp)
	jle foreach_i1
	popq %rax
	movq $0, -32(%rbp)
	movq $0, -40(%rbp)
end:
	addq $48, %rsp
	movq $0, %rax
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
somar:
	movq $5, %rax
	pushq %rax
	popq %rax
	ret
	call print_error_f
	ret
	.data
.Sprint_int:
	.string "%d\n"
.Sprint_error_z:
	.string "Erro: Divisao por zero.\n"
.Sprint_error_t:
	.string "Erro de tipagem\n"
.Sprint_error_f:
	.string "Funcao sem retorno\n"
