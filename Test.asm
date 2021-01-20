TITLE My First Program (test.asm)
INCLUDE Irvine32.inc

.data
x1 dword 10
x2 dword 20
.code

hello PROC, var1:dword, var2:dword
	mov eax, 0
	mov ebx, 0

	mov eax, var1
	mov ebx, var2

	call dumpregs

	ret
hello ENDP


main PROC
	push 10
	push 20
	call hello
	exit
main ENDP
END main