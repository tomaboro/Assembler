#miejsce na zmienne
.data

#miejsce na kod
.text
.type fun, @function #deklaracja funkcji
.global fun #deklarujemy nasza funkcje jako globalna(punkt startowy programu)

        fun:
        push    %rbp #zapisujemy stos
        mov             %rsp,%rbp

        movq    %rdi,%rax

        petla:
        movzbl  (%rsi),%ebx
        cmpb    $0,%bl
        je              koniec_1
        movb    %bl,(%rdi)

        incq    %rsi
        incq    %rdi

        movzbl  (%rdx),%ebx
        cmpb    $0,%bl
        je              koniec_2
        movb    %bl,(%rdi)

        incq    %rdx
        incq    %rdi
        jmp             petla

        koniec_1:
        movzbl  (%rdx),%ebx
        cmpb    $0,%bl
        je              koniec
        movb    %bl,(%rdi)

        incq    %rdx
        incq    %rdi
        jmp             koniec_1

        koniec_2:
        movzbl  (%rsi),%ebx
        cmpb    $0,%bl
        je              koniec
        movb    %bl,(%rdi)

        incq    %rsi
        incq    %rdi
        jmp             koniec_2

        koniec:
        mov     %rbp,%rsp
        pop     %rbp # przywracamy pierwotny stan stosu
        ret     #wyjscie z funkcji
