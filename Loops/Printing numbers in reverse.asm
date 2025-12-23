
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; AishaMalik-17

org 100h

mov cx,10    ;loop will run 10 times
mov dx,57    ; loop will start from 9 (ASCI 57)

l1:
    mov ah,2
    int 21h
    
dec dx
Loop l1    
ret




