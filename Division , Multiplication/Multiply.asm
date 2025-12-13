; Aisha Malik - 17
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


mov ah,1
int 21h
sub al,48    ;converts the ASCII character into the actual numeric value.

mov bl,al

mov dl,'*'
mov ah,2
int 21h

mov ah,1
int 21h
sub al,48   ;converts the ASCII character into the actual numeric value.

mov cl,al

mov dl,'='
mov ah,2
int 21h

mov al,bl
Mul cl

add ax,48
mov dx,ax
mov ah,2
int 21h
