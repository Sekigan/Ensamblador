.model small
          .code
          
          programa:
          
          mov ah,01h 
          int 21h    
          
          mov bl,al  
          
          mov ah,02h 
          mov dl,0ah 
          int 21h    
          
          mov dl,0dh 
          int 21h    
          
          mov bh,bl 
                    
          mov cl,04h 
          
          shr bl,cl  
          
          cmp bl,09h 
          ja letra  
          
          add bl,30h 
          
          jmp imprimir
          
          letra:
          add bl,37h
          
          imprimir:
          mov ah,02  
          mov dl,bl  
          int 21h    
          
          and bh,0fh 
          
          cmp bh,09h 
          ja letra1 
          
          add bh,30h
          
          jmp imprimir1 
          
          letra1:
          add bh,37h

          imprimir1:  
          mov ah,02h 
          mov dl,bh  
          int 21h 
          
          mov ah,4ch 
          int 21h    
            
          .stack
          end programa