TITLE My First Program (Bubblesort.asm)
INCLUDE Irvine32.inc

.data
array DWORD 18, 12, 123, 33, 12, 156, 1, 5, 0, 9, 99, 7
var1 DWORD ?
.code
main PROC
mov eax, 0
mov ebx, 0
mov edx, 0
mov ecx, 12
mov esi, 0

L1:
	mov ebx, ecx
	mov edi, 1
	mov esi, 0
	L2:
		mov edx, array[esi*TYPE array]
		cmp edx, array[edi*TYPE array]
		ja swap
		elsepart:
		inc edi
		inc esi
	LOOP L2
	mov ecx, ebx
LOOP L1

jmp ending


swap:
mov var1, edx 
mov edx, array[edi*TYPE array]
mov array[esi*TYPE array], edx
mov edx, var1
mov array[edi*TYPE array], edx
jmp elsepart


ending:
mov ecx, 12
mov esi, 0
L3:
mov eax, array[esi*TYPE array]
inc esi
call writedec
call crlf
LOOP L3

exit

main ENDP
END main