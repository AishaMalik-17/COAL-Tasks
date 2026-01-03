;AishaMalik-17

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

string macro p1          ; Macro is basically a function that is with parameters
    mov dx,offset p1
    mov ah,9
    int 21h
    
    string endm     ; way to ending/closing a macro

org 100h 

.model small
.stack 100h
.data
st1   db  'Ayesha Malik$'
st2   db  '20 years$'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    string st1
    call nextline
    
    string st2
    call nextline
    
    main endp
    
nextline proc     ; Procedure is a function without any parameters.
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h            
ret
nextline endp     ; way to ending/closing a procedure
end main




