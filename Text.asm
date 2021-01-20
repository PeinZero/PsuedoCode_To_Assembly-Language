TITLE String Manipulation (Q4.asm)
INCLUDE Irvine32.inc

.data

Sourcestr BYTE 50 dup(?), 0
Targetstr BYTE 50 dup(?), 0
Substrval BYTE 50 dup(?), 0
Searchstr BYTE "Abdullah Raheel", 0
inputstr BYTE "Enter String: ", 0


.code
main PROC
mov eax, 0
mov ebx, 0
mov ecx, 0
mov esi, 0

mov edx, OFFSET inputstr
call writestring

mov edx, OFFSET Sourcestr
mov ecx, 50
call readstring
call crlf
mov edx, 0
mov edx, offset Sourcestr
call writestring
call crlf

exit
main ENDP
END main
