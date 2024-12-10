.section .data

.section .text
.global extract_token 

extract_token:
	# input = rdi
	# token = rsi
	# output = edx

	movl $0, %r11d
	movl $0, %r10d
	movb (%rsi, %r10, 1), %r9b
	movl $0, %eax

search_loop:			# Procura pelo token no array
	movb (%rdi, %r11, 1), %r8b
	
	cmpb $0, %r8b		# Se o array acabar, acaba a função
	je done

	cmpb %r8b, %r9b		# Se a primeira letra do token for igual 
	je check_token
	
increase_search_loop:	# Navega o Array com a string principal
	incl %r11d
	jmp search_loop
	

# ===============================================================	

check_token:
	cmpb $0, %r9b			# Se chegou ao fim do token então quer dizer que é igual á string principal
	je return_true

	cmpb %r8b, %r9b			# Se alguma letra não for igual, retorna para o search_loop.
	jne return_false
	
	incl %r11d
	incl %r10d
	
	movb (%rdi, %r11, 1), %r8b
	movb (%rsi, %r10, 1), %r9b
	
	jmp check_token
	
return_true:				# Se chegou ao fim, quer dizer que são iguais.
	movb (%rdi, %r11, 1), %r8b

	jmp read_value
	
	
return_false:
	movl $0, %r10d
	movb (%rsi, %r10, 1), %r9b
	jmp search_loop
	
	
# ===============================================================	
	
read_value:
	
read_value_loop:		# Lê o valor todo
	cmpb $0, %r8b 				# Confirma se o array acabou
	je moveSum
 
	cmpb $65, %r8b				# Strings são ignorados
	jge moveSum
 
	cmpb $'#', %r8b				# Final do value
	je moveSum
	
	cmpb $'.', %r8b				# Double é ignorado e convertido para int
	je increase_value_loop
	
	imull $10, %eax
	movzbl %r8b, %ecx
	subl $48, %ecx
	addl %ecx, %eax
	
increase_value_loop:
	incl %r11d
	movb (%rdi, %r11, 1), %r8b
	jmp read_value_loop
	
moveSum:
	movl %eax, (%rdx)
	
done:	
	cmpl $0, %eax
	jg opperation_success
	ret
	
opperation_success:
	movl $1, %eax
	ret
