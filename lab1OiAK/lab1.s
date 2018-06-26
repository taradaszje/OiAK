.data
EXIT = 60
READ = 0
WRITE = 1
STDOUT = 1
STDIN = 0
SYSCALL32 = 0x80
ERR_CODE = 0
BUFLEN = 512


.bss
.comm textout, 512
.comm textin, 512


.text
.global _start

_start:
movq $READ, %rax
movq $STDIN, %rdi
movq $textin, %rsi
movq $BUFLEN, %rdx

syscall

#przeniesienie dlugosci wprowadzonego ciagu znakow
# do rejestru r8 oraz wyzerowanie licznika petli

movq %rax, %r8
movq $0, %rdi

jmp petla
petla:

#operacja XOR na kolejnych literach

movb textin(, %rdi,1), %al
xor $0x20, %al
movb %al, textout(, %rdi, 1)

# ponowny przeskok do etykiety petla az do wykonania operacji xor 
# dla wszystkich liter w buforze

inc %rdi
cmp %r8, %rdi
jle petla
jmp wyswietl

wyswietl:
movq $WRITE, %rax
movq $STDOUT, %rdi
movq $textout, %rsi
movq %r8, %rdx
movq $10,%rdx

syscall

mov $EXIT, %rax
mov $ERR_CODE, %rdi
syscall
