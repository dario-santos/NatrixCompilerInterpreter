	.text
	.globl	main
main:
	subq $40, %rsp
	leaq 32(%rsp), %rbp
	movq $0, %rax
	pushq %rax
	movq $10, %rax
	pushq %rax
	popq %rax
	popq %rbx
	movq %rbx, 0(%rbp)
	movq %rax, -8(%rbp)
	movq $3, %rax
	pushq %rax
	popq %rax
	movq %rax, -16(%rbp)
	cmpq $0, -16(%rbp)
	jge inicio_true_1
	jmp print_error_t
inicio_true_1:
	cmpq $2147483647, -16(%rbp)
	jle fim_true_1
	jmp print_error_t
fim_true_1:
	movq $1, %rax
	pushq %rax
	popq %rax
	cmpq $0, %rax
	jne if_true_1
	jmp if_end_1
if_true_1:
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
	movq 0(%rbp), %rax
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	popq %rbx
	popq %rax
	movq %rax, -24(%rbp)
	pushq %rbx
foreach_i1:
	movq $1, %rax
	pushq %rax
	popq %rax
	cmpq $0, %rax
	jne if_true_2
	jmp if_end_2
if_true_2:
	movq -16(%rbp), %rax
	pushq %rax
	popq %rdi
	call print_int
	movq -16(%rbp), %rax
	pushq %rax
	popq %rax
	movq %rax, -32(%rbp)
	cmpq $0, -32(%rbp)
	jge inicio_true_3
	jmp print_error_t
inicio_true_3:
	cmpq $2147483647, -32(%rbp)
	jle fim_true_3
	jmp print_error_t
fim_true_3:
if_end_2:
	movq -24(%rbp), %rax
	incq %rax
	movq %rax, -24(%rbp)
	popq %rax
	pushq %rax
	cmpq %rax, -24(%rbp)
	jle foreach_i1
	popq %rax
if_end_1:
end:
	addq $40, %rsp
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
	.data
.Sprint_int:
	.string "%d\n"
.Sprint_error_z:
	.string "Erro: Divisao por zero.\n"
.Sprint_error_t:
	.string "Erro de tipagem\n"
.Sprint_error_f:
	.string "Funcao sem retorno\n"
