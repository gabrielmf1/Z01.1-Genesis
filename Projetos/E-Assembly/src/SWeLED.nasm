; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = ON ON ON ON ON !SW3 !SW2 !SW1 0
; Mesma questão da prova

leaw $14, %A
movw %A, %D
leaw $21185, %A
andw (%A), %D, %D
notw %D
leaw $14, %A
andw %A, %D, %D
leaw $21184, %A
addw %D, (%A), %D
movw %D, (%A)


leaw %496, %A
movw %A, %D
leaw $21184, %A
addw %D, (%A), %D
movw %D, (%A)

