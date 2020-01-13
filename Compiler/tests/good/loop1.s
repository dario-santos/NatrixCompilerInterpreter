	.text
	.globl	main
main:
	subq $24, %rsp
	leaq 16(%rsp), %rbp
	movq $0, 0(%rbp)
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, 0(%rbp)
	cmpq $0, 0(%rbp)
	jge inicio_true_2
	jmp print_error_t
inicio_true_2:
	movq $9223372036854775807, %rax
	cmpq %rax, 0(%rbp)
	jle fim_true_2
	jmp print_error_t
fim_true_2:
	addq $1, is_in_function
	call userloop
	movq %rax, %rbx
	cmpq $0, %rbx
	jge inicio_true_3
	jmp print_error_t
inicio_true_3:
	movq $9223372036854775807, %rax
	cmpq %rax, %rbx
	jle fim_true_3
	jmp print_error_t
fim_true_3:
	pushq %rbx
	popq %rax
	cmpq $0, %rax
	jne if_true_1
	jmp if_end_1
if_true_1:
if_end_1:
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
userloop:
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -8(%rbp)
	cmpq $0, -8(%rbp)
	jge inicio_true_1
	jmp print_error_t
inicio_true_1:
	movq $9223372036854775807, %rax
	cmpq %rax, -8(%rbp)
	jle fim_true_1
	jmp print_error_t
fim_true_1:
	movq 0(%rbp), %rax
	pushq %rax
	movq 0(%rbp), %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
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
foreach_i1:
	movq -8(%rbp), %rax
	pushq %rax
	popq %rdi
	call printn_int
	movq -8(%rbp), %rax
	incq %rax
	movq %rax, -8(%rbp)
	movq -16(%rbp), %rbx
	cmpq %rbx, %rax
	jle foreach_i1
	movq $0, %rax
	cmpq is_in_function, %rax
	je print_error_f
	subq $1, is_in_function
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
is_in_function:
	.quad 0
