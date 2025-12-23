
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data

msg1  DB 10,13,  "Enter value of A: $"
msg2  DB 10,13,  "Enter value of B: $"
msg3  DB 10,13,  "The value of A is greater than B.$" 
msg4  DB 10,13,  "The value of A is less than B.$"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    ; Prinitng msg1
    mov dx,offset msg1
    mov ah,9
    int 21h
    
    ;input value of A
    mov ah,1
    int 21h
    mov cl,al
    
    ; Prinitng msg2
    mov dx,offset msg2
    mov ah,9
    int 21h
    
    ;input value of B
    mov ah,1
    int 21h
    mov dl,al
    
    cmp cl,dl   ; compare value of A and B
    jg greater  ; jump if A>B
    
    ; Prinitng msg4 
    mov dx,offset msg4
    mov ah,9
    int 21h 
    
    mov ah,4ch
    int 21h
    
    greater:
    mov dx,offset msg3
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
        
        
    
    
ret




