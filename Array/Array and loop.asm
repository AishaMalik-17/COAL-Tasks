
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data

arr   db  5  dup('#')    ;creating array of size 5 of #

.code
main proc
    mov ax,@data
    mov si,offset arr
    
    mov cx,5
l1:
    mov dx,[si]        ; prinitng '#' 5 times using loop
    mov ah,2
    int 21h
    
    inc si
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    loop l1 
    
    mov ah,4ch
    int 21h   
ret




