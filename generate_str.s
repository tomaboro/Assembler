#miejsce na zmienne
.data 
napis:
.string		"napis\n"
#miejsce na kod
.text
.type generate_str, @function #deklaracja funkcji
.global max_diff #deklarujemy nasza funkcje jako globalna(punkt startowy programu)

	generate_str:
	push	%rbp #zapisujemy stos
	mov	%rsp,%rbp 
	
	movl	
	
	
	mov	%rbp,%rsp 
	pop	%rbp # przywracamy pierwotny stan stosu
	ret	#wyjscie z funkcji
	

	