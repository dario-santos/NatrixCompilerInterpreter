	.text
	.globl	main
main:
	subq $8, %rsp
	leaq 0(%rsp), %rbp
	movq $0, 0(%rbp)
	movq $1, %rax
	pushq %rax
	popq %rax
	movq %rax, 0(%rbp)
	call somar
	popq %rdi
	call print_int
end:
	addq $8, %rsp
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
print_error_f:
	movq %rdi, %rsi
	leaq .Sprint_error_f, %rdi
	movq $0, %rax
	call printf
	jmp end
somar:
	movq $2, %rax
	pushq %rax
	popq %rax
	ret
	call print_error_f
	ret
	.data
.Sprint_int:
	.string "%d\n"
.Sprint_error_t:
	.string "Erro de tipagem\n"
.Sprint_error_f:
	.string "Funcao sem retorno\n"
