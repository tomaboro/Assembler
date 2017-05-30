.data

.text
.type max_diff, @function
.global max_diff
	max_diff:
	PUSH %rbp
	MOV %rsp,%rbp
	POP		%rax
	POP		%rbx
	POP		%rcx
	POP		%rdx
	
	#CMPQ	%rax,%rbx
	#JB		et1 #jesli a < b
	#PUSH	%rax
	#MOVQ	%rbx,%rax
	#POP		%rbx
	
	#et1:
	#CMPQ	%rax,%rcx
	#JB		et2 #jesli a < b
	#PUSH	%rax
	#MOVQ	%rcx,%rax
	#POP		%rcx
	
	#et2:
	#CMPQ	%rax,%rdx
	#JB		et3 #jesli a < b
	#PUSH	%rax
	#MOVQ	%rdx,%rax
	#POP		%rdx
	
	#et3:
	#CMPQ	%rbx,%rcx
	#JA		et4 #jesli b > c
	#PUSH	%rbx
	#MOVQ	%rcx,%rbx
	#POP		%rcx
	
	#et4:
	#CMPQ	%rbx,%rdx
	#JB		et5 #jesli b > d
	#PUSH	%rbx
	#MOVQ	%rdx,%rbx
	#POP		%rdx
	
	#et5:
	SUB		%rbx,%rax
	PUSH	%rdx
	mov %rbp,%rsp
	pop %rbp
	ret
	#RET

	