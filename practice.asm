
.model small
.stack 100h
.data
  msg dw 'swap:$'
  
.code

main proc 
    
    mov ax,@data
    mov ds,ax 
     lea dx,msg
     mov ah,9
     int 21h
             
             
     mov ax,'3'
     push ax
     
     mov bx,'5'
     push bx
     
     pop ax
     pop bx
     
   
     mov dx,ax
     mov ah,2
     int 21h
     
     mov dx,bx
     mov ah,2
     int 21h
            
    mov ah,4ch       ; return control
    int 21h
    
    
    main endp

end main