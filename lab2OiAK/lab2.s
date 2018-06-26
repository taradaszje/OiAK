.data
STDOUT = 1
SYSWRITE = 1
SYSEXIT = 60
EXIT_SUCCESS = 0
ILOSC_WYRAZOW = 45 #n-ty wyraz ciagu do obliczenia
PIERWSZY_WYRAZ = 1 #wartosc pierwszego i drugiego wyrazu ciagu
PODSTAWA_WYJSCIA = 10
POCZATEK_LICZB = 0x30
NOWA_LINIA = 0xA


.bss
.comm textinv, 512 #bufory potrzebne do konwersji liczby na ciag znakow ascii
.comm textout, 512


.text
.global _start

_start:
#wywolanie funkcji obliczajacej n-ty wyraz ciagu
mov $ILOSC_WYRAZOW, %r8
dec %r8
push %r8 #umieszczenie parametru na stosie
call n	#wywolanie funkcji rekurencyjnej
add $8, %rsp	#usuniecie parametru ze stosu
		#wynik znajdzie sie w rejestrze rbx
#
#ZAMIANA LICZBY Z REJESTRU NA KOD ASCII W BUFORZE
#
mov %rbx, %rax #skopiowanie liczby do rejestru rax
mov $PODSTAWA_WYJSCIA, %rbx
mov $0, %rcx
jmp petla2

petla2:
mov $0, %rdx
div %rbx
#dzielenie liczby z rejestru rax przez rbx
#i zapis wyniku do rax oraz reszty do rdx
#reszta z dzielenia to przy kazdej iteracji petli kolejna 
#pozycja wyniku. po dodaniu kodu znaku pierwszej liczby,
#sa to kody znakow ascii liczb na kolejnych pozycjach.

add $POCZATEK_LICZB, %rdx
#zapis znakow do bufora w odwrotnej kolejnosci
mov %dl, textinv(, %rcx, 1)

#zwiekszenie licznika iw kolejnych iteracjach powrot
#na poczoatek petli, az do uzyskania zerowego wyniku dzielenia
inc %rcx
cmp $0, %rax
jne petla2
jmp przed_petla3

#
#ODWROCENIE KOLEJNOSCI
#
#po wykonianiu ostaniego kroku, liczby zapisane sa w buforze
#w odwrotnej kolejnosci, w tej petli sa przepisywane z konca
#na poczatek do nowego bufora textout

przed_petla3:
mov $0, %rdi
mov %rcx, %rsi
dec %rsi
jmp petla3

petla3:
mov textinv(, %rsi, 1), %rax
mov %rax, textout(, %rdi, 1)

inc %rdi
dec %rsi
cmp %rcx, %rdi
jle petla3

push %rcx #odlozenie zawartosci rejestru rcx na stosie.
		#bedzie on potrzebny do wywolania funkcji systemowej

#wyswietlenie zawartosci bufora
mov $SYSWRITE, %rax
mov $STDOUT, %rdi
mov $1, %rdx
syscall

pop %rcx	#scaigniecie rejestru rcx ze stosu

#
#WYWIETLENIE LICZBY
#
wyswietl:
#dopisanie no koncu bufora wyjsciowego znaku nowej linii
movb $NOWA_LINIA, textout(, %rcx, 1)
inc %rcx
#wyswietlenie wartosci z bufora textout
mov $SYSWRITE, %rax
mov $STDOUT, %rdi
mov $textout, %rsi
mov %rcx, %rdx
syscall
#zwrot zera na wyjsciu programu
mov $SYSEXIT, %rax
mov $EXIT_SUCCESS, %rdi
syscall
#
#	FUNCKJA OBLICZAJACA N-TY WYRAZ CIAGU FIBONACHIEGO
#
n:
# if(i==1 || i==2) return 1
# return (i-1)+(i-2);

#pobranie przeslanego parametru - numeru wyrazu, do rejestru 
push %rbp
mov %rsp, %rbp
sub $8, %rsp
mov 16(%rbp), %rax
# porowananie parametru n i skok do etykiety
cmp $1, %rax
jl pierwszy_wyraz
je pierwszy_wyraz
#jesli n>=3:
mov $0, %rcx	#czyszczenie rejestry rcx
		#bedzie przechowywał dotychczasowy wynik
dec %rax

push %rcx
push %rax
call n		#wykonanie funkcji n =n-1, wynik w rcx
pop %rax
pop %rcx
add %rbx, %rcx

dec %rax

push %rcx
push %rax
call n		#wykonanie funkcji n=n-2, wynik w rcx
pop %rax
pop %rcx
add %rbx, %rcx

#zwrot wyliczonej wartosci z rejestru rcx
mov %rcx, %rbx	#wynik zwracany jest do rejestru rbx
mov %rbp, %rsp
pop %rbp
ret

pierwszy_wyraz:	
mov $PIERWSZY_WYRAZ, %rbx
mov %rbp, %rsp	#zwrot wartosci 1 jezeli parametr =1 lub 2
pop %rbp
ret
