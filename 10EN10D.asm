;.386
.model small
.stack
.data
.code
        chr3    db      0
        chr4    db      0
        chr5    db      0
        chr1    db      0
        chr2    db      0
        chr6    db      0
        chr7    db      0
        chr8    db      0
        chr9    db      0
        chr11    db      0
        chr00    db      0
        chr01    db      0
        chr02    db      0
        chr03    db      0
        chr04    db      0
        chr05    db      0
        chr06    db      0
        chr07    db      0
        chr08    db      0
        chr09    db      0
        chr22   db      0
        r1      db      ?
        r2      db      ?
        r3      db      ?
        r5      db      ?
        r6      db      ?
        ac      db      0
        ac1     db      0
        
.startup
        
        mov ah,00h ;limpia pantalla
        mov al,03h
        int 10h
        mov cx,100 ; hacer 10 veces

;-------------------------------------------------------------------------------------------------------------------------
repite:
        
        mov al,chr1             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac,AH               ;ac = AH (Acarreo)
        mov r2,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr1             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r1,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac               ;BL = Acarreo anterior
        add r1,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r1               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r1,al               ;r1 = AL
        mov ac,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
                mov ah,02H
        mov dl,r3
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02h              
        mov dl,ac
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r1
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)
        
        
        mov dl,' '
        int 21h
        
        add chr1,1
        ;add chr3,2

        loop repite
        

        ;mov dl,0ah ;salto de l?nea 
        ;int 21h    ;muestra el ASCII de AL}
        
;-------------------------------------------------------------------------------------------------------------------------    
        mov cx,100 ; hacer 10 veces
        
        repite1:
        
        mov al,chr2             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr2             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
                mov ah,02H
                mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr2,1
        ;add chr3,2

        loop repite1
;-------------------------------------------------------------------------------------------------------------------------        
        
        mov cx,100 ; hacer 10 veces
        
        repite2:
        
        mov al,chr3             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr3             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
                mov ah,02H
                mov dl,2
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr3,1
        ;add chr3,2

        loop repite2

;-------------------------------------------------------------------------------------------------------------------------        
mov cx,100 ; hacer 10 veces
        
        repite3:
        
        mov al,chr4             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr4             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
                mov ah,02H
                mov dl,3
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr4,1
        ;add chr3,2

        loop repite3
;-------------------------------------------------------------------------------------------------------------------------
        
        
mov cx,100 ; hacer 10 veces
        
repite4:
        
       mov al,chr5             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr5             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
                mov ah,02H
                mov dl,4
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr5,1
        ;add chr3,2

        loop repite4
;-------------------------------------------------------------------------------------------------------------------------        
        mov cx,100 ; hacer 10 veces
        
        repite5:
        
        mov al,chr6             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr6             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
                mov ah,02H
                mov dl,5
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr6,1
        ;add chr3,2

        loop repite5
        
;-------------------------------------------------------------------------------------------------------------
        mov cx,100 ; hacer 10 veces
        
        repite6:
        
        mov al,chr7             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr7             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
                mov ah,02H
                mov dl,6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr7,1
        ;add chr3,2

        loop repite6
;-------------------------------------------------------------------------------------------------------------------------        
mov cx,100 ; hacer 10 veces
        
        repite7:
        
        mov al,chr8             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr8             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
                mov ah,02H
                mov dl,7
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr8,1
        ;add chr3,2

        loop repite7
        ;---------------------------------------------------------------------------------------
        
                mov cx,100 ; hacer 10 veces
        
                repite8:
        
                mov al,chr9             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr9             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
                mov ah,02H
                mov dl,8
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr9,1
        ;add chr3,2

        loop repite8
        
;-------------------------------------------------------------------------------------------------------------
        mov cx,100 ; hacer 10 veces
        
        repite9:
        
        mov al,chr11             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr11             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
                mov ah,02H
                mov dl,9
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr11,1
        ;add chr3,2

        loop repite9
;--------------------------------------------------------------------------------------------------------------
        mov cx,100 ; hacer 10 veces
        
        repit0:
        
        mov al,chr00             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr00             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02H
        mov dl,0
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr00,1
        ;add chr3,2

        loop repit0
        
;-------------------------------------------------------------------------------------------------------------------------    
        mov cx,100 ; hacer 10 veces
        
        repit1:
        
        mov al,chr01             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr01             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
                mov ah,02H
                mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr01,1
        ;add chr3,2

        loop repit1
;-------------------------------------------------------------------------------------------------------------------------        
        
        mov cx,100 ; hacer 10 veces
        
        repit2:
        
        mov al,chr02             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr02             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02H
        mov dl,2
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr02,1
        ;add chr3,2

        loop repit2
;-------------------------------------------------------------------------------------------------------------------------        
        
        mov cx,100 ; hacer 10 veces
        
        repit3:
        
        mov al,chr03             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr03             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02H
        mov dl,3
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr03,1
        ;add chr3,2

        loop repit3
        
;-------------------------------------------------------------------------------------------------------------------------        
        
        mov cx,100 ; hacer 10 veces
        
        repit4:
        
        mov al,chr04             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr04             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02H
        mov dl,4
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr04,1
        ;add chr3,2

        loop repit4
        
;-------------------------------------------------------------------------------------------------------------------------

        
        mov cx,100 ; hacer 10 veces
        
        repit5:
        
        mov al,chr05             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr05             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02H
        mov dl,5
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr05,1
        ;add chr3,2

        loop repit5
        
        ;-------------------------------------------------------------------------------------------------------------------------

        
        mov cx,100 ; hacer 10 veces
        
        repit6:
        
        mov al,chr06             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr06             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02H
        mov dl,6
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr06,1
        ;add chr3,2

        loop repit6
        
        ;-------------------------------------------------------------------------------------------------------------------------

        
        mov cx,100 ; hacer 10 veces
        
        repit7:
        
        mov al,chr07             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr07             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02H
        mov dl,7
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr07,1
        ;add chr3,2

        loop repit7
        
        ;-------------------------------------------------------------------------------------------------------------------------

        
        mov cx,100 ; hacer 10 veces
        
        repit8:
        
        mov al,chr08             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr08             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02H
        mov dl,8
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr08,1
        ;add chr3,2

        loop repit8

        ;-------------------------------------------------------------------------------------------------------------------------

        
        mov cx,100 ; hacer 10 veces
        
        repit9:
        
        mov al,chr09             ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr09             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,1
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02H
        mov dl,9
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr09,1
        ;add chr3,2

        loop repit9       
        
        mov dl,0ah ;salto de l?nea 
        int 21h    ;muestra el ASCII de AL}  
        
;-------------------------------------------------------------------------------------------------------------------------

        
        mov al,chr22            ;al = chr3
        mov bl,0             ;bl = chr2
        mul bl                  ;AL = chr3*chr2 (BL*AL)
        mov Ah,0h               ;
        AAM                             ;ASCII Adjusment
        mov ac1,AH               ;ac = AH (Acarreo)
        mov r6,AL               ;r2 = AL                (Unidad del resultado)
        
        mov al,chr22             ;AL = chr3
        mov bl,1             ;BL = chr1
        mul bl                  ;AL = chr1*chr3 (BL*AL)
        mov r5,al               ;r1 = AL                (Decena del resultado)
        mov bl,ac1               ;BL = Acarreo anterior
        add r5,bl               ;r1 = r1+ac (r1 + Acarreo)
        mov ah,00h              ;
        mov al,r5               ;AL = r1 (Asignaci?n para el ajust)
        AAM                             ;ASCII Adjustment
        mov r5,al               ;r1 = AL
        mov ac1,ah               ;ac = AH (Acarreo para la Centena del resultado)
        
        ;Mostramos resultado
        
        mov ah,02H
        mov dl,2
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02H
        mov dl,0
        add dl,30h
        int 21h                 ;Mostramos r2 (Milesima)
        
        mov ah,02h              
        mov dl,ac1
        add dl,30h
        int 21h                 ;Mostramos ac (Centena)

        mov ah,02H
        mov dl,r5
        add dl,30h
        int 21h                 ;Mostramos r1 (Decena)

        mov ah,02H
        mov dl,r6
        add dl,30h
        int 21h                 ;Mostramos r2 (Unidad)
        
        
        mov dl,' '
        int 21h
        
        add chr22,1
        ;add chr3,2

        
.exit
end