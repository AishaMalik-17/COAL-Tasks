; Aisha Malik - 17

.model small
.stack 100h
.data

msg1   DB  'Remainder: $'
msg2   DB  'Quotient:  $'
quo DB ?
rem DB ?

.code
main proc
        
    mov ax, @data
    mov ds, ax
        
    mov ax,30
    mov bl,5
    
    div bl     
    
    mov quo,al      ; AL = quotient
    mov rem,ah      ; AH = remainder
                
    ;---- Print "Remainder: " ----
    mov dx, offset msg1
    mov ah,9
    int 21h
                            
    ;---- Printing Remainder ----
    mov dl,rem
    add dl,48
    mov ah,2
    int 21h
    
    ;---- New Line ----
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h     
    
    ;---- Print "Quotient: " ----
    mov dx, offset msg2
    mov ah,9
    int 21h
    
    ;---- Printing Quotient ----
    mov dl,quo
    add dl,48
    mov ah,2
    int 21h
    
    ;---- Exit Program ----
    mov ah,4Ch
    int 21h

main endp
end main
