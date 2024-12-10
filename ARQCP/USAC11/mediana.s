.section .data

.section .text

# rdi - 1st argument, rsi - 2nd argument, rdx - 3rd argument,
# rcx - 4th argument, r8 - 5th argument, r9 - 6th argument
# r10 e r11 - uso livre

.global sort_array # USAC04 - To sort the array

    sort_array:
		cmp $1, %esi
		jle end
		dec %esi
		call outer_loop
		jmp end2      

    outer_loop:
	movl $0, %r10d             
	movl $0, %r11d             

    inner_loop:
	movl (%rdi, %r10, 4), %r8d    
	cmpl 4(%rdi, %r10, 4), %r8d   

    	jnge no_swap

   	movl 4(%rdi, %r10, 4), %r9d
    	movl %r9d, (%rdi, %r10, 4)
    	movl %r8d, 4(%rdi, %r10, 4)

    	movl $1, %r11d            

    no_swap:
    	addq $1, %r10             

    	cmpl %r10d, %esi         
    	jg inner_loop


    	cmpl $0, %r11d
    	je end2

    	subl $1, %esi  
    	cmpl $0, %esi
		je end2           
    	jmp outer_loop

    end2:
        ret

.global mediana # int mediana(int* vec, int num)
mediana:
	pushq %rsi
	call sort_array
	popq %rsi
	movq %rsi, %rax
	movq $2, %r11
	cqto
	divq %r11
	movq %rsi, %r10
	andq $1, %r10
	cmpq $1, %r10
	je oddValue
	jmp loop
oddValue:
	incq %rax
loop:
	cmpl $0, %esi
	je end
	cmpl %eax, %esi
	je centerValue
	jmp continue
centerValue:
	movl (%rdi), %eax
	jmp end
continue:
	addq $4, %rdi
	decl %esi
	jmp loop
end:
	ret
