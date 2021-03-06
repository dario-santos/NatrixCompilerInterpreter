	.text
	.globl	main
main:
	subq $16, %rsp
	leaq 8(%rsp), %rbp
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, 0(%rbp)
while_1_inicio:
	movq 0(%rbp), %rax
	pushq %rax
	movq $10, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	jl bool_true_2
	movq $0, %rax
	pushq %rax
	jmp bool_end_2
bool_true_2:
	movq $1, %rax
	pushq %rax
bool_end_2:
	popq %rax
	cmpq $0, %rax
	je while_1_fim
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -8(%rbp)
while_2_inicio:
	movq -8(%rbp), %rax
	pushq %rax
	movq $5, %rax
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
	cmpq $0, %rax
	je while_2_fim
	movq -8(%rbp), %rax
	pushq %rax
	movq 0(%rbp), %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rdi
	call print_int
	movq -8(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -8(%rbp)
	jmp while_2_inicio
while_2_fim:
	movq 0(%rbp), %rax
	pushq %rax
	popq %rdi
	call printn_int
	movq 0(%rbp), %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, 0(%rbp)
	jmp while_1_inicio
while_1_fim:
end:
	addq $16, %rsp
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
