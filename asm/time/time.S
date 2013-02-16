;;
; Time
;
; @file time.S
; @created 12/02/2013
; @date 16/02/2013
; @author Jeff Duntemann
; @author Aurelien Souchet <souchet.aurelien@gmail.com>
;

[SECTION .data]

TimeMsg  db "Hey, what time is it?  It's %s",10,0
YrMsg    db "The year is %d.",10,0
Elapsed  db "A total of %d seconds has elapsed since program began running.",10,0

[SECTION .bss] 

OldTime  resd 1        ; Reserve 3 integers (doubles) for time values
NewTime  resd 1        ; 32-bit time_t value

					  

TimeDiff resd 1        ; 32-bit time_t value
TimeStr  resb 40       ; Reserve 40 bytes for time string
TmCopy   resd 9        ; Reserve 9 integer fields for time struct tm

[SECTION .text]        ; Section containing code

extern ctime
extern difftime
extern getchar
extern printf
extern localtime
extern strftime
extern time

global main

main:
       push rbp        ; Set up stack frame for debugger
       mov rbp,rsp
       push rbx        ; Program must preserve EBP, EBX, ESI, & EDI
       push rsi
       push rdi
;;; Everything before this is boilerplate; use it for all ordinary apps!

; Generate a time_t calendar time value with glibc's time() function:
       push 0               ; Push a 32-bit null pointer to stack,
                            ;   since we don't need a buffer.
       call time            ; Returns calendar time in EAX
       add rsp,4            ; Clean up stack after call
       mov [OldTime],rax    ; Save time value in memory variable

; Generate a string summary of local time with glibc's ctime() function:
       push OldTime         ; Push address of calendar time value
       call ctime           ; Returns pointer to ASCII time string in EAX
       add rsp,4           ; Stack cleanup for 1 parm

       push rax             ; Push pointer to ASCII time string on stack
       push TimeMsg         ; Push pointer to base message text string
       call printf          ; Merge and display the two strings
       add rsp,8            ; Stack cleanup: 2 parms X 4 bytes = 8

; Generate local time values into glibc's static tm struct:
       push dword OldTime   ; Push address of calendar time value
       call localtime       ; Returns pointer to static time structure in EAX
       add rsp,4            ; Stack cleanup for 1 parm

; Make a local copy of glibc's static tm struct:
       mov rsi,rax           ; Copy address of static tm from eax to ESI
       mov rdi,TmCopy        ; Put the address of the local tm copy in EDI
       mov rcx,9             ; A tm struct is 9 dwords in size under Linux
       cld                   ; Clear DF so we move up-memory
       rep movsd             ; Copy static tm struct to local copy

; Display one of the fields in the tm structure:
       mov rdx,dword [TmCopy+20] ; Year field is 20 bytes offset into tm
       add rdx,1900          ; Year field is # of years since 1900
       push rdx              ; Push value onto the stack
       push YrMsg            ; Push address of the base string
       call printf           ; Display string and year value with printf
       add rsp,8             ; Stack cleanup: 2 parms X 4 bytes = 8

; Wait a few seconds for user to press Enter so we have a time difference:
       call getchar          ; Wait for user to press Enter

; Calculating seconds passed since program began running:
       push dword 0          ; Push null ptr; we'll take value in EAX
       call time             ; Get current time value; return in EAX
       add rsp,4             ; Clean up the stack
       mov [NewTime],rax     ; Save new time value

       sub rax,[OldTime]     ; Calculate time difference value
       mov [TimeDiff],rax    ; Save time difference value

       push dword [TimeDiff] ; Push difference in seconds onto the stack
       push Elapsed          ; Push addr. of elapsed time message string
       call printf           ; Display elapsed time
       add rsp,8             ; Stack cleanup for 1 parm

;;; Everything after this is boilerplate; use it for all ordinary apps!
       pop rdi               ; Restore saved registers
       pop rsi
       pop rbx
       mov rsp,rbp           ; Destroy stack frame before returning
       pop rbp
       ret                   ; Return control to Linux

					  