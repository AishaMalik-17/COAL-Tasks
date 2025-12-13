; AishaMalik-17
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


.model small
.stack 100h
.data

msg1   DB   'Enter a lowercase letter: $'
msg2   DB   'After conversion to uppercase: $'
char   DB   ?

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    mov ah,9
    int 21h
        
    ; Taking input    
    mov ah,1
    int 21h
    mov char,al
               
    ;Converting into uppercase           
    sub char,32
    
    ; New Line
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h 
    
    mov dx,offset msg2
    mov ah,9
    int 21h
    
    ; Printing converted letter
    mov dl,char
    mov ah,2
    int 21h
    
    ; Exit Program
    mov ah,4ch
    int 21h

main endp
end main