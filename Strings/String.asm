.model small
.stack 100h

.data

myName    DB  'Name; Ayesha Malik$'
myDegree  DB  'Degree: BS Computer Science$' 
myUni     DB  'University: Riphah International University$'
myGPA     DB  'GPA: 3.90$' 

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    ;------Prinitng Name-------
    mov dx,offset myName
    mov ah,9
    int 21h   
    
    ;------NewLine-------
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h     
    
    ;------Prinitng Degree-------
    mov dx,offset myDegree
    mov ah,9
    int 21h 
    
    ;------NewLine-------
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h  
    
    ;------Prinitng University-------
    mov dx,offset myUni
    mov ah,9
    int 21h 
    
    ;------NewLine-------
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h  
    
    ;------Prinitng GPA-------
    mov dx,offset myGPA
    mov ah,9
    int 21h 
    
    ;-----Exit Program-------
    mov ah,4ch
    int 21h

main endp
end main
    