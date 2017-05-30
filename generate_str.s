#miejsce na zmienne
.data 

#miejsce na kod
.text
.type generate_str, @function #deklaracja funkcji
.global generate_str #deklarujemy nasza funkcje jako globalna(punkt startowy programu)

	generate_str:
	push	%rbp #zapisujemy stos
	mov		%rsp,%rbp 
	
	movq	%rdi,%rax # przepisujemy wskaznik do stringa do rejestru ktory jest 'zwracany'
	xchgq	%rdx,%rcx # zamieniamy miejscami %rcx i %rdx bo potrzebujemy licznik petli w %rcx
	
	petla:
	movq	%rsi,(%rdi) # zapisujemy stringa z argumentu c do zarezerwowanej przestrzeni
	incq	%rdi # przesuwamy wskaznid do zarezerwowanej przestrzeni o jedej znak
	cmpq	$0,%rdx # sprawdzamy argument inc
	je		inc_0 # inc == 0 ->inc_0
	add		$1,%rsi # inc != 0 to inkrementujemy c
	inc_0:
	loop	petla

	

	mov	%rbp,%rsp 
	pop	%rbp # przywracamy pierwotny stan stosu
	ret	#wyjscie z funkcji

	