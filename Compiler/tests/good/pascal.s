	.text
	.globl	main
main:
	subq $40, %rsp
	leaq 32(%rsp), %rbp
	addq $1, is_in_function
	call userprint_int
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
	pushq %rbx
	popq %rax
	cmpq $0, %rax
	je if_else_12
	jmp if_end_2
if_else_12:
if_end_2:
end:
	addq $40, %rsp
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
scanf_int:
	leaq .Sscanf_int, %rdi
	leaq input, %rsi
	xorq %rax, %rax
	call scanf
	movq input, %rax
	ret
print_error_t:
	movq %rdi, %rsi
	leaq .Sprint_error_t, %rdi
	movq $0, %rax
	call printf
	jmp end
print_error_s:
	movq %rdi, %rsi
	leaq .Sprint_error_s, %rdi
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
userprint_int:
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
	popq %rax
	popq %rbx
	subq %rax, %rbx
	pushq %rbx
	popq %rax
	popq %rbx
	cmpq %rbx, %rax
	jle print_error_s
	cmpq $0, %rax
	jl print_error_s
	cmpq $0, %rbx
	jl print_error_s
	pushq %rbx
	pushq %rax
	popq %rbx
	popq %rax
	movq %rax, -8(%rbp)
	movq %rbx, -16(%rbp)
foreach_1_inicio:
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -24(%rbp)
	cmpq $0, -24(%rbp)
	jge inicio_true_3
	jmp print_error_t
inicio_true_3:
	movq $9223372036854775807, %rax
	cmpq %rax, -24(%rbp)
	jle fim_true_3
	jmp print_error_t
fim_true_3:
	movq $0, %rax
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	popq %rbx
	cmpq %rbx, %rax
	jle print_error_s
	cmpq $0, %rax
	jl print_error_s
	cmpq $0, %rbx
	jl print_error_s
	pushq %rbx
	pushq %rax
	popq %rbx
	popq %rax
	movq %rax, -24(%rbp)
	movq %rbx, -32(%rbp)
foreach_2_inicio:
	movq -8(%rbp), %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	popq %rbx
	popq %rax
	movq $0, %rdx
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
	je if_else_11
	movq -24(%rbp), %rax
	pushq %rax
	movq $10, %rax
	pushq %rax
	popq %rbx
	popq %rax
	movq $0, %rdx
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
	popq %rdi
	call print_int
	jmp if_end_1
if_else_11:
	movq -24(%rbp), %rax
	pushq %rax
	movq $7, %rax
	pushq %rax
	popq %rbx
	popq %rax
	movq $0, %rdx
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
	movq $7, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rdi
	call print_int
if_end_1:
foreach_2_condicao:
	movq -24(%rbp), %rax
	incq %rax
	movq %rax, -24(%rbp)
	movq -32(%rbp), %rbx
	cmpq %rbx, %rax
	jle foreach_2_inicio
foreach_2_fim:
	movq $0, %rax
	pushq %rax
	popq %rdi
	call printn_int
foreach_1_condicao:
	movq -8(%rbp), %rax
	incq %rax
	movq %rax, -8(%rbp)
	movq -16(%rbp), %rbx
	cmpq %rbx, %rax
	jle foreach_1_inicio
foreach_1_fim:
	movq $0, %rax
	cmpq is_in_function, %rax
	je print_error_f
	decq is_in_function
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
	.string "\nErro: Divisao por zero.\n\n"
.Sprint_error_t:
	.string "\nRun-time error:\n\n     Value out of bounds.\n\n"
.Sprint_error_s:
	.string "\nRun-time error:\n\n     Invalid size of set. A set needs to have atleast the size of one.\n\n"
.Sprint_error_f:
	.string "\nFuncao sem retorno\n\n"
.Sscanf_int:
	.string "%ld"
is_in_function:
	.quad 0
number_of_loop:
	.quad 0
input:
	.quad 0
shift:
	.byte 0
