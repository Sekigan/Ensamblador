
SegPila Segment para Stack 'Stack'
     db 64 Dup ('SegStack ')
SegPila EndS
 
SDatos Segment para 'Data'
 
 
    archivo db "ARCHIVO.txt", 0 ;ascii del nombre del archivo
leido db 81 dup (24h)
handle dw ? ;identificador del arhivo
 
SDatos EndS
 
 
CSeg Segment para public 'Code' ;Define el segmento de c?digo paragraph tasm.
 Begin:
      Assume CS:SDatos, SS:SegPila  ;Asignaci?n de los segmentos a los registro de segmentos del CPU.
 
                        ;Va a reservar la direcci?n del PSP en el ES.
 
       xor    ax,ax     ;Pone en cero al reg ax.
       mov    ax,SDatos     ;Mueve la posici?n de SData al reg ax.
       mov    DS,ax     ;Mueve la posici?n de ax (SData) al reg DS.
 
 
 mov al, 0h ;modo de acceso para abrir arhivo, modo lectura/escritura
 mov dx, offset archivo ;offset lugar de memoria donde esta la variable
 mov ah, 3dh ;se intenta abrir el archivo
 int 21h ;llamada a la interrupcion DOS
 
 
 mov handle, ax ;si no paso mover a lo que le dio el SO
 
 
 mov bx, handle
 mov cx, 79h ;<---- cantidad de caracteres que lee del archivo
 mov dx, offset leido ;<--- pasa al dx lo que hay en el archhivo
 mov ah, 3fh
 int 21h
 
 ;cerramos archivo
 mov bx, handle
 mov ah, 3eh
 int 21h
 
 ;imprimir el contenido de leido
 mov dx, offset leido ;
  mov ah, 9
 int 21h
 
 
        xor ax,ax       ;Limpia el al y prepara el ah para la salida.
       mov ax,4c00h     ;Servicio AH=4c int 21h para salir del programa.
       int 21h          ;Llamada al DOS. Termine el programa.
CSeg EndS           ;Fin del segmento de c?digo.
 
End Begin