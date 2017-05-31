.data 

#miejsce na kod
.text
.type max_1_ind, @function #deklaracja funkcji
.global max_1_ind #deklarujemy nasza funkcje jako globalna(punkt startowy programu)

	max_1_ind:
	push	%rbp #zapisujemy stos
	mov		%rsp,%rbp
	movq    %rdi, -8(%rbp)
	movq    %rsi, -16(%rbp)
	movq    %rdx, -24(%rbp)
	movq    %rcx, -32(%rbp)

	xchgq	-16(%rbp),%rcx
	
	#petla:
	movq	$0,%rbx
	movq	-8(%rbp),%rax
	inner_petla:
	movq	$2,%rcx
	cqto
	div	$rcx	
	cmpq	$1,%rdx
	jne		skip_inc
	incq	%rbx
	skip_inc:
	cmpq	$0,%rax
	je		next_num
	jmp		inner_petla
	next_num:
	incq	-8(%rbp)
	#loop	petla
	
	movq	%rbx,%rax
	mov	%rbp,%rsp 
	pop	%rbp # przywracamy pierwotny stan stosu
	ret	#wyjscie z funkcji