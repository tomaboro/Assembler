#TOMASZ BOROWICZ
.data 

#miejsce na kod
.text
.type check_div, @function #deklaracja funkcji
.global check_div #deklarujemy nasza funkcje jako globalna(punkt startowy programu)

	check_div:
	push	%rbp #zapisujemy stos
	mov	%rsp,%rbp 
	
	#zaoisujemy zmienne na stosie aby swobodnie korzystac z rejestrow
	movq	%rdi,-8(%rbp)
	movq	%rsi,-16(%rbp)
	movq	%rdx,-24(%rbp)
	
	cmpq	$0,-24(%rbp) #sprawdzamy wartosc argumentu c
	jne	c_nie_0 #jesli c != 0 to skocz do c_nie_0
	
	c_0: #jesli c == 0
	movq	-8(%rbp),%rax #przepisujemy a do rax
	movq	-16(%rbp),%rbx #przepisujemy b do rbx
	cqto #komenda ustawiajaca odpowiednie flagi przed dzieleniem
	idivq	%rbx # dzielimy %rax/%rbx, wynik w %rax, reszta w %rdx
	cmpq	$0,%rdx #sprawdzamy reszte z dzielenia
	jne	reszta_nie_0 #jesli resta != 0 to skocz do reszta_nie_0
	movq	$1,%rax #zapisujemy 1 jako wynik (a dzieli sie calkowicie przez b)
	jmp	koniec
	reszta_nie_0:
	movq	$0,%rax #zapisujemy 0 jako wynik (a nie dzieli sie calkowicie przez b)
	jmp	koniec
	
	c_nie_0:
	movq	$64,%rcx #ustawiamy licznik petli
	movq	$1,%r9 #ustawiamy dzielnik
	movq	$0,%r8 #tu bedzie wynik
	movq	$0x01,%r10 #tu przechowywujemy pozycje aktualnego bitu (przesuwamy w petli o 1 w lewo)
	
	petla:
	movq	-8(%rbp),%rax #przepisujemy a do rax
	movq	%r9,%rbx #dzielnik przepisujemy do rbx
	cqto #komenda ustawiajaca odpowiednie flagi przed dzieleniem
	idivq	%rbx # dzielimy %rax/%rbx, wynik w %rax, reszta w %rdx
	cmpq	$0,%rdx #sprawdzamy reszte z dzielenia
	jne	do_nothing #jesli resta != 0 to skocz do do_nothing
	
	c1_reszta_0:
	addq	%r10,%r8 #jesli podzielne przez dzielnik to zapisujemy bit
	
	do_nothing:
	skip:
	incq	%r9 #zwiekszamy dzielnik
	shlq	$1,%r10 #przesuwamy bitowo o 1 w lewo
	loop	petla
		
	movq	%r8,%rax #zapisjemy wynik do %rax
	
	koniec:
	mov	%rbp,%rsp 
	pop	%rbp # przywracamy pierwotny stan stosu
	ret