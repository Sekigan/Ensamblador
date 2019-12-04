.model small
.stack
.data
    msg db 10,13,7, 'Ingresa una letra del abecedario: ','$'
    msg2 db 10,13,7, 'Resultado : ', '$'
    cadena db ?
    cont db 0
.code
.startup
    main:
    mov ax,seg @data
    mov ds, ax
    
    mov ah,09h ;permite la salida de cadena (impresion)
    lea dx, msg ;imprime lo que tenga en msg
    int 21h ;interrupcion
    
    mov ah,01h ;permite mover la cadena que se ingrese hasta que se encuentre salto de linea
    int 21h  ;interrupcion
    mov cadena, al
    
    mov ah,02h ;colocar el cursor
    mov dl,0ah ;salto de l?nea 
    int 21h ;interrupcion
    
    mov ah,09h ;permite la salida de cadena (impresion)
    lea dx, msg2 ;imprime lo que tenga en msg 2
    int 21h ;interrupcion
    
    
    mov cl, 97
    mov cont,0
    regresa:
    inc cl
    inc cont
    
    cmp cl,cadena
    jne regresa
    je sale
 
    sale: 
    mov al,122
    sub al,cont
    mov dl,al
    mov ah, 02h
    int 21h
    .exit
end 
