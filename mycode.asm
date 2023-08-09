
.model small
.stack 100h


.data

a db 'input : $' 
b db 'output : $'
   C DB 'INVALID INPUT $'                 
                    
.code
main proc
    
    
    mov ax,@data
    mov ds,ax
    
     x:
    
    lea dx,a
    mov ah,9
    int 21h
    
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
    CMP BL,65
    JL EXIT
    CMP BL,70
    JG EXIT
    
    
    jmp y 
    
    y:
    
    lea dx,b
    mov ah,9
    int 21h
    
    
      mov ah,2
    mov dl,49
    int 21h
    
    sub bl,17
    
    mov ah,2
    mov dl,bl
    int 21h   
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
       jmp x 
       
       
       EXIT: 
       
         
    lea dx,C
    mov ah,9
    int 21h   
  
   main endp

end main
    
    
    


