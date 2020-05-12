; Arquivo: stringLength.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi 
; Data: 28/03/2018
;
; Assuma que uma string é um conjunto de caracteres terminado
; em NULL (0).
; 
; Supondo que temos uma string que começa no endereço 8 da RAM.
; Calcule o seu tamanho e salve o resultado na RAM[0].
;
; Os caracteres estão formatados em ASCII
; http://sticksandstones.kstrom.com/appen.html
; 
; Exemplo:
;
;   Convertido para ASCII
;             |
;             v
;  RAM[8]  = `o`
;  RAM[9]  = `i`
;  RAM[10] = ` `
;  RAM[11] = `b`
;  RAM[12] =  l`
;  RAM[13] = `z`
;  RAM[14] = `?`
;  RAM[15] = NULL = 0x0000

leaw $0, %A 
movw $0, (%A) ;usando a RAM[0] para lenght

leaw $8, %A
movw %A, %D
leaw $1, %A
movw %D, (%A) ;usando a ram 1 como contador de rams. 
	      ;então tem que começar na RAM[8]


LOOP:
leaw $1, %A
movw (%A), %D

movw %D, %A ;acessando a ram com o contador RAM[CONTADOR]

movw (%A), %D ;acessando o valor da ram com o contador 

movw %D, %A

leaw $END, %A ;caso tenha acabado a string, vai pro final
je
nop

;caso a string nao tenha acabado aumenta o contador na RAM[0]
;para aumentar a contagem do tamanho da string


leaw $1, %A
movw (%A), %D
addw $1, %D, (%A) ;aumentado contador de rams

leaw $0, %A
movw (%A), %D
incw %D 
movw %D, (%A) ;aumentando o tamanho da string

movw %D, %A
leaw $LOOP, %A
jne
nop

END:
