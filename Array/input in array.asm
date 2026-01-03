
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data
msg1 db  'Enter 5 elements for array: $'
msg2 db  'Array is folow: $'
arr  db  5  dup(?)    ; creating array of 5 size. Empty array

.code
main proc
    mov ax,@data 
    mov ds,ax
    
    mov si,offset arr  
    
    mov dx,offset msg1
    mov ah,9
    int 21h
    
    mov cx,5
    
    ;Loop to take input 5 times for array
input:
    mov ah,1
    int 21h
    
    mov [si],al
    inc si
    
    loop input
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
           
    mov dx,offset msg2
    mov ah,9
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
           
    mov si,offset arr
    mov cx,5
    
    ;Loop to print elements of array
print:
    mov dx,[si]
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    inc si
    
    loop print
    
    mov ah,4ch
    int 21h        
ret




