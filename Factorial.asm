TITLE My First Program (Bubblesort.asm)
INCLUDE Irvine32.inc

.data
inputstr BYTE "Enter integer to calulate its factorial: ", 0
.code
main PROC
mov eax, 0
mov ebx, 0
mov edx, 0
mov ecx, 0
mov esi, 0

mov edx, OFFSET inputstr
call writestring
call readdec
mov ebx, eax
cmp eax, 0
jne funct

mov eax, 1
jmp print

funct:
push eax
call factorial
jmp print

print:
call writedec
exit

factorial proc
push ebp
mov ebp, esp

mov ecx, [ebp + 8]
cmp ecx, 1
je ending
dec ecx
mul ecx
push ecx
call factorial
jmp ending

ending:
pop ebp
ret 4
factorial ENDP

main ENDP
END main