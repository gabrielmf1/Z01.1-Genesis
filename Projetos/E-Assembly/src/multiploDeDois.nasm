; Arquivo: multiploDeDois.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se o valor salvo no endereço RAM[5] é
; multiplo de dois, se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.
START:
leaw $5, %A
movw (%A), %D
leaw $NEG, %A
jl %D
nop
leaw $1,  %A
andw %D, %A, %D
leaw $ELSE, %A
je %D
nop
leaw $0, %A
movw %A, (%A)
leaw $END, %A
jmp
nop
NEG:
negw %D
leaw $5, %A
movw %D, (%A)
leaw $START, %A
jmp
nop
ELSE:
leaw $1, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)
leaw $END, %A
jmp
nop
END:
