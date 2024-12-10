.section .data
.section .text
# rdi - 1st argument, rsi - 2nd argument, rdx - 3rd argument,
# rcx - 4th argument, r8 - 5th argument, r9 - 6th argument
# r10 e r11 - uso livre
# void enqueue_value(int* array, int length, int* read, int* write, int value);
# info:
#	> read & write, pointers para posiçoes do array (as in array[read]/array[write])

# ideas:
#	> write vai aumentar ate chegar a length, ponto no qual ele vai ficar a 0, e o read vai aumentar para 1
#	> desta forma quando tiver todo preenchido write = read - 1
#	> 

.global enqueue_value
enqueue_value:
	movl (%rcx), %r10d
	cmpl %r10d, %esi
	jle end
	movl (%rdx), %r10d
	cmpl %r10d, %esi
	jle end
	movl (%rcx), %r11d
	leaq (%rdi, %r11, 4), %r10
	movl %r8d, (%r10)
	incl %r11d
	movl (%rdx), %r10d
	cmpl %esi, %r11d
	jge equ_write
	movl %r11d, (%rcx)
	cmpl %r10d, %r11d
	jle incr_read
	ret

equ_write:
	movl $0, (%rcx)
	cmpl $0, %r10d
	jne end
	movl $1, (%rdx)
	ret

incr_read:
	incl %r10d
	movl %r10d, (%rdx)
	cmpl %esi, %r10d
	jl end
	movl $0, (%rdx)
	ret

end:
	ret
