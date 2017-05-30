#miejsce na zmienne
.data 

#miejsce na kod
.text
.type max_ind, @function #deklaracja funkcji
.global max_ind #deklarujemy nasza funkcje jako globalna(punkt startowy programu)

	max_ind:
	push	%rbp #zapisujemy stos
	mov	%rsp,%rbp 
	
	movq	%rdi,%rbx # w rejestrze %rbx zapiszemy najwieksza zmienna max = a
	movq	$1,%rax
	
	cmpq	%rbx,%rsi 
	jne	zeruj # max != b 
	movq	$0,%rax
	zeruj:
	cmpq	%rbx,%rsi 
	jl	etykieta1 # max > b 
	movq	%rsi,%rbx # max < b -> max = b 
	movq	$2,%rax
	
	etykieta1:
	cmpq	%rbx,%rdx 
	jne	zeruj1 # max > b 
	movq	$0,%rax
	zeruj1:
	cmpq	%rbx,%rdx
	jl	etykieta2 # max > c
	movq	%rdx,%rbx # max < c -> max = c 
	movq	$3,%rax
	
	etykieta2:
	cmpq	%rbx,%rcx 
	jne	zeruj2 # max > b
	movq	$0,%rax
	zeruj2:	
	cmpq	%rbx,%rcx
	jl	etykieta3 # max > d
	movq	%rcx,%rbx # max < d -> max = d
	movq	$4,%rax
	
	etykieta3:
	mov	%rbp,%rsp 
	pop	%rbp # przywracamy pierwotny stan stosu
	ret	#wyjscie z funkcji
	
	

	