;;
; Bootstrap ASM
;
; @file bootstrap.S
; @created 12/02/2013
; @date 16/02/2013
; @author Jeff Duntemann
; @author Aurelien Souchet <souchet.aurelien@gmail.com>
;

[BITS64]

[SECTION .data]

[SECTION .bss]

[SECTION .text]


global main

main:
       push rbp
       mov rbp,rsp
       push rbx
       push rsi
       push rdi
;;; Everything before this is boilerplate; use it for all ordinary apps!


;;; Everything after this is boilerplate; use it for all ordinary apps!
       pop rdi
       pop rsi
       pop rbx
       mov rsp,rbp 
       pop rbp
       ret  

					  