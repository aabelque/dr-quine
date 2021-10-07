section .text
	global main, createfile, writefile, runfile
	extern fprintf, sprintf, fopen, fclose, system

main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	movsx rbx, DWORD [rel idx]
	test rbx, rbx
	jl end
	call createfile
	mov rdi, rax
	mov [rbp-8], rax
	call writefile
	mov rax, [rbp-8]
	mov rdi, rax
	call fclose wrt ..plt
	lea rdi, [rel cmd]
	call system wrt ..plt
	leave
	ret

createfile:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rdx, rbx
	mov rsi, file
	mov rdi, name
	call sprintf wrt ..plt
	mov rcx, rbx
	mov rdx, name
	mov rsi, nasm
	mov rdi, cmd
	call sprintf wrt ..plt
	mov rsi, mode
	mov rdi, name
	call fopen wrt ..plt
	leave
	ret

writefile:
	push rbp
	mov rbp, rsp
	sub rsp, 24
	dec rbx
	push rbx
	mov r9, 9
	mov r8, 10
	mov rcx, 34
	lea rdx, [rel content]
	lea rsi, [rel content]
	call fprintf wrt ..plt
	add rsp, 32
	leave
	ret

end:
	leave
	ret

section .data
	idx: dd 5
	file: db "Sully_%d.s", 0
	nasm: db "nasm -f elf64 %1$s && gcc -o Sully_%2$d Sully_%2$d.o && rm -rf Sully_*.o && ./Sully_%2$d", 0
	content: db "section .text%3$c%4$cglobal main, createfile, writefile, runfile%3$c%4$cextern fprintf, sprintf, fopen, fclose, system%3$c%3$cmain:%3$c%4$cpush rbp%3$c%4$cmov rbp, rsp%3$c%4$csub rsp, 16%3$c%4$cmovsx rbx, DWORD [rel idx]%3$c%4$ctest rbx, rbx%3$c%4$cjl end%3$c%4$ccall createfile%3$c%4$cmov rdi, rax%3$c%4$cmov [rbp-8], rax%3$c%4$ccall writefile%3$c%4$cmov rax, [rbp-8]%3$c%4$cmov rdi, rax%3$c%4$ccall fclose wrt ..plt%3$c%4$clea rdi, [rel cmd]%3$c%4$ccall system wrt ..plt%3$c%4$cleave%3$c%4$cret%3$c%3$ccreatefile:%3$c%4$cpush rbp%3$c%4$cmov rbp, rsp%3$c%4$csub rsp, 16%3$c%4$cmov rdx, rbx%3$c%4$cmov rsi, file%3$c%4$cmov rdi, name%3$c%4$ccall sprintf wrt ..plt%3$c%4$cmov rcx, rbx%3$c%4$cmov rdx, name%3$c%4$cmov rsi, nasm%3$c%4$cmov rdi, cmd%3$c%4$ccall sprintf wrt ..plt%3$c%4$cmov rsi, mode%3$c%4$cmov rdi, name%3$c%4$ccall fopen wrt ..plt%3$c%4$cleave%3$c%4$cret%3$c%3$cwritefile:%3$c%4$cpush rbp%3$c%4$cmov rbp, rsp%3$c%4$csub rsp, 24%3$c%4$cdec rbx%3$c%4$cpush rbx%3$c%4$cmov r9, 9%3$c%4$cmov r8, 10%3$c%4$cmov rcx, 34%3$c%4$clea rdx, [rel content]%3$c%4$clea rsi, [rel content]%3$c%4$ccall fprintf wrt ..plt%3$c%4$cadd rsp, 32%3$c%4$cleave%3$c%4$cret%3$c%3$cend:%3$c%4$cleave%3$c%4$cret%3$c%3$csection .data%3$c%4$cidx: dd %5$d%3$c%4$cfile: db %2$cSully_%%d.s%2$c, 0%3$c%4$cnasm: db %2$cnasm -f elf64 %%1$s && gcc -o Sully_%%2$d Sully_%%2$d.o && rm -rf Sully_*.o && ./Sully_%%2$d%2$c, 0%3$c%4$ccontent: db %2$c%1$s%2$c, 0%3$c%4$cmode: db 'w', 0%3$c%3$csection .bss%3$c%4$cname: resb 12%3$c%4$ccmd: resb 100%3$c", 0
	mode: db 'w', 0

section .bss
	name: resb 12
	cmd: resb 100
