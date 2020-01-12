	.text
	.globl	main
main:
	subq $0, %rsp
	leaq -8(%rsp), %rbp
	movq $1, %rax
	pushq %rax
	popq %rdi
	call printn_int
	movq $0, %rax
	pushq %rax
	popq %rdi
	call printn_int
	movq $1, %rax
	pushq %rax
	movq $0, %rax
	pushq %rax
	popq %rbx
	popq %rax
	andq %rbx, %rax
	pushq %rax
	popq %rdi
	call printn_int
	movq $1, %rax
	pushq %rax
	movq $0, %rax
	pushq %rax
	popq %rbx
	popq %rax
	orq %rbx, %rax
	pushq %rax
	popq %rdi
	call printn_int
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
