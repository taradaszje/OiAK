.bss

.data
a: .int 0, 0
b: .int 0, 0
m: .int 0, 0
bmodm: .int 0, 0
ak: .int 0, 0

.text


 
#funkcja sprawdza pierwszosc liczb 
#w rej. 
#rax = x
#funkcja zwraca wynik w rax, 0 - nie pierwsza
prime:
		#licznik c w rsi
		mov $2, %rsi
		mov %rax,%rbx		#kopia
prime0:
		cmp %rbx,%rsi
		jge prime1
		xor %rdx,%rdx
		div %rsi
		cmp $0, %rdx	#porownanie reszyt z dzislenia
		je prime2
		inc %rsi
		mov %rbx,%rax
		jmp prime0
prime2:
		mov $0, %rax
		jmp prime_ret
prime1:
		mov $1, %rax
prime_ret:
		ret

		
		
		
		
.globl discreteLogarithm
.type discreteLogarithm, @function

discreteLogarithm:
        pushq %rbp
        movq %rsp, %rbp

		#rdi = a
		#rsi = b
		#rdx = m
		mov %rdi, a
		mov %rsi, b
		mov %rdx, m

		#najpierw sprwdzamy pierwszoc a i m
		mov a, %rax
		call prime
		cmp $1, %rax
		jne dl_end0
		mov m, %rax
		call prime
		cmp $1, %rax
		jne dl_end0

		#jezlei a i m sa pierwsze
		xor %rdx,%rdx
		mov b, %rax
		divq m
		#reszta w rdx
		mov %rdx, bmodm

		#rsi to licznik k 
		xor %rsi, %rsi
		movq $1, ak
dl0:
		xor %rdx,%rdx
		mov ak, %rax
		divq m
		#reszta w rdx = akmodm
		cmp %rdx, bmodm
		je dl_end1
		
		#jak nie rowne to szukamy dalej
		mov ak,%rax
		mulq a			#a^k
		mov %rax, ak
		inc %rsi
		jmp dl0
		
dl_end1:
		mov %rsi, %rax
		jmp dl_ret
dl_end0:
		mov $-1, %rax
dl_ret:
		#return ans, wynik w rax

        movq %rbp, %rsp
        popq %rbp
        ret
		
		
		
		
		
		