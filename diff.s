#miejsce na zmienne
.data 

#miejsce na kod
.text
.type max_diff, @function #deklaracja funkcji
.global max_diff #deklarujemy nasza funkcje jako globalna(punkt startowy programu)

	max_diff:
	push	%rbp #zapisujemy stos
	mov	%rsp,%rbp 
	
	movq	%rdi,%rax # w rejestrze %rax zapiszemy najwieksza zmienna max = a
	
	cmpq	%rax,%rsi 
	jl	etykieta1 # max > b 
	movq	%rsi,%rax # max < b -> max = b 
	
	etykieta1:
	cmpq	%rax,%rdx
	jl	etykieta2 # max > c
	movq	%rdx,%rax # max < c -> max = c 
	
	etykieta2:
	cmpq	%rax,%rcx
	jl	etykieta3 # max > d
	movq	%rcx,%rax # max < d -> max = d
	
	etykieta3:
	movq	%rdi,%rbx # w rejestrze %rbx zapiszemy najmniejsza zmienna min = a
	
	cmpq	%rbx,%rsi
	jg	etykieta4 # min < b
	movq	%rsi,%rbx # min > b -> min = b
	
	etykieta4:
	cmpq	%rbx,%rdx
	jg	etykieta5 # min < c
	movq	%rdx,%rbx # min > c -> min = c
	
	etykieta5:
	cmpq	%rbx,%rcx
	jg	etykieta6 # min < d
	movq	%rcx,%rbx # min > d -> min = d
	
	etykieta6:
	subq	%rbx,%rax # max-min
	
	mov	%rbp,%rsp 
	pop	%rbp # przywracamy pierwotny stan stosu
	ret	#wyjscie z funkcji
	

	