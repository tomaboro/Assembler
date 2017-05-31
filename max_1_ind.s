.data 

#miejsce na kod
.text
.type max_1_ind, @function #deklaracja funkcji
.global max_1_ind #deklarujemy nasza funkcje jako globalna(punkt startowy programu)

	max_1_ind:
	push	%rbp #zapisujemy stos
	mov	%rsp,%rbp 
	
	#zaoisujemy zmienne na stosie aby swobodnie korzystac z rejestrow
	movq	%rdi,-8(%rbp)
	movq	%rsi,-16(%rbp)
	movq	%rdx,-24(%rbp)
	movq	%rcx,-32(%rbp)
	
	
	
	movq	-24(%rbp),%rax
	movq	$0,(%rax) # a = 0
	movq	-32(%rbp),%rax
	movq	$0,(%rax) # b = 0
	
	movq	$2,%rbx # ustawiamy dzielnik
	movq	-16(%rbp),%rcx # ustawiamy licznik petli jako n
	movq	-8(%rbp),%rsi # ustawiamy wskaznik na pierwszy element tablicy 
	
	petla:
	movq	(%rsi),%rax # zawartosc wskaznika kopijemy do rax (z tego rejestru korzysta div)
	cqto #komenda ustawiajaca odpowiednie flagi przed dzieleniem
	idivq	%rbx # dzielimy %rax/%rbx, wynik w %rax, reszta w %rdx
	cmpq	$0,%rdx # na podstawie reszty okreslamy parzystosc
	jne	L2
	movq	-24(%rbp),%rax 
	incq	(%rax) #jesli parzysta a++
	jmp	L3
	L2:
	movq	-32(%rbp),%rax 
	incq	(%rax) #jesli n.parysta b++
	L3:
	addq	$8,%rsi #zwieszkamy wskaznik na kolejny element tablicy
	loop	petla
	
	
	
	movq	-16(%rbp),%rcx # ustawiamy licznik petli jako n
	movq	-8(%rbp),%r11 # ustawiamy wskaznik na pierwszy element tablicy
	movq	$1,%rax # domyslnie najwiecej 1 ma 1 element
	movq	$0,%r12 # domysnlnie najwiecej 1 to 0
	movq	$1,%rbx # indeks aktualnie iterowanego elementu
	
	petla2:
	movq	$64,%r9	#tyle bitow ma long long
	movq	$0,%r8 #zerujemy liczbe 1
	movq	(%r11),%rsi #przepisujemy zawartosc wskaznika do rsi
	petla3:
	movq	%rsi,%r10 #kopiujemy rsi
	andq	$0x01,%rsi #zerujemy wszystkie bity oprócz ostatniego
	cmp	$0,%rsi #sprawdzamy ostatni bit
	je	L4
	incq	%r8 #jesli ostatni bit to 1 to zwiekszamy ogolna liczbe 1
	L4:
	shrq	$1,%r10 #przesuwamy bitowo i 1 w prawo
	movq	%r10,%rsi 
	decq	%r9 #zmniejszamy liczbe bitow do odczytania
	cmp	$0,%r9 #warunek petli
	jne	petla3
	addq	$8,%r11 #przesuwamy wskaznik na kolejny element tablicy
	cmpq	%r8,%r12 #sprawdzamy czy sprawdzona juz liczba ma wiecej 1 niz dotychczasowy max
	jg	L5
	movq	%r8,%r12 #jesli tak to przepisujemy max ilosc 1
	movq	%rbx,%rax #jesli tak to zapisujemy indeks elementu
	L5:
	incq	%rbx #zwiekszamy indeks aktualnie iterowanego elementu
	loop	petla2
	
	mov	%rbp,%rsp 
	pop	%rbp # przywracamy pierwotny stan stosu
	ret