
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data
arr   db  '0','1','2','3','4','5','6','7','8','9'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
    mov cx,10
    
pushIn:
    mov bx,[si]
    push bx
    
    inc si
    
    loop pushIn
    mov cx,10
    
popOut:
    pop bx
    mov dx,bx
    mov ah,2
    int 21h
    
    loop popOut
    
    mov ah,4ch
    int 21h            
ret




