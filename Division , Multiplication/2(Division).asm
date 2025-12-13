
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; Aisha Malik - 17

.model small
.stack 100h
.data

msg1   DB  'Remainder: $'
msg2   DB  'Quotient:  $'

.code
main proc
        
    mov ax,27
    mov bl,5
    
    div bl     
    
    mov cl,al      
    mov ch,ah  
    
    mov ax, @data
    mov ds, ax    
                
    ;---- Printing Remainder ----
    mov dx, offset msg1
    mov ah,9
    int 21h
                            
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h
    
    ;---- New Line ----
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h     
    
    ;---- Printing Quotient ----
    mov dx, offset msg2
    mov ah,9
    int 21h
    
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    
    ;---- Exit Program ----
    mov ah,4ch
    int 21h

main endp
end main
