.model small
.stack
.data 
 p DB 5 dup(?)
 p1 DB 5 dup(?)
 n DB ?
 m DB '  "programa para determinar si una palabra es palindroma" $'
 m3 DB 13,10,'introduce el tama?o de la palabra: $'
 m0 DB 13,10,'introduce la palabra: $'
 m1 DB 13,10,'la palabra es palindroma $'
 m2 DB 13,10,'la palabra no es palindroma $'
 m5 DB 13,10,'la tecla precionada no es numero $'
.code
main:
;limpiar pantalla
    mov ah,00h
    mov al,03h
    int 10h
;mensaje del programa
    mov ax,@data 
    mov ds,ax
    lea dx,m
    mov ah,09
    int 21h
;mensaje 3 para introducir tama?o de la palabra
   lea dx,m3
   mov ah,09
   int 21h
;introducir tama?o de la palabra
   mov ah,01h
   int 21h
;verificar si el numero se encuentra en el rango 0 a 9
        cmp al,030h   
        js s
        cmp al,03ah   
        jns s
;ajustando el valor de al para almacenarlo en n
   sub al,30h
   mov n,al
;mensaje 1 para introducir palabra
   lea dx,m0
   mov ah,09
   int 21h
;ciclo para introducir la palabra
   mov cl,n
   mov si,0
r:
   mov ah,01h
   int 21h
   mov p[si],al
   mov p1[si],al
   inc si
loop r
jmp ri
;*************************
;doble salto de regreso **
ma:                    ;**
jmp main               ;**
;*************************
ri:
; segundo ciclo para checar si la palabra es palindroma
   mov cl,n
   mov si,0
;limpiabdo contenido de ax
    xor ax,ax
;moviendo registro n a al
    mov al,n
   
   mov di,ax
rr:
   dec di
   mov al,p[si]
   mov dl,p1[di]
   inc si
   cmp al,dl
   jnz imp  
loop rr

;mensaje 1 en pantalla
   lea dx,m2
   mov ah,09
   int 21h
   jmp salir

imp:    
;mensaje 2 en pantalla
   lea dx,m1
   mov ah,09
   int 21h
   jmp salir
s:
;mensaje para realizar otra operacion
        lea dx,m5
        mov ah,09h
        int 21h
salir:

       
;ingresar las desicion
       mov ah,01h
       int 21h
       cmp al,'s'
       jz ma
   mov ah,4ch
   int 21h
end main

