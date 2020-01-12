	.text
	.globl	main
main:
	subq $0, %rsp
	leaq -8(%rsp), %rbp
	addq $1, is_in_function
	call userprinta
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
	cmpq $1, %rax
	jne lazy_evaluation_1
	addq $1, is_in_function
	call userprinta
	movq %rax, %rbx
	cmpq $0, %rbx
	jge inicio_true_1
	jmp print_error_t
inicio_true_1:
	movq $9223372036854775807, %rax
	cmpq %rax, %rbx
	jle fim_true_1
	jmp print_error_t
fim_true_1:
	pushq %rbx
	popq %rax
	andq $1, %rax
lazy_evaluation_1:
	pushq %rax
	popq %rax
	cmpq $0, %rax
	jne if_true_1
	jmp if_end_1
if_true_1:
	movq $3, %rax
	pushq %rax
	popq %rdi
	call printn_int
if_end_1:
end:
	addq $0, %rsp
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
userprinta:
	movq $1, %rax
	pushq %rax
	popq %rdi
	call printn_int
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