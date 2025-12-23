
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
    
; AishaMalik-17
  
org 100h

mov cx,26       ; Loop will will 26 times 
mov dx,97       ; start point of loop is a (ASCI 97)

L1:
    mov ah,2
    int 21h
    
inc dx

Loop L1

ret




