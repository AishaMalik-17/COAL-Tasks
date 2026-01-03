
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data

arr db 'H','e','l','l','o'

.code
.main proc
    
    mov ax,@data
    mov si,offset arr
    
    ; Printing letter of hello one by ne
    
    mov dx,[si]    
    mov ah,2
    int 21h
    
    mov dx,[si+1]
    mov ah,2
    int 21h
    
    mov dx,[si+2]
    mov ah,2
    int 21h

    mov dx,[si+3]
    mov ah,2
    int 21h

    mov dx,[si+4]
    mov ah,2
    int 21h
    
    mov ah,4ch 
    int 21h

ret




