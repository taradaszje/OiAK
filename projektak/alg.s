.bss

.data
res: .int 0
n: .int 0
a: .int 0
b: .int 0
m: .int 0
cur: .int 0
ans: .int 0
tab: .qword 0

.text



{
    int res = 1;  // Initialize result
 
    x = x % p;  // Update x if it is more than or
                // equal to p
 
    while (y > 0)
    {
        // If y is odd, multiply x with result
        if (y & 1)
            res = (res*x) % p;
 
        // y must be even now
        y = y>>1; // y = y/2
        x = (x*x) % p;
    }
    return res;
}
 
#zakladamy ze funkcja otrzymuje argumenty 
#w rej. 
#eax = x
#ebx = y
#ecx = p
#funkcja zwraca wynik w eax
powmod:
		push %rdx
	
		#x = x%p
		#dzielnie eax = edx:eax/ecx, reszta laduje do edx
		xor %edx, %edx
		div %ecx	
		mov %edx,%eax

		push %rax  #zapamietujemy
powmod0:
		cmp $0, %ebx
		jle powmod_ret
		
		mov %ebx,%edx
		and $1, %edx
		cmp $0, %edx
		jne powmod2
		mull res		#eax = res*x
		
		#res = (res*x)%p
		#dzielnie eax = edx:eax/ecx, reszta laduje do edx
		xor %edx, %edx
		div %ecx	
		mov %edx,res
		
powmod2:
		shr $1, %ebx	# y = y>>1; // y = y/2
     
		#x = (x*x) % p;
		pop %rax			#odbieramy x
		mul %eax			#x*x
		xor %edx, %edx
		div %ecx	
		mov %edx,%eax
		push %rax	
		
powmod_ret:
		pop %rax  #zerujemy stos
		pop %rdx
		mov res,%eax	
		ret
		
		
		
extern int discreteLogarithm(int a, int b, int m, int* tab) {
 
    int n = (int) sqrt (m) + 1;
 
    unordered_map<int, int> value;
 
    // Store all values of a^(n*i) of LHS
    for (int i = n; i >= 1; --i)
        value[ powmod (a, i * n, m) ] = i;
 
    for (int j = 0; j < n; ++j)
    {
        // Calculate (a ^ j) * b and check
        // for collision
        int cur = (powmod (a, j, m) * b) % m;
 
        // If collision occurs i.e., LHS = RHS
        if (value[cur])
        {
            int ans = value[cur] * n - j;
            // Check whether ans lies below m or not
            if (ans < m)
                return ans;
        }
    }
    return -1;
}		

#operator dostepu do tablicy kluczy
#argument to klucz
#eax - klucz
tab_key:
		push %rdi
		#wyszukujemy po kluczu
		
		xor %rdi, %rdi
		
tk0:
		cmp tab(, %rdi, 8), %eax
		je tk1
		cmpl $-1, tab(, %rdi, 8)
		je tk2
		
		inc %rdi
		jmp tk0
		
tk1:		
		lea tab(, %rdi, 8),%eax
		add $4, %eax
		
tk2:		
		mov %eax, tab(, %rdi, 8)
		lea tab(, %rdi, 8),%eax
		add $4, %eax
		mov $0,(%eax)		#zerowanie wartosci
		
		ret
		
		
.globl discreteLogarithm
.type discreteLogarithm, @function

discreteLogarithm:
        pushq %rbp
        movq %rsp, %rbp

		#rdi = a
		#rsi = b
		#rdx = m
		#rcx = tab
		mov %edi, a
		mov %esi, b
		mov %edx, m
		mov %rcx, tab
		
		#int n = (int) sqrt (m) + 1;
		mov %rdx, n
		fild n
		fsqrt
		fld1 
		faddp	
		fistp n
		
		mov n, %esi		
dl0:
		cmp $1, %esi
		jl dl1
		mov n, %eax
		mul %esi
		
		mov %eax, %ebx
		mov a, %eax
		mov m, %ecx 
		call powmod
		
		#wynik jest w eax i wrzucamy go jako klucz do tablicy 
		#...
		
		dec %esi
		jmp dl0

dl1:
		xor %esi, %esi
		
dl2:		
		cmp n, %esi
		jge dl3
		
		# int cur = (powmod (a, j, m) * b) % m;
		mov %esi, %ebx
		mov a, %eax
		mov m, %ecx 
		call powmod
		mull b
		divl m
		mov %edx, cur
 
		#wynik z tblicy kluczy jest w eax
		#if (value[cur])
		cmp $0, %eax
		je dl3
		
		#int ans = value[cur] * n - j;
		mull n
		sub %esi, %eax
		
		#if (ans < m)
		cmpl m, %eax
		jge dl3
		jmp dl_ret
				
dl3:		
		inc %esi
		jmp dl0
		
dl_ret:
		
		#return ans, wynik w eax

        movq %rbp, %rsp
        popq %rbp
        ret
		