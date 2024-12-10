.section .data

.section .text

# rdi - 1st argument, rsi - 2nd argument, rdx - 3rd argument,
# rcx - 4th argument, r8 - 5th argument, r9 - 6th argument
# r10 e r11 - uso livre

.global move_num_vec # int move_num_vec(int* array, int length, int *read, int *write, int num, int* vec);
move_num_vec:
	cmpl $0, %esi
	je notEnough
	cmpl %esi, %r8d
	jg notEnough
	movq $0, %rax
	movl (%rdx), %r10d
	cmpl %r10d, (%rcx)
	je notEnough

remove_values:
	cmpl $0, %r8d
	je end
	cmpl %r10d, %esi
	je reset_array_length
	movq (%rdi, %r10, 4), %r11
	movl %r11d, (%r9)
#   movl $0, (%rdi, %r10, 4)
	decl %r8d
	incl %r10d
	addq $4, %r9
	jmp remove_values

reset_array_length:
	movl $0, %r10d
	jmp remove_values

notEnough:
	movl $0, %eax
	ret
end:
	movl %r10d, (%rdx)
	movl $1, %eax
	ret
