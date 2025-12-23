
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

msg1  DB  "Enter any number between 1 to 9: $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    ;Print msg1
    mov dx,offset msg1
    mov ah,9
    int 21h    
    
    ;Input number
    mov ah,1
    int 21h

    mov bl,al

    mov cx,10   ;Loop will run 10 times

    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h

    L1:
        mov dl,bl
        mov ah,2
        int 21h

        mov dl,13
        mov ah,2
        int 21h

        mov dl,10
        mov ah,2
        int 21h

        mov dl,al

Loop L1

ret




