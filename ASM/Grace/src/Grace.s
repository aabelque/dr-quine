%define F "Grace_kid.s"
%define W "w"
%define STR "%%define F %2$cGrace_kid.s%2$c%3$c%%define W %2$cw%2$c%3$c%%define STR %2$c%1$s%2$c, 0%3$c%3$c%%macro GRACE 0%3$c    section .text%3$c        extern fprintf%3$c        extern fopen%3$c        global main%3$c%3$c    main:%3$c        push rbp%3$c        mov rbp, rsp%3$c        sub rsp, 16%3$c        lea rdi, [rel f.n]%3$c        lea rsi, [rel f.w]%3$c        call fopen wrt ..plt%3$c        mov rdi, rax%3$c        lea rsi, [rel f.s]%3$c        lea rdx, [rel f.s]%3$c        mov rcx, 34%3$c        mov r8, 10%3$c        call fprintf wrt ..plt%3$c        mov rax, 0%3$c        leave%3$c        ret%3$c%3$c    section .data%3$c    f:%3$c        .s db STR, 0%3$c        .n db F, 0%3$c        .w db W, 0%3$c%%endmacro%3$c%3$cGRACE%3$c", 0

%macro GRACE 0
    section .text
        extern fprintf
        extern fopen
        global main

    main:
        push rbp
        mov rbp, rsp
        sub rsp, 16
        lea rdi, [rel f.n]
        lea rsi, [rel f.w]
        call fopen wrt ..plt
        mov rdi, rax
        lea rsi, [rel f.s]
        lea rdx, [rel f.s]
        mov rcx, 34
        mov r8, 10
        call fprintf wrt ..plt
        mov rax, 0
        leave
        ret

    section .data
    f:
        .s db STR, 0
        .n db F, 0
        .w db W, 0
%endmacro

GRACE
