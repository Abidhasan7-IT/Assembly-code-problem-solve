.model small
.stack 100h
.code 
main proc 
    mov cx,5 
    
    l1:
    
          mov ah,2
          mov dl,'*'
          int 21h
        ;  int 21h 
          
          cmp cx,3
          je l2         
          
          jmp l3 
          
          
          l2:
                mov ah,2
          mov dl,'a'
          int 21h
                 
                mov ah,2
          mov dl,'b'
          int 21h              ;cx=3
          
                mov ah,2
          mov dl,'c'
          int 21h
          
          
          jmp l4
          
       l3:
        mov ah,2
          mov dl,'*'
         
          int 21h 
           int 21h 
            int 21h 
              int 21h 
           
            jmp l5
          
     l4:     
   mov ah,2
          mov dl,'*'
          int 21h
         ; int 21h
            
             
             l5:
               mov ah,2
             mov dl,10
             int 21h
             mov dl,13
             int 21h
             
           
      loop l1
    
    main endp
end main




