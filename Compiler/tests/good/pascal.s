	.text
	.globl	main
main:
	subq $24, %rsp
	leaq 16(%rsp), %rbp
	call main
	movq %rax, %rbx
	cmpq $0, %rbx
	jge inicio_true_4
	jmp print_error_t
inicio_true_4:
	movq $9223372036854775807, %rax
	cmpq %rax, %rbx
	jle fim_true_4
	jmp print_error_t
fim_true_4:
	pushq %rax
	popq %rax
	cmpq $0, %rax
	jne if_true_2
	jmp if_end_2
if_true_2:
if_end_2:
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
main:
	movq $40, %rax
	pushq %rax
	popq %rax
	movq %rax, 0(%rbp)
	cmpq $0, 0(%rbp)
	jge inicio_true_1
	jmp print_error_t
inicio_true_1:
	movq $9223372036854775807, %rax
	cmpq %rax, 0(%rbp)
	jle fim_true_1
	jmp print_error_t
fim_true_1:
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -8(%rbp)
	cmpq $0, -8(%rbp)
	jge inicio_true_2
	jmp print_error_t
inicio_true_2:
	movq $9223372036854775807, %rax
	cmpq %rax, -8(%rbp)
	jle fim_true_2
	jmp print_error_t
fim_true_2:
	movq $0, %rax
	pushq %rax
	movq 0(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	popq %rbx
	popq %rax
	movq %rax, -8(%rbp)
	pushq %rbx
foreach_i1:
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -16(%rbp)
	cmpq $0, -16(%rbp)
	jge inicio_true_3
	jmp print_error_t
inicio_true_3:
	movq $9223372036854775807, %rax
	cmpq %rax, -16(%rbp)
	jle fim_true_3
	jmp print_error_t
fim_true_3:
	movq $0, %rax
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	popq %rbx
	popq %rax
	movq %rax, -16(%rbp)
	pushq %rbx
foreach_j2:
	movq -8(%rbp), %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	movq $0, %rdx
	popq %rbx
	popq %rax
	cmpq $0, %rbx
	je print_error_z
	idivq %rbx
	pushq %rdx
	movq $0, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	je bool_true_3
	movq $0, %rax
	pushq %rax
	jmp bool_end_3
bool_true_3:
	movq $1, %rax
	pushq %rax
bool_end_3:
	popq %rax
	cmpq $0, %rax
	jne if_true_1
	movq -16(%rbp), %rax
	pushq %rax
	movq $7, %rax
	pushq %rax
	movq $0, %rdx
	popq %rbx
	popq %rax
	cmpq $0, %rbx
	je print_error_z
	idivq %rbx
	pushq %rdx
	popq %rax
	cmpq $0, %rax
	je bool_true_2
	movq $0, %rax
	pushq %rax
	jmp bool_end_2
bool_true_2:
	movq $1, %rax
	pushq %rax
bool_end_2:
	movq $7, %rax
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	popq %rdi
	call print_int
	jmp if_end_1
if_true_1:
	movq -16(%rbp), %rax
	pushq %rax
	movq $10, %rax
	pushq %rax
	movq $0, %rdx
	popq %rbx
	popq %rax
	cmpq $0, %rbx
	je print_error_z
	idivq %rbx
	pushq %rdx
	popq %rax
	cmpq $0, %rax
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
if_end_1:
	movq -16(%rbp), %rax
	incq %rax
	movq %rax, -16(%rbp)
	popq %rax
	pushq %rax
	cmpq %rax, -16(%rbp)
	jle foreach_j2
	popq %rax
	movq $0, %rax
	pushq %rax
	popq %rdi
	call printn_int
	movq -8(%rbp), %rax
	incq %rax
	movq %rax, -8(%rbp)
	popq %rax
	pushq %rax
	cmpq %rax, -8(%rbp)
	jle foreach_i1
	popq %rax
	movq $0, %rax
	pushq %rax
	popq %rax
	ret
	call print_error_f
	ret
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
