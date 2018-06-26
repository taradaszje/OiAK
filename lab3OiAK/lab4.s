.text
.global rdts_my
.type rdts_my, @function

rdts_my:
	mov %rdi, %rax
	cmp $0, %rax
	jg dalej
	rdtscp
	jmp wyjscie


dalej:
	xor %rax, %rax
	cpuid
	rdtsc

wyjscie:
	shl $32, %rdx
	add %rdx, %rax
	ret




 
