leaw $0, %A
movw (%A), %D
leaw $2, %A
movw %D, (%A)
leaw $looping, %A
jne %D
nop
leaw $1, %A
movw %A, (%A)
leaw $FIM, %A
jmp
nop
looping:
leaw $2, %A
movw (%A), %D
decw %D
leaw $FIM, %A
je %D
nop
LOOP:
leaw $2, %A
movw (%A), %D
leaw $4, %A
subw %D, (%A), %D
leaw $END, %A
je %D
nop
leaw $3, %A
movw (%A), %D
leaw $0, %A
addw (%A), %D, %D
leaw $3, %A
movw %D, (%A)
leaw $4, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $LOOP, %A
jmp
nop
END:
leaw $3, %A
movw (%A), %D
movw $0, (%A)
leaw $0, %A
movw %D, (%A)
leaw $looping, %A
jmp
nop
FIM:

