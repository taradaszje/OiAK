.bss
/* zmienne funkcji calkujacej */
.comm precyzja, 4
.comm poczatekCalkowania, 4
.comm koniecCalkowania, 4
.comm _dx, 4



/* zmienne funkcji g*/
.comm input, 4

/* zmienne funkcji liczacej generujX */
.comm xp, 4
.comm i, 4
.comm dx, 4

/*zmienna do przetransportowania wyniku*/
.comm result, 4
.comm temp, 4

.data
jeden: .long 1
_x: .float 0
suma: .float 0


.text
.globl calka

.type calka, @function


calka:
        pushq %rbp
        movq %rsp, %rbp
	/*
	* 3 parametry
	* Pierwszy arg to dokladnosc w %rsi
	* Drugi to poczatek przedzialu calkowania %xmm0
	* Trzeci to koniec przedzialu calkowania %xmm1
	*/



	/*Liczymy szerokosc prostokata
	 *szerokosci prostokata dx:
	 *dx = (xk - xp)/n
	 */
		mov %esi, precyzja
        movss %xmm0, poczatekCalkowania      		#pobranie dolnej granicy
        movss %xmm1, koniecCalkowania        		#pobranie gornej granicy

        flds koniecCalkowania        			#xk
        fsub poczatekCalkowania      			#(xk - xp)
        fidiv precyzja      				#((xk - xp)/n

        fstps _dx       				#pobranie wyliczonego przedzialu do _dx

		mov poczatekCalkowania, %eax
		mov %eax, _x
		flds _x
		fadd _dx
		fsts _x 	#zapamietujemy _x
calka0:
		cmp $0, %esi
		jle calka_ret

		#obliczamy y = x^2
		fmul _x
		
		#obliczamy pole slupka, y*dx
		fmul _dx
		
		#na stos ladujey sume 
		#st0 = suma
		#st1 = slupek pole
		flds suma
		faddp		#sumujemy st0 z st1 a wynik laduje w st0 ostatecznie
		fstps suma
		
		flds _x
		fadd _dx
		fsts _x 	#zapamietujemy _x
		
		dec %esi
		jmp calka0
		
calka_ret:
		fstps _x	#przywracamy stos do pustej postaci
		flds suma	#zostawiamy na stosie sume jako wynik calkowania

        movq %rbp, %rsp
        popq %rbp
        ret