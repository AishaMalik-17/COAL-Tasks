
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; AishaMalik-17

org 100h

mov cx,3   ; Loop will run 3 times
mov dx,1   ; Loop wil start from 1
mov bx,0   ; store the sum

l1:
    add bx,dx
    inc dx

loop l1

mov ax,bx
add al,48
mov dl,al

mov ah,2
int 21h    

ret




