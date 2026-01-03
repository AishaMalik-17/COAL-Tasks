
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,'1'
push ax

mov bx,'2'
push bx

pop ax
pop bx

mov dx,ax
mov ah,2
int 21h

mov dl,10
mov ah,2
int 21h 

mov dl,13
mov ah,2
int 21h

mov dx,bx
mov ah,2
int 21h
ret




