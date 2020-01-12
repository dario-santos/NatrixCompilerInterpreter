	.text
	.globl	main
main:
	subq $64, %rsp
	leaq 56(%rsp), %rbp
	movq $0, %rax
	pushq %rax
	movq $4, %rax
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
	movq $1, %rax
	pushq %rax
	popq %rax
	cmpq $0, %rax
	jne if_true_1
	jmp if_end_1
if_true_1:
	movq -16(%rbp), %rax
	pushq %rax
	popq %rdi
	call printn_int
	movq $2, %rax
	pushq %rax
	popq %rax
	movq %rax, -24(%rbp)
	cmpq $0, -24(%rbp)
	jge inicio_true_2
	jmp print_error_t
inicio_true_2:
	movq $9223372036854775807, %rax
	cmpq %rax, -24(%rbp)
	jle fim_true_2
	jmp print_error_t
fim_true_2:
	movq -24(%rbp), %rax
	pushq %rax
	popq %rdi
	call printn_int
	movq $0, %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	movq %rbx, -32(%rbp)
	movq %rax, -40(%rbp)
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -48(%rbp)
	cmpq $0, -48(%rbp)
	jge inicio_true_3
	jmp print_error_t
inicio_true_3:
	movq $9223372036854775807, %rax
	cmpq %rax, -48(%rbp)
	jle fim_true_3
	jmp print_error_t
fim_true_3:
	movq -32(%rbp), %rax
	pushq %rax
	movq -40(%rbp), %rax
	pushq %rax
	popq %rbx
	popq %rax
	movq %rax, -48(%rbp)
	pushq %rbx
foreach_i1:
	movq -24(%rbp), %rax
	pushq %rax
	popq %rdi
	call printn_int
	movq $1, %rax
	pushq %rax
	popq %rax
	movq %rax, -56(%rbp)
	cmpq $0, -56(%rbp)
	jge inicio_true_4
	jmp print_error_t
inicio_true_4:
	movq $9223372036854775807, %rax
	cmpq %rax, -56(%rbp)
	jle fim_true_4
	jmp print_error_t
fim_true_4:
	movq -56(%rbp), %rax
	pushq %rax
	popq %rdi
	call printn_int
	movq -48(%rbp), %rax
	incq %rax
	movq %rax, -48(%rbp)
	popq %rax
	pushq %rax
	cmpq %rax, -48(%rbp)
	jle foreach_i1
	popq %rax
	movq -24(%rbp), %rax
	pushq %rax
	popq %rdi
	call printn_int
if_end_1:
	movq -16(%rbp), %rax
	pushq %rax
	popq %rdi
	call printn_int
end:
	addq $64, %rsp
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
