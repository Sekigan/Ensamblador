
.model small
.stack
.data
vec db  100 dup(?)
var1 db 0
arch db "archivo.txt", "$"

.code
.startup

mov ax, @data
 mov ds, ax
  mov bx,ax ;(ESTABA EN LA L?NEA 38)
 mov ah, 3ch
 mov cx, 00h
 mov dx, offset arch
 int 21h
 
 mov bx,ax
mov ah,3eh ;cierra el archivo
int 21h

 mov si, 0
 mov cl,0
 
mov ah,01h ;Leer car?cter desde el teclado
int 21h ;Lee primer caracter
sub al, 30h ;Resto 30H (48Dec) para obtener el numero
mov var1, al ;Lo guardo en variable valor

;almacenar datos en vector para despues imprimir

repite:
mov al, var1
add al,30h
mov vec[si], al ;guarda lo que tiene en ah en el vector
inc si ;incrementa

mov vec[si], 120  ;guarda lo que tiene en ah en el vector
inc si ;incrementa

mov al, cl
add al,30h
mov vec[si], al ;guarda lo que tiene en ah en el vector
inc si ;incrementa
;inc cl

mov vec[si], 61 ;guarda lo que tiene en ah en el vector
 inc si ;incrementa

 mov al, var1
 mul cl
 aam
mov bx,ax
mov al,bh
add al,30h
mov vec[si], al
inc si

mov al,bl
add al,30h
mov vec[si], al
inc si

mov al, ' '
mov vec[si], al
inc si
;contador
;mov dl,cl ; muevo el valor del contador a dl para imprimir
inc cl ; incremento el contador en uno

cmp cl,10 ;compara si en el contador hay un 10
je salir ;si la comparacion es verdadera salta a salir
jne repite ; si no es verdadera la ultima comparacion regresa al metodo repetir

salir:
mov ah,3dh
mov al,1h ;Abrimos el archivo en solo escritura.
mov dx,offset arch
int 21h

mov bx,ax
mov cx,si ;num de caracteres a grabar
mov dx, offset vec
mov ah,40h
int 21h

 mov AH,3eh
 int 21h
 
 mov ah,04ch
 int 21h
.exit
end