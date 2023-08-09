
.model small
.stack 100h
.data


num1 db 'A$'
num2 db 'N$'
num3 db 'J$'

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,num1
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
   
   lea dx,num2 
   mov ah,9
   int 21h
     
      mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
 
   
   lea dx,num3
   mov ah,9
   int 21h

       mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
 
 main endp
end main
    
    