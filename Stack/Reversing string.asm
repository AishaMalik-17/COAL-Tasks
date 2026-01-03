
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data

string   db  'Ayesha$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset string
    
    mov cx,6
     
    ; Loop for pushing character into stack 
pushin:
    mov bx,[si]
    push bx
    
    inc si
    
    loop pushin
    
    mov cx,6
    
    ; Loop for poping character into stack 
popOut:
    pop bx
    mov dx,bx
    mov ah,2
    int 21h
    
    loop popOut
    
    mov ah,4ch
    int 21h        
    
    main endp
end main
ret




