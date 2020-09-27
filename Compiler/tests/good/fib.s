	.text
	.globl	main
main:
	subq $56, %rsp
	leaq 48(%rsp), %rbp
	movq $0, 0(%rbp)
	movq $0, -8(%rbp)
	movq $0, -16(%rbp)
	movq $0, -48(%rbp)
	movq $2, %rax
	pushq %rax
	popq %rax
	movq %rax, -48(%rbp)
	addq $1, is_in_function
	call userfib
	movq %rax, %rbx
	pushq %rbx
	popq %rdi
	call printn_int
	movq $11, %rax
	pushq %rax
	popq %rax
	movq %rax, -48(%rbp)
	addq $1, is_in_function
	call userfib
	movq %rax, %rbx
	pushq %rbx
	popq %rdi
	call printn_int
	movq $42, %rax
	pushq %rax
	popq %rax
	movq %rax, -48(%rbp)
	addq $1, is_in_function
	call userfib
	movq %rax, %rbx
	pushq %rbx
	popq %rdi
	call printn_int
end:
	addq $56, %rsp
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
userfibaux:
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -24(%rbp)
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, -32(%rbp)
	movq $0, %rax
	pushq %rax
	movq -16(%rbp), %rax
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
	pushq %rbx
	pushq %rax
	popq %rbx
	popq %rax
	movq %rax, -32(%rbp)
	movq %rbx, -40(%rbp)
foreach_1_inicio:
	movq 0(%rbp), %rax
	pushq %rax
	popq %rax
	movq %rax, -24(%rbp)
	movq -8(%rbp), %rax
	pushq %rax
	popq %rax
	movq %rax, 0(%rbp)
	movq -24(%rbp), %rax
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	popq %rax
	popq %rbx
	addq %rax, %rbx
	pushq %rbx
	popq %rax
	movq %rax, -8(%rbp)
foreach_1_condicao:
	movq -32(%rbp), %rax
	incq %rax
	movq %rax, -32(%rbp)
	movq -40(%rbp), %rbx
	cmpq %rbx, %rax
	jle foreach_1_inicio
foreach_1_fim:
	movq $0, %rax
	cmpq is_in_function, %rax
	je print_error_f
	decq is_in_function
	movq 0(%rbp), %rax
	pushq %rax
	popq %rax
	ret
	call print_error_f
	ret
userfib:
	movq $0, %rax
	cmpq is_in_function, %rax
	je print_error_f
	decq is_in_function
	movq $0, %rax
	pushq %rax
	popq %rax
	movq %rax, 0(%rbp)
	movq $1, %rax
	pushq %rax
	popq %rax
	movq %rax, -8(%rbp)
	movq -48(%rbp), %rax
	pushq %rax
	popq %rax
	movq %rax, -16(%rbp)
	addq $1, is_in_function
	call userfibaux
	movq %rax, %rbx
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
