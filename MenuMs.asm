include Macros2.txt
.model small
.stack
.data
    etiqueta label
    NMax1 db 60
    Leidos1 db 0
    Vector1 db 60 dup(0)
    
    manejador dw 0
    handle dw 0
    video db 0
    
    titulo db "Elija una opcion: $"
    crear db "1) Crear fichero.$"
    borrar db "2) Borrar fichero.$"
    escribir db "3) Escribir fichero.$"
    leer db "4) Leer fichero.$"
    salir db "5) Salir.$"
    
    SL db 10,13, "$"
    Carac db ?
    
    nombre label 
    nmax db 100
    leidos db 0
    vector db 100 dup(0)      
    
    msgCrear db "Ingresa el nombre de tu archivo$"    
    msgCrea db "Creado exitosamente$"
    msgBorra db "Borrado exitosamente$"
    msgEsc db "Escrito exitosamente$"
    msgTexto db "Ingresa la informaci?n a escribir en tu fichero$"
    msgTecla db "Presione cualquier tecla para continuar$"
    
    
 .code
    
    menuM proc far
    
    Inicio
    
    menu:
    
        pantalla
  
        mov ah, 0FH
        int 10h
        mov video, bh
        
        curCen video
        
        ImpCad titulo
        ImpCad SL
        
        mov ah, 02H
        mov bh,video
        mov dh, 3
        mov dl, 30
        int 10h
   
        ImpCad crear
        mov ah, 02H
        mov bh,video
        mov dh, 4
        mov dl, 30
        int 10h
        
        ImpCad borrar
        mov ah, 02H
        mov bh,video
        mov dh, 5
        mov dl, 30
        int 10h
        
        ImpCad escribir
        mov ah, 02H
        mov bh,video
        mov dh, 6
        mov dl, 30
        int 10h
        
        ImpCad leer
        mov ah, 02H
        mov bh,video
        mov dh, 7
        mov dl, 30
        int 10h
        
        ImpCad salir
        ImpCad SL
        
        enCar
        
        mov Carac, al
        
        cmp Carac, "1"
        je Crea
            
        cmp Carac, "2"
        je borra
            
        cmp Carac, "3"
        je escribi
            
        cmp Carac, "4"
        je lee
            
        cmp Carac, "5"
        je sali
        
        jmp menu       
        
    Crea:
        
        pantalla
        
        ImpCadSL msgCrear
        
        mov ah, 0AH
        mov dx, offset nombre
        int 21h
        mov al, leidos
        mov ah, 0
        mov di,ax
        mov vector[di],"0"
        
        crear vector
        mov handle, ax
        
        cerrar handle
        
        ImpCadSL msgCrea
        ImpCad msgTecla
        
        enCar
        
        jmp menu
        
    Borra:
        pantalla
        
        ImpCadSL msgCrear
        
        mov ah, 0AH
        mov dx, offset nombre
        int 21h
        mov al, leidos
        mov ah, 0
        mov di,ax
        mov vector[di],"0"
        
        borrar vector
        
        ImpCadSL msgBorra
        ImpCad msgTecla
        
        enCar
        
        jmp menu
        
    Escribi:
        pantalla
        
        ImpCadSL msgCrear
        
        mov ah, 0AH
        mov dx, offset nombre
        int 21h
        mov al, leidos
        mov ah, 0
        mov di,ax
        mov vector[di],"0"
        
        mov ah, 3DH
        mov al, 2
        mov dx, offset vector
        int 21h
        
        mov manejador, ax
        
        ImpCadSL msgTexto
        
        mov ah, 0AH
        mov dx, offset etiqueta
        int 21h
        mov al, leidos1
        mov ah, 0
        mov di,ax
        mov vector1[di],"0"
            
        mov ah, 040H
        mov bx, manejador
        mov cx, 60
        mov dx, offset vector1
        int 21h
            
        ImpCad SL
        
        cerrar manejador
        
        ImpCadSL msgEsc
        ImpCad msgTecla
        enCar
        
        jmp menu
        
    Lee:
        pantalla
        
        mov ah,0Fh
        int 10h
        
        mov ah,02h
        mov dh,2
        mov dl,1
        int 10h
          
        ImpCadSL msgCrear
            
        mov ah,02h
        mov dh,4
        mov dl,1
        int 10h
        
        mov ah,0Ah
        mov dx,offset nombre
        int 21h
        mov AH,0
        mov AL,leidos
        mov DI,AX
        mov vector[DI],"$"
    
        mov ah,3dh
        mov al,2
        mov dx,offset vector
        int 21h
        mov handle,ax
        
        mov ah,02h
        mov dh,6
        mov dl,1
        int 10h
        
        mov ah,3fh
        mov bx,handle
        mov cx,50
        mov dx,offset nombre
        int 21h
        
        ImpCad SL
        ImpCadSL nombre
        
        cerrar handle
        
        ImpCadSL msgTecla
        
        enCar
        
        jmp menu
        
        sali:
        .exit
        menuM endp
        end menuM
            