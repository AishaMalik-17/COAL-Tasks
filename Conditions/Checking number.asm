
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; AishaMalik-17        
           
org 100h
.model small
.stack 100h
.data

msg1  DB  10,13,  "Enter one-digit number: $"
msg2  DB  10,13,  "The number is posiitve.$"
msg3  DB  10,13,  "The number is ZERO.$"

.code
main proc
    
    mov ax, @data
    mov dx, ax
    
    ; Printing msg1
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    ; input the value
    mov ah, 1
    int 21h
    mov cl, al
    
    mov dl,'0'
    
    cmp dl, cl    ; comparing enter number with 0
    
    je label1
    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
    
    label1:
    mov dx,offset msg3
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
main endp
end main
ret




