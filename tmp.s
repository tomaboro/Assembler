.data

.text
.type max_diff, @function
.global max_diff

	max_diff:
	push	%rbp
	mov		%rsp,%rbp
	
	movq	%rdi,%rax
	
	cmpq	%rax,%rsi
	jl		etykieta1
	movq	%rsi,%rax
	
	etykieta1:
	cmpq	%rax,%rdx
	jl		etykieta2
	movq	%rdx,%rax
	
	etykieta2:
	cmpq	%rax,%rcx
	jl		etykieta3
	movq	%rcx,%rax
	
	etykieta3:
	movq	%rdi,%rbx
	
	cmpq	%rbx,%rsi
	jg		etykieta4
	movq	%rsi,%rbx
	
	etykieta4:
	cmpq	%rbx,%rdx
	jg		etykieta5
	movq	%rdx,%rbx
	
	etykieta5:
	cmpq	%rbx,%rcx
	jg		etykieta6
	movq	%rcx,%rbx
	
	etykieta6:
	
	#subq	%rbx,%rax
	movq	%rbx,%rax
	
	movq	$-5,%rax
	movq	$20,%rbx
	call	compare
	
	mov		%rbp,%rsp
	pop		%rbp
	ret
	
.type compare, @function
compare:
	movq	$0,%rsp

	cmpq	%rax,%rsp
	jl		negative_a
	
	cmpq	%rbx,%rsp
	jl		negative_b
	
	cmpq	%rax,%rbx
	jl		end_compare
	push	%rax
	movq	%rbx,%rax
	pop	%rax
	jmp		end_compare
	
	negative_a:
	cmpq	%rbx,%rsp
	jl		negative_ab
	jmp		end_compare
	
	negative_b:
	push	%rax
	movq	%rbx,%rax
	pop	%rax
	jmp		end_compare
	
	negative_ab:
	cmpq	%rax,%rbx
	jg		end_compare
	push	%rax
	movq	%rbx,%rax
	pop		%rax
	
	end_compare:
	ret
	