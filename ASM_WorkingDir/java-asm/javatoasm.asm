cr equ 13 ; Vognretur
lf equ 10 ; Linjeskift
SYS_EXIT equ 1
SYS_READ equ 3
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1
STDERR equ 2

section .bss
siffer resb 4

; Datasegment
section .data
meld db "Skriv to ensifrede tall skilt med mellomrom.",cr,lf
db "Summen av tallene maa vaere mindre enn 10.",cr,lf
meldlen equ $ - meld
feilmeld db cr,lf, "Skriv kun sifre!",cr,lf
feillen equ $ - feilmeld
crlf db cr,lf
crlflen equ $ - crlf

; Kodesegment med program
section .text
global _start
_start: