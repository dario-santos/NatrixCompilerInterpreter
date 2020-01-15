	.text
	.globl	main
main:
	subq $80, %rsp
	leaq 72(%rsp), %rbp
	movq $4, %rax
	pushq %rax
	popq %rax
	movq %rax, 0(%rbp)
	movq $2, %rax
	pushq %rax
	popq %rax
	movq %rax, -8(%rbp)
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -16(%rbp)
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -24(%rbp)
	movq $0, -32(%rbp)
	movq $0, -40(%rbp)
	movq $0, -48(%rbp)
	movq $0, -56(%rbp)
	movq $0, -64(%rbp)
	movq -16(%rbp), %rax
	pushq %rax
	popq %rax
	movq %rax, -48(%rbp)
	movq -24(%rbp), %rax
	pushq %rax
	popq %rax
	movq %rax, -56(%rbp)
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -64(%rbp)
	addq $1, is_in_function
	call usermove
	movq %rax, %rbx
	pushq %rbx
	popq %rdi
	call printn_int
end:
	addq $80, %rsp
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
userisValid:
	movq $0, %rax
	cmpq is_in_function, %rax
	je print_error_f
	decq is_in_function
	movq -32(%rbp), %rax
	pushq %rax
	movq $0, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	jge bool_true_4
	movq $0, %rax
	pushq %rax
	jmp bool_end_4
bool_true_4:
	movq $1, %rax
	pushq %rax
bool_end_4:
	popq %rax
	cmpq $1, %rax
	jne lazy_evaluation_3
	movq -32(%rbp), %rax
	pushq %rax
	movq 0(%rbp), %rax
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
	popq %rax
	andq $1, %rax
lazy_evaluation_3:
	pushq %rax
	popq %rax
	cmpq $1, %rax
	jne lazy_evaluation_1
	movq -40(%rbp), %rax
	pushq %rax
	movq $0, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	jge bool_true_2
	movq $0, %rax
	pushq %rax
	jmp bool_end_2
bool_true_2:
	movq $1, %rax
	pushq %rax
bool_end_2:
	popq %rax
	cmpq $1, %rax
	jne lazy_evaluation_2
	movq -40(%rbp), %rax
	pushq %rax
	movq 0(%rbp), %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	jl bool_true_1
	movq $0, %rax
	pushq %rax
	jmp bool_end_1
bool_true_1:
	movq $1, %rax
	pushq %rax
bool_end_1:
	popq %rax
	andq $1, %rax
lazy_evaluation_2:
	pushq %rax
	popq %rax
	andq $1, %rax
lazy_evaluation_1:
	pushq %rax
	popq %rax
	ret
	call print_error_f
	ret
usermove:
	movq -48(%rbp), %rax
	pushq %rax
	popq %rax
	movq %rax, -32(%rbp)
	movq -56(%rbp), %rax
	pushq %rax
	popq %rax
	movq %rax, -40(%rbp)
	addq $1, is_in_function
	call userisValid
	movq %rax, %rbx
	pushq %rbx
	popq %rax
	cmpq $0, %rax
	je bool_true_6
	movq $0, %rax
	pushq %rax
	jmp bool_end_6
bool_true_6:
	movq $1, %rax
	pushq %rax
bool_end_6:
	popq %rax
	cmpq $1, %rax
	je lazy_evaluation_4
	movq -64(%rbp), %rax
	pushq %rax
	movq -8(%rbp), %rax
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
	popq %rax
	orq $1, %rax
lazy_evaluation_4:
	pushq %rax
	popq %rax
	cmpq $0, %rax
	je if_else_11
	subq $0, %rsp
	movq $0, %rax
	cmpq is_in_function, %rax
	je print_error_f
	decq is_in_function
	movq $0, %rax
	pushq %rax
	popq %rax
	ret
	addq $0, %rsp
	jmp if_end_1
if_else_11:
if_end_1:
	movq -64(%rbp), %rax
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	je bool_true_7
	movq $0, %rax
	pushq %rax
	jmp bool_end_7
bool_true_7:
	movq $1, %rax
	pushq %rax
bool_end_7:
	popq %rax
	movq %rax, -72(%rbp)
	movq $0, %rax
	cmpq is_in_function, %rax
	je print_error_f
	decq is_in_function
	movq -72(%rbp), %rax
	pushq %rax
	movq -48(%rbp), %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	popq %rax
	popq %rbx
	subq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -56(%rbp)
	movq -64(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -64(%rbp)
	addq $1, is_in_function
	call usermove
	movq %rax, %rbx
	pushq %rbx
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	movq -48(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	subq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -56(%rbp)
	movq -64(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -64(%rbp)
	addq $1, is_in_function
	call usermove
	movq %rax, %rbx
	pushq %rbx
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	movq -48(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -56(%rbp)
	movq -64(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -64(%rbp)
	addq $1, is_in_function
	call usermove
	movq %rax, %rbx
	pushq %rbx
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	movq -48(%rbp), %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -56(%rbp)
	movq -64(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -64(%rbp)
	addq $1, is_in_function
	call usermove
	movq %rax, %rbx
	pushq %rbx
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	movq -48(%rbp), %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	subq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -56(%rbp)
	movq -64(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -64(%rbp)
	addq $1, is_in_function
	call usermove
	movq %rax, %rbx
	pushq %rbx
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	movq -48(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	popq %rax
	popq %rbx
	subq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -56(%rbp)
	movq -64(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -64(%rbp)
	addq $1, is_in_function
	call usermove
	movq %rax, %rbx
	pushq %rbx
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	movq -48(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	subq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	popq %rax
	popq %rbx
	subq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -56(%rbp)
	movq -64(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -64(%rbp)
	addq $1, is_in_function
	call usermove
	movq %rax, %rbx
	pushq %rbx
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	movq -48(%rbp), %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	popq %rax
	popq %rbx
	subq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	subq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -56(%rbp)
	movq -64(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -64(%rbp)
	addq $1, is_in_function
	call usermove
	movq %rax, %rbx
	pushq %rbx
	popq %rax
	popq %rbx
	addq %rax, %rbx
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
number_of_loop:
	.quad 0
input:
	.quad 0
shift:
	.byte 0
