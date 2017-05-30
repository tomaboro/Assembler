#miejsce na zmienne
.data 

#miejsce na kod
.text
.type fun, @function #deklaracja funkcji
.global fun #deklarujemy nasza funkcje jako globalna(punkt startowy programu)

	fun:
	push	%rbp #zapisujemy stos
	mov		%rsp,%rbp 
	
	movq	%rdi,%rax # przepisujemy wskaznik do stringa do rejestru ktory jest 'zwracany'
	
	movb	(%rsi),(%rdi) 
	incq	%rdi # przesuwamy wskaznik do zarezerwowanej przestrzeni o jeden znak
	incq	%rsi
	movb	(%rdx),(%rdi)
	incq	%rdi # przesuwamy wskaznik do zarezerwowanej przestrzeni o jeden znak
	incq	%rsi
	
	mov	%rbp,%rsp 
	pop	%rbp # przywracamy pierwotny stan stosu
	ret	#wyjscie z funkcji

	