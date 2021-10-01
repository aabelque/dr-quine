section .text
    global start
    global colleen
    global main
    extern printf

; com1

section .data
str:
    .string db "section .text%3$c    global start%3$c    global colleen%3$c    global main%3$c    extern printf%3$c%3$c; com1%3$c%3$csection .data%3$cstr:%3$c    .string db %2$c%1$s%2$c, 0%3$c%3$cstart:%3$c    call main%3$c    ret%3$c%3$ccolleen:%3$c    push rbp%3$c    mov rbp, rsp%3$c    lea rdi, [rel str.string]%3$c    lea rsi, [rel str.string]%3$c    mov rdx, 34%3$c    mov rcx, 10%3$c    call printf wrt ..plt%3$c    pop rbp%3$c    ret%3$c%3$cmain:%3$c    ; com2%3$c    push rbp%3$c    mov rbp, rsp%3$c    sub rsp, 16%3$c    call colleen%3$c    leave%3$c    ret%3$c", 0

start:
    call main
    ret

colleen:
    push rbp
    mov rbp, rsp
    lea rdi, [rel str.string]
    lea rsi, [rel str.string]
    mov rdx, 34
    mov rcx, 10
    call printf wrt ..plt
    pop rbp
    ret

main:
    ; com2
    push rbp
    mov rbp, rsp
    sub rsp, 16
    call colleen
    leave
    ret
