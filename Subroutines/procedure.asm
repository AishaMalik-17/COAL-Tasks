;AishaMalik-17

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data
.code

main proc
    mov cx,5
    mov bx,1
    
l1:
    push cx
    mov cx,bx

l2:
    mov dl,'*'
    mov ah,2
    int 21h
    
    loop l2
    
    call nextline
    
    inc bx
    pop cx
    
    loop l1
    main endp
    
nextline proc
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h            
ret
nextline endp
end main




