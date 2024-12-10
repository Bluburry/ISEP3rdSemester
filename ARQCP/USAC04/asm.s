.section .data

.section .text

    .global sort_array


    sort_array:
		
		cmp $1, %esi
		jle end
		dec %esi
		call outer_loop
		jmp end      
	
	

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
    	je end

    	subl $1, %esi  
    	cmpl $0, %esi
		je end            
    	jmp outer_loop




    end:
        ret
        
