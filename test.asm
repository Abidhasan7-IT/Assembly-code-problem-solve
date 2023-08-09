  
  
  ;swaping 7,10

 .model small
 .stack 100h
 .data
     
    a db 'input: $'
    b db 'output:$'
    c db 'invaild $'
 .code
 
 main proc 
 
      mov ax,@data
      mov ds,ax
      
      lea dx,a
      mov ah,9  ; ah=a
      int 21h
      
      mov ah,1
      int 21h
      mov bl,al
      
      mov ah,2
      mov dl,10
      int 21h
      mov dl,13
      int 21h
      
      lea dx,b
      mov ah,9
      int 21h
      
      mov ah,2
      mov dl,48    ;48=0
      int 21h
      
      sub bl,17  
      
      mov ah,2
      mov dl,bl
      int 21h
       

    
 main endp
 end main
    
    
    
    



