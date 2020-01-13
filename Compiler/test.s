	.text
	.globl	main
main:
	subq $32, %rsp
	leaq 24(%rsp), %rbp
	movq $0, 0(%rbp)
	movq $0, -8(%rbp)
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
	popq %rax
	movq %rax, -24(%rbp)
	cmpq $0, -24(%rbp)
	jge inicio_true_4
	jmp print_error_t
inicio_true_4:
	movq $9223372036854775807, %rax
	cmpq %rax, -24(%rbp)
	jle fim_true_4
	jmp print_error_t
fim_true_4:
	call scanf_int
	movq %rax, -16(%rbp)
	cmpq $0, -16(%rbp)
	jge inicio_true_5
	jmp print_error_t
inicio_true_5:
	movq $9223372036854775807, %rax
	cmpq %rax, -16(%rbp)
	jle fim_true_5
	jmp print_error_t
fim_true_5:
	movq -16(%rbp), %rax
	pushq %rax
	popq %rax
	movq %rax, -8(%rbp)
	cmpq $0, -8(%rbp)
	jge inicio_true_6
	jmp print_error_t
inicio_true_6:
	movq $9223372036854775807, %rax
	cmpq %rax, -8(%rbp)
	jle fim_true_6
	jmp print_error_t
fim_true_6:
	addq $1, is_in_function
	call useris_even2
	movq %rax, %rbx
	cmpq $0, %rbx
	jge inicio_true_7
	jmp print_error_t
inicio_true_7:
	movq $9223372036854775807, %rax
	cmpq %rax, %rbx
	jle fim_true_7
	jmp print_error_t
fim_true_7:
	pushq %rbx
	popq %rdi
	call printn_int
end:
	addq $32, %rsp
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
useris_even:
	movq $0, %rax
	cmpq is_in_function, %rax
	je print_error_f
	subq $1, is_in_function
	movq 0(%rbp), %rax
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
	popq %rax
	ret
	call print_error_f
	ret
useris_even2:
	movq $0, %rax
	cmpq is_in_function, %rax
	je print_error_f
	subq $1, is_in_function
	movq -8(%rbp), %rax
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
	addq $1, is_in_function
	call useris_even
	movq %rax, %rbx
	cmpq $0, %rbx
	jge inicio_true_2
	jmp print_error_t
inicio_true_2:
	movq $9223372036854775807, %rax
	cmpq %rax, %rbx
	jle fim_true_2
	jmp print_error_t
fim_true_2:
	pushq %rbx
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
input:
	.quad 0
